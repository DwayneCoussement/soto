// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Macie2 {

    ///   Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes.
    public func describeBucketsPaginator(_ input: DescribeBucketsRequest, onPage: @escaping (DescribeBucketsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: describeBuckets, tokenKey: \DescribeBucketsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves (queries) quotas and aggregated usage data for one or more accounts.
    public func getUsageStatisticsPaginator(_ input: GetUsageStatisticsRequest, onPage: @escaping (GetUsageStatisticsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: getUsageStatistics, tokenKey: \GetUsageStatisticsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a subset of information about one or more classification jobs.
    public func listClassificationJobsPaginator(_ input: ListClassificationJobsRequest, onPage: @escaping (ListClassificationJobsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listClassificationJobs, tokenKey: \ListClassificationJobsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a subset of information about all the custom data identifiers for an account.
    public func listCustomDataIdentifiersPaginator(_ input: ListCustomDataIdentifiersRequest, onPage: @escaping (ListCustomDataIdentifiersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listCustomDataIdentifiers, tokenKey: \ListCustomDataIdentifiersResponse.nextToken, onPage: onPage)
    }

    ///   Retrieves a subset of information about one or more findings.
    public func listFindingsPaginator(_ input: ListFindingsRequest, onPage: @escaping (ListFindingsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFindings, tokenKey: \ListFindingsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves a subset of information about all the findings filters for an account.
    public func listFindingsFiltersPaginator(_ input: ListFindingsFiltersRequest, onPage: @escaping (ListFindingsFiltersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFindingsFilters, tokenKey: \ListFindingsFiltersResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves information about all the Amazon Macie membership invitations that were received by an account.
    public func listInvitationsPaginator(_ input: ListInvitationsRequest, onPage: @escaping (ListInvitationsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listInvitations, tokenKey: \ListInvitationsResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves information about the accounts that are associated with an Amazon Macie master account.
    public func listMembersPaginator(_ input: ListMembersRequest, onPage: @escaping (ListMembersResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listMembers, tokenKey: \ListMembersResponse.nextToken, onPage: onPage)
    }

    ///  Retrieves information about the account that's designated as the delegated administrator of Amazon Macie for an AWS organization.
    public func listOrganizationAdminAccountsPaginator(_ input: ListOrganizationAdminAccountsRequest, onPage: @escaping (ListOrganizationAdminAccountsResponse, EventLoop)->EventLoopFuture<Bool>) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listOrganizationAdminAccounts, tokenKey: \ListOrganizationAdminAccountsResponse.nextToken, onPage: onPage)
    }

}

extension Macie2.DescribeBucketsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie2.DescribeBucketsRequest {
        return .init(
            criteria: self.criteria, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension Macie2.GetUsageStatisticsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie2.GetUsageStatisticsRequest {
        return .init(
            filterBy: self.filterBy, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortBy: self.sortBy
        )

    }
}

extension Macie2.ListClassificationJobsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListClassificationJobsRequest {
        return .init(
            filterCriteria: self.filterCriteria, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension Macie2.ListCustomDataIdentifiersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListCustomDataIdentifiersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Macie2.ListFindingsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListFindingsRequest {
        return .init(
            findingCriteria: self.findingCriteria, 
            maxResults: self.maxResults, 
            nextToken: token, 
            sortCriteria: self.sortCriteria
        )

    }
}

extension Macie2.ListFindingsFiltersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListFindingsFiltersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Macie2.ListInvitationsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListInvitationsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

extension Macie2.ListMembersRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListMembersRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token, 
            onlyAssociated: self.onlyAssociated
        )

    }
}

extension Macie2.ListOrganizationAdminAccountsRequest: AWSPaginateStringToken {
    public func usingPaginationToken(_ token: String) -> Macie2.ListOrganizationAdminAccountsRequest {
        return .init(
            maxResults: self.maxResults, 
            nextToken: token
        )

    }
}

