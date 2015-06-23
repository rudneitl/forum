Rails.application.routes.draw do
  resources :forum_threads do
    resources :forum_replies
  end
  resources :black_lists
end
