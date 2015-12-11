require 'rails_helper'

describe 'Users' do
  context 'GET /users/new' do
    it 'displays the create new user page' do
      visit new_user_path

      page.should have_content 'Email'
      page.should have_content 'Full Name'
      page.should have_content 'Password'
      page.should have_content 'Confirm Password'
      page.has_field? 'email'
      page.has_field? 'full_name'
      page.has_field? 'password'
      page.has_field? 'password_confirmation'
      page.has_button? 'Sign Up'
    end
  end
end

# RSpec.describe "Users", type: :request do
#   describe "GET /users" do
#     it "works! (now write some real specs)" do
#       get users_index_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end
