# ------------------------------------------------------------------------------
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
# ------------------------------------------------------------------------------
@{
    SourceName = "Add-AzureADApplicationOwner"
    TargetName = $null
    Parameters = $null
    Outputs = $null
    CustomScript = @'
    $params = @{}
    $customHeaders = New-EntraCustomHeaders -Command $MyInvocation.MyCommand
    if($null -ne $PSBoundParameters["ObjectId"])
    {
        $params["ApplicationId"] = $PSBoundParameters["ObjectId"]
    }

    $newOwner = @{}

    if($null -ne $PSBoundParameters["RefObjectId"])
    {
        $newOwner["@odata.id"]  = "https://graph.microsoft.com/v1.0/directoryObjects/"+$PSBoundParameters["RefObjectId"]
        $params["BodyParameter"] = $newOwner
    }
    if($null -ne $PSBoundParameters["WarningVariable"])
    {
        $params["WarningVariable"] = $PSBoundParameters["WarningVariable"]
    }
    if($null -ne $PSBoundParameters["InformationVariable"])
    {
        $params["InformationVariable"] = $PSBoundParameters["InformationVariable"]
    }
    if($PSBoundParameters.ContainsKey("Verbose"))
    {
        $params["Verbose"] = $Null
    }
    if($null -ne $PSBoundParameters["InformationAction"])
    {
        $params["InformationAction"] = $PSBoundParameters["InformationAction"]
    }
    if($PSBoundParameters.ContainsKey("Debug"))
    {
        $params["Debug"] = $Null
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
    
    New-MgApplicationOwnerByRef @params -Headers $customHeaders    
'@
}