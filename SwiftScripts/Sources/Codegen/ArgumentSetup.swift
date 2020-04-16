import Foundation
import ApolloCodegenLib
import TSCUtility

enum Target {
    case starWars
    case gitHub
    case fileUpload
    
    init?(name: String) {
        switch name {
        case "StarWars":
            self = .starWars
        case "GitHub":
            self = .gitHub
        case "FileUpload":
            self = .fileUpload
        default:
            return nil
        }
    }
    
    func targetRootURL(fromSourceRoot sourceRootURL: Foundation.URL) -> Foundation.URL {
        switch self {
        case .gitHub:
            return sourceRootURL
                .appendingPathComponent("Sources")
                .appendingPathComponent("GitHubAPI")
        case .starWars:
            return sourceRootURL
                .appendingPathComponent("Sources")
                .appendingPathComponent("StarWarsAPI")
        case .fileUpload:
            return sourceRootURL
                .appendingPathComponent("Sources")
                .appendingPathComponent("FileUploadAPI")
        }
    }
    
    func options(fromSourceRoot sourceRootURL: Foundation.URL) -> ApolloCodegenOptions {
        let targetRootURL = self.targetRootURL(fromSourceRoot: sourceRootURL)
        switch self {
        case .starWars:
            return ApolloCodegenOptions(targetRootURL: targetRootURL)
        case .gitHub:
            let json = targetRootURL.appendingPathComponent("schema.json")
            let outputFileURL = targetRootURL.appendingPathComponent("API.swift")
            let operationIDsURL = targetRootURL.appendingPathComponent("operationIDs.json")

            return ApolloCodegenOptions(mergeInFieldsFromFragmentSpreads: true,
                                        operationIDsURL: operationIDsURL,
                                        outputFormat: .singleFile(atFileURL: outputFileURL),
                                        suppressSwiftMultilineStringLiterals: true,
                                        urlToSchemaFile: json)
        case .fileUpload:
            return ApolloCodegenOptions(targetRootURL: targetRootURL)
        }
    }
}

struct ArgumentSetup {
    
    enum ArgumentError: Error, LocalizedError {
        case targetNotProvided(args: [String])
        
        var errorDescription: String? {
            switch self {
            case .targetNotProvided(let args):
                return "No valid was provided to generate code for. Args were: \(args)"
            }
        }
    }
    
    static func parse(arguments: [String] = Array(ProcessInfo.processInfo.arguments.dropFirst())) throws -> Target {
        
        let parser = ArgumentParser(usage: "Codegen <options>", overview: "This is what this tool is for")
                
        let target: OptionArgument<String> = parser.add(option: "--target",
                                                        shortName: "-t",
                                                        kind: String.self,
                                                        usage: "The target to generate code for")
        let parsedArguments = try parser.parse(arguments)
        
        
        if
            let targetName = parsedArguments.get(target),
            let target = Target(name: targetName) {
                return  target
        } else {
            throw ArgumentError.targetNotProvided(args: arguments)
        }
    }
}
