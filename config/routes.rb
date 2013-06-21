VisaDemoAppRails32::Application.routes.draw do
  resources :contacts do
    collection do
       get 'search'
     end
   end
end
