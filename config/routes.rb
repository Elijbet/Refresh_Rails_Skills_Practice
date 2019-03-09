Rails.application.routes.draw do
  devise_for :users
  resources :comments
  get 'pages/info'
  resources :ideas
  root to: redirect('/ideas')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ideas do 
	  member do
	    put "like", to: "ideas#upvote"
	    put "dislike", to: "ideas#downvote"
	  end
	end
end
