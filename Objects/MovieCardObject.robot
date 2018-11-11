*** Variables ***

#Movie Card
${ratingsUrl}                https://www.csfd.cz/zebricky/nejlepsi-filmy/
${ratingsNav}                xpath=//*[@id="main-menu"]/li[8]/a

${bestMoviesUrl}             https://www.csfd.cz/zebricky/nejlepsi-filmy/
${bestMoviesNav}             xpath=//div[@class="navigation"]/ul/li[1]/a

${worstMoviesUrl}            https://www.csfd.cz/zebricky/nejhorsi-filmy/
${worstMoviesNav}            xpath=//div[@class="navigation"]/ul/li[2]/a

${firstMovieNav}             xpath=//div[@id="results"]/table/tbody/tr[1]/td[@class="film"]/a
${rating}                    xpath=//*[@id="rating"]/h2

${directorNav}               xpath=//*[@id="profile"]/div[1]/div[2]/div[2]/div[1]/h4