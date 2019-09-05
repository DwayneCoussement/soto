// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ElasticsearchService
public enum ElasticsearchServiceErrorType: AWSErrorType {
    case baseException(message: String?)
    case disabledOperationException(message: String?)
    case internalException(message: String?)
    case invalidTypeException(message: String?)
    case limitExceededException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceNotFoundException(message: String?)
    case validationException(message: String?)
}

extension ElasticsearchServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BaseException":
            self = .baseException(message: message)
        case "DisabledOperationException":
            self = .disabledOperationException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "InvalidTypeException":
            self = .invalidTypeException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension ElasticsearchServiceErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .baseException(let message):
            return "BaseException: \(message ?? "")"
        case .disabledOperationException(let message):
            return "DisabledOperationException: \(message ?? "")"
        case .internalException(let message):
            return "InternalException: \(message ?? "")"
        case .invalidTypeException(let message):
            return "InvalidTypeException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .resourceAlreadyExistsException(let message):
            return "ResourceAlreadyExistsException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
