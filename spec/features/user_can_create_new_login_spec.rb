require 'rails_helper'

describe 'as a user' do
  it 'can visit new user login page' do
    visit root_path

    click_on 'Create new user'

    expect(current_path).to eq(new_user_path)
  end

  it 'can create a new user login' do
    visit new_user_path

    fill_in 'Name', with: 'Dan Aurbock'
    fill_in 'Email', with: 'dana@blackkeys.come'
    fill_in 'Password', with: 'abc123'
    click_button 'Create User'

    expect(User.last.name).to eq('Dan Aurbock')
  end
end
