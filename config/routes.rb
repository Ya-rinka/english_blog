Rails.application.routes.draw do
  devise_for :users
 root 'teachers#index', as: 'home'

 # DELETE /teachers/:id(.:format)      teachers#destroy

 get 'about' => 'stat_pages#about', as: 'about'
  resources :teachers do
    resources:comments
 end
end
