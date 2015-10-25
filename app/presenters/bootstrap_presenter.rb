class BootstrapPresenter < Presenter

  def panel(title)
    row do
      offset(3,6) do
        div "panel panel-default" do
          concat_div "panel-heading" do
            title
          end
          concat_div "panel-body" do
            yield
          end
        end
      end
    end
  end

  private

  def row(&block)
    div("row", &block)
  end

  def col_name(n)
    "col-xs-#{n}"
  end

  def offset_name(n)
    "col-xs-offset-#{n}"
  end

  def col(n,&block)
    div(col_name(n), &block)
  end

  def offset(n,m,&block)
    div("#{offset_name(n)} #{col_name(m)}", &block)
  end

end

