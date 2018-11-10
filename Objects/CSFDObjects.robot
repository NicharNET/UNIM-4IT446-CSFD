*** Variables ***
#Reset Password
${resetPswNav}    xpath=//*[@id="user-menu"]/ul/li[3]/a
${resetPswUrl}      https://www.csfd.cz/registrace/ztracene-heslo/
${resetNicknameInput}   xpath=//*[@id="frm-lostPasswordNickForm-nick"]
${resetNicknameBtn}     xpath=//*[@id="frm-lostPasswordNickForm"]/fieldset/table/tbody/tr[2]/td/input
${resetEmailInput}      xpath=//*[@id="frm-lostPasswordEmailForm-email"]
${resetEmailBtn}    xpath=//*[@id="frm-lostPasswordEmailForm"]/fieldset/table/tbody/tr[2]/td/input
${reset_error_msg_id}   //*[@id="frm-lostPasswordNickForm"]/ul
${non_existing_nickname}    totojjenahoddnaprezdivka
${incorrect_email_msg}  Zadej korektní e-mail.
${existing_email}   natzachar91@gmail.com
${success_reset}     xpath=//*[@id="page-wrapper"]/div[2]
#Register
${registerUrl}    https://www.csfd.cz/registrace/
${registerNav}    xpath=//*[@id="user-menu"]/ul/li[2]/a
${registerNicknameInput}    xpath=//*[@id="frm-registerForm-nick"]
${registerEmailInput}    xpath=//*[@id="frm-registerForm-email"]
${registerBirthInput}    xpath=//*[@id="frm-registerForm-birth_date"]
${registerNext}    xpath=//*[@id="next"]
${registerTandC}    xpath=//*[@id="frm-registerForm-terms_and_conditions"]
${registerGDPR}    xpath=//*[@id="frm-registerForm-gdpr"]
${registerFinish}    xpath=//*[@value="Zaregistrovat"]
${exists_nickname}    Bart   
${incorect_birth_date}    31.2.1999
${non-existing_email}    totojenahodnyeeemail@nahodna.nah
${registerMsg}    xpath=//*[@id="frm-registerForm"]/ul/li
${registerMsgNickname}    Tato přezdívka je již používána, zvol si prosím jinou.
${registerMsgEmail}    Tato e-mailová adresa je již používána, použij prosím jinou.
${registerMsgBirth}    Datum musí být zadáno ve formátu "dd.mm.rrrr" nebo "mm-dd-rrrr" nebo "mm/dd/rrrr", tedy například "28.11.1983" nebo "06-28-1983" nebo "06/28/1983".
#Login
${loginMessage}    Přihlášení se nezdařilo, přezdívka či heslo je nesprávné. Zadáváš správně velká a malá písmena v heslu?
${inputUser}    id=frm-form-username    
${inputPassword}    id=frm-form-password    
${btnLogin}    name=send
${login}    Přihlásit
${logout}    Odhlásit 
${checkUser}    id=user-menu