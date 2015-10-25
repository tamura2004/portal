class BootstrapFormPresenter < BootstrapPresenter
  attr_reader :form_builder
  delegate :label, :text_field, :text_area, to: :form_builder

  def initialize(form_builder, view_context)
    @form_builder = form_builder
    super view_context
  end

  def input_text(field_name)
    div("form-group") do
      concat label(field_name, :class => col_name(2))
      concat col(10){text_field(field_name, required: true)}
    end
  end

  def input_text_area(field_name)
    div("form-group") do
      concat label(field_name, :class => col_name(2))
      concat col(10){text_area(field_name, required: true)}
    end
  end

  def submit
    div("form-group") do
      offset(2,2) do
        form_builder.submit
      end
    end
  end

end
