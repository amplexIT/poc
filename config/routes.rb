Rails.application.routes.draw do

  get '/barcode/generate', to: 'barcode#generate'
  get '/products/:id/show_barcode', to: 'products#show_barcode', as: 'show_barcode_product'
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
