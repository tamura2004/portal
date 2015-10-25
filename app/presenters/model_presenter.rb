class ModelPresenter
  attr_reader :model

  def initialize(model)
    @model = model
  end

  def schema
    model.columns.each do |c|
      p [c.name,c.type]
    end
  end
end
