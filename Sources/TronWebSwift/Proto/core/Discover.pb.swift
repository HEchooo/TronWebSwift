// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: core/Discover.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Protocol_Endpoint {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var address: Data = Data()

  public var port: Int32 = 0

  public var nodeID: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Protocol_PingMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var from: Protocol_Endpoint {
    get {return _from ?? Protocol_Endpoint()}
    set {_from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  public var hasFrom: Bool {return self._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  public mutating func clearFrom() {self._from = nil}

  public var to: Protocol_Endpoint {
    get {return _to ?? Protocol_Endpoint()}
    set {_to = newValue}
  }
  /// Returns true if `to` has been explicitly set.
  public var hasTo: Bool {return self._to != nil}
  /// Clears the value of `to`. Subsequent reads from it will return its default value.
  public mutating func clearTo() {self._to = nil}

  public var version: Int32 = 0

  public var timestamp: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _from: Protocol_Endpoint? = nil
  fileprivate var _to: Protocol_Endpoint? = nil
}

public struct Protocol_PongMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var from: Protocol_Endpoint {
    get {return _from ?? Protocol_Endpoint()}
    set {_from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  public var hasFrom: Bool {return self._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  public mutating func clearFrom() {self._from = nil}

  public var echo: Int32 = 0

  public var timestamp: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _from: Protocol_Endpoint? = nil
}

public struct Protocol_FindNeighbours {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var from: Protocol_Endpoint {
    get {return _from ?? Protocol_Endpoint()}
    set {_from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  public var hasFrom: Bool {return self._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  public mutating func clearFrom() {self._from = nil}

  public var targetID: Data = Data()

  public var timestamp: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _from: Protocol_Endpoint? = nil
}

public struct Protocol_Neighbours {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var from: Protocol_Endpoint {
    get {return _from ?? Protocol_Endpoint()}
    set {_from = newValue}
  }
  /// Returns true if `from` has been explicitly set.
  public var hasFrom: Bool {return self._from != nil}
  /// Clears the value of `from`. Subsequent reads from it will return its default value.
  public mutating func clearFrom() {self._from = nil}

  public var neighbours: [Protocol_Endpoint] = []

  public var timestamp: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _from: Protocol_Endpoint? = nil
}

public struct Protocol_BackupMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var flag: Bool = false

  public var priority: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Protocol_Endpoint: @unchecked Sendable {}
extension Protocol_PingMessage: @unchecked Sendable {}
extension Protocol_PongMessage: @unchecked Sendable {}
extension Protocol_FindNeighbours: @unchecked Sendable {}
extension Protocol_Neighbours: @unchecked Sendable {}
extension Protocol_BackupMessage: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol"

extension Protocol_Endpoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Endpoint"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .same(proto: "port"),
    3: .same(proto: "nodeId"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.address) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.port) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.nodeID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularBytesField(value: self.address, fieldNumber: 1)
    }
    if self.port != 0 {
      try visitor.visitSingularInt32Field(value: self.port, fieldNumber: 2)
    }
    if !self.nodeID.isEmpty {
      try visitor.visitSingularBytesField(value: self.nodeID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_Endpoint, rhs: Protocol_Endpoint) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.port != rhs.port {return false}
    if lhs.nodeID != rhs.nodeID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_PingMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PingMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "from"),
    2: .same(proto: "to"),
    3: .same(proto: "version"),
    4: .same(proto: "timestamp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._from) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._to) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.version) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.timestamp) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._from {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._to {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if self.version != 0 {
      try visitor.visitSingularInt32Field(value: self.version, fieldNumber: 3)
    }
    if self.timestamp != 0 {
      try visitor.visitSingularInt64Field(value: self.timestamp, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_PingMessage, rhs: Protocol_PingMessage) -> Bool {
    if lhs._from != rhs._from {return false}
    if lhs._to != rhs._to {return false}
    if lhs.version != rhs.version {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_PongMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PongMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "from"),
    2: .same(proto: "echo"),
    3: .same(proto: "timestamp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._from) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.echo) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.timestamp) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._from {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.echo != 0 {
      try visitor.visitSingularInt32Field(value: self.echo, fieldNumber: 2)
    }
    if self.timestamp != 0 {
      try visitor.visitSingularInt64Field(value: self.timestamp, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_PongMessage, rhs: Protocol_PongMessage) -> Bool {
    if lhs._from != rhs._from {return false}
    if lhs.echo != rhs.echo {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_FindNeighbours: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FindNeighbours"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "from"),
    2: .same(proto: "targetId"),
    3: .same(proto: "timestamp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._from) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.targetID) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.timestamp) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._from {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.targetID.isEmpty {
      try visitor.visitSingularBytesField(value: self.targetID, fieldNumber: 2)
    }
    if self.timestamp != 0 {
      try visitor.visitSingularInt64Field(value: self.timestamp, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_FindNeighbours, rhs: Protocol_FindNeighbours) -> Bool {
    if lhs._from != rhs._from {return false}
    if lhs.targetID != rhs.targetID {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_Neighbours: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Neighbours"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "from"),
    2: .same(proto: "neighbours"),
    3: .same(proto: "timestamp"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._from) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.neighbours) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.timestamp) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._from {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.neighbours.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.neighbours, fieldNumber: 2)
    }
    if self.timestamp != 0 {
      try visitor.visitSingularInt64Field(value: self.timestamp, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_Neighbours, rhs: Protocol_Neighbours) -> Bool {
    if lhs._from != rhs._from {return false}
    if lhs.neighbours != rhs.neighbours {return false}
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_BackupMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BackupMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "flag"),
    2: .same(proto: "priority"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.flag) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.priority) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.flag != false {
      try visitor.visitSingularBoolField(value: self.flag, fieldNumber: 1)
    }
    if self.priority != 0 {
      try visitor.visitSingularInt32Field(value: self.priority, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_BackupMessage, rhs: Protocol_BackupMessage) -> Bool {
    if lhs.flag != rhs.flag {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
