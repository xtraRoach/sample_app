require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information"do
    get signup_path
    assert_no_difference 'User.count' do
      post user_path, user:{ name:"",
                             email:"user@invalid.de",
                             password:"foo",
                             password_confirmation:"bar"}
    end    
    assert_template 'user/new'    
  end   
end
