# page objects

class HomePage < SitePrism::Page  #a classe HomePage vai herdar uma classe do SitePrism

    #Mapeando elementos

    set_url 'https://www.youtube.com/'
    element :barra_pesquisa, 'input[name=search_query]' #Usando name
    element :lupa_pesquisa, '#search-icon-legacy' #Usando id
    element :canal_D1, '#main-link' #Usando id
    #element :aba_sobre, ':xpath,"/html/body/ytd-app/div/ytd-page-manager/ytd-browse/div[3]/ytd-c4-tabbed-header-renderer/tp-yt-app-header-layout/div/tp-yt-app-header/div[2]/tp-yt-app-toolbar/div/div/tp-yt-paper-tabs/div/div/tp-yt-paper-tab[6]'

    def acesso_canal(canal)
        barra_pesquisa.set canal
        lupa_pesquisa.click
        canal_D1.click
    end

    def acesso_canal_errado(errado)
        barra_pesquisa.set errado
        lupa_pesquisa.click
    end

end