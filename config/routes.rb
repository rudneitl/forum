Rails.application.routes.draw do
  resources :topics
  get 'topics/new/:topic_id', to: 'topics#new', as: 'new_child_topic'

  resources :forum_threads do
    end
  resources :black_lists
end
