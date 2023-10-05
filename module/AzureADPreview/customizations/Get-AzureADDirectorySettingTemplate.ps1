# ------------------------------------------------------------------------------
#  Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
# ------------------------------------------------------------------------------
@{
    SourceName = "Get-AzureADDirectorySettingTemplate"
    TargetName = $null
    Parameters = $null
    Outputs = $null
    CustomScript = @"
    PROCESS {    
        `$params = @{}
        `$keysChanged = @{}
        if(`$PSBoundParameters.ContainsKey("Verbose"))
        {
            `$params["Verbose"] = `$Null
        }
        if(`$PSBoundParameters.ContainsKey("Debug"))
        {
            `$params["Debug"] = `$Null
        }
        if(`$null -ne `$PSBoundParameters["Id"])
        {
            `$params["DirectorySettingTemplateId"] = `$PSBoundParameters["Id"]
        }
    
        Write-Debug("============================ TRANSFORMATIONS ============================")
        `$params.Keys | ForEach-Object {"`$_ : `$(`$params[`$_])" } | Write-Debug
        Write-Debug("=========================================================================``n")
        
        `$Script:apiResponse = Get-MgBetaDirectorySettingTemplate @params
        `$block = {
            `$directoryObject = New-Object -TypeName Microsoft.Open.MSGraph.Model.DirectorySetting
            `$directoryObject.TemplateId =  `$Script:apiResponse.Id
            `$settingvalues = New-Object -TypeName System.Collections.Generic.List[Microsoft.Open.MSGraph.Model.SettingValue]
            `$test = @{}
            foreach(`$tempValue in `$Script:apiResponse.Values ){
               `$test =   @{
                         name = `$tempValue.Name
                         value = `$tempValue.DefaultValue
                      }
             }
            `$settingvalues.Add(`$test)
            `$directoryObject.Values = `$settingvalues
            return `$directoryObject
          }
 
  
    `$Script:apiResponse | Foreach-Object {Add-Member -InputObject  `$_ -MemberType ScriptMethod -Name 'CreateDirectorySetting' -Value `$block -Force}     
    `$apiResponse
    }
"@
}