require 'rails_helper'

RSpec.describe 'Hello world', type: :feature do

  it 'index page' do
 
    # This is where Capybara starts to come into the picture. "visit" is a
    # Capybara method. hello_world_index_path is just a Rails routing
    # helper method and has nothing to do with RSpec or Capybara.
    visit hello_world_index_path
 
    # The following is a mix of RSpec syntax and Capybara syntax. "expect"
    # and "to" are RSpec, "page" and "have_content" are Capybara. Newcomers
    # to RSpec and Capybara's English-sentence-like constructions often
    # have difficulty remembering when two words are separated by a dot or
    # an underscore or parenthesis, myself included. Don't worry, you'll
    # get familiar over time.
    expect(page).to have_content('Hello, world!')
  end
end