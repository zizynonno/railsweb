Rails.application.routes.draw do
#   resources :tops, only:[:index, :show]
  root "tops#home"
  get "/about", to: "tops#about"
  get "/portfolio", to: "tops#portfolio"
  get "/contact", to: "tops#contact"
  
  ##### 問い合わせフォーム
  get 'inquiry' => 'inquiry#index' 
  get 'inquiry/confirm' => redirect("/inquiry")
  get 'inquiry/thanks' => redirect("/inquiry")
  ##### 問い合わせ確認画面
  post 'inquiry/confirm' => 'inquiry#confirm'
  ##### 問い合わせ完了画面
  post 'inquiry/thanks' => 'inquiry#thanks'
end
