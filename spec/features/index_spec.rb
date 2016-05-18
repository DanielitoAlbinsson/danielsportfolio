require 'spec_helper'
describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'says Danielito is running the place with h1 tag' do
    expect(page).to have_selector 'h1'
    within 'h1' do
    expect(page).to have_content 'Danielito is running the place'
    end
  end

  it 'displays middleman logo' do
    expect(page).to have_css 'img[src*="middleman-logo.svg"]'
  end


  it 'displays project' do
    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'BMI'
    end
  end
end
