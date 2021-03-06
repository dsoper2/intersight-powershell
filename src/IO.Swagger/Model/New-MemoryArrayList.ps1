function New-MemoryArrayList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[intersight.Model.MemoryArray[]]]
        ${Results}
    )

    Process {
        'Creating object: intersight.Model.MemoryArrayList' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName intersight.Model.MemoryArrayList -ArgumentList @(
            ${Count},
            ${Results}
        )
    }
}
