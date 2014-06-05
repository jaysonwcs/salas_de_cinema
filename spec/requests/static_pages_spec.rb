require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Salas de Cinema'" do
      visit '/static_pages/home'
      expect(page).to have_content('Salas de Cinema')
    end
    
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Salas De Cinema | Home")
    end
  end
  
  describe "Help page" do

    it "should have the content 'Ajuda'" do
      visit '/static_pages/help'
      expect(page).to have_content('Ajuda')
    end
    
    it "should have the title 'Ajuda'" do
      visit '/static_pages/help'
      expect(page).to have_title("Salas De Cinema | Ajuda")
    end
  end
  
  describe "About page" do

    it "should have the content 'Sobre'" do
      visit '/static_pages/about'
      expect(page).to have_content('Sobre')
    end
    
    it "should have the title 'Sobre'" do
      visit '/static_pages/about'
      expect(page).to have_title("Salas De Cinema | Sobre")
    end
  end

end