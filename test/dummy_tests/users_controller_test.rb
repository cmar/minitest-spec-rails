require 'test_helper_dummy'

module UsersControllerTests
  def self.included(klass)
    klass.class_eval do

      before { get :index }

      it 'works' do  
        assert_select 'h1', "All #{User.count} Users"
      end
    
    end
  end
end

class UsersControllerTest < ActionController::TestCase
  include UsersControllerTests
end

describe UsersController do
  include UsersControllerTests
end
