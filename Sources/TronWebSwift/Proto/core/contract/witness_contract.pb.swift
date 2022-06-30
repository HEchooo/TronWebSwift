// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: core/contract/witness_contract.proto
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

public struct Protocol_WitnessCreateContract {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ownerAddress: Data = Data()

  public var url: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Protocol_WitnessUpdateContract {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ownerAddress: Data = Data()

  public var updateURL: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Protocol_VoteWitnessContract {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ownerAddress: Data = Data()

  public var votes: [Protocol_VoteWitnessContract.Vote] = []

  public var support: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Vote {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var voteAddress: Data = Data()

    public var voteCount: Int64 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Protocol_WitnessCreateContract: @unchecked Sendable {}
extension Protocol_WitnessUpdateContract: @unchecked Sendable {}
extension Protocol_VoteWitnessContract: @unchecked Sendable {}
extension Protocol_VoteWitnessContract.Vote: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol"

extension Protocol_WitnessCreateContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".WitnessCreateContract"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "owner_address"),
    2: .same(proto: "url"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.ownerAddress) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.url) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.ownerAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.ownerAddress, fieldNumber: 1)
    }
    if !self.url.isEmpty {
      try visitor.visitSingularBytesField(value: self.url, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_WitnessCreateContract, rhs: Protocol_WitnessCreateContract) -> Bool {
    if lhs.ownerAddress != rhs.ownerAddress {return false}
    if lhs.url != rhs.url {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_WitnessUpdateContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".WitnessUpdateContract"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "owner_address"),
    12: .standard(proto: "update_url"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.ownerAddress) }()
      case 12: try { try decoder.decodeSingularBytesField(value: &self.updateURL) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.ownerAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.ownerAddress, fieldNumber: 1)
    }
    if !self.updateURL.isEmpty {
      try visitor.visitSingularBytesField(value: self.updateURL, fieldNumber: 12)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_WitnessUpdateContract, rhs: Protocol_WitnessUpdateContract) -> Bool {
    if lhs.ownerAddress != rhs.ownerAddress {return false}
    if lhs.updateURL != rhs.updateURL {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_VoteWitnessContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VoteWitnessContract"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "owner_address"),
    2: .same(proto: "votes"),
    3: .same(proto: "support"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.ownerAddress) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.votes) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.support) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.ownerAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.ownerAddress, fieldNumber: 1)
    }
    if !self.votes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.votes, fieldNumber: 2)
    }
    if self.support != false {
      try visitor.visitSingularBoolField(value: self.support, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_VoteWitnessContract, rhs: Protocol_VoteWitnessContract) -> Bool {
    if lhs.ownerAddress != rhs.ownerAddress {return false}
    if lhs.votes != rhs.votes {return false}
    if lhs.support != rhs.support {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_VoteWitnessContract.Vote: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Protocol_VoteWitnessContract.protoMessageName + ".Vote"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "vote_address"),
    2: .standard(proto: "vote_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.voteAddress) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.voteCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.voteAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.voteAddress, fieldNumber: 1)
    }
    if self.voteCount != 0 {
      try visitor.visitSingularInt64Field(value: self.voteCount, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_VoteWitnessContract.Vote, rhs: Protocol_VoteWitnessContract.Vote) -> Bool {
    if lhs.voteAddress != rhs.voteAddress {return false}
    if lhs.voteCount != rhs.voteCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
