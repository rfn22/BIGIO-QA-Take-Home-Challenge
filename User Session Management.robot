*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***

Edit Profile Sukses - User mengubah email


   Open Browser      https://www.deepl.com/account/summary    firefox
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"] 
   Click Element    //*[@id="usernav-button"]/span
   Click Element    //*[@id="headlessui-tabs-panel-74"]/div/div[1]/div/div[2]/div[1]/button
   Sleep    2
   Input Text       account-email-change-input   refinamarpaung45@gmail.com
   Input Password   account-email-change-password   Refina_12345
   Click Button     //*[@id="headlessui-tabs-panel-74"]/div/div[1]/div[2]/div/div[3]/button[2]
   Sleep    10
   Close Browser
   Log    Test Completed
   
   
 Edit Profile Gagal - Format email salah

   Open Browser      https://www.deepl.com/account/summary    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"] 
   Click Element    //*[@id="usernav-button"]/span
   Click Element    //*[@id="headlessui-tabs-panel-74"]/div/div[1]/div/div[2]/div[1]/button
   Sleep    2
   Input Text       account-email-change-input   refinamarpaung45
   Input Password   account-email-change-password   Refina_12345
   Click Button     //*[@id="headlessui-tabs-panel-74"]/div/div[1]/div[2]/div/div[3]/button[2]
   Sleep    10
   Close Browser
   Log    Test Completed
   
   
Edit Profile Gagal - Tidak mengisi textbox Email

   Open Browser      https://www.deepl.com/account/summary    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"] 
   Click Element    //*[@id="usernav-button"]/span
   Click Element    //*[@id="headlessui-tabs-panel-74"]/div/div[1]/div/div[2]/div[1]/button
   Sleep    2
   Input Text       "    "
   Input Password   account-email-change-password   Refina_12345
   Click Button     //*[@id="headlessui-tabs-panel-74"]/div/div[1]/div[2]/div/div[3]/button[2]
   Sleep    10
   Close Browser
   Log    Test Completed

Edit Profile Gagal - Tidak mengisi textbox Password
    
   Open Browser      https://www.deepl.com/account/summary    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"] 
   Click Element    //*[@id="usernav-button"]/span
   Click Element    //*[@id="headlessui-tabs-panel-74"]/div/div[1]/div/div[2]/div[1]/button
   Sleep    2
   Input Text       account-email-change-input   refinamarpaung45@gmail.com
   Input Password   "    "
   Click Button     //*[@id="headlessui-tabs-panel-74"]/div/div[1]/div[2]/div/div[3]/button[2]
   Sleep    10
   Close Browser
   Log    Test Completed