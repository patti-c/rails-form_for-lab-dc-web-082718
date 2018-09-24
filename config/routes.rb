Rails.application.routes.draw do

  resources :students, only: [:show, :create, :new, :edit, :destroy, :update]
  resources :school_classes, only: [:show, :create, :new, :edit, :destroy, :update]

end
