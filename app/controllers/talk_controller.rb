class TalkController < ApplicationController
  def index
  end

  def new
  end
  
  def create
    Talk.create(is_man: true, content: params[:content])
    dic = Dictionary.where(ask: params[:content]).sample
    if dic.nil?
    redirect_to '/talk/index'
    else
    Talk.create(is_man: false, content: dic.answer)
    redirect_to '/talk/index'
    end
  end
  
  def learn
   Dictionary.create(ask: params[:ask], answer: params[:answer])
   redirect_to '/talk/index'
  end
end

