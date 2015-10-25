class FormPresenter
  attr_reader :form_builder, :view_context
  delegate :label, :text_field, to: :form_builder
  delegate :div, :col, :offset, to: :view_context

  def initialize(form_builder, view_context)
    @form_builder = form_builder
    @view_context = view_context
  end
end

