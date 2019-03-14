
#Login Feature - Register Feature

Then("I am successfully authenticated") do
   within('.navbar') do
      user_menu = find('#userMenu')
      expect(user_menu.text).to eql @user[:nome]
   end
  end