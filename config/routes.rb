Rails.application.routes.draw do
  root "pages#home"

  get "the-issue",   to: "pages#issue",       as: :issue
  get "solutions",   to: "pages#solutions",   as: :solutions
  get "government",  to: "pages#government",  as: :government
  get "follow",      to: "pages#follow",      as: :follow

  get "up" => "rails/health#show", as: :rails_health_check
end
