require 'rails_helper'

describe 'as a user' do
  it 'can log in ' do
    user = User.create(name: 'Tom', email: 'al', password: 'abc123')
    visit '/'
    click_on 'Login'
    fill_in :email, with: 'al'
    fill_in :password, with: 'abc123'
    click_button 'Login'

    expect(current_path).to eq(user_path(user.id))
    expect(page).to have_content('Welcome')
  end
end
