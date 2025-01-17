---
external help file: Microsoft.Graph.Entra.Beta-Help.xml
Module Name: Microsoft.Graph.Entra.Beta
online version:
schema: 2.0.0
---

# Get-EntraBetaApplicationTemplate

## Synopsis
Retrieve a list of applicationTemplate objects

## Syntax

### GetQuery (Default)
```
Get-EntraBetaApplicationTemplate [<CommonParameters>]
```

### GetById
```
Get-EntraBetaApplicationTemplate -Id <String> [<CommonParameters>]
```

## Description
This cmdlet allows users to get a list of all the application templates or a specific application template.

## Examples

### 1. Gets a list of application template objects
```
PS C:\> $all_templates = Get-EntraBetaApplicationTemplate
```

This command gets all the application template objects

### 2. Gets an application template object
```
PS C:\> $template = Get-EntraBetaApplicationTemplate -Id e8b7b394-057d-4203-a93a-1879c28ece38
```

This command gets an application template object for the given id

## Parameters

### -Id
The unique identifier of an application template

```yaml
Type: String
Parameter Sets: GetById
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

### Microsoft.Online.Administration.ApplicationTemplate
## Notes
## Related Links
