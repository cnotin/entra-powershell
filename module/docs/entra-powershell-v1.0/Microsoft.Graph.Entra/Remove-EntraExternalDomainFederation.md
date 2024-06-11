---
title: Remove-EntraExternalDomainFederation
description: This article provides details on the Remove-EntraExternalDomainFederation command.
ms.service: entra
ms.topic: reference
ms.date: 06/11/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru
external help file: Microsoft.Graph.Entra-help.xml
Module Name: Microsoft.Graph.Entra
online version:
schema: 2.0.0
---

# Remove-EntraExternalDomainFederation

## SYNOPSIS

Delete an externalDomainFederation by external domain name.

## SYNTAX

```powershell
Remove-EntraExternalDomainFederation 
 -ExternalDomainName <String> 
 [<CommonParameters>]
```

## DESCRIPTION

## EXAMPLES

### Example 1: Deletes an external domain federation setting for a given external domain

```powershell
Connect-Entra -Scopes 'User.Read.All'
Remove-EntraExternalDomainFederation -ExternalDomainName "test.com"
```

This command deletes an external domain federation setting.

## PARAMETERS

### -ExternalDomainName

The unique identifer of an externalDomainFederation in Microsoft Entra ID

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS