Rails.application.routes.draw do
  resources :questions do 
    resources :answers, except: [:index, :new, :show], shallow: true
  end  

  root 'questions#index'
end
