# ------------------------------------------------------------------------------
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
# ------------------------------------------------------------------------------
@{
    SourceName = "Set-AzureADPolicy"
    TargetName = $null
    Parameters = $null
    Outputs = $null
    CustomScript = @'
    PROCESS {    
        $params = @{}
        $customHeaders = New-EntraBetaCustomHeaders -Command $MyInvocation.MyCommand
        
        $array = ("activityBasedTimeoutPolicies",	"defaultAppManagementPolicy",	"appManagementPolicies",	"authenticationFlowsPolicy",	"authenticationMethodsPolicy",	"claimsMappingPolicies",	"featureRolloutPolicies",	"homeRealmDiscoveryPolicies",	"permissionGrantPolicies",	"tokenIssuancePolicies",	"tokenLifetimePolicies")
        if ($null -ne $PSBoundParameters["type"]) {
            $to_type = $Type
        }
         else {
             $to_type = $null
         }
        
         if($null -eq $to_type) {
            foreach ($a in $array) {
                $uri = "https://graph.microsoft.com/beta/policies/" + $a + "/" + $id
                try {
                    $response = Invoke-GraphRequest -Uri $uri -Method GET
                    break
                }
                catch {}
            }
            $policy = ($response.'@odata.context') -match 'policies/([^/]+)/\$entity'
            $type = $Matches[1]
        }
            if($array -notcontains $type) {
                Write-Error "Set-AzureADPolicy : Error occurred while executing SetPolicy 
                Code: Request_BadRequest
                Message: Invalid value specified for property 'type' of resource 'Policy'."
            }
            else {
                if ($null -ne $PSBoundParameters["Definition"]) {
                    $params["Definition"] = $PSBoundParameters["Definition"]
                }
                if ($null -ne $PSBoundParameters["DisplayName"]) {
                    $params["DisplayName"] = $PSBoundParameters["DisplayName"]
                }
                if ($null -ne $PSBoundParameters["Definition"]) {
                    $params["Definition"] = $PSBoundParameters["Definition"]
                }
                if ($null -ne $PSBoundParameters["IsOrganizationDefault"]) {
                    $params["IsOrganizationDefault"] = $PSBoundParameters["IsOrganizationDefault"]
                }
                if (($null -ne $PSBoundParameters["id"]) -and ($null -ne $type )) {
                    $URI = "https://graph.microsoft.com/beta/policies/" + $type + "/" + $id
                }
                if ($null -ne $PSBoundParameters["IsOrganizationDefault"]) {
                    $params["IsOrganizationDefault"] = $PSBoundParameters["IsOrganizationDefault"]
                }
                $Method = "PATCH"
            
                if ($PSBoundParameters.ContainsKey("Debug")) {
                    $params["Debug"] = $Null
                }
                if ($PSBoundParameters.ContainsKey("Verbose")) {
                    $params["Verbose"] = $Null
                }
                if($null -ne $PSBoundParameters["WarningVariable"])
                {
                    $params["WarningVariable"] = $PSBoundParameters["WarningVariable"]
                }
                if($null -ne $PSBoundParameters["InformationVariable"])
                {
                    $params["InformationVariable"] = $PSBoundParameters["InformationVariable"]
                }
                if($null -ne $PSBoundParameters["InformationAction"])
                {
                    $params["InformationAction"] = $PSBoundParameters["InformationAction"]
                }
                if($null -ne $PSBoundParameters["OutVariable"])
                {
                    $params["OutVariable"] = $PSBoundParameters["OutVariable"]
                }
                if($null -ne $PSBoundParameters["OutBuffer"])
                {
                    $params["OutBuffer"] = $PSBoundParameters["OutBuffer"]
                }
                if($null -ne $PSBoundParameters["ErrorVariable"])
                {
                    $params["ErrorVariable"] = $PSBoundParameters["ErrorVariable"]
                }
                if($null -ne $PSBoundParameters["PipelineVariable"])
                {
                    $params["PipelineVariable"] = $PSBoundParameters["PipelineVariable"]
                }
                if($null -ne $PSBoundParameters["ErrorAction"])
                {
                    $params["ErrorAction"] = $PSBoundParameters["ErrorAction"]
                }
                if($null -ne $PSBoundParameters["WarningAction"])
                {
                    $params["WarningAction"] = $PSBoundParameters["WarningAction"]
                }
                    Write-Debug("============================ TRANSFORMATIONS ============================")
                    $params.Keys | ForEach-Object {"$_ : $($params[$_])" } | Write-Debug
                    Write-Debug("=========================================================================`n")
                
                    $body = $params | ConvertTo-Json
                    $response = Invoke-GraphRequest -Headers $customHeaders -Uri $uri -Body $body -Method $Method
                    $response
            }
        
    }
'@
}