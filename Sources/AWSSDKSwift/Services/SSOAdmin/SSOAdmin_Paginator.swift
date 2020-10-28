// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension SSOAdmin {

    ///  Lists the status of the AWS account assignment creation requests for a specified SSO instance.
    public func listAccountAssignmentCreationStatusPaginator(_ input: ListAccountAssignmentCreationStatusRequest, onPage: @escaping (ListAccountAssignmentCreationStatusResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAccountAssignmentCreationStatus, tokenKey: \ListAccountAssignmentCreationStatusResponse.nextToken, onPage: onPage)
    }

    ///  Lists the status of the AWS account assignment deletion requests for a specified SSO instance.
    public func listAccountAssignmentDeletionStatusPaginator(_ input: ListAccountAssignmentDeletionStatusRequest, onPage: @escaping (ListAccountAssignmentDeletionStatusResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAccountAssignmentDeletionStatus, tokenKey: \ListAccountAssignmentDeletionStatusResponse.nextToken, onPage: onPage)
    }

    ///  Lists the assignee of the specified AWS account with the specified permission set.
    public func listAccountAssignmentsPaginator(_ input: ListAccountAssignmentsRequest, onPage: @escaping (ListAccountAssignmentsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAccountAssignments, tokenKey: \ListAccountAssignmentsResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the AWS accounts where the specified permission set is provisioned.
    public func listAccountsForProvisionedPermissionSetPaginator(_ input: ListAccountsForProvisionedPermissionSetRequest, onPage: @escaping (ListAccountsForProvisionedPermissionSetResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAccountsForProvisionedPermissionSet, tokenKey: \ListAccountsForProvisionedPermissionSetResponse.nextToken, onPage: onPage)
    }

    ///  Lists the SSO instances that the caller has access to.
    public func listInstancesPaginator(_ input: ListInstancesRequest, onPage: @escaping (ListInstancesResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInstances, tokenKey: \ListInstancesResponse.nextToken, onPage: onPage)
    }

    ///  Lists the IAM managed policy that is attached to a specified permission set.
    public func listManagedPoliciesInPermissionSetPaginator(_ input: ListManagedPoliciesInPermissionSetRequest, onPage: @escaping (ListManagedPoliciesInPermissionSetResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listManagedPoliciesInPermissionSet, tokenKey: \ListManagedPoliciesInPermissionSetResponse.nextToken, onPage: onPage)
    }

    ///  Lists the status of the permission set provisioning requests for a specified SSO instance.
    public func listPermissionSetProvisioningStatusPaginator(_ input: ListPermissionSetProvisioningStatusRequest, onPage: @escaping (ListPermissionSetProvisioningStatusResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPermissionSetProvisioningStatus, tokenKey: \ListPermissionSetProvisioningStatusResponse.nextToken, onPage: onPage)
    }

    ///  Lists the PermissionSets in an SSO instance.
    public func listPermissionSetsPaginator(_ input: ListPermissionSetsRequest, onPage: @escaping (ListPermissionSetsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPermissionSets, tokenKey: \ListPermissionSetsResponse.nextToken, onPage: onPage)
    }

    ///  Lists all the permission sets that are provisioned to a specified AWS account.
    public func listPermissionSetsProvisionedToAccountPaginator(_ input: ListPermissionSetsProvisionedToAccountRequest, onPage: @escaping (ListPermissionSetsProvisionedToAccountResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPermissionSetsProvisionedToAccount, tokenKey: \ListPermissionSetsProvisionedToAccountResponse.nextToken, onPage: onPage)
    }

    ///  Lists the tags that are attached to a specified resource.
    public func listTagsForResourcePaginator(_ input: ListTagsForResourceRequest, onPage: @escaping (ListTagsForResourceResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listTagsForResource, tokenKey: \ListTagsForResourceResponse.nextToken, onPage: onPage)
    }

}

extension SSOAdmin.ListAccountAssignmentCreationStatusRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountAssignmentCreationStatusRequest {
        return .init(
            filter: self.filter, 
            instanceArn: self.instanceArn, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension SSOAdmin.ListAccountAssignmentDeletionStatusRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountAssignmentDeletionStatusRequest {
        return .init(
            filter: self.filter, 
            instanceArn: self.instanceArn, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension SSOAdmin.ListAccountAssignmentsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountAssignmentsRequest {
        return .init(
            accountId: self.accountId, 
            instanceArn: self.instanceArn, 
            maxResults: self.maxResults, 
            nextToken: token, 
            permissionSetArn: self.permissionSetArn
        )

    }
}

extension SSOAdmin.ListAccountsForProvisionedPermissionSetRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListAccountsForProvisionedPermissionSetRequest {
        return .init(
            instanceArn: self.instanceArn, 
            maxResults: self.maxResults, 
            nextToken: token, 
            permissionSetArn: self.permissionSetArn, 
            provisioningStatus: self.provisioningStatus
        )

    }
}

extension SSOAdmin.ListInstancesRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListInstancesRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension SSOAdmin.ListManagedPoliciesInPermissionSetRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListManagedPoliciesInPermissionSetRequest {
        return .init(
            instanceArn: self.instanceArn, 
            maxResults: self.maxResults, 
            nextToken: token, 
            permissionSetArn: self.permissionSetArn
        )

    }
}

extension SSOAdmin.ListPermissionSetProvisioningStatusRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListPermissionSetProvisioningStatusRequest {
        return .init(
            filter: self.filter, 
            instanceArn: self.instanceArn, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension SSOAdmin.ListPermissionSetsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListPermissionSetsRequest {
        return .init(
            instanceArn: self.instanceArn, 
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension SSOAdmin.ListPermissionSetsProvisionedToAccountRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListPermissionSetsProvisionedToAccountRequest {
        return .init(
            accountId: self.accountId, 
            instanceArn: self.instanceArn, 
            maxResults: self.maxResults, 
            nextToken: token, 
            provisioningStatus: self.provisioningStatus
        )

    }
}

extension SSOAdmin.ListTagsForResourceRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> SSOAdmin.ListTagsForResourceRequest {
        return .init(
            instanceArn: self.instanceArn, 
            nextToken: token, 
            resourceArn: self.resourceArn
        )

    }
}

