require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
    it { should validate_uniqueness_of :email }
  end
  describe 'relationships' do

  end
  describe 'class methods' do
    it 'can determine if a user entered correct authentication information' do
      name = 'Tom Bombadill'
      email = 'lotr@gmail.com'
      password = 'abc123'
      User.create(name: name, email: email, password: password)

      expect_user = User.authenticate(email, password)
      expect_nil = User.authenticate(email, '123abc')

      expect(expect_user).to eq(User.last)
      expect(expect_nil).to eq(nil)
    end
  end
end
