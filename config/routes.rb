KudosBackend::Application.routes.draw do

  get "kudo/create"

  	match "person/" , :to => "person#index"
	match "person/:id", :to => "person#show" , :via => :get
	match "person/:id" , :to => "kudo#create" , :via => :post
	match "skill/", :to => "person#find", :via => :post
	match "skill/", :to => "skill#index", :via => :get
	match "leaderboard/", :to => "person#leaderboard", :via => :get
end
