Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  post '/search_by_isbn' => 'home#search_by_isbn', param: :isbn
  get '/search_by_isbn' => 'home#search_by_isbn'

  post '/search_by_authors_email' => 'home#search_by_authors_email', param: :authors_email
  get '/search_by_authors_email' => 'home#search_by_authors_email'
  get '/sort' => 'home#sort'
end
