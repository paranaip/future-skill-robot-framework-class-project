*** Settings ***
Library  SeleniumLibrary
Resource  ../keywords/HomePageKeywords.robot
Resource  ../keywords/RegisterKeywords.robot
Resource  ../keywords/RegisterOTPKeywords.robot
Variables  ../resources/config/config.yaml
Variables  ../resources/testdata/testdata.yaml
Suite Setup  Open Browser  ${baseurl}  chrome
Suite Teardown  Close Browser


*** Test Cases ***
Test case to register member on web Future skill
  [Documentation]  Test case to register member on web Future skill

  HomePageKeywords.Click register button
  RegisterKeywords.Fill Email  ${email}
  RegisterKeywords.Fill Name    ${name}
  RegisterKeywords.Fill Lastname    ${lastname}
  RegisterKeywords.Fill Phone Number    ${phone_number}
  RegisterKeywords.Fill Password and Fill Confirm Password    ${password}    ${confirm_password}
  RegisterKeywords.Click Accept Term And Condition
  RegisterKeywords.Click Register Button
  RegisterOTPKeywords.Assert Page Should Contain Text  ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์