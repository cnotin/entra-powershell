BeforeAll {  
    if((Get-Module -Name Microsoft.Graph.Entra.Beta) -eq $null){
        Import-Module Microsoft.Graph.Entra.Beta       
    }
    Import-Module (Join-Path $psscriptroot "..\Common-Functions.ps1") -Force

    $scriptblock = {
        return @(
            [PSCustomObject]@{
                "ActiveSignInUri"     = "https://sts.anmaji.myworkspace.microsoft.com/adfs/services/trust/2005/usernamemixed"
                "DisplayName"         = "ADFS HYPER-V LAB"
                "IssuerUri"           = "http://anmaji.myworkspace.microsoft.com/adfs/services/trust/"
                "MetadataExchangeUri" = "https://sts.anmaji.myworkspace.microsoft.com/adfs/services/trust/mex"  
                "PassiveSignInUri"    = "https://sts.anmaji.myworkspace.microsoft.com/adfs/ls/"
                "SignOutUri"          = "https://sts.anmaji.myworkspace.microsoft.com/adfs/ls/"   
                "Parameters"          =$args      
            }
        )
    }    
    Mock -CommandName Get-MgBetaDomainFederationConfiguration -MockWith $scriptblock -ModuleName Microsoft.Graph.Entra.Beta
}
Describe "Get-EntraFederationProperty" {
    Context "Test for Get-EntraFederationProperty" {
        It "Should return the empty object" {
            $result = Get-EntraBetaFederationProperty -DomainName "anmaji.myworkspace.microsoft.com"
            $result | Should -Not -BeNullOrEmpty
            $result.ActiveSignInUri | Should -Be "https://sts.anmaji.myworkspace.microsoft.com/adfs/services/trust/2005/usernamemixed"
            $result.DisplayName | Should -Be "ADFS HYPER-V LAB"
            $result.IssuerUri | Should -Be "http://anmaji.myworkspace.microsoft.com/adfs/services/trust/"
            $result.MetadataExchangeUri | Should -Be "https://sts.anmaji.myworkspace.microsoft.com/adfs/services/trust/mex"  
            $result.PassiveSignInUri | Should -Be "https://sts.anmaji.myworkspace.microsoft.com/adfs/ls/"
            $result.SignOutUri | Should -Be "https://sts.anmaji.myworkspace.microsoft.com/adfs/ls/" 
            
            Should -Invoke -CommandName Get-MgBetaDomainFederationConfiguration -ModuleName Microsoft.Graph.Entra.Beta -Times 1
        }
        It "Should fail when DomainName is empty" {
            {Get-EntraBetaFederationProperty -DomainName} | Should -Throw "Missing an argument for parameter 'DomainName'. Specify a parameter*"
        }

        It "Should fail when DomainName is invalid" {
            {Get-EntraBetaFederationProperty -DomainName ""} | Should -Throw "Cannot bind argument to parameter 'DomainName' because it is an empty string.*"
        } 

        It "Should contain DomainId in parameters when DomainName to it" {
        Mock -CommandName  Get-MgBetaDomainFederationConfiguration -MockWith {$args} -ModuleName Microsoft.Graph.Entra.Beta
        $result = Get-EntraBetaFederationProperty -DomainName "anmaji.myworkspace.microsoft.com"
        $params = Get-Parameters -data $result
        $params.DomainId | Should -Be "anmaji.myworkspace.microsoft.com"      
        }

        It "Should contain 'User-Agent' header" {
        $userAgentHeaderValue = "PowerShell/$psVersion EntraPowershell/$entraVersion Get-EntraBetaFederationProperty"

        $result = Get-EntraBetaFederationProperty -DomainName "anmaji.myworkspace.microsoft.com"
        $params = Get-Parameters -data $result.Parameters
        $params.Headers["User-Agent"] | Should -Contain $userAgentHeaderValue
        }  
    }    
}    