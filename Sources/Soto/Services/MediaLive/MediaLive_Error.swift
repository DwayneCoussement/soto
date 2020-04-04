//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for MediaLive
public struct MediaLiveErrorType: AWSErrorType {
    enum Code: String {
        case badGatewayException = "BadGatewayException"
        case badRequestException = "BadRequestException"
        case conflictException = "ConflictException"
        case forbiddenException = "ForbiddenException"
        case gatewayTimeoutException = "GatewayTimeoutException"
        case internalServerErrorException = "InternalServerErrorException"
        case notFoundException = "NotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unprocessableEntityException = "UnprocessableEntityException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MediaLive
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    public static var badGatewayException: Self { .init(.badGatewayException) }
    public static var badRequestException: Self { .init(.badRequestException) }
    public static var conflictException: Self { .init(.conflictException) }
    public static var forbiddenException: Self { .init(.forbiddenException) }
    public static var gatewayTimeoutException: Self { .init(.gatewayTimeoutException) }
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
    public static var notFoundException: Self { .init(.notFoundException) }
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    public static var unprocessableEntityException: Self { .init(.unprocessableEntityException) }
}

extension MediaLiveErrorType: Equatable {
    public static func == (lhs: MediaLiveErrorType, rhs: MediaLiveErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MediaLiveErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}