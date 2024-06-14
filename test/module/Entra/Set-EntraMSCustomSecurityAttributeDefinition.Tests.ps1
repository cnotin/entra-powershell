BeforeAll {  
    if((Get-Module -Name Microsoft.Graph.Entra) -eq $null){
        Import-Module Microsoft.Graph.Entra
    }
    Import-Module (Join-Path $psscriptroot "..\Common-Functions.ps1") -Force

    Mock -CommandName Invoke-GraphRequest -MockWith {} -ModuleName Microsoft.Graph.Entra
}

Describe "Test for Set-EntraMSCustomSecurityAttributeDefinition" {
    
    It "Should return empty object" {
        $result = Set-EntraMSCustomSecurityAttributeDefinition -Id "Demo12_ProjectDatevaluevaluevalue12test" -Description "Test desc" -UsePreDefinedValuesOnly $false -Status "Available"
        $result | Should -BeNullOrEmpty
        Should -Invoke -CommandName Invoke-GraphRequest -ModuleName Microsoft.Graph.Entra -Times 1
    }
    It "Should fail when ID is empty" {
        { Set-EntraMSCustomSecurityAttributeDefinition -Id "" } | Should -Throw "Cannot bind argument to parameter 'Id'*"
    }
    It "Should fail when Id is null" {
        { Set-EntraMSCustomSecurityAttributeDefinition -Id } | Should -Throw "Missing an argument for parameter 'Id'*"
    }
    It "Should fail when invalid parameter is passed" {
        { Set-EntraMSCustomSecurityAttributeDefinition -xyz } | Should -Throw "A parameter cannot be found that matches parameter name 'xyz'*"
    }
    It "Should contain 'User-Agent' header" {
        Mock -CommandName Invoke-GraphRequest -MockWith {$args} -ModuleName Microsoft.Graph.Entra
        $userAgentHeaderValue = "PowerShell/$psVersion EntraPowershell/$entraVersion Set-EntraMSCustomSecurityAttributeDefinition"
        $result = Set-EntraMSCustomSecurityAttributeDefinition -Id "Demo12_ProjectDatevaluevaluevalue12test" -Description "Test desc" -UsePreDefinedValuesOnly $false -Status "Available"
        $params = Get-Parameters -data $result
        $a= $params | ConvertTo-json | ConvertFrom-Json
        $a.headers.'User-Agent' | Should -Be $userAgentHeaderValue        
    } 
}