module ApplicationHelper
  def document_title
    if @title.present?
      "#{@title} - SOI"
    else
      "SOI"
    end
  end
end
