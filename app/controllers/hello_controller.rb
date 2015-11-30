# -*- encoding: utf-8 -*-
class HelloController < ApplicationController
  def hello
    # テキストを直接表示
    #render :text => "hello"

    @msg = "こちらは"

    # クエリ?sol=***取得
    @para = params[:sol]

    # ビューを表示
    render "hello/hello"


  end
end
