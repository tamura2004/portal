class User::TopController < User::BaseController
  def index
    render action: "index"
  end
end
