
Rails.application.routes.draw do

 


    get 'welcome/index' 




 resources :welcome, only: [:index] do
     collection do
      get :my
    end
end

  root  'welcome#my', as: nil, :constraints => DomainConstraint.new('anran.com.my')
  root  'welcome#my', as: nil, :constraints => DomainConstraint.new('http://anran.com.my/')
  root  'welcome#my', as: nil, :constraints => DomainConstraint.new('mydomain.com')
  root  'welcome#my', as: nil, :constraints => DomainConstraint.new('localhost:3000')
  root  'welcome#my', as: nil, :constraints => DomainConstraint.new('http://localhost:3000/')
if Rails.env.include?('anran')
    root 'welcome#index'
else
    root 'welcome#my'
  end
end