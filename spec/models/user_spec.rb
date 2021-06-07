require 'rails_helper'
require 'capybara/rails'


RSpec.describe User, type: :model do
  context 'Validate User' do
    it 'is valid?' do
      user = User.new
      user.first_name = 'John'
      user.last_name = 'Rambo'
      user.email = 'john.rambo@john.com'
      user.password = 'password'
      expect(user.valid?).to be true
    end
    it 'is not valid?' do
      user = User.new
      user.first_name = 'John'
      user.last_name = 'Rambo'
      user.password = 'password'
      expect(user.valid?).to be false
    end
  end
end