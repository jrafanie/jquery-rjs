require 'action_view/helpers/rendering_helper'

module JqueryRjs::RenderingHelper
  define_method("render") do |options = {}, locals = {}, &block|
    if options == :update
      update_page(&block)
    else
      args = options, locals
      super(*args, &block)
    end
  end
end

ActionView::Helpers::RenderingHelper.prepend(JqueryRjs::RenderingHelper)
