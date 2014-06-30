require 'spec_helper'

describe "User pages" do

  subject { page }
  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end

  describe "signup page" do
    before { visit signup_path }

    it { should have_content("Cadastre-se") }
    it { should have_title(full_title("Cadastro")) }
  end

  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Abrir uma conta" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
      
      describe "after submission" do
        before { click_button submit }

        it { should have_title('Cadastro') }
        it { should have_content('error') }
      end
    end

    describe "with valid information" do
      before do
        fill_in "Nome",         with: "Example User"
        fill_in "E-mail",        with: "user@example.com"
        fill_in "Senha",     with: "foobar"
        fill_in "Repetir senha", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end