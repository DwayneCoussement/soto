// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SWF
public enum SWFErrorType: AWSErrorType {
    case defaultUndefinedFault(message: String?)
    case domainAlreadyExistsFault(message: String?)
    case domainDeprecatedFault(message: String?)
    case limitExceededFault(message: String?)
    case operationNotPermittedFault(message: String?)
    case tooManyTagsFault(message: String?)
    case typeAlreadyExistsFault(message: String?)
    case typeDeprecatedFault(message: String?)
    case unknownResourceFault(message: String?)
    case workflowExecutionAlreadyStartedFault(message: String?)
}

extension SWFErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DefaultUndefinedFault":
            self = .defaultUndefinedFault(message: message)
        case "DomainAlreadyExistsFault":
            self = .domainAlreadyExistsFault(message: message)
        case "DomainDeprecatedFault":
            self = .domainDeprecatedFault(message: message)
        case "LimitExceededFault":
            self = .limitExceededFault(message: message)
        case "OperationNotPermittedFault":
            self = .operationNotPermittedFault(message: message)
        case "TooManyTagsFault":
            self = .tooManyTagsFault(message: message)
        case "TypeAlreadyExistsFault":
            self = .typeAlreadyExistsFault(message: message)
        case "TypeDeprecatedFault":
            self = .typeDeprecatedFault(message: message)
        case "UnknownResourceFault":
            self = .unknownResourceFault(message: message)
        case "WorkflowExecutionAlreadyStartedFault":
            self = .workflowExecutionAlreadyStartedFault(message: message)
        default:
            return nil
        }
    }
}

extension SWFErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .defaultUndefinedFault(let message):
            return "DefaultUndefinedFault: \(message ?? "")"
        case .domainAlreadyExistsFault(let message):
            return "DomainAlreadyExistsFault: \(message ?? "")"
        case .domainDeprecatedFault(let message):
            return "DomainDeprecatedFault: \(message ?? "")"
        case .limitExceededFault(let message):
            return "LimitExceededFault: \(message ?? "")"
        case .operationNotPermittedFault(let message):
            return "OperationNotPermittedFault: \(message ?? "")"
        case .tooManyTagsFault(let message):
            return "TooManyTagsFault: \(message ?? "")"
        case .typeAlreadyExistsFault(let message):
            return "TypeAlreadyExistsFault: \(message ?? "")"
        case .typeDeprecatedFault(let message):
            return "TypeDeprecatedFault: \(message ?? "")"
        case .unknownResourceFault(let message):
            return "UnknownResourceFault: \(message ?? "")"
        case .workflowExecutionAlreadyStartedFault(let message):
            return "WorkflowExecutionAlreadyStartedFault: \(message ?? "")"
        }
    }
}
