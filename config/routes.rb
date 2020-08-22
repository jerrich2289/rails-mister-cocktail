Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :comments, only: [:index, :new, :show]
  end
  resources :comments, only: [:new, :create]
end

# see all the cocktails, create cocktail, show cocktail.
# dose requires new and create (nested in cocktail)
#
=begin
Rails.application.routes.draw do
  resources :articles do
    resources :comments, only: [ :index, :new, :create ]
  end
  resources :comments, only: [ :show, :edit, :update, :destroy ]
end
=end
