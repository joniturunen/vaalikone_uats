***Settings***
Library   SeleniumLibrary   plugins=SeleniumTestability
Variables    resources/variables.py

***Test Cases***
Browse candidates, test that candidates are in alphabetical order
    FOR   ${district}   ${candidate}  IN   &{DISTRICTCANDIDATES}
        Open browser   ${BROWSE_CANDIDATES}
        Wait until page contains  ${CANDIDATES_TEXT}
        Click element   ${DISTRICT_MENU}
        Click element   link:${district}
        ${candidate_name}=   Get Text   ${CANDIDATE_PATH}
        Log   ${candidate_name}
        Should be equal   ${candidate_name}   ${candidate}
        Close browser
    END