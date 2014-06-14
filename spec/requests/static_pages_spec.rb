require 'spec_helper'

describe "Static pages" do

  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    
    let(:heading)    { 'Salas de Cinema' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    let(:heading)    { 'Ajuda' }
    let(:page_title) { 'Ajuda' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }

    let(:heading)    { 'Sobre' }
    let(:page_title) { 'Sobre' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }

    let(:heading)    { 'Contato' }
    let(:page_title) { 'Contato' }

    it_should_behave_like "all static pages"
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "Sobre"
    expect(page).to have_title(full_title('Sobre'))
    click_link "Ajuda"
    expect(page).to have_title(full_title('Ajuda'))
    click_link "Contato"
    expect(page).to have_title(full_title('Contato'))
    click_link "Home"
    click_link "Cadastre-se!"
    expect(page).to have_title(full_title('Cadastro'))
    click_link "salas de cinema"
    expect(page).to have_title(full_title(''))
  end
end