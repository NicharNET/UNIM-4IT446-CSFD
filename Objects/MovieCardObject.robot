*** Variables ***

#Movie Card
#unfortunately the CSFD webpage is not well structured

${ratingsUrl}                https://www.csfd.cz/zebricky/nejlepsi-filmy/
${ratingsNav}                xpath=//*[@id="main-menu"]/li[8]/a

${bestMoviesUrl}             https://www.csfd.cz/zebricky/nejlepsi-filmy/
${bestMoviesNav}             xpath=//div[@class="navigation"]/ul/li[1]/a

${worstMoviesUrl}            https://www.csfd.cz/zebricky/nejhorsi-filmy/
${worstMoviesNav}            xpath=//div[@class="navigation"]/ul/li[2]/a

${firstMovieNav}             xpath=//div[@id="results"]/table/tbody/tr[1]/td[@class="film"]/a
${rating}                    xpath=//*[@id="rating"]/h2

${labelNav}                  xpath=//*[@id="profile"]/div[1]/div[2]/div[1]/h1
${directorNav}               xpath=//*[@id="profile"]/div[1]/div[2]/div[2]/div[1]/h4
${posterNav}                 xpath=//*[@id="poster"]/img
${contentNav}                xpath=//*[@id="plots"]/div[2]/ul/li[1]/div[2]

${overviewTab}               xpath=//*[@id="main"]/div[4]/div[1]/ul/li[1]/a
${commentsTab}               xpath=//*[@id="main"]/div[4]/div[1]/ul/li[2]/a
${commentsTabLabel}          xpath=//*[@id="main"]/div[4]/div[2]/h2
${triviaTab}                 xpath=//*[@id="main"]/div[4]/div[1]/ul/li[3]/a
${triviaTabLabel}            xpath=//*[@id="main"]/div[4]/h2

${director}                  Režie
${commentsTabLabelRegexp}    Komentáře uživatelů k filmu \\([\\d ]+\\) 
${triviaTabLabelRegexp}      Zajímavosti k filmu \\([\\d ]+\\)  
