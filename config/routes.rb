Rails.application.routes.draw do
  get 'csvs/new' 
  post 'csvs/csv_import'
  get 'csvs/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
