PracticalApp::Application.routes.draw do
  resources :items do
    put :sort, on: :collection
  end
end
