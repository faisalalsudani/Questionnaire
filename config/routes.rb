Rails.application.routes.draw do
  devise_for :users
  root 'exams#index'

  resources :exams do
    resources :questions
  end

  resources :exams do
    resources :submitions, :only => [:new, :create]
  end

  resources :questions do
    resources :answers
  end

end
