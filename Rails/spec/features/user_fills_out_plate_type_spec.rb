require "rails_helper"

feature "User fills plate type" do
    scenario "single plate is default" do
        visit new_assay_path
        expect(find('#assay_plate_type_s')).to be_checked
    end

    scenario "timestamp only shows up when multiple is selected",js:true do
	    visit new_assay_path
	    expect(page).not_to have_content('Timestamp format')
	    choose('assay_plate_type_m')
	    expect(page).to have_content('Timestamp format')
        choose('assay_plate_type_s')
        expect(page).not_to have_content('Timestamp format')
    end

end
