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
Client object for interacting with AWS NetworkManager service.

Transit Gateway Network Manager (Network Manager) enables you to create a global network, in which you can monitor your AWS and on-premises networks that are built around transit gateways.
*/
public struct NetworkManager {

    //MARK: Member variables

    public let client: AWSClient
    public let serviceConfig: AWSServiceConfig

    //MARK: Initialization

    /// Initialize the NetworkManager client
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
            service: "networkmanager",
            serviceProtocol: .restjson,
            apiVersion: "2019-07-05",
            endpoint: endpoint,
            possibleErrorTypes: [NetworkManagerErrorType.self]
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

    ///  Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.  You can only associate customer gateways that are connected to a VPN attachment on a transit gateway. The transit gateway must be registered in your global network. When you register a transit gateway, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the DescribeVpnConnections EC2 API and filter by transit-gateway-id. You cannot associate a customer gateway with more than one device and link. 
    public func associateCustomerGateway(_ input: AssociateCustomerGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateCustomerGatewayResponse> {
        return client.execute(operation: "AssociateCustomerGateway", path: "/global-networks/{globalNetworkId}/customer-gateway-associations", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.
    public func associateLink(_ input: AssociateLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateLinkResponse> {
        return client.execute(operation: "AssociateLink", path: "/global-networks/{globalNetworkId}/link-associations", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.
    public func createDevice(_ input: CreateDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceResponse> {
        return client.execute(operation: "CreateDevice", path: "/global-networks/{globalNetworkId}/devices", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a new, empty global network.
    public func createGlobalNetwork(_ input: CreateGlobalNetworkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGlobalNetworkResponse> {
        return client.execute(operation: "CreateGlobalNetwork", path: "/global-networks", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a new link for a specified site.
    public func createLink(_ input: CreateLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLinkResponse> {
        return client.execute(operation: "CreateLink", path: "/global-networks/{globalNetworkId}/links", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Creates a new site in a global network.
    public func createSite(_ input: CreateSiteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSiteResponse> {
        return client.execute(operation: "CreateSite", path: "/global-networks/{globalNetworkId}/sites", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an existing device. You must first disassociate the device from any links and customer gateways.
    public func deleteDevice(_ input: DeleteDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        return client.execute(operation: "DeleteDevice", path: "/global-networks/{globalNetworkId}/devices/{deviceId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an existing global network. You must first delete all global network objects (devices, links, and sites) and deregister all transit gateways.
    public func deleteGlobalNetwork(_ input: DeleteGlobalNetworkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGlobalNetworkResponse> {
        return client.execute(operation: "DeleteGlobalNetwork", path: "/global-networks/{globalNetworkId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an existing link. You must first disassociate the link from any devices and customer gateways.
    public func deleteLink(_ input: DeleteLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLinkResponse> {
        return client.execute(operation: "DeleteLink", path: "/global-networks/{globalNetworkId}/links/{linkId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deletes an existing site. The site cannot be associated with any device or link.
    public func deleteSite(_ input: DeleteSiteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSiteResponse> {
        return client.execute(operation: "DeleteSite", path: "/global-networks/{globalNetworkId}/sites/{siteId}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.
    public func deregisterTransitGateway(_ input: DeregisterTransitGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterTransitGatewayResponse> {
        return client.execute(operation: "DeregisterTransitGateway", path: "/global-networks/{globalNetworkId}/transit-gateway-registrations/{transitGatewayArn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
    public func describeGlobalNetworks(_ input: DescribeGlobalNetworksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGlobalNetworksResponse> {
        return client.execute(operation: "DescribeGlobalNetworks", path: "/global-networks", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Disassociates a customer gateway from a device and a link.
    public func disassociateCustomerGateway(_ input: DisassociateCustomerGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateCustomerGatewayResponse> {
        return client.execute(operation: "DisassociateCustomerGateway", path: "/global-networks/{globalNetworkId}/customer-gateway-associations/{customerGatewayArn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.
    public func disassociateLink(_ input: DisassociateLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateLinkResponse> {
        return client.execute(operation: "DisassociateLink", path: "/global-networks/{globalNetworkId}/link-associations", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the association information for customer gateways that are associated with devices and links in your global network.
    public func getCustomerGatewayAssociations(_ input: GetCustomerGatewayAssociationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomerGatewayAssociationsResponse> {
        return client.execute(operation: "GetCustomerGatewayAssociations", path: "/global-networks/{globalNetworkId}/customer-gateway-associations", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets information about one or more of your devices in a global network.
    public func getDevices(_ input: GetDevicesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicesResponse> {
        return client.execute(operation: "GetDevices", path: "/global-networks/{globalNetworkId}/devices", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    public func getLinkAssociations(_ input: GetLinkAssociationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLinkAssociationsResponse> {
        return client.execute(operation: "GetLinkAssociations", path: "/global-networks/{globalNetworkId}/link-associations", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    public func getLinks(_ input: GetLinksRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLinksResponse> {
        return client.execute(operation: "GetLinks", path: "/global-networks/{globalNetworkId}/links", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets information about one or more of your sites in a global network.
    public func getSites(_ input: GetSitesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSitesResponse> {
        return client.execute(operation: "GetSites", path: "/global-networks/{globalNetworkId}/sites", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Gets information about the transit gateway registrations in a specified global network.
    public func getTransitGatewayRegistrations(_ input: GetTransitGatewayRegistrationsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTransitGatewayRegistrationsResponse> {
        return client.execute(operation: "GetTransitGatewayRegistrations", path: "/global-networks/{globalNetworkId}/transit-gateway-registrations", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Lists the tags for a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.
    public func registerTransitGateway(_ input: RegisterTransitGatewayRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterTransitGatewayResponse> {
        return client.execute(operation: "RegisterTransitGateway", path: "/global-networks/{globalNetworkId}/transit-gateway-registrations", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Tags a specified resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Removes tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.
    public func updateDevice(_ input: UpdateDeviceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceResponse> {
        return client.execute(operation: "UpdateDevice", path: "/global-networks/{globalNetworkId}/devices/{deviceId}", httpMethod: "PATCH", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates an existing global network. To remove information for any of the parameters, specify an empty string.
    public func updateGlobalNetwork(_ input: UpdateGlobalNetworkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGlobalNetworkResponse> {
        return client.execute(operation: "UpdateGlobalNetwork", path: "/global-networks/{globalNetworkId}", httpMethod: "PATCH", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.
    public func updateLink(_ input: UpdateLinkRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLinkResponse> {
        return client.execute(operation: "UpdateLink", path: "/global-networks/{globalNetworkId}/links/{linkId}", httpMethod: "PATCH", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }

    ///  Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.
    public func updateSite(_ input: UpdateSiteRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSiteResponse> {
        return client.execute(operation: "UpdateSite", path: "/global-networks/{globalNetworkId}/sites/{siteId}", httpMethod: "PATCH", serviceConfig: serviceConfig, input: input, on: eventLoop)
    }
}
