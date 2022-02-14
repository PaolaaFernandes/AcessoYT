
Dado('que eu acesso o YouTube') do
    @acesso = HomePage.new
    @acesso.load
  end
  
  Quando('eu acesso o canal') do |table|
    @canal = table.rows_hash['canal']
    @acesso.acesso_canal(@canal)
  end
  
  Então('eu acesso a aba Sobre do canal') do
   #Utilizando full xpath
   find(:xpath,"/html/body/ytd-app/div/ytd-page-manager/ytd-browse/div[3]/ytd-c4-tabbed-header-renderer/tp-yt-app-header-layout/div/tp-yt-app-header/div[2]/tp-yt-app-toolbar/div/div/tp-yt-paper-tabs/div/div/tp-yt-paper-tab[6]").click 
  end
  
  Então('verifico a quantidade de inscritos') do
    expect(page).to have_content('Descrição')
    expect(page).to have_content('inscritos')
  end
  
  Quando('eu procuro o canal errado') do |table|
    @errado = table.rows_hash['errado']
    @acesso.acesso_canal_errado(@errado)
  end
  
  Então('eu devo ser redirecionada para a página principal') do
    @acesso.load
  end
  
  Então('eu acesso a aba errada do canal') do
    find(:xpath,"/html/body/ytd-app/div/ytd-page-manager/ytd-browse/div[3]/ytd-c4-tabbed-header-renderer/tp-yt-app-header-layout/div/tp-yt-app-header/div[2]/tp-yt-app-toolbar/div/div/tp-yt-paper-tabs/div/div/tp-yt-paper-tab[3]").click
    expect(page).not_to have_content('Descrição')
  end
  
  Então('devo ser redirecionada para a aba certa') do
    find(:xpath,"/html/body/ytd-app/div/ytd-page-manager/ytd-browse/div[3]/ytd-c4-tabbed-header-renderer/tp-yt-app-header-layout/div/tp-yt-app-header/div[2]/tp-yt-app-toolbar/div/div/tp-yt-paper-tabs/div/div/tp-yt-paper-tab[6]").click
    sleep 5
  end