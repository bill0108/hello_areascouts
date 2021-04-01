Rails.application.routes.draw do
  root 'pages#home'
  get '/get-evaluated', to: 'pages#evaluation'
  
  scope '/about-us' do
    get '/', to: 'aboutus#about', as: :about
    get '/base-assesstment', to: 'aboutus#base'
    get '/athlete-assesstment', to: 'aboutus#athlete'
    get '/training-tools', to: 'aboutus#tools'
  end

  scope '/our-team' do
    get '/board', to: 'ourteam#board'
    get '/directors-operations', to: 'ourteam#directors'
    get '/baseball-team', to: 'ourteam#baseball'
    get '/softball-team', to: 'ourteam#softball'
    get '/football-team', to: 'ourteam#football'
    get '/volleyball-team', to: 'ourteam#volleyball'
    get '/rugby-team', to: 'ourteam#rugby'
  end
  
  resources :blogs, only: :index
end
