---
title: Remove-EntraGroupLifecyclePolicy
description: This article provides details on the Remove-EntraGroupLifecyclePolicy command.

ms.service: entra
ms.topic: reference
ms.date: 03/16/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru

external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version:
schema: 2.0.0
---

# Remove-EntraGroupLifecyclePolicy

## SYNOPSIS

Deletes a groupLifecyclePolicies object

## SYNTAX

```powershell
Remove-EntraGroupLifecyclePolicy 
 -Id <String> 
 [<CommonParameters>]
```

## DESCRIPTION

The Remove-EntraGroupLifecyclePolicy command deletes a groupLifecyclePolicies object in Microsoft Entra ID.

## EXAMPLES

### Example 1: Remove a groupLifecyclePolicies.

```powershell
Connect-Entra -Scopes 'Directory.ReadWrite.All'
Remove-EntraGroupLifecyclePolicy -Id '1aaaaaa1-2bb2-3cc3-4dd4-5eeeeeeeeee5'
```

This cmdlet deletes the groupLifecyclePolicies object that has the specified ID.

## PARAMETERS

### -Id

Specifies the ID of the groupLifecyclePolicies object that this cmdlet removes.

```yaml
Type: System.String
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

### System.String

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS

[Get-EntraGroupLifecyclePolicy](Get-EntraGroupLifecyclePolicy.md)

[New-EntraGroupLifecyclePolicy](New-EntraGroupLifecyclePolicy.md)

[Set-EntraGroupLifecyclePolicy](Set-EntraGroupLifecyclePolicy.md)