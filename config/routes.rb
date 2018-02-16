Rails.application.routes.draw do

  root 'tasks#index'

  # Read
  # All tasks
  get 'tasks', to: 'tasks#index', as: :tasks

  # Create
  get 'tasks/new', to: 'tasks#new', as: :new

  post 'tasks', to: 'tasks#create'

  # single task
  get 'tasks/:id', to: 'tasks#show', as: :task



  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

  patch 'tasks/:id', to: 'tasks#update'

  # Delete
  delete 'tasks/:id', to: 'tasks#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
