---
title: Get-EntraCurrentSessionInfo
description: This article provides details on the Get-EntraCurrentSessionInfo command.

ms.service: entra
ms.topic: reference
ms.date: 06/26/2024
ms.author: eunicewaweru
ms.reviewer: stevemutungi
manager: CelesteDG
author: msewaweru

external help file: Microsoft.Graph.Entra-Help.xml
Module Name: Microsoft.Graph.Entra
online version:
schema: 2.0.0
---

# Get-EntraCurrentSessionInfo

## Synopsis
This cmdlet returns the current session state.

## Syntax

```powershell
Get-EntraCurrentSessionInfo
 [-Property <String[]>]
 [<CommonParameters>]
```

## Description
The Get-EntraCurrentSessionInfo cmdlet returns the current session state.

## Examples

### Example 1: Get current session info
```powershell
PS C:\> Get-EntraCurrentSessionInfo
```

```output
ObjectId               :
ClientId               : 8886ad7b-1795-4542-9808-c85859d97f23
TenantId               : d5aec55f-2d12-4442-8d2f-ccca95d4390e
Scopes                 : {Agreement.ReadWrite.All, Policy.ReadWrite.IdentityProtection, CustomSecAttributeDefinition.ReadWrite.All, TeamMember.Read.All...}
AuthType               : AppOnly
TokenCredentialType    : ClientCertificate
CertificateThumbprint  : 706EFE2C52F3CD36755AF6A959F4EA439677BCAD
CertificateSubjectName :
Account                :
AppName                : MG_graph_auth
ContextScope           : Process
Certificate            :
PSHostVersion          : 5.1.22621.2506
ManagedIdentityId      :
ClientSecret           :
Environment            : Global
```

This command gets the current session info.

## Parameters

### -Property

Specifies properties to be returned

```yaml
Type: System.String[]
Parameter Sets: (All)
Aliases:

Required: False
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
