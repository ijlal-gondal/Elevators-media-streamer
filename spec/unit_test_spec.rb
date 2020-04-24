require 'rails_helper'

describe "login into admin panel", type: :feature do

    context "we are testing for verifying purposes" do

        it "tests our login in page" do

            visit "/users/sign_in"

            fill_in "user_email", with: "test@test.com"

            fill_in "user_password", with: "password"

            click_button 'Log in'
            
            expect(page).to have_content('Log in')
        end
        
    end
end







