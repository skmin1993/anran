
Rails.application.routes.draw do

 


    get 'welcome/index' 



 resources :welcome, only: [:index] do
     collection do
      get :my
    end
end

  root  'welcome#index', as: nil, :constraints => DomainConstraint.new('anran.com.my')
  root  'welcome#index', as: nil, :constraints => DomainConstraint.new('http://anran.com.my/')
  root  'welcome#index', as: nil, :constraints => DomainConstraint.new('mydomain.com')
  root  'welcome#index', as: nil, :constraints => DomainConstraint.new('localhost:3000')
  root  'welcome#index', as: nil, :constraints => DomainConstraint.new('http://localhost:3000/')

  root 'welcome#my'

end