class SurveysController < ApplicationController
  def index
  end

  def new
  end

  def create
    session[:user] = params
    flash[:name] = params[:name]
    flash[:location] = params[:location]
    flash[:language] = params[:language]
    flash[:comment] = params[:comment]

    if session[:count]
      session[:count] += 1
    else
      session[:count] = 1
  end
    flash[:count] = session[:count]

    redirect_to('/result')
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def result
    @user = session[:user]
  end
end
