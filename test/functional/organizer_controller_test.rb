require File.dirname(__FILE__) + '/../test_helper'
require 'organizer_controller'

# Re-raise errors caught by the controller.
class OrganizerController; def rescue_action(e) raise e end; end

class OrganizerControllerTest < Test::Unit::TestCase
  def setup
    @controller = OrganizerController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
