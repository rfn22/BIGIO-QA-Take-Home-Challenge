*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***

Password Change Sukses

   Open Browser      https://www.deepl.com/account/summary    firefox
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"] 
   Click Element    //*[@id="usernav-button"]/span
   Click Element    //*[@id="headlessui-popover-panel-26"]/ul[1]/li/a/span/div
   Sleep    5
   Click Button     //*[@id="headlessui-tabs-panel-74"]/div/div[1]/div/div[2]/div[1]/button
   Input Password   account-password-change-old   Refina_12345678
   Input Password   account-password-change-new   Refina_12345
   Input Password   account-password-change-new-repeat     Refina_12345
   Sleep    10
   Click Button     //*[@id="headlessui-tabs-panel-30"]/div/div[1]/div[2]/div/div[3]/button[2]
   Sleep    10
   Close Browser
   Log    Test Completed
   

Password Change Gagal - User memasukkan format password yang salah"

   Open Browser      https://www.deepl.com/account/summary    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"] 
   Click Element    //*[@id="usernav-button"]/span
   Click Element    //*[@id="headlessui-popover-panel-26"]/ul[1]/li/a/span/div
   Sleep    5
   Click Button     //*[@id="headlessui-tabs-panel-30"]/div/div[1]/div/div[2]/div[2]/button
   Input Password   account-password-change-old   Refina_12345678
   Input Password   account-password-change-new   refina1234
   Input Password   account-password-change-new-repeat     refina1234
   Sleep    10
   Click Button     //*[@id="headlessui-tabs-panel-30"]/div/div[1]/div[2]/div/div[3]/button[2]
   Sleep    10
   Close Browser
   Log    Test Completed
   

Password Change Gagal - User memasukkan password lama yang salah

   Open Browser      https://www.deepl.com/account/summary    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"] 
   Click Element    //*[@id="usernav-button"]/span
   Click Element    //*[@id="headlessui-popover-panel-26"]/ul[1]/li/a/span/div
   Sleep    5
   Click Button     //*[@id="headlessui-tabs-panel-30"]/div/div[1]/div/div[2]/div[2]/button
   Input Password   account-password-change-old   refina_123
   Input Password   account-password-change-new   Refina_1234
   Input Password   account-password-change-new-repeat     Refina_1234
   Sleep    10
   Click Button     //*[@id="headlessui-tabs-panel-30"]/div/div[1]/div[2]/div/div[3]/button[2]
   Sleep    10
   Close Browser
   Log    Test Completed
   

Password Change Gagal - User salah mengulangi kata sandi
   Open Browser      https://www.deepl.com/account/summary    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"] 
   Click Element    //*[@id="usernav-button"]/span
   Click Element    //*[@id="headlessui-popover-panel-26"]/ul[1]/li/a/span/div
   Sleep    5
   Click Button     //*[@id="headlessui-tabs-panel-30"]/div/div[1]/div/div[2]/div[2]/button
   Input Password   account-password-change-old   Refina_12345678
   Input Password   account-password-change-new   Refina_1234
   Input Password   account-password-change-new-repeat     Refina_13579
   Sleep    10
   Click Button     //*[@id="headlessui-tabs-panel-30"]/div/div[1]/div[2]/div/div[3]/button[2]
   Sleep    10
   Close Browser
   Log    Test Completed
   
   
