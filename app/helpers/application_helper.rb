module ApplicationHelper
  def document_title
    if @title.present?
      "#{@title} - オープン系共通基盤ポータル"
    else
      "オープン系共通基盤ポータル"
    end
  end

  def current_user
    true
  end
end
