*** Settings ***
Library    Process 

*** Test Cases ***
Pegando dados que o Python puxou do MongoDB
    ${output}=    Run Process    python    seu_script.py
    Log    ${output.stdout}
