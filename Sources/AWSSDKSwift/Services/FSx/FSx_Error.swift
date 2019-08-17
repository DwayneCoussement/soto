// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for FSx
public enum FSxErrorType: AWSErrorType {
    case activeDirectoryError(message: String?)
    case backupInProgress(message: String?)
    case backupNotFound(message: String?)
    case backupRestoring(message: String?)
    case badRequest(message: String?)
    case fileSystemNotFound(message: String?)
    case incompatibleParameterError(message: String?)
    case internalServerError(message: String?)
    case invalidExportPath(message: String?)
    case invalidImportPath(message: String?)
    case invalidNetworkSettings(message: String?)
    case missingFileSystemConfiguration(message: String?)
    case notServiceResourceError(message: String?)
    case resourceDoesNotSupportTagging(message: String?)
    case resourceNotFound(message: String?)
    case serviceLimitExceeded(message: String?)
    case unsupportedOperation(message: String?)
}

extension FSxErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ActiveDirectoryError":
            self = .activeDirectoryError(message: message)
        case "BackupInProgress":
            self = .backupInProgress(message: message)
        case "BackupNotFound":
            self = .backupNotFound(message: message)
        case "BackupRestoring":
            self = .backupRestoring(message: message)
        case "BadRequest":
            self = .badRequest(message: message)
        case "FileSystemNotFound":
            self = .fileSystemNotFound(message: message)
        case "IncompatibleParameterError":
            self = .incompatibleParameterError(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "InvalidExportPath":
            self = .invalidExportPath(message: message)
        case "InvalidImportPath":
            self = .invalidImportPath(message: message)
        case "InvalidNetworkSettings":
            self = .invalidNetworkSettings(message: message)
        case "MissingFileSystemConfiguration":
            self = .missingFileSystemConfiguration(message: message)
        case "NotServiceResourceError":
            self = .notServiceResourceError(message: message)
        case "ResourceDoesNotSupportTagging":
            self = .resourceDoesNotSupportTagging(message: message)
        case "ResourceNotFound":
            self = .resourceNotFound(message: message)
        case "ServiceLimitExceeded":
            self = .serviceLimitExceeded(message: message)
        case "UnsupportedOperation":
            self = .unsupportedOperation(message: message)
        default:
            return nil
        }
    }
}
