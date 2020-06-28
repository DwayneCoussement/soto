//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS Schemas service.

Amazon EventBridge Schema Registry
*/
public struct Schemas {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the Schemas client
    /// - parameters:
    ///     - credentialProvider: Object providing credential to sign requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        credentialProvider credentialProviderFactory: CredentialProviderFactory = .default,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.serviceConfig = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "schemas",
            serviceProtocol: .restjson,
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            possibleErrorTypes: [SchemasErrorType.self]
        )
        self.client = AWSClient(
            credentialProvider: credentialProviderFactory,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            httpClientProvider: httpClientProvider
        )
    }
    
    public func syncShutdown() throws {
        try client.syncShutdown()
    }
    
    //MARK: API Calls

    ///  Creates a discoverer.
    public func createDiscoverer(_ input: CreateDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDiscovererResponse> {
        return client.execute(operation: "CreateDiscoverer", path: "/v1/discoverers", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a registry.
    public func createRegistry(_ input: CreateRegistryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRegistryResponse> {
        return client.execute(operation: "CreateRegistry", path: "/v1/registries/name/{registryName}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a schema definition. Inactive schemas will be deleted after two years.
    public func createSchema(_ input: CreateSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemaResponse> {
        return client.execute(operation: "CreateSchema", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a discoverer.
    @discardableResult public func deleteDiscoverer(_ input: DeleteDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteDiscoverer", path: "/v1/discoverers/id/{discovererId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes a Registry.
    @discardableResult public func deleteRegistry(_ input: DeleteRegistryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteRegistry", path: "/v1/registries/name/{registryName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete the resource-based policy attached to the specified registry.
    @discardableResult public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteResourcePolicy", path: "/v1/policy", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete a schema definition.
    @discardableResult public func deleteSchema(_ input: DeleteSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteSchema", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Delete the schema version definition
    @discardableResult public func deleteSchemaVersion(_ input: DeleteSchemaVersionRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "DeleteSchemaVersion", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/version/{schemaVersion}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describe the code binding URI.
    public func describeCodeBinding(_ input: DescribeCodeBindingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeBindingResponse> {
        return client.execute(operation: "DescribeCodeBinding", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes the discoverer.
    public func describeDiscoverer(_ input: DescribeDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiscovererResponse> {
        return client.execute(operation: "DescribeDiscoverer", path: "/v1/discoverers/id/{discovererId}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes the registry.
    public func describeRegistry(_ input: DescribeRegistryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegistryResponse> {
        return client.execute(operation: "DescribeRegistry", path: "/v1/registries/name/{registryName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieve the schema definition.
    public func describeSchema(_ input: DescribeSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchemaResponse> {
        return client.execute(operation: "DescribeSchema", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get the code binding source URI.
    public func getCodeBindingSource(_ input: GetCodeBindingSourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCodeBindingSourceResponse> {
        return client.execute(operation: "GetCodeBindingSource", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}/source", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get the discovered schema that was generated based on sampled events.
    public func getDiscoveredSchema(_ input: GetDiscoveredSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDiscoveredSchemaResponse> {
        return client.execute(operation: "GetDiscoveredSchema", path: "/v1/discover", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Retrieves the resource-based policy attached to a given registry.
    public func getResourcePolicy(_ input: GetResourcePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcePolicyResponse> {
        return client.execute(operation: "GetResourcePolicy", path: "/v1/policy", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List the discoverers.
    public func listDiscoverers(_ input: ListDiscoverersRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDiscoverersResponse> {
        return client.execute(operation: "ListDiscoverers", path: "/v1/discoverers", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List the registries.
    public func listRegistries(_ input: ListRegistriesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRegistriesResponse> {
        return client.execute(operation: "ListRegistries", path: "/v1/registries", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Provides a list of the schema versions and related information.
    public func listSchemaVersions(_ input: ListSchemaVersionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemaVersionsResponse> {
        return client.execute(operation: "ListSchemaVersions", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/versions", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  List the schemas.
    public func listSchemas(_ input: ListSchemasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemasResponse> {
        return client.execute(operation: "ListSchemas", path: "/v1/registries/name/{registryName}/schemas", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Get tags for resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Put code binding URI
    public func putCodeBinding(_ input: PutCodeBindingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutCodeBindingResponse> {
        return client.execute(operation: "PutCodeBinding", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}/language/{language}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  The name of the policy.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutResourcePolicyResponse> {
        return client.execute(operation: "PutResourcePolicy", path: "/v1/policy", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Search the schemas
    public func searchSchemas(_ input: SearchSchemasRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSchemasResponse> {
        return client.execute(operation: "SearchSchemas", path: "/v1/registries/name/{registryName}/schemas/search", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Starts the discoverer
    public func startDiscoverer(_ input: StartDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDiscovererResponse> {
        return client.execute(operation: "StartDiscoverer", path: "/v1/discoverers/id/{discovererId}/start", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Stops the discoverer
    public func stopDiscoverer(_ input: StopDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopDiscovererResponse> {
        return client.execute(operation: "StopDiscoverer", path: "/v1/discoverers/id/{discovererId}/stop", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Add tags to a resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the discoverer
    public func updateDiscoverer(_ input: UpdateDiscovererRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDiscovererResponse> {
        return client.execute(operation: "UpdateDiscoverer", path: "/v1/discoverers/id/{discovererId}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates a registry.
    public func updateRegistry(_ input: UpdateRegistryRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRegistryResponse> {
        return client.execute(operation: "UpdateRegistry", path: "/v1/registries/name/{registryName}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the schema definition Inactive schemas will be deleted after two years.
    public func updateSchema(_ input: UpdateSchemaRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSchemaResponse> {
        return client.execute(operation: "UpdateSchema", path: "/v1/registries/name/{registryName}/schemas/name/{schemaName}", httpMethod: "PUT", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
