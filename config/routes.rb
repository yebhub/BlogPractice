Rails.application.routes.draw do
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

end

Rails.application.routes.draw do

 get "/articles", to: "articles#index", as: "articles"
 get "/articles/:id", to: "articles#show", as: "article" 
 get "/articles/new", to: "articles#new", as: "new_article"
 post "/articles", to: "articles#create"
 get  "/articles/:id/edit", to: "articles#edit", as: "edit_article"
 put  "/articles", to: "articles#update" 
 delete "/articles/:id", to:"articles#destroy"
 get "/articles/:article_id/comments", to: "comments#index", as: "article_comments"
 get "/articles/:article_id/comments/:id", to: "comments#show", as: "article_comment"
 get "/articles/:article_id/comments/new", to: "comments#new", as: "new_article_comments"
 post "/articles/:article_id/comments", to: "comments#create"
 get "/articles/:article_id/comments/:id/edit", to: "comments#edit", as: "edit_article_comments"
 put "/articles/:article_id/comments", to: "comments#update"
 delete "/articles/:article_id/comments/:id", to: "comments#destroy"
 end 
