*** Variables ***
#ResetPassword
${resetPswNav}              xpath=//*[@id="user-menu"]/ul/li[3]/a
${resetPswUrl}              https://www.csfd.cz/registrace/ztracene-heslo/
${resetNicknameInput}       xpath=//*[@id="frm-lostPasswordNickForm-nick"]
${resetNicknameBtn}         xpath=//*[@id="frm-lostPasswordNickForm"]/fieldset/table/tbody/tr[2]/td/input
${resetEmailInput}          xpath=//*[@id="frm-lostPasswordEmailForm-email"]
${resetEmailBtn}            xpath=//*[@id="frm-lostPasswordEmailForm"]/fieldset/table/tbody/tr[2]/td/input
${reset_error_msg_id}       //*[@id="frm-lostPasswordNickForm"]/ul
${non_existing_nickname}    totojjenahoddnaprezdivka
${incorrect_email_msg}      Zadej korektní e-mail.
${existing_email}           natzachar91@gmail.com
${success_reset}            xpath=//*[@id="page-wrapper"]/div[2]
