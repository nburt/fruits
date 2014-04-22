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

  scenario 'can edit existing fruits' do
    click_link 'Banana'
    click_link 'Edit Fruit'
    fill_in 'name', :with => 'Apple'
    fill_in 'description', :with => 'red'
    click_button 'Edit Fruit'
    expect(page).to_not have_content 'Banana'
    click_link 'Apple'
    within 'h1' do
      expect(page).to have_content 'Apple'
    end
    within 'p' do
      expect(page).to have_content 'red'
    end
  end

  scenario 'can delete existing fruits' do
    click_link 'Banana'
    click_button 'Delete Fruit'
    expect(page).to_not have_content 'Banana'
  end
end