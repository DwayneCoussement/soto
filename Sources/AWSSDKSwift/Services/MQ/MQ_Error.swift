// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for MQ
public enum MQErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case forbiddenException(message: String?)
    case internalServerErrorException(message: String?)
    case notFoundException(message: String?)
    case unauthorizedException(message: String?)
}

extension MQErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "UnauthorizedException":
            self = .unauthorizedException(message: message)
        default:
            return nil
        }
    }
}

extension MQErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .conflictException(let message):
            return "ConflictException: \(message ?? "")"
        case .forbiddenException(let message):
            return "ForbiddenException: \(message ?? "")"
        case .internalServerErrorException(let message):
            return "InternalServerErrorException: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .unauthorizedException(let message):
            return "UnauthorizedException: \(message ?? "")"
        }
    }
}
