*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem




*** Variables ***
${URL}              https://app.cloudinspot.ai/
${ORG_ID}           948640494742
${SIGNIN_EMAIL}     mark68qa@yopmail.com
${PASSWORD}         Admin@12345
${NEW_NAME}         Nikhilesh
${FILE_PATH}   C:\\Users\\Admin\\Downloads\\cis-logo.png
${ORGNAME}  NICK ORG
${COUNTRY}  Australia
${STATE}  South Australia



*** Test Cases ***
#Login Test
#    Open Browser    ${URL}    edge
#    Maximize Browser Window
#
#    # Login steps
#    Wait Until Element Is Visible    id:org_id    timeout=10s
#    Input Text      id:org_id       ${ORG_ID}
#    Input Text      id:email        ${SIGNIN_EMAIL}
#    Input Text      id:password     ${PASSWORD}
#    Click Element   xpath://img[@aria-label='Show Password']
#    Click Element   xpath://button[normalize-space()='Sign In']
#    Sleep           20s
#
#    # Navigate to Profile and Edit Information
#    Click Element   xpath://div[@class='profileWrapper']//*[name()='svg']
#    Click Element   //span[normalize-space()='Sign Out']
#
#
#    [Teardown]    Close Browser
#
#
#Profile Update Test
#    Open Browser    ${URL}    chrome
#    Maximize Browser Window
#
#    # Login steps
#    Wait Until Element Is Visible    id:org_id    timeout=10s
#    Input Text      id:org_id       ${ORG_ID}
#    Input Text      id:email        ${SIGNIN_EMAIL}
#    Input Text      id:password     ${PASSWORD}
#    Click Element   xpath://img[@aria-label='Show Password']
#    Click Element   xpath://button[normalize-space()='Sign In']
#    Sleep           20s
#
#    # Navigate to Profile and Edit Information
#    Click Element   xpath://div[@class='profileWrapper']//*[name()='svg']
#    Click Element   xpath://span[normalize-space()='My Profile']
#    Sleep           5s
#    Click Element   xpath://button[@class='my-profile__main__user-data__edit-button apply-loader']
#    Sleep           5s
#
#     # Clear and Update Profile Fields Using Keyboard Shortcuts
#    Set Focus To Element    id:firstName
#    Press Keys              id:firstName        CTRL+a
#    Sleep                   1s
#    Press Keys              id:firstName        DELETE
#    Input Text              id:firstName        ${NEW_NAME}
#
#    Set Focus To Element    id:lastName
#    Press Keys              id:lastName         CTRL+a
#    Sleep                   1s
#    Press Keys              id:lastName         DELETE
#    Input Text              id:lastName         ${NEW_NAME}
#
#    Set Focus To Element    id:jobTitle
#    Press Keys              id:jobTitle         CTRL+a
#    Sleep                   1s
#    Press Keys              id:jobTitle         DELETE
#    Input Text              id:jobTitle         ${NEW_NAME}
#
#    Click Element           xpath://button[@type='submit']
#    Sleep                 5s
#    Click Element           xpath://button[normalize-space()='OKAY']
#    Sleep                   5s
#
#
#    # Reopen Edit to Check Changes (or Cancel if not needed)
#    Click Element         xpath://button[@class='my-profile__main__user-data__edit-button apply-loader']
#    Sleep                 5s
#    Click Element         xpath://button[normalize-space()='Cancel']
#
#    # Sign Out
#    Click Element         xpath://div[@class='profileWrapper']//*[name()='svg']
#    Click Element         xpath://div[@class='sub-menu-card__sign-out']
#    Sleep                 5s
#
#    [Teardown]    Close Browser

Settings
    Open Browser    ${URL}    chrome
    Maximize Browser Window

    # Login steps
    Wait Until Element Is Visible    id:org_id    timeout=10s
    Input Text      id:org_id       ${ORG_ID}
    Input Text      id:email        ${SIGNIN_EMAIL}
    Input Text      id:password     ${PASSWORD}
    Click Element   xpath://img[@aria-label='Show Password']
    Click Element   xpath://button[normalize-space()='Sign In']
    Sleep           20s


    Click Element   xpath://a[contains(@href,'/settings')]//div[contains(@class,'tooltip-custom')]//*[name()='svg']
    Sleep   10s
    Click Element   xpath://button[normalize-space()='Edit']
    Sleep   10s
    Clear Element Text    xpath://input[@placeholder='Enter Organization Name']
    Sleep   10s
    Input Text            xpath://input[@placeholder='Enter Organization Name']    ${ORGNAME}
    Sleep   10s
    Click Element   xpath://button[normalize-space()='Cancel']
    Sleep   10s
    Click Element   xpath://button[normalize-space()='Edit']
    Sleep   10s
    Clear Element Text    xpath://input[@placeholder='Enter Organization Name']
    Sleep   10s
    Input Text            xpath://input[@placeholder='Enter Organization Name']    ${ORGNAME}
    Sleep   10s
    Click Element    xpath://input[@id='country']
    Sleep   5s
    Clear Element Text    xpath://input[@id='country']
    Sleep   5s
     Click Element    xpath://li[normalize-space()='${COUNTRY}']
    Sleep    5s
    Click Element    xpath://input[@id='state']
    Sleep   5s
    Clear Element Text    xpath://input[@id='state']
    Sleep   5s
     Click Element    xpath://li[normalize-space()='${STATE}']
    Sleep    5s
    Click Element   xpath://button[normalize-space()='Save']
    Sleep   10s
    Click Element   xpath://button[normalize-space()='OKAY']
    Sleep   5s
#    Saving Notification MS Teams
    Click Element   xpath://button[@id='simple-tab-1']
    Sleep   10s
    Click Element   //div[contains(@class,'protectedLayout__container__bottomNavigationClose')]//div[2]//div[2]//div[2]//div[1]//div[3]//div[1]//span[1]//img[1]
    Sleep   5s
    Click Element   xpath://p[normalize-space()='05:00 pm']
    Sleep   5s
    Click Element   xpath://button[normalize-space()='Schedule']
    Sleep   10s
    #    Saving Notification Email
    Click Element   xpath:(//img[contains(@alt,'Edit')])[3]
    Sleep   5s
    Click Element   xpath://p[normalize-space()='05:00 pm']
    Sleep   5s
    Click Element   xpath://button[normalize-space()='Schedule']
    Sleep   10s

    #    Spend Notification MS Teams
    Click Element   xpath:(//img[contains(@alt,'Edit')])[5]
    Sleep   5s
    Click Element   xpath://p[normalize-space()='05:00 pm']
    Sleep   5s
    Click Element   xpath://button[normalize-space()='Schedule']
    Sleep   10s
    #    Spend Notification Email
    Click Element   xpath:(//img[contains(@alt,'Edit')])[6]
    Sleep   5s
    Click Element   xpath://p[normalize-space()='05:00 pm']
    Sleep   5s
    Click Element   xpath://button[normalize-space()='Schedule']

    Sleep   10s
    Click Element   xpath://button[@id='simple-tab-2']
    Sleep   5s
    Click Element   xpath://div[@aria-label='positive']//img
    Input Text  xpath://textarea[@placeholder='Tell us about your experience']  Positive
    Click Element   xpath://button[normalize-space()='Submit']
    Sleep   10s




    [Teardown]    Close Browser


FAQ
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep           20s

    Input Text      id:username        nikhileshg@scalextechnologies.com
    Sleep           10s
    Click Element   xpath://span[normalize-space()='Continue']
    Sleep           10s

    # Login steps
    Wait Until Element Is Visible    id:org_id    timeout=10s
    Input Text      id:org_id       ${ORG_ID}
    Input Text      id:email        ${SIGNIN_EMAIL}
    Input Text      id:password     ${PASSWORD}
    Click Element   xpath://img[@aria-label='Show Password']
    Click Element   xpath://button[normalize-space()='Sign In']
    Sleep           20s
    Click Element   xpath:(//*[name()='svg'][@class='logoIcon'])[4]
    Sleep           5s
    Click Element   xpath://div[contains(text(),'How to connect your AWS account to CloudInSpot?')]
    Sleep           5s
    Click Element   xpath://div[contains(@class,'common-accordion__head__title faq__items__item__accordion__head__title title apply-loader')][normalize-space()='What prerequisite steps are required to connect your Azure account to CloudInSpot?']
    Sleep           5s
    Click Element   xpath://div[contains(text(),'How to connect your Azure account to CloudInSpot?')]
    Sleep           5s
    Click Element   xpath:Click Element   xpath://div[contains(text(),'How does CloudInSpot analyze my cloud costs?')]
    Sleep           5s
    Click Element   xpath:Click Element   xpath://div[contains(@class,'common-accordion__head__title faq__items__item__accordion__head__title title apply-loader')][normalize-space()='Can CloudInSpot help me identify and eliminate unused resources in my cloud environment?']
    Sleep           5s
    Click Element   xpath:Click Element   xpath://div[contains(@class,'common-accordion__head__title faq__items__item__accordion__head__title title apply-loader')][normalize-space()='Does CloudInSpot provide real-time cost monitoring?']
    Sleep           5s
    Click Element   xpath:Click Element   xpath://div[contains(text(),'How to connect your Azure account to CloudInSpot?')]
    Sleep           5s
     Click Element   xpath:Click Element   xpath://div[contains(text(),'How can I get started with CloudInSpot?')]
    Sleep           5s
    [Teardown]    Close Browser



Update Profile Picture
    Open Browser    ${URL}    chrome
    Maximize Browser Window

    # Login steps
    Wait Until Element Is Visible    id:org_id    timeout=10s
    Input Text      id:org_id       ${ORG_ID}
    Input Text      id:email        ${SIGNIN_EMAIL}
    Input Text      id:password     ${PASSWORD}
    Click Element   xpath://img[@aria-label='Show Password']
    Click Element   xpath://button[normalize-space()='Sign In']
    Sleep           20s

    # Navigate to Profile and Edit Information
    Click Element   xpath://div[@class='profileWrapper']//*[name()='svg']
    Click Element   xpath://span[normalize-space()='My Profile']
    Sleep           5s
    # Step 3: Select Profile Edit or Upload Section
    Click Element   xpath://div[contains(@class,'cursor-pointer')]
    Sleep           5s
    Click Element   xpath://button[normalize-space()='Upload']
    Sleep           5s

    # Step 4: Upload the File Using Clipboard and Key Presses
    Set Clipboard    ${FILE_PATH}
    Sleep            1s
    Press Keys       NONE    CTRL+V
    Sleep            1s
    Press Keys       NONE    ENTER
    Sleep            30s

    # Step 5: Save Changes
    Click Element   xpath://button[normalize-space()='Save']
    Sleep           10s

    # Close Browser
    Close Browser

*** Keywords ***
Set Clipboard
    [Arguments]    ${text}
#    ${temp_file} =    Create Temporary File
    Write To File    ${temp_file}    ${text}
    Set Environment Variable    CLIP    ${temp_file}


