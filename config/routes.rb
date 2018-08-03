Rails.application.routes.draw do
#   resources :tops, only:[:index, :show]
  root "tops#home"
  get "/about", to: "tops#about"
  get "/portfolio", to: "tops#portfolio"
  get "/contact", to: "tops#contact"
end
