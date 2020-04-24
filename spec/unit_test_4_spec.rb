require 'rails_helper'

describe "submit a quote using submission from", type: :feature do

    context "we are testing for verifying purposes" do

        it "tests our submission page" do

            visit "/submission"

            fill_in "fullName", with: "fullName"
            fill_in "companyName", with: "companyName"
            # fill_in "email", with: "test@test.com"

            fill_in "phoneNumber", with: "1"

            # fill_in "user_password", with: "password"

            click_button 'Submit Quote'
            # expect(page).to have_content('SUBMISSION FORM')
        end
        
    end
end
