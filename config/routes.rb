Rails.application.routes.draw do
  devise_for :users
  root 'exams#index'

  resources :exams do
    resources :questions
  end

  resources :exams do
    resources :submissions
  end


  resources :questions do
    resources :answers
  end

  resources :user_exams
  resources :users

end
