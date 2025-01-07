if Rails.version >= "7.1.0.0"
  require 'action_controller/metal/rendering'

  module JqueryRjs::ActionControllerRendering
    # Normalize arguments by catching blocks and setting them on :update.
    def _normalize_args(action = nil, options = {}, &blk)
      options = super
      options[:update] = blk if block_given?
      options
    end
  end

  ActionController::Rendering.prepend(JqueryRjs::ActionControllerRendering)
end
