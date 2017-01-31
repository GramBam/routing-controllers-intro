class PagesController < ApplicationController

  def welcome

    @header = "neat"

  end

  def about

    @header = "cool"

  end

  def contest

    @header = "this is the contest page"

  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"

  end










end
