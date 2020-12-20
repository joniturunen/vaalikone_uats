***Settings***
Library   SeleniumLibrary
Library   OperatingSystem
Library   String

***Test Cases***
Read Text File
    [tags]   groupx-1   municipality   cookie
    ${string}=   Get File   ./resources/variables.txt
    Log   ${string}
    @{lines}=   Split to lines    ${string}
    FOR   ${line}   IN   @{lines}
       log   ${line}   INFO
    END
    Log   ${line}