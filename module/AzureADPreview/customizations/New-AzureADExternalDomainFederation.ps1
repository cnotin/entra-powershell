# ------------------------------------------------------------------------------
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
# ------------------------------------------------------------------------------
@{
    SourceName = "New-AzureADExternalDomainFederation"
    TargetName = "New-MgBetaDomainFederationConfiguration"
    Parameters = @(
        @{
            SourceName = "ExternalDomainName"
            TargetName = "DomainId"
            ConversionType = "Name"
            SpecialMapping = $null
        }
        @{
            SourceName = "FederationSettings"
            TargetName = "BodyParameter"
            ConversionType = "Name"
            SpecialMapping = $null
        }
    )
    Outputs = $null
}