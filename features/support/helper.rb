require 'fileutils'

#Screenshot para o report
module Helper #Módulo Helper
    def take_screenshot(file_name, result) #com método take screenshot
        timer_path = Time.now.strftime('%F').to_s #cria uma pasta com a data 
        file_path = "results/screenshots/test_#{result}/run_#{timer_path}" #dentro da pasta results/screenshot cria uma past com o resultado do teste e o horário
        screenshot = "#{file_path}/#{file_name}.png" #o nome do screenshot vai conter essas duas infos
        page.save_screenshot(screenshot) #salva o screenshot
        #embed(screenshot, 'image/png', 'Click here') #Anexa no report - ?
    end
end
