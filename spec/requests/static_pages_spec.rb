require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) {"Salas de Cinema"}

  describe "Home page" do

    it "should have the content 'Salas de Cinema'" do
      visit '/static_pages/home'
      expect(page).to have_content('Salas de Cinema')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title(base_title)
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
  
  describe "Help page" do

    it "should have the content 'Ajuda'" do
      visit '/static_pages/help'
      expect(page).to have_content('Ajuda')
    end
    
    it "should have the title 'Ajuda'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Ajuda")
    end
  end
  
  describe "About page" do

    it "should have the content 'Sobre'" do
      visit '/static_pages/about'
      expect(page).to have_content('Sobre')
    end
    
    it "should have the title 'Sobre'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | Sobre")
    end
  end

end