require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    it "Should have text 'See what people are saying about a movie!' " do
      visit '/static_pages/home'
      page.should have_content('See what people are saying about a movie!')
    end

    describe "search" do

      describe "with valid query" do
        it "should go to the results page" do
          visit '/static_pages/home'
          fill_in('Search', :with => 'Spring Breakers')
          find_button('Search').click
          page.shoud have_content('Spring Breakers')
        end
      end

    end
  end

  describe "About page" do

    it "Should have text 'This website was created by Curtis Giddings.' " do
      visit '/static_pages/about'
      page.should have_content('This website was created by Curtis Giddings.')
    end
  end
end
