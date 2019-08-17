// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ElastiCache
public enum ElastiCacheErrorType: AWSErrorType {
    case aPICallRateForCustomerExceededFault(message: String?)
    case authorizationAlreadyExistsFault(message: String?)
    case authorizationNotFoundFault(message: String?)
    case cacheClusterAlreadyExistsFault(message: String?)
    case cacheClusterNotFoundFault(message: String?)
    case cacheParameterGroupAlreadyExistsFault(message: String?)
    case cacheParameterGroupNotFoundFault(message: String?)
    case cacheParameterGroupQuotaExceededFault(message: String?)
    case cacheSecurityGroupAlreadyExistsFault(message: String?)
    case cacheSecurityGroupNotFoundFault(message: String?)
    case cacheSecurityGroupQuotaExceededFault(message: String?)
    case cacheSubnetGroupAlreadyExistsFault(message: String?)
    case cacheSubnetGroupInUse(message: String?)
    case cacheSubnetGroupNotFoundFault(message: String?)
    case cacheSubnetGroupQuotaExceededFault(message: String?)
    case cacheSubnetQuotaExceededFault(message: String?)
    case clusterQuotaForCustomerExceededFault(message: String?)
    case insufficientCacheClusterCapacityFault(message: String?)
    case invalidARNFault(message: String?)
    case invalidCacheClusterStateFault(message: String?)
    case invalidCacheParameterGroupStateFault(message: String?)
    case invalidCacheSecurityGroupStateFault(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidReplicationGroupStateFault(message: String?)
    case invalidSnapshotStateFault(message: String?)
    case invalidSubnet(message: String?)
    case invalidVPCNetworkStateFault(message: String?)
    case noOperationFault(message: String?)
    case nodeGroupNotFoundFault(message: String?)
    case nodeGroupsPerReplicationGroupQuotaExceededFault(message: String?)
    case nodeQuotaForClusterExceededFault(message: String?)
    case nodeQuotaForCustomerExceededFault(message: String?)
    case replicationGroupAlreadyExistsFault(message: String?)
    case replicationGroupNotFoundFault(message: String?)
    case reservedCacheNodeAlreadyExistsFault(message: String?)
    case reservedCacheNodeNotFoundFault(message: String?)
    case reservedCacheNodeQuotaExceededFault(message: String?)
    case reservedCacheNodesOfferingNotFoundFault(message: String?)
    case serviceLinkedRoleNotFoundFault(message: String?)
    case serviceUpdateNotFoundFault(message: String?)
    case snapshotAlreadyExistsFault(message: String?)
    case snapshotFeatureNotSupportedFault(message: String?)
    case snapshotNotFoundFault(message: String?)
    case snapshotQuotaExceededFault(message: String?)
    case subnetInUse(message: String?)
    case tagNotFoundFault(message: String?)
    case tagQuotaPerResourceExceeded(message: String?)
    case testFailoverNotAvailableFault(message: String?)
}

extension ElastiCacheErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "APICallRateForCustomerExceededFault":
            self = .aPICallRateForCustomerExceededFault(message: message)
        case "AuthorizationAlreadyExistsFault":
            self = .authorizationAlreadyExistsFault(message: message)
        case "AuthorizationNotFoundFault":
            self = .authorizationNotFoundFault(message: message)
        case "CacheClusterAlreadyExistsFault":
            self = .cacheClusterAlreadyExistsFault(message: message)
        case "CacheClusterNotFoundFault":
            self = .cacheClusterNotFoundFault(message: message)
        case "CacheParameterGroupAlreadyExistsFault":
            self = .cacheParameterGroupAlreadyExistsFault(message: message)
        case "CacheParameterGroupNotFoundFault":
            self = .cacheParameterGroupNotFoundFault(message: message)
        case "CacheParameterGroupQuotaExceededFault":
            self = .cacheParameterGroupQuotaExceededFault(message: message)
        case "CacheSecurityGroupAlreadyExistsFault":
            self = .cacheSecurityGroupAlreadyExistsFault(message: message)
        case "CacheSecurityGroupNotFoundFault":
            self = .cacheSecurityGroupNotFoundFault(message: message)
        case "CacheSecurityGroupQuotaExceededFault":
            self = .cacheSecurityGroupQuotaExceededFault(message: message)
        case "CacheSubnetGroupAlreadyExistsFault":
            self = .cacheSubnetGroupAlreadyExistsFault(message: message)
        case "CacheSubnetGroupInUse":
            self = .cacheSubnetGroupInUse(message: message)
        case "CacheSubnetGroupNotFoundFault":
            self = .cacheSubnetGroupNotFoundFault(message: message)
        case "CacheSubnetGroupQuotaExceededFault":
            self = .cacheSubnetGroupQuotaExceededFault(message: message)
        case "CacheSubnetQuotaExceededFault":
            self = .cacheSubnetQuotaExceededFault(message: message)
        case "ClusterQuotaForCustomerExceededFault":
            self = .clusterQuotaForCustomerExceededFault(message: message)
        case "InsufficientCacheClusterCapacityFault":
            self = .insufficientCacheClusterCapacityFault(message: message)
        case "InvalidARNFault":
            self = .invalidARNFault(message: message)
        case "InvalidCacheClusterStateFault":
            self = .invalidCacheClusterStateFault(message: message)
        case "InvalidCacheParameterGroupStateFault":
            self = .invalidCacheParameterGroupStateFault(message: message)
        case "InvalidCacheSecurityGroupStateFault":
            self = .invalidCacheSecurityGroupStateFault(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidReplicationGroupStateFault":
            self = .invalidReplicationGroupStateFault(message: message)
        case "InvalidSnapshotStateFault":
            self = .invalidSnapshotStateFault(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "InvalidVPCNetworkStateFault":
            self = .invalidVPCNetworkStateFault(message: message)
        case "NoOperationFault":
            self = .noOperationFault(message: message)
        case "NodeGroupNotFoundFault":
            self = .nodeGroupNotFoundFault(message: message)
        case "NodeGroupsPerReplicationGroupQuotaExceededFault":
            self = .nodeGroupsPerReplicationGroupQuotaExceededFault(message: message)
        case "NodeQuotaForClusterExceededFault":
            self = .nodeQuotaForClusterExceededFault(message: message)
        case "NodeQuotaForCustomerExceededFault":
            self = .nodeQuotaForCustomerExceededFault(message: message)
        case "ReplicationGroupAlreadyExistsFault":
            self = .replicationGroupAlreadyExistsFault(message: message)
        case "ReplicationGroupNotFoundFault":
            self = .replicationGroupNotFoundFault(message: message)
        case "ReservedCacheNodeAlreadyExistsFault":
            self = .reservedCacheNodeAlreadyExistsFault(message: message)
        case "ReservedCacheNodeNotFoundFault":
            self = .reservedCacheNodeNotFoundFault(message: message)
        case "ReservedCacheNodeQuotaExceededFault":
            self = .reservedCacheNodeQuotaExceededFault(message: message)
        case "ReservedCacheNodesOfferingNotFoundFault":
            self = .reservedCacheNodesOfferingNotFoundFault(message: message)
        case "ServiceLinkedRoleNotFoundFault":
            self = .serviceLinkedRoleNotFoundFault(message: message)
        case "ServiceUpdateNotFoundFault":
            self = .serviceUpdateNotFoundFault(message: message)
        case "SnapshotAlreadyExistsFault":
            self = .snapshotAlreadyExistsFault(message: message)
        case "SnapshotFeatureNotSupportedFault":
            self = .snapshotFeatureNotSupportedFault(message: message)
        case "SnapshotNotFoundFault":
            self = .snapshotNotFoundFault(message: message)
        case "SnapshotQuotaExceededFault":
            self = .snapshotQuotaExceededFault(message: message)
        case "SubnetInUse":
            self = .subnetInUse(message: message)
        case "TagNotFoundFault":
            self = .tagNotFoundFault(message: message)
        case "TagQuotaPerResourceExceeded":
            self = .tagQuotaPerResourceExceeded(message: message)
        case "TestFailoverNotAvailableFault":
            self = .testFailoverNotAvailableFault(message: message)
        default:
            return nil
        }
    }
}
