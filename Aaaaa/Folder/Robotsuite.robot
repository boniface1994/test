*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open browser 
      Open Browser  ${URL_GOOGLE}  ${NAVIGATEUR}
      Set Browser Implicit Wait  5
      Sleep  2
      Close Browser
      
Open gmail
     Open Browser  ${URL_MAIL}  ${NAVIGATEUR}
     Input Text  id=indetifierId  ${USER}
     

Open linkden
    Manokatra lindedin
    Click Link  href="https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin"
    
 Open fmfp
     Open Browser  ${URL_FMFP}  ${NAVIGATEUR}
      Nom utilisateur   admin
    mot de passe   Password123
     Click Button  id=btnConnexion
     Click Link  href="http://localhost/fmfp/gestion_allocation/gestion_allocation"
    
*** variables ***
${URL_FMFP}   http://localhost/fmfp/auth
${USER}  zetracom.com@gmail.com
${URL_MAIL}    https://mail.google.com/mail/
${URL_GOOGLE}  https://www.google.com 
${NAVIGATEUR}  Chrome
${URL_LK}    https://linkedin.com/
${URL_ADMIN}  href="http://localhost/fmfp/admin/admin"

*** keywords ***
Manokatra lindedin
    Open Browser  ${URL_LK}  ${NAVIGATEUR}
    
Nom utilisateur 
    [Arguments]  ${nom_utilisateur}  
     Input Text  id=email_input  ${nom_utilisateur} 
     
mot de passe 
    [Arguments]  ${mot_passe}  
     Input Password  name=password  ${mot_passe} 
     

