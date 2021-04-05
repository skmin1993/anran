
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
if Rails.env.include?('anran.com.my')
    root 'welcome#my'
elsif Rails.env.include?('an')
    root 'welcome#my'
else
    root 'welcome#index'
  end
end