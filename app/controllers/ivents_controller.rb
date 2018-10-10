class IventsController < ApplicationController
  before_action :authenticate_user!, only: [:update,:edit, :create,:destroy,:photos]
 
  def new
    @ivent = current_user.ivents.build
  end

  def index
    @q = Ivent.ransack(params[:q])
    @ivents = @q.result(distinct: true)
  end
  
  def show
    @ivent = Ivent.find(params[:id])
    @photos = @ivent.photos
    @user = @ivent.user
  end
 
  def edit
     @ivent = Ivent.find(params[:id])
  end

  def update
   @ivent = Ivent.find(params[:id])
    if @ivent.update(ivent_params)
      redirect_to ivents_path
    end
  
  end

  def create
    @ivent = current_user.ivents.build(ivent_params)
    if @ivent.save
      redirect_to ivent_photos_path(@ivent),notice: "イベント作成完了、画像を追加してください"
    else
      render "new", notice:"作成できませんでした、イベント内容を確認してください"
    end
  end
  def destroy
    @ivent = Ivent.find(params[:id])
    @ivent.destroy
    redirect_to ivents_path, notice:"イベントを削除しました"
  end

  def photos
    @photo = Photo.new
    @ivent = Ivent.find(params[:id])
  end

  private
   def ivent_params
     params.require(:ivent).permit(:address,:ivent_title,:ivent_content,:music_type,:bandivent_mei,:select_people,:image)
   end
   
end















