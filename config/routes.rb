Rails.application.routes.draw do

root 'pages#home'

resources :students
resources :instructors
resources :courses
resources :cohorts

get "/student-signup", to: 'students#new'
get "/cohort-new", to: 'cohorts#new'
get "/instructor-signup", to: 'instructors#new'

get "/faq", to: 'pages#faq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
