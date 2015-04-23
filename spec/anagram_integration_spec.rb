require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The anagram path', {:type => :feature}) do
  it('processes the user\'s input word and possible anagrams and return a list of anagrams') do
    visit('/')
    fill_in('word', :with => 'god')
    fill_in('words', :with => 'got, hair, dog, 8, seven, odg')
    click_button('go!')
    expect(page).to have_content('dog, odg')
  end
end
