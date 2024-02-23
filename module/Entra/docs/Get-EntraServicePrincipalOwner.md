---
external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version:
schema: 2.0.0
---

# Get-EntraServicePrincipalOwner

## SYNOPSIS
Get the owner of a service principal.

## SYNTAX

```
Get-EntraServicePrincipalOwner -ObjectId <String> [-All <Boolean>] [-Top <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The Get-EntraServicePrincipalOwner cmdlet gets the owners of a service principal in Microsoft Entra ID.

## EXAMPLES

### Example 1: Retrieve the owner of a service principal
```
PS C:\> $ServicePrincipalId = (Get-EntraServicePrincipal -Top 1).ObjectId
PS C:\> Get-EntraServicePrincipalOwner -ObjectId $ServicePrincipalId
```

The first command gets the ID of a service principal by using the Get-EntraServicePrincipal (./Get-EntraServicePrincipal.md)cmdlet. 
The command stores the ID in the $ServicePrincipalId variable.

The second command gets the owner of a service principal identified by $ServicePrincipalId.

## PARAMETERS

### -All
If true, return all service principal owners for this service principal.
If false, return the number of objects specified by the Top parameter

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ObjectId
Specifies the ID of a service principal in Azure AD.

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

### -Top
Specifies the maximum number of records to return.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-EntraServicePrincipalOwner]()

[Get-EntraServicePrincipal]()

[Remove-EntraServicePrincipalOwner]()
