class PagesController < ApplicationController
  def index
       @q = Ivent.ransack(params[:q])
    @ivents = @q.result(distinct: true)
  end
  def description
  end
  def contact
  end
  def news
  end
  def about
  end
end
