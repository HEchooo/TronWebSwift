// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: core/contract/smart_contract.proto
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

public struct Protocol_SmartContract {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var originAddress: Data = Data()

  public var contractAddress: Data = Data()

  public var abi: Protocol_SmartContract.ABI {
    get {return _abi ?? Protocol_SmartContract.ABI()}
    set {_abi = newValue}
  }
  /// Returns true if `abi` has been explicitly set.
  public var hasAbi: Bool {return self._abi != nil}
  /// Clears the value of `abi`. Subsequent reads from it will return its default value.
  public mutating func clearAbi() {self._abi = nil}

  public var bytecode: Data = Data()

  public var callValue: Int64 = 0

  public var consumeUserResourcePercent: Int64 = 0

  public var name: String = String()

  public var originEnergyLimit: Int64 = 0

  public var codeHash: Data = Data()

  public var trxHash: Data = Data()

  public var version: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct ABI {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var entrys: [Protocol_SmartContract.ABI.Entry] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public struct Entry {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      public var anonymous: Bool = false

      public var constant: Bool = false

      public var name: String = String()

      public var inputs: [Protocol_SmartContract.ABI.Entry.Param] = []

      public var outputs: [Protocol_SmartContract.ABI.Entry.Param] = []

      public var type: Protocol_SmartContract.ABI.Entry.EntryType = .unknownEntryType

      public var payable: Bool = false

      public var stateMutability: Protocol_SmartContract.ABI.Entry.StateMutabilityType = .unknownMutabilityType

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public enum EntryType: SwiftProtobuf.Enum {
        public typealias RawValue = Int
        case unknownEntryType // = 0
        case constructor // = 1
        case function // = 2
        case event // = 3
        case fallback // = 4
        case receive // = 5
        case error // = 6
        case UNRECOGNIZED(Int)

        public init() {
          self = .unknownEntryType
        }

        public init?(rawValue: Int) {
          switch rawValue {
          case 0: self = .unknownEntryType
          case 1: self = .constructor
          case 2: self = .function
          case 3: self = .event
          case 4: self = .fallback
          case 5: self = .receive
          case 6: self = .error
          default: self = .UNRECOGNIZED(rawValue)
          }
        }

        public var rawValue: Int {
          switch self {
          case .unknownEntryType: return 0
          case .constructor: return 1
          case .function: return 2
          case .event: return 3
          case .fallback: return 4
          case .receive: return 5
          case .error: return 6
          case .UNRECOGNIZED(let i): return i
          }
        }

      }

      public enum StateMutabilityType: SwiftProtobuf.Enum {
        public typealias RawValue = Int
        case unknownMutabilityType // = 0
        case pure // = 1
        case view // = 2
        case nonpayable // = 3
        case payable // = 4
        case UNRECOGNIZED(Int)

        public init() {
          self = .unknownMutabilityType
        }

        public init?(rawValue: Int) {
          switch rawValue {
          case 0: self = .unknownMutabilityType
          case 1: self = .pure
          case 2: self = .view
          case 3: self = .nonpayable
          case 4: self = .payable
          default: self = .UNRECOGNIZED(rawValue)
          }
        }

        public var rawValue: Int {
          switch self {
          case .unknownMutabilityType: return 0
          case .pure: return 1
          case .view: return 2
          case .nonpayable: return 3
          case .payable: return 4
          case .UNRECOGNIZED(let i): return i
          }
        }

      }

      public struct Param {
        // SwiftProtobuf.Message conformance is added in an extension below. See the
        // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
        // methods supported on all messages.

        public var indexed: Bool = false

        public var name: String = String()

        /// SolidityType type = 3;
        public var type: String = String()

        public var unknownFields = SwiftProtobuf.UnknownStorage()

        public init() {}
      }

      public init() {}
    }

    public init() {}
  }

  public init() {}

  fileprivate var _abi: Protocol_SmartContract.ABI? = nil
}

#if swift(>=4.2)

extension Protocol_SmartContract.ABI.Entry.EntryType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Protocol_SmartContract.ABI.Entry.EntryType] = [
    .unknownEntryType,
    .constructor,
    .function,
    .event,
    .fallback,
    .receive,
    .error,
  ]
}

extension Protocol_SmartContract.ABI.Entry.StateMutabilityType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Protocol_SmartContract.ABI.Entry.StateMutabilityType] = [
    .unknownMutabilityType,
    .pure,
    .view,
    .nonpayable,
    .payable,
  ]
}

#endif  // swift(>=4.2)

public struct Protocol_CreateSmartContract {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ownerAddress: Data = Data()

  public var newContract: Protocol_SmartContract {
    get {return _newContract ?? Protocol_SmartContract()}
    set {_newContract = newValue}
  }
  /// Returns true if `newContract` has been explicitly set.
  public var hasNewContract: Bool {return self._newContract != nil}
  /// Clears the value of `newContract`. Subsequent reads from it will return its default value.
  public mutating func clearNewContract() {self._newContract = nil}

  public var callTokenValue: Int64 = 0

  public var tokenID: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _newContract: Protocol_SmartContract? = nil
}

public struct Protocol_TriggerSmartContract {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ownerAddress: Data = Data()

  public var contractAddress: Data = Data()

  public var callValue: Int64 = 0

  public var data: Data = Data()

  public var callTokenValue: Int64 = 0

  public var tokenID: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Protocol_ClearABIContract {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ownerAddress: Data = Data()

  public var contractAddress: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Protocol_UpdateSettingContract {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ownerAddress: Data = Data()

  public var contractAddress: Data = Data()

  public var consumeUserResourcePercent: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Protocol_UpdateEnergyLimitContract {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ownerAddress: Data = Data()

  public var contractAddress: Data = Data()

  public var originEnergyLimit: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Protocol_SmartContractDataWrapper {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var smartContract: Protocol_SmartContract {
    get {return _smartContract ?? Protocol_SmartContract()}
    set {_smartContract = newValue}
  }
  /// Returns true if `smartContract` has been explicitly set.
  public var hasSmartContract: Bool {return self._smartContract != nil}
  /// Clears the value of `smartContract`. Subsequent reads from it will return its default value.
  public mutating func clearSmartContract() {self._smartContract = nil}

  public var runtimecode: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _smartContract: Protocol_SmartContract? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "protocol"

extension Protocol_SmartContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SmartContract"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "origin_address"),
    2: .standard(proto: "contract_address"),
    3: .same(proto: "abi"),
    4: .same(proto: "bytecode"),
    5: .standard(proto: "call_value"),
    6: .standard(proto: "consume_user_resource_percent"),
    7: .same(proto: "name"),
    8: .standard(proto: "origin_energy_limit"),
    9: .standard(proto: "code_hash"),
    10: .standard(proto: "trx_hash"),
    11: .same(proto: "version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.originAddress) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.contractAddress) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._abi) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.bytecode) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.callValue) }()
      case 6: try { try decoder.decodeSingularInt64Field(value: &self.consumeUserResourcePercent) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 8: try { try decoder.decodeSingularInt64Field(value: &self.originEnergyLimit) }()
      case 9: try { try decoder.decodeSingularBytesField(value: &self.codeHash) }()
      case 10: try { try decoder.decodeSingularBytesField(value: &self.trxHash) }()
      case 11: try { try decoder.decodeSingularInt32Field(value: &self.version) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.originAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.originAddress, fieldNumber: 1)
    }
    if !self.contractAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.contractAddress, fieldNumber: 2)
    }
    try { if let v = self._abi {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if !self.bytecode.isEmpty {
      try visitor.visitSingularBytesField(value: self.bytecode, fieldNumber: 4)
    }
    if self.callValue != 0 {
      try visitor.visitSingularInt64Field(value: self.callValue, fieldNumber: 5)
    }
    if self.consumeUserResourcePercent != 0 {
      try visitor.visitSingularInt64Field(value: self.consumeUserResourcePercent, fieldNumber: 6)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 7)
    }
    if self.originEnergyLimit != 0 {
      try visitor.visitSingularInt64Field(value: self.originEnergyLimit, fieldNumber: 8)
    }
    if !self.codeHash.isEmpty {
      try visitor.visitSingularBytesField(value: self.codeHash, fieldNumber: 9)
    }
    if !self.trxHash.isEmpty {
      try visitor.visitSingularBytesField(value: self.trxHash, fieldNumber: 10)
    }
    if self.version != 0 {
      try visitor.visitSingularInt32Field(value: self.version, fieldNumber: 11)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_SmartContract, rhs: Protocol_SmartContract) -> Bool {
    if lhs.originAddress != rhs.originAddress {return false}
    if lhs.contractAddress != rhs.contractAddress {return false}
    if lhs._abi != rhs._abi {return false}
    if lhs.bytecode != rhs.bytecode {return false}
    if lhs.callValue != rhs.callValue {return false}
    if lhs.consumeUserResourcePercent != rhs.consumeUserResourcePercent {return false}
    if lhs.name != rhs.name {return false}
    if lhs.originEnergyLimit != rhs.originEnergyLimit {return false}
    if lhs.codeHash != rhs.codeHash {return false}
    if lhs.trxHash != rhs.trxHash {return false}
    if lhs.version != rhs.version {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_SmartContract.ABI: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Protocol_SmartContract.protoMessageName + ".ABI"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "entrys"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.entrys) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.entrys.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.entrys, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_SmartContract.ABI, rhs: Protocol_SmartContract.ABI) -> Bool {
    if lhs.entrys != rhs.entrys {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_SmartContract.ABI.Entry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Protocol_SmartContract.ABI.protoMessageName + ".Entry"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "anonymous"),
    2: .same(proto: "constant"),
    3: .same(proto: "name"),
    4: .same(proto: "inputs"),
    5: .same(proto: "outputs"),
    6: .same(proto: "type"),
    7: .same(proto: "payable"),
    8: .same(proto: "stateMutability"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.anonymous) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.constant) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.inputs) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.outputs) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self.payable) }()
      case 8: try { try decoder.decodeSingularEnumField(value: &self.stateMutability) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.anonymous != false {
      try visitor.visitSingularBoolField(value: self.anonymous, fieldNumber: 1)
    }
    if self.constant != false {
      try visitor.visitSingularBoolField(value: self.constant, fieldNumber: 2)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    if !self.inputs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.inputs, fieldNumber: 4)
    }
    if !self.outputs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.outputs, fieldNumber: 5)
    }
    if self.type != .unknownEntryType {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 6)
    }
    if self.payable != false {
      try visitor.visitSingularBoolField(value: self.payable, fieldNumber: 7)
    }
    if self.stateMutability != .unknownMutabilityType {
      try visitor.visitSingularEnumField(value: self.stateMutability, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_SmartContract.ABI.Entry, rhs: Protocol_SmartContract.ABI.Entry) -> Bool {
    if lhs.anonymous != rhs.anonymous {return false}
    if lhs.constant != rhs.constant {return false}
    if lhs.name != rhs.name {return false}
    if lhs.inputs != rhs.inputs {return false}
    if lhs.outputs != rhs.outputs {return false}
    if lhs.type != rhs.type {return false}
    if lhs.payable != rhs.payable {return false}
    if lhs.stateMutability != rhs.stateMutability {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_SmartContract.ABI.Entry.EntryType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UnknownEntryType"),
    1: .same(proto: "Constructor"),
    2: .same(proto: "Function"),
    3: .same(proto: "Event"),
    4: .same(proto: "Fallback"),
    5: .same(proto: "Receive"),
    6: .same(proto: "Error"),
  ]
}

extension Protocol_SmartContract.ABI.Entry.StateMutabilityType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UnknownMutabilityType"),
    1: .same(proto: "Pure"),
    2: .same(proto: "View"),
    3: .same(proto: "Nonpayable"),
    4: .same(proto: "Payable"),
  ]
}

extension Protocol_SmartContract.ABI.Entry.Param: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Protocol_SmartContract.ABI.Entry.protoMessageName + ".Param"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "indexed"),
    2: .same(proto: "name"),
    3: .same(proto: "type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.indexed) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.type) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.indexed != false {
      try visitor.visitSingularBoolField(value: self.indexed, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_SmartContract.ABI.Entry.Param, rhs: Protocol_SmartContract.ABI.Entry.Param) -> Bool {
    if lhs.indexed != rhs.indexed {return false}
    if lhs.name != rhs.name {return false}
    if lhs.type != rhs.type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_CreateSmartContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateSmartContract"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "owner_address"),
    2: .standard(proto: "new_contract"),
    3: .standard(proto: "call_token_value"),
    4: .standard(proto: "token_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.ownerAddress) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._newContract) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.callTokenValue) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.tokenID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.ownerAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.ownerAddress, fieldNumber: 1)
    }
    try { if let v = self._newContract {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if self.callTokenValue != 0 {
      try visitor.visitSingularInt64Field(value: self.callTokenValue, fieldNumber: 3)
    }
    if self.tokenID != 0 {
      try visitor.visitSingularInt64Field(value: self.tokenID, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_CreateSmartContract, rhs: Protocol_CreateSmartContract) -> Bool {
    if lhs.ownerAddress != rhs.ownerAddress {return false}
    if lhs._newContract != rhs._newContract {return false}
    if lhs.callTokenValue != rhs.callTokenValue {return false}
    if lhs.tokenID != rhs.tokenID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_TriggerSmartContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TriggerSmartContract"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "owner_address"),
    2: .standard(proto: "contract_address"),
    3: .standard(proto: "call_value"),
    4: .same(proto: "data"),
    5: .standard(proto: "call_token_value"),
    6: .standard(proto: "token_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.ownerAddress) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.contractAddress) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.callValue) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.data) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.callTokenValue) }()
      case 6: try { try decoder.decodeSingularInt64Field(value: &self.tokenID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.ownerAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.ownerAddress, fieldNumber: 1)
    }
    if !self.contractAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.contractAddress, fieldNumber: 2)
    }
    if self.callValue != 0 {
      try visitor.visitSingularInt64Field(value: self.callValue, fieldNumber: 3)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 4)
    }
    if self.callTokenValue != 0 {
      try visitor.visitSingularInt64Field(value: self.callTokenValue, fieldNumber: 5)
    }
    if self.tokenID != 0 {
      try visitor.visitSingularInt64Field(value: self.tokenID, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_TriggerSmartContract, rhs: Protocol_TriggerSmartContract) -> Bool {
    if lhs.ownerAddress != rhs.ownerAddress {return false}
    if lhs.contractAddress != rhs.contractAddress {return false}
    if lhs.callValue != rhs.callValue {return false}
    if lhs.data != rhs.data {return false}
    if lhs.callTokenValue != rhs.callTokenValue {return false}
    if lhs.tokenID != rhs.tokenID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_ClearABIContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClearABIContract"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "owner_address"),
    2: .standard(proto: "contract_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.ownerAddress) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.contractAddress) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.ownerAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.ownerAddress, fieldNumber: 1)
    }
    if !self.contractAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.contractAddress, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_ClearABIContract, rhs: Protocol_ClearABIContract) -> Bool {
    if lhs.ownerAddress != rhs.ownerAddress {return false}
    if lhs.contractAddress != rhs.contractAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_UpdateSettingContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateSettingContract"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "owner_address"),
    2: .standard(proto: "contract_address"),
    3: .standard(proto: "consume_user_resource_percent"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.ownerAddress) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.contractAddress) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.consumeUserResourcePercent) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.ownerAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.ownerAddress, fieldNumber: 1)
    }
    if !self.contractAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.contractAddress, fieldNumber: 2)
    }
    if self.consumeUserResourcePercent != 0 {
      try visitor.visitSingularInt64Field(value: self.consumeUserResourcePercent, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_UpdateSettingContract, rhs: Protocol_UpdateSettingContract) -> Bool {
    if lhs.ownerAddress != rhs.ownerAddress {return false}
    if lhs.contractAddress != rhs.contractAddress {return false}
    if lhs.consumeUserResourcePercent != rhs.consumeUserResourcePercent {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_UpdateEnergyLimitContract: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateEnergyLimitContract"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "owner_address"),
    2: .standard(proto: "contract_address"),
    3: .standard(proto: "origin_energy_limit"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.ownerAddress) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.contractAddress) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.originEnergyLimit) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.ownerAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.ownerAddress, fieldNumber: 1)
    }
    if !self.contractAddress.isEmpty {
      try visitor.visitSingularBytesField(value: self.contractAddress, fieldNumber: 2)
    }
    if self.originEnergyLimit != 0 {
      try visitor.visitSingularInt64Field(value: self.originEnergyLimit, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_UpdateEnergyLimitContract, rhs: Protocol_UpdateEnergyLimitContract) -> Bool {
    if lhs.ownerAddress != rhs.ownerAddress {return false}
    if lhs.contractAddress != rhs.contractAddress {return false}
    if lhs.originEnergyLimit != rhs.originEnergyLimit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Protocol_SmartContractDataWrapper: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SmartContractDataWrapper"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "smart_contract"),
    2: .same(proto: "runtimecode"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._smartContract) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.runtimecode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._smartContract {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.runtimecode.isEmpty {
      try visitor.visitSingularBytesField(value: self.runtimecode, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Protocol_SmartContractDataWrapper, rhs: Protocol_SmartContractDataWrapper) -> Bool {
    if lhs._smartContract != rhs._smartContract {return false}
    if lhs.runtimecode != rhs.runtimecode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
