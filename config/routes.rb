Rails.application.routes.draw do
  scope defaults: {format: :json} do
  

    root to: "status#index"

    controller :rooms do
      get '/rooms', action: :index
      get '/rooms/:id',action: :show
      post '/rooms/create', action: :create
      patch '/rooms/:id/update', action: :update
      delete '/rooms/:id/delete', action: :destroy
    end

   
 


  end
    

end
