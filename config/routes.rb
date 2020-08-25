Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
 end

# see all the cocktails, create cocktail, show cocktail.
# dose requires new and create (nested in cocktail)
#

