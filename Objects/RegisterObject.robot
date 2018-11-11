*** Variables ***

#Register
${registerUrl}              https://www.csfd.cz/registrace/
${registerNav}              xpath=//*[@id="user-menu"]/ul/li[2]/a
${registerNicknameInput}    xpath=//*[@id="frm-registerForm-nick"]
${registerEmailInput}       xpath=//*[@id="frm-registerForm-email"]
${registerBirthInput}       xpath=//*[@id="frm-registerForm-birth_date"]
${registerNext}             xpath=//*[@id="next"]
${registerTandC}            xpath=//*[@id="frm-registerForm-terms_and_conditions"]
${registerGDPR}             xpath=//*[@id="frm-registerForm-gdpr"]
${registerFinish}           xpath=//*[@value="Zaregistrovat"]
${exists_nickname}          Bart   
${incorect_birth_date}      31.2.1999
${non-existing_email}       totojenahodnyeeemail@nahodna.nah
${registerMsg}              xpath=//*[@id="frm-registerForm"]/ul/li
${registerMsgNickname}      Tato přezdívka je již používána, zvol si prosím jinou.
${registerMsgEmail}         Tato e-mailová adresa je již používána, použij prosím jinou.
${registerMsgBirth}         Datum musí být zadáno ve formátu "dd.mm.rrrr" nebo "mm-dd-rrrr" nebo "mm/dd/rrrr", tedy například "28.11.1983" nebo "06-28-1983" nebo "06/28/1983".
