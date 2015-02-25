require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information"do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user:{ name:"sadf",
                             email:"user@invalid.de",
                             password:"foo",
                             password_confirmation:"foo"}
    end     
    assert_template 'users/new'    
    assert_select 'div#<CSS id for error explanation>'
    assert_select 'div.<CSS class for field with error>'

  end   
end
