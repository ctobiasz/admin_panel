Rails.application.routes.draw do


root 'pages#home'

resources :students
resources :instructors
resources :courses
resources :cohorts
resources :admins

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'

get "/student-signup", to: 'students#new'
get "/cohort-new", to: 'cohorts#new'
get "/instructor-signup", to: 'instructors#new'
get "/course-new", to: 'courses#new'

get '/students-all', to: 'students#index'

get 'students/:id/edit', to: 'students#edit'
patch 'students/:id', to: 'students#update'

get 'instructors/:id/edit', to: 'instructors#edit'
patch 'instructors/:id', to: 'instructors#update'

get 'cohorts/:id/edit', to: 'cohorts#edit'
patch 'cohorts/:id', to: 'cohorts#update'

get 'courses/:id/edit', to: 'courses#edit'
patch 'courses/:id', to: 'courses#update'




get "/faq", to: 'pages#faq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
