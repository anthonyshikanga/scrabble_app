require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the scrabble path', {:type => :feature}) do
    it('processes the user entry and returns its scrabble score') do
      visit('/')
      fill_in('scrabble', :with => 'bananas')
      click_button('Send')
      expect(page).to have_content('bananas')
    end
  end

