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

// MARK: Paginators

extension ElasticTranscoder {
    ///  The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline. Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains one element for each job that satisfies the search criteria.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listJobsByPipelinePaginator<Result>(
        _ input: ListJobsByPipelineRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListJobsByPipelineResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listJobsByPipeline,
            tokenKey: \ListJobsByPipelineResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listJobsByPipelinePaginator(
        _ input: ListJobsByPipelineRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListJobsByPipelineResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobsByPipeline,
            tokenKey: \ListJobsByPipelineResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  The ListJobsByStatus operation gets a list of jobs that have a specified status. The response body contains one element for each job that satisfies the search criteria.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listJobsByStatusPaginator<Result>(
        _ input: ListJobsByStatusRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListJobsByStatusResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listJobsByStatus,
            tokenKey: \ListJobsByStatusResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listJobsByStatusPaginator(
        _ input: ListJobsByStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListJobsByStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobsByStatus,
            tokenKey: \ListJobsByStatusResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  The ListPipelines operation gets a list of the pipelines associated with the current AWS account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPipelinesPaginator<Result>(
        _ input: ListPipelinesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPipelinesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPipelines,
            tokenKey: \ListPipelinesResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPipelinesPaginator(
        _ input: ListPipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPipelinesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPipelines,
            tokenKey: \ListPipelinesResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listPresetsPaginator<Result>(
        _ input: ListPresetsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListPresetsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listPresets,
            tokenKey: \ListPresetsResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listPresetsPaginator(
        _ input: ListPresetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPresetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listPresets,
            tokenKey: \ListPresetsResponse.nextPageToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ElasticTranscoder.ListJobsByPipelineRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListJobsByPipelineRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token,
            pipelineId: self.pipelineId
        )
    }
}

extension ElasticTranscoder.ListJobsByStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListJobsByStatusRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token,
            status: self.status
        )
    }
}

extension ElasticTranscoder.ListPipelinesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListPipelinesRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token
        )
    }
}

extension ElasticTranscoder.ListPresetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ElasticTranscoder.ListPresetsRequest {
        return .init(
            ascending: self.ascending,
            pageToken: token
        )
    }
}