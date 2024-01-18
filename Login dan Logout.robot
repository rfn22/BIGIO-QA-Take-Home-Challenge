*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***

#Login Sukses – Email dan Password benar  
Email dan Password benar 
 
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_139
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"]      
   Sleep    10
   Close Browser
   Log    Test Completed
   
#Login Gagal – Tidak mengisi textbox email
Tidak mengisi textbox email
    
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button  
   Input Text       "    "
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"]      
   Sleep    10
   Close Browser
   Log    Test Completed
   

#Login Gagal – Format email salah
Format email salah
    
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button  
   Input Text       menu-login-username   refinamarpaung8
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"]      
   Sleep    10
   Close Browser
   Log    Test Completed
   

#Login Gagal – Email tidak terdaftar
Email tidak terdaftar
    
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button  
   Input Text       menu-login-username   refinamarpaung123@gmail.com
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"]      
   Sleep    10
   Close Browser
   Log    Test Completed
   
#Login Gagal – Tidak mengisi textbox password
Tidak mengisi textbox password
    
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button  
   Input Text       menu-login-username   refinamarpaung8@gmail.com
   Input Text       "    "
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"]      
   Sleep    10
   Close Browser
   Log    Test Completed

#Login Gagal – Password salah
Password salah
    
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button  
   Input Text       menu-login-username   refinamarpaung8@gmail.com
   Input Password   menu-login-password   Refina_12345
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"]      
   Sleep    10
   Close Browser
   Log    Test Completed
   

Logout
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Input Text       menu-login-username   refinamarpaung8@gmail.com 
   Input Password   menu-login-password   Refina_12345678
   Sleep    2       
   Click Button     //*[@id="menu-login-submit"] 
   Click Element    //*[@id="usernav-button"]/span
   Click Button     //*[@id="headlessui-popover-panel-26"]/ul[2]/li/button     
   Sleep    10
   Close Browser
   Log    Test Completed

    

