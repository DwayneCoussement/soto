// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for KinesisVideoMedia
public enum KinesisVideoMediaErrorType: AWSErrorType {
    case clientLimitExceededException(message: String?)
    case connectionLimitExceededException(message: String?)
    case invalidArgumentException(message: String?)
    case invalidEndpointException(message: String?)
    case notAuthorizedException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension KinesisVideoMediaErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ClientLimitExceededException":
            self = .clientLimitExceededException(message: message)
        case "ConnectionLimitExceededException":
            self = .connectionLimitExceededException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "InvalidEndpointException":
            self = .invalidEndpointException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}
