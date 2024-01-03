Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/about', to: 'pages#about'
  get '/books', to: 'books#index'
  get '/plays', to: 'plays#index'
  get '/journalism', to: 'journalisms#index'
  get '/theatreoutsidelondon', to: 'theatreoutsidelondon#index'
  get '/coldwartheatre', to: 'coldwartheatre#index'
  get '/erotictheatre', to: 'erotictheatre#index'
  get '/isshakespearestillourcontemporary', to: 'isshakespearstillcontemporary#index'
  get '/missingthepoint', to: 'missingthepoints#index'
  get '/postwarbritishtheatre', to: 'postwarbritishtheatres#index'
  get '/stateofparalysis', to: 'stateofparalysis#index'
  get '/thehistoryofthenationaltheatre', to: 'thehistoryofthenationaltheatre#index'
  get '/bigdada', to: 'bigdada#index'
  get '/slidingscales', to: 'slidingscales#index'
  get '/worldwithoutworship', to: 'worldwithoutworship#index'
  get '/peacemaker', to: 'peacemakers#index'
  get '/maui', to: 'maui#index'
  get '/onemorebull', to: 'onemorebulls#index'
  get '/thewellintentionedbuilder', to: 'thewellintentionedbuilder#index'
  get '/malonedies', to: 'malonedies#index'
  get '/heddagabler', to: 'heddagabler#index'
  get '/themanofthefutureisdead', to: 'themanofthefuture#index'
  get '/secondtimeround', to: 'secondtimeround#index'
  get '/oldboy', to: 'oldboys#index'
  get '/worldwithin', to: 'worldwithin#index'
  get '/thelondonmag', to: 'thelondonmagasine#index'
  get '/thelistener', to: 'thelistener#index'
  get '/worldandi', to: 'worldandi#index'
  get '/contreview', to: 'contreview#index'
  get '/nfixabode', to: 'nfixedabode#index'
  get '/random', to: 'randomcontemplation#index'
  get '/friendsfamily', to: 'friendsfamily#index'

  get '/yourshire', to: 'yourshire#index'

  get '/contactform', to: 'contacts#new'
  post '/correspondences', to: 'correspondence#create'
  get '/emailform', to: 'emails#new'
  resources :correspondences
  resources :email
  resources :emails
  resources :contact
  resources :contacts

  resources :friendsfamily do
    post :insert_credits, on: :collection
  end
end
