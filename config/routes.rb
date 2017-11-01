Rails.application.routes.draw do
  devise_for :users

  root 'exams#index'

  resources :exams do
    resources :questions
  end

  resources :exams do
    resources :submitions
  end

  resources :questions do
    resources :answers
  end

end
