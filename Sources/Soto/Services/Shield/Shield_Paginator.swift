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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import SotoCore

// MARK: Paginators

extension Shield {
    ///  Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.
    public func listAttacksPaginator(
        _ input: ListAttacksRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListAttacksResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAttacks,
            tokenKey: \ListAttacksResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all Protection objects for the account.
    public func listProtectionsPaginator(
        _ input: ListProtectionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListProtectionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProtections,
            tokenKey: \ListProtectionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Shield.ListAttacksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Shield.ListAttacksRequest {
        return .init(
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            resourceArns: self.resourceArns,
            startTime: self.startTime
        )
    }
}

extension Shield.ListProtectionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Shield.ListProtectionsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}