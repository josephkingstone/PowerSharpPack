function Invoke-SharpSniper
{

    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, Mandatory = $true)]
        [ValidateNotNullorEmpty()]
        [String]
        $Command

    )
    $anotherbin="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cmljAEFkZABOZXRTZXR1cFVuam9pbmVkAEV2ZW50UmVjb3JkAEdldFBhc3N3b3JkAE5ldEFwaUJ1ZmZlckZyZWUASURpc3Bvc2FibGUAQ29uc29sZQBnZXRfTmFtZQBOZXRTZXR1cERvbWFpbk5hbWUATmV0U2V0dXBXb3JrZ3JvdXBOYW1lAHVzZXJuYW1lAFdyaXRlTGluZQBQYXRoVHlwZQBTeXN0ZW0uQ29yZQBSZWFkT25seUNvbGxlY3Rpb25CYXNlAERpc3Bvc2UAR3VpZEF0dHJpYnV0ZQBEZWJ1Z2dhYmxlQXR0cmlidXRlAENvbVZpc2libGVBdHRyaWJ1dGUAQXNzZW1ibHlUaXRsZUF0dHJpYnV0ZQBBc3NlbWJseVRyYWRlbWFya0F0dHJpYnV0ZQBBc3NlbWJseUZpbGVWZXJzaW9uQXR0cmlidXRlAEFzc2VtYmx5Q29uZmlndXJhdGlvbkF0dHJpYnV0ZQBBc3NlbWJseURlc2NyaXB0aW9uQXR0cmlidXRlAENvbXBpbGF0aW9uUmVsYXhhdGlvbnNBdHRyaWJ1dGUAQXNzZW1ibHlQcm9kdWN0QXR0cmlidXRlAEFzc2VtYmx5Q29weXJpZ2h0QXR0cmlidXRlAEFzc2VtYmx5Q29tcGFueUF0dHJpYnV0ZQBSdW50aW1lQ29tcGF0aWJpbGl0eUF0dHJpYnV0ZQBTaGFycFNuaXBlci5leGUAQ3JlYXRlU2VjdXJlU3RyaW5nAGlucHV0U3RyaW5nAE1hdGNoAGdldF9MZW5ndGgATWFyc2hhbABOZXRhcGkzMi5kbGwAUHJvZ3JhbQBnZXRfSXRlbQBTeXN0ZW0ARW51bQBNYWluAEdldEN1cnJlbnREb21haW4AZG9tYWluAHNldF9TZXNzaW9uAEV2ZW50TG9nU2Vzc2lvbgBTZXNzaW9uQXV0aGVudGljYXRpb24ARG9tYWluSW5mb3JtYXRpb24ATmV0R2V0Sm9pbkluZm9ybWF0aW9uAFN5c3RlbS5SZWZsZWN0aW9uAE1hdGNoQ29sbGVjdGlvbgBEb21haW5Db250cm9sbGVyQ29sbGVjdGlvbgBGb3JtYXREZXNjcmlwdGlvbgBaZXJvAFB0clRvU3RyaW5nQXV0bwBHZXREb21haW5Pcldvcmtncm91cABBcHBlbmRDaGFyAFN5c3RlbS5EaWFnbm9zdGljcy5FdmVudGluZy5SZWFkZXIARXZlbnRMb2dSZWFkZXIAQnVmZmVyAERvbWFpbkNvbnRyb2xsZXIAU2hhcnBTbmlwZXIAZGF1c2VyAFF1ZXJ5UmVtb3RlQ29tcHV0ZXIARGlyZWN0b3J5U2VydmVyAHNlcnZlcgBJRW51bWVyYXRvcgBHZXRFbnVtZXJhdG9yAC5jdG9yAEludFB0cgBTeXN0ZW0uRGlhZ25vc3RpY3MAU3lzdGVtLlJ1bnRpbWUuSW50ZXJvcFNlcnZpY2VzAFN5c3RlbS5SdW50aW1lLkNvbXBpbGVyU2VydmljZXMAU3lzdGVtLkRpcmVjdG9yeVNlcnZpY2VzAERlYnVnZ2luZ01vZGVzAE1hdGNoZXMAYXJncwBTeXN0ZW0uVGV4dC5SZWd1bGFyRXhwcmVzc2lvbnMAU3lzdGVtLkNvbGxlY3Rpb25zAGdldF9DaGFycwBGaW5kQWxsRGlzY292ZXJhYmxlRG9tYWluQ29udHJvbGxlcnMAZGFwYXNzAGhpZ2hwYXNzAEVycm9yU3VjY2VzcwBOZXRKb2luU3RhdHVzAE5ldFNldHVwVW5rbm93blN0YXR1cwBzdGF0dXMAQ29uY2F0AE9iamVjdABFeGl0AEVudmlyb25tZW50AGdldF9DdXJyZW50AFJlYWRFdmVudABNb3ZlTmV4dABSZWdleABFdmVudExvZ1F1ZXJ5AFN5c3RlbS5EaXJlY3RvcnlTZXJ2aWNlcy5BY3RpdmVEaXJlY3RvcnkAb3BfRXF1YWxpdHkAb3BfSW5lcXVhbGl0eQBTeXN0ZW0uU2VjdXJpdHkARW1wdHkAAAAAAQCBNQ0ACgANAAoAUwBuAGkAcABlAHIAOgAgAEYAaQBuAGQAIABoAG8AcwB0AG4AYQBtAGUAIABhAG4AZAAgAEkAUAAgAGEAZABkAHIAZQBzAHMAIABvAGYAIABzAHAAZQBjAGkAZgBpAGMAIAB1AHMAZQByACAAKABDAEUATwAgAGUAdABjACkAIABpAG4AIABEAG8AbQBhAGkAbgAgACgAcgBlAHEAdQBpAHIAZQBzACAARABvAG0AYQBpAG4AIABBAGQAbQBpAG4AIABSAGkAZwBoAHQAcwAgAG8AcgAgAEQAQwAgAEUAdgBlAG4AdABs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"
    $ASD = [System.Reflection.Assembly]::Load([Convert]::FromBase64String($anotherbin))

    $OldConsoleOut = [Console]::Out
    $StringWriter = New-Object IO.StringWriter
    [Console]::SetOut($StringWriter)

    [SharpSniper.Program]::Main($Command.Split(" "))

    [Console]::SetOut($OldConsoleOut)
    $Results = $StringWriter.ToString()
    $Results
}
