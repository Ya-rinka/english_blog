Rails.application.routes.draw do
 root 'teachers#index', as: 'home'

 get 'about' => 'stat_pages#about', as: 'about'
 resources :teachers
end
