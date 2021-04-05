
Rails.application.routes.draw do

 


    get 'welcome/index' 



 resources :welcome, only: [:index] do
     collection do
      get :my
    end
end

  root  'welcome#index', as: nil, :constraints => DomainConstraint.new('anran.com.my')



  root 'welcome#my'

end