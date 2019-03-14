#Page Object

class LoginPage

    include Capybara::DSL

    def access
        visit '/'
        click_link 'Acessar'
    end


    def do_login(email,senha)
        find('input[placeholder=Email]').set email
        find('input[type=password]').set senha
        click_button 'Entrar'
    end


    def alert_message
        within('form[id=login]') do
        return find('.alert').text
        end 
    end


   

end