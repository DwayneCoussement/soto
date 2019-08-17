// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension ApiGatewayManagementApi {

    public struct PostToConnectionRequest: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Data"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConnectionId", location: .uri(locationName: "connectionId"), required: true, type: .string), 
            AWSShapeMember(label: "Data", required: true, type: .blob)
        ]
        public let connectionId: String
        public let data: Data

        public init(connectionId: String, data: Data) {
            self.connectionId = connectionId
            self.data = data
        }

        private enum CodingKeys: String, CodingKey {
            case connectionId = "connectionId"
            case data = "Data"
        }
    }
}
