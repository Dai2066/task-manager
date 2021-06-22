Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # listar tareas
  get "tasks", to: "tasks#index"

  # crear una tarea
  # 1- mostrar formulario
  get "tasks/new", to: "tasks#new", as: :new_task
  # 2- crear tarea
  post "tasks", to: "tasks#create"

  # mostrar cada tarea
  get "tasks/:id", to: "tasks#show", as: :task

  # editar tarea
  # 1- mostrar formulario
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # 2- modificar tarea
  patch "tasks/:id", to: "tasks#update"

  # borrar tarea
  delete "tasks/:id", to: "tasks#destroy"

end
