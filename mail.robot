*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${message}  Hi Preethi,This is a autogenerated mail by robotframework. Please do not reply.
${file}  xpath=//input[@name='Filedata']
${screenshot}  C:\\Users\\Abhilash\\PycharmProjects\\automation_robotfw\\screenshot.png


*** Test Cases ***
LoginMail
    open browser    https://mail.google.com/mail/u/0/#inbox  chrome
    Maximize Browser Window
    input text      id:identifierId        preethi.p@terralogic.com
    click element   class:VfPpkd-vQzf8d
    Sleep           5s
    input text      name:password        tlPreethi24
    click element   class:VfPpkd-vQzf8d
    sleep           10s
    Capture Page Screenshot  screenshot.png

ComposeMail
    click element   xpath://div[contains(text(), 'Compose')]
    sleep           5s
    Maximize Browser Window
    input text      xpath:(//textarea[@class='vO'])[1]  preethi.p@terralogic.com
    sleep           40s
    input text      name:subjectbox                     Robot framework : Mail automation
    sleep           5s
    input text      xpath://div[@class="Am Al editable LW-avf tS-tW"]      ${message}
    sleep           5s
    Choose file  ${file}  ${screenshot}
    sleep  30s
    click element   xpath://div[@class="T-I J-J5-Ji aoO v7 T-I-atl L3"]
    sleep  5s
    close browser


*** Keywords ***


