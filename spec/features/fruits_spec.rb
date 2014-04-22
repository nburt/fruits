require 'spec_helper'

feature 'Managing Fruits' do

  before do
    visit '/'
    click_link 'Create Fruit'
    fill_in 'name', :with => 'Banana'
    fill_in 'description', :with => 'yellow'
    click_button 'Create Fruit'
  end
  scenario 'can create fruits' do
    expect(page).to have_content 'Name: Banana'
  end

  scenario 'can view existing fruits individually' do
    click_link 'Banana'
    within 'h1' do
      expect(page).to have_content 'Banana'
    end
    within 'p' do
      expect(page).to have_content 'yellow'
    end
  end
end