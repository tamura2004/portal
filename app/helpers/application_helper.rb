module ApplicationHelper
  def form_for(record,options={},&block)
    options[:html] = {
      class: "form-horizontal"
    }
    super
  end

  def label_tag(name = nil, content_or_options = nil, options = nil, &block)
    options = {
      class: "control-label col-xs-4 text-right"
    }
    super
  end

end
