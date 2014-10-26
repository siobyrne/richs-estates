require 'spec_helper'

describe "Static Pages" do
	describe "Home page" do
		it "should have the content 'Rich's Estates'" do
			visit '/static_pages/home'
			expect(page).to have_content('Rich\'s Estates')
			end
		end
		
	describe "About page" do
		it "should have the content 'About Jordan Rich'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Jordan Rich')
		end
	end
end
