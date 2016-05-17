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
    expect(page).to have_css 'img[scr*="middleman-logo.svg"]'
  end
end
