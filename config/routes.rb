
Rails.application.routes.draw do
  get 'welcome/index'
 
  root 'welcome#index'

 resources :welcome, only: [:index] do
     collection do
      get :my
    end
  end

end