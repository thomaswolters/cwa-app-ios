// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: apple_exposure_notification.proto
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

struct Apple_File {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var header: Apple_Header {
    get {return _header ?? Apple_Header()}
    set {_header = newValue}
  }
  /// Returns true if `header` has been explicitly set.
  var hasHeader: Bool {return self._header != nil}
  /// Clears the value of `header`. Subsequent reads from it will return its default value.
  mutating func clearHeader() {self._header = nil}

  var key: [Apple_Key] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _header: Apple_Header? = nil
}

struct Apple_Header {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Time window of keys in this file based on arrival to server, in UTC.
  var startTimestamp: Int64 = 0

  var endTimestamp: Int64 = 0

  /// Region for which these keys came from (e.g., country)
  var region: String = String()

  /// E.g., Batch 2 of 10
  var batchNum: Int32 = 0

  var batchSize: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apple_Key {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Key of infected user
  var keyData: Data = SwiftProtobuf.Internal.emptyData

  /// Interval number when the key's EKRollingPeriod started.
  var rollingStartNumber: UInt32 = 0

  /// Number of 10-minute windows between key rolling.
  var rollingPeriod: UInt32 = 0

  /// Risk of transmission associated with the person this key came from.
  var transmissionRiskLevel: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "apple"

extension Apple_File: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".File"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "key"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._header)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.key)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._header {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.key.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.key, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apple_File, rhs: Apple_File) -> Bool {
    if lhs._header != rhs._header {return false}
    if lhs.key != rhs.key {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_Header: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Header"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "startTimestamp"),
    2: .same(proto: "endTimestamp"),
    3: .same(proto: "region"),
    4: .same(proto: "batchNum"),
    5: .same(proto: "batchSize"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.startTimestamp)
      case 2: try decoder.decodeSingularInt64Field(value: &self.endTimestamp)
      case 3: try decoder.decodeSingularStringField(value: &self.region)
      case 4: try decoder.decodeSingularInt32Field(value: &self.batchNum)
      case 5: try decoder.decodeSingularInt32Field(value: &self.batchSize)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.startTimestamp != 0 {
      try visitor.visitSingularInt64Field(value: self.startTimestamp, fieldNumber: 1)
    }
    if self.endTimestamp != 0 {
      try visitor.visitSingularInt64Field(value: self.endTimestamp, fieldNumber: 2)
    }
    if !self.region.isEmpty {
      try visitor.visitSingularStringField(value: self.region, fieldNumber: 3)
    }
    if self.batchNum != 0 {
      try visitor.visitSingularInt32Field(value: self.batchNum, fieldNumber: 4)
    }
    if self.batchSize != 0 {
      try visitor.visitSingularInt32Field(value: self.batchSize, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apple_Header, rhs: Apple_Header) -> Bool {
    if lhs.startTimestamp != rhs.startTimestamp {return false}
    if lhs.endTimestamp != rhs.endTimestamp {return false}
    if lhs.region != rhs.region {return false}
    if lhs.batchNum != rhs.batchNum {return false}
    if lhs.batchSize != rhs.batchSize {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_Key: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Key"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "keyData"),
    2: .same(proto: "rollingStartNumber"),
    3: .same(proto: "rollingPeriod"),
    4: .same(proto: "transmissionRiskLevel"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.keyData)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.rollingStartNumber)
      case 3: try decoder.decodeSingularUInt32Field(value: &self.rollingPeriod)
      case 4: try decoder.decodeSingularInt32Field(value: &self.transmissionRiskLevel)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.keyData.isEmpty {
      try visitor.visitSingularBytesField(value: self.keyData, fieldNumber: 1)
    }
    if self.rollingStartNumber != 0 {
      try visitor.visitSingularUInt32Field(value: self.rollingStartNumber, fieldNumber: 2)
    }
    if self.rollingPeriod != 0 {
      try visitor.visitSingularUInt32Field(value: self.rollingPeriod, fieldNumber: 3)
    }
    if self.transmissionRiskLevel != 0 {
      try visitor.visitSingularInt32Field(value: self.transmissionRiskLevel, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apple_Key, rhs: Apple_Key) -> Bool {
    if lhs.keyData != rhs.keyData {return false}
    if lhs.rollingStartNumber != rhs.rollingStartNumber {return false}
    if lhs.rollingPeriod != rhs.rollingPeriod {return false}
    if lhs.transmissionRiskLevel != rhs.transmissionRiskLevel {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}