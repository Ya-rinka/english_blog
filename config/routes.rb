Rails.application.routes.draw do
 root 'teachers#index'

 get 'about' => 'stat_pages#about'
 resources :teachers
end
