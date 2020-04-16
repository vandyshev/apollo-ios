// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct NestedObject: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - recursiveNested
  ///   - text
  ///   - file
  ///   - fileList
  ///   - textList
  public init(recursiveNested: Swift.Optional<[NestedObject?]?> = nil, text: Swift.Optional<String?> = nil, file: Swift.Optional<String?> = nil, fileList: Swift.Optional<[String?]?> = nil, textList: Swift.Optional<[String?]?> = nil) {
    graphQLMap = ["recursiveNested": recursiveNested, "text": text, "file": file, "fileList": fileList, "textList": textList]
  }

  public var recursiveNested: Swift.Optional<[NestedObject?]?> {
    get {
      return graphQLMap["recursiveNested"] as? Swift.Optional<[NestedObject?]?> ?? Swift.Optional<[NestedObject?]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recursiveNested")
    }
  }

  public var text: Swift.Optional<String?> {
    get {
      return graphQLMap["text"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "text")
    }
  }

  public var file: Swift.Optional<String?> {
    get {
      return graphQLMap["file"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "file")
    }
  }

  public var fileList: Swift.Optional<[String?]?> {
    get {
      return graphQLMap["fileList"] as? Swift.Optional<[String?]?> ?? Swift.Optional<[String?]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fileList")
    }
  }

  public var textList: Swift.Optional<[String?]?> {
    get {
      return graphQLMap["textList"] as? Swift.Optional<[String?]?> ?? Swift.Optional<[String?]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "textList")
    }
  }
}

public final class MultipleUploadMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation MultipleUpload($files: [Upload!]!) {
      multipleUpload(files: $files) {
        __typename
        id
        path
        filename
        mimetype
      }
    }
    """

  public let operationName: String = "MultipleUpload"

  public let operationIdentifier: String? = "b0340d31b2d59a93e6674ead1b4ab0b0e092ec2b6c5875fad28f17ab6b50c01d"

  public var files: [String]

  public init(files: [String]) {
    self.files = files
  }

  public var variables: GraphQLMap? {
    return ["files": files]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("multipleUpload", arguments: ["files": GraphQLVariable("files")], type: .nonNull(.list(.nonNull(.object(MultipleUpload.selections))))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(multipleUpload: [MultipleUpload]) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "multipleUpload": multipleUpload.map { (value: MultipleUpload) -> ResultMap in value.resultMap }])
    }

    public var multipleUpload: [MultipleUpload] {
      get {
        return (resultMap["multipleUpload"] as! [ResultMap]).map { (value: ResultMap) -> MultipleUpload in MultipleUpload(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: MultipleUpload) -> ResultMap in value.resultMap }, forKey: "multipleUpload")
      }
    }

    public struct MultipleUpload: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["File"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("path", type: .nonNull(.scalar(String.self))),
        GraphQLField("filename", type: .nonNull(.scalar(String.self))),
        GraphQLField("mimetype", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, path: String, filename: String, mimetype: String) {
        self.init(unsafeResultMap: ["__typename": "File", "id": id, "path": path, "filename": filename, "mimetype": mimetype])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var path: String {
        get {
          return resultMap["path"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "path")
        }
      }

      public var filename: String {
        get {
          return resultMap["filename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "filename")
        }
      }

      public var mimetype: String {
        get {
          return resultMap["mimetype"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mimetype")
        }
      }
    }
  }
}

public final class NestedUploadMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation NestedUpload($topFile: Upload, $topFileList: [Upload], $nested: NestedObject) {
      nestedUpload(topFile: $topFile, topFileList: $topFileList, nested: $nested)
    }
    """

  public let operationName: String = "NestedUpload"

  public let operationIdentifier: String? = "ba01cc6f40a36b96a17826335e7f26b6361525adc95c210a8de42de63f54ef78"

  public var topFile: String?
  public var topFileList: [String?]?
  public var nested: NestedObject?

  public init(topFile: String? = nil, topFileList: [String?]? = nil, nested: NestedObject? = nil) {
    self.topFile = topFile
    self.topFileList = topFileList
    self.nested = nested
  }

  public var variables: GraphQLMap? {
    return ["topFile": topFile, "topFileList": topFileList, "nested": nested]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("nestedUpload", arguments: ["topFile": GraphQLVariable("topFile"), "topFileList": GraphQLVariable("topFileList"), "nested": GraphQLVariable("nested")], type: .scalar(String.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(nestedUpload: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "nestedUpload": nestedUpload])
    }

    public var nestedUpload: String? {
      get {
        return resultMap["nestedUpload"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "nestedUpload")
      }
    }
  }
}

public final class SingleUploadMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation SingleUpload($file: Upload!) {
      singleUpload(file: $file) {
        __typename
        id
        path
        filename
        mimetype
      }
    }
    """

  public let operationName: String = "SingleUpload"

  public let operationIdentifier: String? = "3f7ac3c0d5e27dd53137ddf46545eab90d831bc66f46a6d0a0e64ba70582aa40"

  public var file: String

  public init(file: String) {
    self.file = file
  }

  public var variables: GraphQLMap? {
    return ["file": file]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("singleUpload", arguments: ["file": GraphQLVariable("file")], type: .nonNull(.object(SingleUpload.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(singleUpload: SingleUpload) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "singleUpload": singleUpload.resultMap])
    }

    public var singleUpload: SingleUpload {
      get {
        return SingleUpload(unsafeResultMap: resultMap["singleUpload"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "singleUpload")
      }
    }

    public struct SingleUpload: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["File"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("path", type: .nonNull(.scalar(String.self))),
        GraphQLField("filename", type: .nonNull(.scalar(String.self))),
        GraphQLField("mimetype", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, path: String, filename: String, mimetype: String) {
        self.init(unsafeResultMap: ["__typename": "File", "id": id, "path": path, "filename": filename, "mimetype": mimetype])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var path: String {
        get {
          return resultMap["path"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "path")
        }
      }

      public var filename: String {
        get {
          return resultMap["filename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "filename")
        }
      }

      public var mimetype: String {
        get {
          return resultMap["mimetype"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mimetype")
        }
      }
    }
  }
}

public final class SingleUploadTwiceMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation SingleUploadTwice($file1: Upload!, $file2: Upload!) {
      file1: singleUpload(file: $file1) {
        __typename
        id
        path
        filename
        mimetype
      }
      file2: singleUpload(file: $file2) {
        __typename
        id
        path
        filename
        mimetype
      }
    }
    """

  public let operationName: String = "SingleUploadTwice"

  public let operationIdentifier: String? = "11a4e191e09f459ae8a647e8f23d2798740b23273f64abfcfa71da52edff8612"

  public var file1: String
  public var file2: String

  public init(file1: String, file2: String) {
    self.file1 = file1
    self.file2 = file2
  }

  public var variables: GraphQLMap? {
    return ["file1": file1, "file2": file2]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("singleUpload", alias: "file1", arguments: ["file": GraphQLVariable("file1")], type: .nonNull(.object(File1.selections))),
      GraphQLField("singleUpload", alias: "file2", arguments: ["file": GraphQLVariable("file2")], type: .nonNull(.object(File2.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(file1: File1, file2: File2) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "file1": file1.resultMap, "file2": file2.resultMap])
    }

    public var file1: File1 {
      get {
        return File1(unsafeResultMap: resultMap["file1"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "file1")
      }
    }

    public var file2: File2 {
      get {
        return File2(unsafeResultMap: resultMap["file2"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "file2")
      }
    }

    public struct File1: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["File"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("path", type: .nonNull(.scalar(String.self))),
        GraphQLField("filename", type: .nonNull(.scalar(String.self))),
        GraphQLField("mimetype", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, path: String, filename: String, mimetype: String) {
        self.init(unsafeResultMap: ["__typename": "File", "id": id, "path": path, "filename": filename, "mimetype": mimetype])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var path: String {
        get {
          return resultMap["path"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "path")
        }
      }

      public var filename: String {
        get {
          return resultMap["filename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "filename")
        }
      }

      public var mimetype: String {
        get {
          return resultMap["mimetype"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mimetype")
        }
      }
    }

    public struct File2: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["File"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("path", type: .nonNull(.scalar(String.self))),
        GraphQLField("filename", type: .nonNull(.scalar(String.self))),
        GraphQLField("mimetype", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, path: String, filename: String, mimetype: String) {
        self.init(unsafeResultMap: ["__typename": "File", "id": id, "path": path, "filename": filename, "mimetype": mimetype])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var path: String {
        get {
          return resultMap["path"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "path")
        }
      }

      public var filename: String {
        get {
          return resultMap["filename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "filename")
        }
      }

      public var mimetype: String {
        get {
          return resultMap["mimetype"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "mimetype")
        }
      }
    }
  }
}
