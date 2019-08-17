// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Lambda
public enum LambdaErrorType: AWSErrorType {
    case codeStorageExceededException(message: String?)
    case eC2AccessDeniedException(message: String?)
    case eC2ThrottledException(message: String?)
    case eC2UnexpectedException(message: String?)
    case eNILimitReachedException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidRequestContentException(message: String?)
    case invalidRuntimeException(message: String?)
    case invalidSecurityGroupIDException(message: String?)
    case invalidSubnetIDException(message: String?)
    case invalidZipFileException(message: String?)
    case kMSAccessDeniedException(message: String?)
    case kMSDisabledException(message: String?)
    case kMSInvalidStateException(message: String?)
    case kMSNotFoundException(message: String?)
    case policyLengthExceededException(message: String?)
    case preconditionFailedException(message: String?)
    case requestTooLargeException(message: String?)
    case resourceConflictException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceException(message: String?)
    case subnetIPAddressLimitReachedException(message: String?)
    case tooManyRequestsException(message: String?)
    case unsupportedMediaTypeException(message: String?)
}

extension LambdaErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CodeStorageExceededException":
            self = .codeStorageExceededException(message: message)
        case "EC2AccessDeniedException":
            self = .eC2AccessDeniedException(message: message)
        case "EC2ThrottledException":
            self = .eC2ThrottledException(message: message)
        case "EC2UnexpectedException":
            self = .eC2UnexpectedException(message: message)
        case "ENILimitReachedException":
            self = .eNILimitReachedException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidRequestContentException":
            self = .invalidRequestContentException(message: message)
        case "InvalidRuntimeException":
            self = .invalidRuntimeException(message: message)
        case "InvalidSecurityGroupIDException":
            self = .invalidSecurityGroupIDException(message: message)
        case "InvalidSubnetIDException":
            self = .invalidSubnetIDException(message: message)
        case "InvalidZipFileException":
            self = .invalidZipFileException(message: message)
        case "KMSAccessDeniedException":
            self = .kMSAccessDeniedException(message: message)
        case "KMSDisabledException":
            self = .kMSDisabledException(message: message)
        case "KMSInvalidStateException":
            self = .kMSInvalidStateException(message: message)
        case "KMSNotFoundException":
            self = .kMSNotFoundException(message: message)
        case "PolicyLengthExceededException":
            self = .policyLengthExceededException(message: message)
        case "PreconditionFailedException":
            self = .preconditionFailedException(message: message)
        case "RequestTooLargeException":
            self = .requestTooLargeException(message: message)
        case "ResourceConflictException":
            self = .resourceConflictException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceException":
            self = .serviceException(message: message)
        case "SubnetIPAddressLimitReachedException":
            self = .subnetIPAddressLimitReachedException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "UnsupportedMediaTypeException":
            self = .unsupportedMediaTypeException(message: message)
        default:
            return nil
        }
    }
}
