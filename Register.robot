*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***

Registrasi Sukses - User membuat akun deepl
 
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/p[1]/a
   Input Text       signup-account-email   refinamarpaung8@gmail.com 
   Click Button     //*[@id="signup-account-continueButton"]
   Sleep    2       
   Input Password   password   Refina_12345678
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/div[3]/label/span[2]]
   Click Button     //*[@id="signup-account-submit"]       
   Sleep    10
   Close Browser
   Log    Test Completed
   

Registrasi Gagal – Tidak mengisi textbox email
 
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/p[1]/a
   Input Text       "    "
   Click Button     //*[@id="signup-account-continueButton"]
   Sleep    2       
   Input Password   password   Refina123456
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/div[3]/label/span[1]
   Click Button     //*[@id="signup-account-submit"]       
   Sleep    10
   Close Browser
   Log    Test Completed
   
   
Registrasi Gagal – Format email salah
 
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/p[1]/a
   Input Text       signup-account-email    refinamarpaung 
   Click Button     //*[@id="signup-account-continueButton"]
   Sleep    2       
   Input Password   password   Refina12345
   Click Element  //*[@id="gatsby-focus-wrapper"]/div/main/form/div[3]/label/span[2]
   Click Button     //*[@id="signup-account-submit"]       
   Sleep    10
   Close Browser
   Log    Test Completed
   

Registrasi Gagal – Email sudah terdaftar
    
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/p[1]/a
   Input Text       signup-account-email    refina.71marpaung@gmail.com 
   Click Button     //*[@id="signup-account-continueButton"]
   Sleep    2       
   Input Password   password   Refina_12345
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/div[3]/label/span[2]
   Click Button     //*[@id="signup-account-submit"]       
   Sleep    10
   Close Browser
   Log    Test Completed

Registrasi Gagal – Tidak mengisi textbox password
    
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/p[1]/a
   Input Text       signup-account-email    refina.71marpaung@gmail.com 
   Click Button     //*[@id="signup-account-continueButton"]
   Sleep    2       
   Input Password   "    "
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/div[3]/label/span[2]
   Click Button     //*[@id="signup-account-submit"]       
   Sleep    10
   Close Browser
   Log    Test Completed

Registrasi Gagal – Format password salah
   
   Open Browser      https://www.deepl.com/translator    edge
   Set Selenium Implicit Wait    5
   Sleep    2    
   Click Button     //*[@id="gatsby-focus-wrapper"]/header/div/div/div/button
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/p[1]/a
   Input Text       signup-account-email    refina.71marpaung@gmail.com 
   Click Button     //*[@id="signup-account-continueButton"]
   Sleep    2       
   Input Password   password    refina
   Click Element    //*[@id="gatsby-focus-wrapper"]/div/main/form/div[3]/label/span[2]
   Click Button     //*[@id="signup-account-submit"]       
   Sleep    10
   Close Browser
   Log    Test Completed