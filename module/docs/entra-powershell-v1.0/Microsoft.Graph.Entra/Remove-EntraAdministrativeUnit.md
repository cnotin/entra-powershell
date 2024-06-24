---
title: Remove-EntraAdministrativeUnit.
description: This article provides details on the Remove-EntraAdministrativeUnit command.

ms.service: entra
ms.topic: reference
ms.date: 03/15/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru
external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version:
schema: 2.0.0
---

# Remove-EntraAdministrativeUnit

## SYNOPSIS
Removes an administrative unit.

## SYNTAX

```powershell
Remove-EntraAdministrativeUnit 
 -Id <String> 
 [<CommonParameters>]
```

## DESCRIPTION
The Remove-EntraAdministrativeUnit cmdlet removes an administrative unit from Microsoft Entra ID.

## EXAMPLES

### Example 1: Remove an administrative unit
```powershell
PS C:\> Remove-EntraAdministrativeUnit -Id 76373ce0-821a-40b5-9aa2-e108e318f62e

```

This example demonstrates how to remove an administrative unit with specified ID.

## PARAMETERS



### -Id
Specifies the ID of an administrative unit in Microsoft Entra ID.

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

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-EntraAdministrativeUnit](Get-EntraAdministrativeUnit.md)

[Set-EntraAdministrativeUnit](Set-EntraAdministrativeUnit.md)
