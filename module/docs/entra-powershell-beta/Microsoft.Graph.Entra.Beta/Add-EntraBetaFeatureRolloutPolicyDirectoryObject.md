---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version:
schema: 2.0.0
---

# Add-EntraBetaFeatureRolloutPolicyDirectoryObject

## Synopsis
Allows an admin to add a group to the cloud authentication roll-out policy in Azure AD.
Users in this group will start authenticating to the cloud per policy.

## Syntax

```
Add-EntraBetaFeatureRolloutPolicyDirectoryObject -Id <String> -RefObjectId <String> [<CommonParameters>]
```

## Description
An admin will use this cmdlet to add a group to the cloud authentication roll-out policy.
Users in these groups will start authenticating against the cloud per policy (e.g.
with Seamless Single Sign-On or not, or whether Passthrough auth or not).

## Examples

### Example 1: Adds a group to the cloud authentication roll-out policy in Azure AD.
```
PS C:\> Add-EntraBetaFeatureRolloutPolicyDirectoryObject -Id "a03b6d9e-6654-46e6-8d0a-8ed83c675ca9" -RefObjectId "0a1068c0-dbb6-4537-9db3-b48f3e31dd76"
```

This command adds a group to the cloud authentication roll-out policy in Azure AD.

## Parameters

### -Id
The unique identifier of the cloud authentication roll-out policy in Azure AD.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -RefObjectId
The unique identifier of the specific Azure AD object that will be assigned to the cloud authentication roll-out policy in Azure AD.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

## Outputs

## Notes
## Related Links

[Remove-EntraBetaFeatureRolloutPolicyDirectoryObject]()

