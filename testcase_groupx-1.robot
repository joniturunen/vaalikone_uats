***Settings***
Library   SeleniumLibrary   plugins=SeleniumTestability
Variables    resources/variables.py

***Test Cases***
Test that municipality selection creates a session storage values
    FOR   ${municipality}   IN   @{MUNICIPALS}
        log   ${municipality}
        Open browser   ${URL}
        Wait until page contains  ${WELCOME}
        Click element   ${MUNICIPALITY_SEARCH}
        Input text   ${MUNICIPALITY_INPUT}   ${municipality}
        Click element   ${MUNICIPALITY_RESULT}
        Click element   ${START_BUTTON}
        Wait until page contains   ${QUESTIONS_START}
        ${sessionStorageKeys}   Get Storage Keys   sessionStorage
        Log   ${sessionStorageKeys}   INFO
        ${sessionStorageValue}   Get Storage Item   ${sessionStorageKeys}  sessionStorage
        Log   ${sessionStorageValue}   INFO
        Should be equal   ${sessionStorageValue}   ${municipality}
        Close browser
    END


