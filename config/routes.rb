Rails.application.routes.draw do
devise_for :users
get 'home/index'
root to: "home#index"
get 'users/show'
resources :ads
resources :users




  # mailbox folder routes
    get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
    get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
    get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash



    # conversations
      resources :conversations do
        member do
          post :reply
          post :trash
          post :untrash
        end
      end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
