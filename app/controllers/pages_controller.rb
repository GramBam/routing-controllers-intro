class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome

    @header = "neat"

  end

  def about

    @header = "cool"

  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to welcome_path

  end

  def kitten
    #set_kitten_url
  end

  def kittens
    #set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets

    if params[:magic_word] == magic_word

      render :secrets

    else
      redirect_to "/welcome"

      flash[:alert] = "Sorry, you're not authorized to see that page!"

      end
  end

  def magic_word
    "password"
  end



  end
