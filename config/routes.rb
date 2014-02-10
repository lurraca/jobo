Jobo::Application.routes.draw do
  resources :categories

  resources :jobs, only:[] do 
    get :latest_active, on: :collection
  end

  root to: "jobs#latest_active"
end
