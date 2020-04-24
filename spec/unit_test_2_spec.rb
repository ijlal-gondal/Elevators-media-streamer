require 'rails_helper'

describe "testing intervention form", type: :feature do

  
    it "tests my intervention form" do
      visit '/interventions'
    #   within("#session") do
        # select "1", :from => "intervention_CustomerID"
        # fill_in 'intervention[BuildingID]', with: '1'
        # fill_in 'intervention[BatteryID]', with: '1'
        # fill_in 'intervention[ColumnID]', with: '1'
        # fill_in 'intervention[ElevatorID]', with: '1'
        # fill_in 'intervention[EmployeeID]', with: '1'

        
        # fill_in 'intervention_Description', with: 'test'
      
    #   click_button 'Create Intervention'
      expect(page).to have_content 'emloyees'
    end
end