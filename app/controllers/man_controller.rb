class ManController < ApplicationController
  def show
  end

  def all
#    @men = Man.all
@usr = Man.find(1) #id 1番の取得
@men = @usr.follows #ユーザのフォローしているもの一覧を出す。
    render :json => @men
#    render "man/all"
  end
  
  
  # プロフィール
  def show
    
    @id = params[:id]
    isJSON = params[:json]
    @usr = Man.find(@id)
    
    if isJSON == "true" then
        render :json => @usr
    else
        render "man/show"
    end
    
    
  end


end
