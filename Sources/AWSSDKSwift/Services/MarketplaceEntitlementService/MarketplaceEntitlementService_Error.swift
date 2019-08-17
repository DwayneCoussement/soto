// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for MarketplaceEntitlementService
public enum MarketplaceEntitlementServiceErrorType: AWSErrorType {
    case internalServiceErrorException(message: String?)
    case invalidParameterException(message: String?)
    case throttlingException(message: String?)
}

extension MarketplaceEntitlementServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        default:
            return nil
        }
    }
}
