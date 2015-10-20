module ApplicationHelper
  def left_label(&block)
    content_tag :div, :class => "col-xs-4 text-right control-label", &block
  end

  # def form_group(builder, model, name)
  #   content_tag :div, :class => "form-group" do
  #     content_tag :div, :class => "col-xs-4 text-right control-label" do
  #       builder.label model, name
  #     end) +
  #     (content_tag :div, :class => "col-xs-4" do
  #       yield
  #     end)
  #   end
  # end

end
