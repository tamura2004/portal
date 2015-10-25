class Presenter
  attr_reader :view_context
  delegate :content_tag, :concat, to: :view_context

  def initialize(view_context)
    @view_context = view_context
  end

  private

  def concat_content_tag(name, content_or_options_with_block = nil, options = nil, escape = true, &block)
    concat content_tag(name, content_or_options_with_block, options, escape, &block)
  end

  def div(class_name, &block)
    content_tag(:div, :class => class_name, &block)
  end

  def concat_div(class_name,&block)
    concat_content_tag(:div, :class => class_name, &block)
  end

end
