$name = "राधा"

# Loop through each character in the name
foreach ($char in $name.ToCharArray()) {
    $pattern = ""

    # Generate a star pattern for each character
    for ($i = 0; $i -lt $name.Length; $i++) {
        if ($name[$i] -eq $char) {
            $pattern += "*"
        } else {
            $pattern += " "
        }
    }

    # Print the pattern
    Write-Output $pattern
}
