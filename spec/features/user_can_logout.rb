require 'rails_helper'

describe 'as a user' do
  it 'can log out' do
    user = User.create(name: 'Tom', email: 'al', password: 'abc123')
    visit '/'
    click_on 'Login'
    fill_in :email, with: 'al'
    fill_in :password, with: 'abc123'
    click_button 'Login'
    click_button 'Log out'
    expect(current_path).to eq(users_path)
  end
end
