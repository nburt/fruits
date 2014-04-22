require 'spec_helper'

feature 'Managing Fruits' do
  scenario 'can create fruits' do
    visit '/'
    click_link 'Create Fruit'
    fill_in 'name', :with => 'Banana'
    fill_in 'description', :with => 'yellow'
    click_button 'Create Fruit'
    expect(page).to have_content 'Name: Banana'
  end
end