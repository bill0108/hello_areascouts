Rails.application.routes.draw do
  root 'pages#home'
  
  scope '/about-us' do
    get '/', to: 'pages#about', as: :about
    get '/base-assesstment', to: 'pages#base'
    get '/athlete-assesstment', to: 'pages#athlete'
    get '/training-tools', to: 'pages#tools'
  end

  scope '/our-team' do
    get '/board', to: 'pages#board'
    get '/directors-operations', to: 'pages#directors'
    get '/baseball-team', to: 'pages#baseball'
  end
end
