Rails.application.routes.draw do

  get '/welcome' => 'pages#welcome'

  get '/' => 'pages#welcome'

  get '/aboutus' => 'pages#about'

  get '/contest' => 'pages#contest'






end
