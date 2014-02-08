Jobo::Application.routes.draw do
  resources :jobs, only:[] do 
    get :latest_active, on: :collection
  end

  root to: "jobs#latest_active"
end
