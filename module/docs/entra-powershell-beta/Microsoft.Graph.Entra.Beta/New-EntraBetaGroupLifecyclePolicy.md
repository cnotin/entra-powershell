---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version:
schema: 2.0.0
---

# New-EntraBetaGroupLifecyclePolicy

## Synopsis
Creates a new groupLifecyclePolicy

## Syntax

```
New-EntraBetaGroupLifecyclePolicy -AlternateNotificationEmails <String> -ManagedGroupTypes <String>
 -GroupLifetimeInDays <Int32> [<CommonParameters>]
```

## Description
Creates a new groupLifecyclePolicy in Azure Active Directory

## Examples

### Example 1
```
PS C:\> New-EntraBetaGroupLifecyclePolicy -GroupLifetimeInDays 99 -ManagedGroupTypes "Selected" -AlternateNotificationEmails "example@contoso.com"
```

This will create a a new groupLifecyclePolicy setting the group lifetime to 99 days for a selected set of Office 365 groups and send renewal notification emails to groups that have no owners to "example@contoso.com"

## Parameters

### -AlternateNotificationEmails
Notification emails for groups that have no owners will be sent to these email addresses.
List of email addresses separated by a ";".

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupLifetimeInDays
The number of days a group can exist before it needs to be renewed

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ManagedGroupTypes
This parameter allows the admin to select which office 365 groups the policy will apply to.
"None" will create the policy in a disabled state.
"All" will apply the policy to every Office 365 group in the tenant.
"Selected" will allow the admin to choose specific Office 365 groups that the policy will apply to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## Inputs

### None
## Outputs

### System.Object
## Notes

## Related Links
