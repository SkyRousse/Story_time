require 'rails_helper'

describe "create a new user process" do
  it "adds a new user to the database" do
    visit new_user_path
    fill_in 'Name', :with => "Username"
    fill_in 'Password', :with => "abcd1234"
    click_on 'Create User'
    expect(page).to have_content 'Yay'
  end
end
