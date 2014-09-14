require "application_responder"

class ApplicationResponderController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

end