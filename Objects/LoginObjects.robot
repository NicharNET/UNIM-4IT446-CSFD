*** Variables ***
#Login
${invalidLoginMessage}      Přihlášení se nezdařilo, přezdívka či heslo je nesprávné. Zadáváš správně velká a malá písmena v heslu?
${inputUser}                id=frm-form-username    
${inputPassword}            id=frm-form-password    
${btnLogin}                 name=send
${login}                    xpath=//*[@id="user-menu"]/ul/li[1]/a
${logout}                   xpath=//*[@id="user-menu"]/ul[2]/li[4]/a
${checkUser}                id=user-menu
${usernameNav}              xpath=//*[@id="user-menu"]/ul[1]/li[1]/h3/a
${usernameLabelNav}         xpath=//*[@id="pg-web-user"]/div[1]/div[1]/div[1]/h2