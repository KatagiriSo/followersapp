# -*- encoding: utf-8 -*-
class ManController < ApplicationController
  def show
  end

  def all
      
      isJSON = params[:json]


    @men = Man.all
    #@usr = Man.find(1) #id 1番の取得
    #@men = @usr.follows #ユーザのフォローしているもの一覧を出す。
    if isJSON == "true" then
        render :json => @men
    else
        render "man/all"
#    render "man/all"
    end
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
