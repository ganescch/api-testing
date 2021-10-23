*** Settings ***
Library     RequestsLibrary


*** Variables ***
${base_url}     https://reqres.in/


*** Test Cases ***
TC1_GET_Request
    create session      mysession       ${base_url}
    ${response}=    get on session      mysession       /api/users/2
    log to console      ${response.status_code}
    log to console      ${response.content}
    log to console      ${response.headers}
    ${Status_code}=     convert to string        ${response.status_code}
    should be equal     ${Status_code}      200







