BeforeAll {  
    if((Get-Module -Name Microsoft.Graph.Entra) -eq $null){
        #Import-Module .\bin\Microsoft.Graph.Entra.psm1 -Force
        Import-Module Microsoft.Graph.Entra       
    }
    Import-Module .\test\module\Common-Functions.ps1 -Force

    $argsBlock = {
        param($args)
        return $args
    }
    
    Mock -CommandName Remove-MgGroup -MockWith {} -ModuleName Microsoft.Graph.Entra
}
  
Describe "Remove-EntraGroup" {
    Context "Test for Remove-EntraGroup" {
        It "Should return empty object" {
            $result = Remove-EntraGroup -ObjectId 056b2531-005e-4f3e-be78-01a71ea30a04
            $result | Should -BeNullOrEmpty

            Should -Invoke -CommandName Remove-MgGroup -ModuleName Microsoft.Graph.Entra -Times 1
        }
        It "Should fail when ObjectId is empty" {
            { Remove-EntraGroup -ObjectId "" }
        }   
        It "Should contain GroupId in parameters when passed ObjectId to it" {
            Mock -CommandName Remove-MgGroup -MockWith $argsBlock -ModuleName Microsoft.Graph.Entra

            $result = Remove-EntraGroup -ObjectId 056b2531-005e-4f3e-be78-01a71ea30a04
            $params = Get-Parameters -data $result
            $params.GroupId | Should -Be "056b2531-005e-4f3e-be78-01a71ea30a04"
        }
        It "Should contain 'User-Agent' header" {
            Mock -CommandName Remove-MgGroup -MockWith $argsBlock -ModuleName Microsoft.Graph.Entra

            $userAgentHeaderValue = "PowerShell/$psVersion EntraPowershell/$entraVersion Remove-EntraGroup"

            $result = Remove-EntraGroup -ObjectId 056b2531-005e-4f3e-be78-01a71ea30a04
            $params = Get-Parameters -data $result
            $params.Headers["User-Agent"] | Should -Be $userAgentHeaderValue
        }  
    }
}