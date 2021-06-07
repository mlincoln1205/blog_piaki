require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context 'Sign in' do
    it 'Sucessfully sign' do
      user = User.new
      user.first_name = 'John'
      user.last_name = 'Rambo'
      user.email = 'john.rambo@john.com'
      user.password = 'password'
      user.save
      
      visit '/users/sign_in'
      within('#new_user') do
        fill_in 'user_email', with: 'john.rambo@john.com'
        fill_in 'user_password', with: 'password'
        click_button 'Log in'

        expect(page).to have_content 'Signed in successfully.'
      end
    end
  end
end
