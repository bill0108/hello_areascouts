Rails.application.routes.draw do
  root 'pages#home'
  scope '/about-us' do
    get '/', to: 'pages#about', as: :about
    get '/base-assesstment', to: 'pages#base'
    get '/athlete-assesstment', to: 'pages#athlete'
    get '/training-tools', to: 'pages#tools'
  end

  get '/board', to: 'pages#board'
end
