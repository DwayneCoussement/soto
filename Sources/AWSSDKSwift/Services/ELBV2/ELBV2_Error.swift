// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ELBV2
public enum ELBV2ErrorType: AWSErrorType {
    case allocationIdNotFoundException(message: String?)
    case availabilityZoneNotSupportedException(message: String?)
    case certificateNotFoundException(message: String?)
    case duplicateListenerException(message: String?)
    case duplicateLoadBalancerNameException(message: String?)
    case duplicateTagKeysException(message: String?)
    case duplicateTargetGroupNameException(message: String?)
    case healthUnavailableException(message: String?)
    case incompatibleProtocolsException(message: String?)
    case invalidConfigurationRequestException(message: String?)
    case invalidLoadBalancerActionException(message: String?)
    case invalidSchemeException(message: String?)
    case invalidSecurityGroupException(message: String?)
    case invalidSubnetException(message: String?)
    case invalidTargetException(message: String?)
    case listenerNotFoundException(message: String?)
    case loadBalancerNotFoundException(message: String?)
    case operationNotPermittedException(message: String?)
    case priorityInUseException(message: String?)
    case resourceInUseException(message: String?)
    case ruleNotFoundException(message: String?)
    case sSLPolicyNotFoundException(message: String?)
    case subnetNotFoundException(message: String?)
    case targetGroupAssociationLimitException(message: String?)
    case targetGroupNotFoundException(message: String?)
    case tooManyActionsException(message: String?)
    case tooManyCertificatesException(message: String?)
    case tooManyListenersException(message: String?)
    case tooManyLoadBalancersException(message: String?)
    case tooManyRegistrationsForTargetIdException(message: String?)
    case tooManyRulesException(message: String?)
    case tooManyTagsException(message: String?)
    case tooManyTargetGroupsException(message: String?)
    case tooManyTargetsException(message: String?)
    case unsupportedProtocolException(message: String?)
}

extension ELBV2ErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AllocationIdNotFoundException":
            self = .allocationIdNotFoundException(message: message)
        case "AvailabilityZoneNotSupportedException":
            self = .availabilityZoneNotSupportedException(message: message)
        case "CertificateNotFoundException":
            self = .certificateNotFoundException(message: message)
        case "DuplicateListenerException":
            self = .duplicateListenerException(message: message)
        case "DuplicateLoadBalancerNameException":
            self = .duplicateLoadBalancerNameException(message: message)
        case "DuplicateTagKeysException":
            self = .duplicateTagKeysException(message: message)
        case "DuplicateTargetGroupNameException":
            self = .duplicateTargetGroupNameException(message: message)
        case "HealthUnavailableException":
            self = .healthUnavailableException(message: message)
        case "IncompatibleProtocolsException":
            self = .incompatibleProtocolsException(message: message)
        case "InvalidConfigurationRequestException":
            self = .invalidConfigurationRequestException(message: message)
        case "InvalidLoadBalancerActionException":
            self = .invalidLoadBalancerActionException(message: message)
        case "InvalidSchemeException":
            self = .invalidSchemeException(message: message)
        case "InvalidSecurityGroupException":
            self = .invalidSecurityGroupException(message: message)
        case "InvalidSubnetException":
            self = .invalidSubnetException(message: message)
        case "InvalidTargetException":
            self = .invalidTargetException(message: message)
        case "ListenerNotFoundException":
            self = .listenerNotFoundException(message: message)
        case "LoadBalancerNotFoundException":
            self = .loadBalancerNotFoundException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "PriorityInUseException":
            self = .priorityInUseException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "RuleNotFoundException":
            self = .ruleNotFoundException(message: message)
        case "SSLPolicyNotFoundException":
            self = .sSLPolicyNotFoundException(message: message)
        case "SubnetNotFoundException":
            self = .subnetNotFoundException(message: message)
        case "TargetGroupAssociationLimitException":
            self = .targetGroupAssociationLimitException(message: message)
        case "TargetGroupNotFoundException":
            self = .targetGroupNotFoundException(message: message)
        case "TooManyActionsException":
            self = .tooManyActionsException(message: message)
        case "TooManyCertificatesException":
            self = .tooManyCertificatesException(message: message)
        case "TooManyListenersException":
            self = .tooManyListenersException(message: message)
        case "TooManyLoadBalancersException":
            self = .tooManyLoadBalancersException(message: message)
        case "TooManyRegistrationsForTargetIdException":
            self = .tooManyRegistrationsForTargetIdException(message: message)
        case "TooManyRulesException":
            self = .tooManyRulesException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "TooManyTargetGroupsException":
            self = .tooManyTargetGroupsException(message: message)
        case "TooManyTargetsException":
            self = .tooManyTargetsException(message: message)
        case "UnsupportedProtocolException":
            self = .unsupportedProtocolException(message: message)
        default:
            return nil
        }
    }
}
