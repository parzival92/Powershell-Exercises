Function Get-BobResponse() {
   
    [CmdletBinding()]
    Param(
        [string]$HeyBob
    )
    if ($HeyBob -cmatch "^[^a-z]*[A-Z]+[^a-z]*\?\s*$") 
    { <# if all letters are uppercase AND the sentence ends with `?` #>
        return "Calm down, I know what I'm doing!"
    }
    if($HeyBob -match '^\s*$'){
        return "Fine. Be that way!"
    }
    if ($HeyBob -match "\?\s*$") {
        return "Sure."
    }
    if ($HeyBob -cmatch “^[^a-z]*[A-Z]+[^a-z]*$”) {
        return "Whoa, chill out!"
    }
    
    return "Whatever."
    

    

    Throw "Function not implemented"
}

Get-BobResponse
