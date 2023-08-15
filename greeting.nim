import strformat
import strutils

# Function prototypes
proc title(sentence: string): string

# Main method
proc main() = 
    echo "Whats your name?"

    stdout.write("My name is ")

    let name = title(readLine(stdin).strip())

    echo fmt"Hello, {name}!"

# Title method (used to title a string)
proc title(sentence: string): string =
    var titled_sentence: string
    for index in countup(0, len(sentence) - 1):
        if index == 0 or sentence[index - 1] == ' ':
            titled_sentence &= sentence[index].toUpperAscii
        else:
            titled_sentence &= sentence[index]

    return titled_sentence

# Running the main function
main()