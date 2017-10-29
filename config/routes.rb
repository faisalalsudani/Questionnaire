Rails.application.routes.draw do
  root 'exams#index'

  resources :exams do
    resources :questions
  end
end
