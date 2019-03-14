require 'faker'

Given("that I am on registration page") do
    visit '/api/reset' 
    visit '/cadastre-se'
    
  end
  
  When("I do my register with") do |table|
   
    @user = table.rows_hash
    
    fill_in 'fullName', with: @user[:nome] 
    fill_in 'email', with: @user[:email]
    fill_in 'password', with: @user[:senha]
   
   #fill_in 'fullName', with: @user[:nome] 
   #fill_in 'email', with: Faker::Internet.email
   #fill_in 'password', with: @user[:senha]  

   click_button 'Cadastrar'
   
  end
  

    Then("I should see the message {string}") do |message|
      alert = find('.alert')
      expect(alert).to have_content message
    end
    
  