
Given("that I accessed the login page") do
  @login = LoginPage.new
  @login.access
  
end
  
 
  When("I do login with:") do |table|
   @user = table.rows_hash

  
   @login.do_login(@user[:email], @user[:senha])

  end


  Then("I should see the following message of {string}") do |message|
    
    expect(@login.alert_message).to eql message
    
  end