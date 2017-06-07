Rails.application.routes.draw do

  # Routes for the Company_research resource:
  # CREATE
  get "/company_researches/new", :controller => "company_researches", :action => "new"
  post "/create_company_research", :controller => "company_researches", :action => "create"

  # READ
  get "/company_researches", :controller => "company_researches", :action => "index"
  get "/company_researches/:id", :controller => "company_researches", :action => "show"

  # UPDATE
  get "/company_researches/:id/edit", :controller => "company_researches", :action => "edit"
  post "/update_company_research/:id", :controller => "company_researches", :action => "update"

  # DELETE
  get "/delete_company_research/:id", :controller => "company_researches", :action => "destroy"
  #------------------------------

  # Routes for the Contact resource:
  # CREATE
  get "/contacts/new", :controller => "contacts", :action => "new"
  post "/create_contact", :controller => "contacts", :action => "create"

  # READ
  get "/contacts", :controller => "contacts", :action => "index"
  get "/contacts/:id", :controller => "contacts", :action => "show"

  # UPDATE
  get "/contacts/:id/edit", :controller => "contacts", :action => "edit"
  post "/update_contact/:id", :controller => "contacts", :action => "update"

  # DELETE
  get "/delete_contact/:id", :controller => "contacts", :action => "destroy"
  #------------------------------

  # Home Page 
  get "/", :controller => "companies", :action => "index"

  # Routes for the Company resource:
  # CREATE
  get "/companies/new", :controller => "companies", :action => "new"
  post "/create_company", :controller => "companies", :action => "create"

  # READ
  get "/companies", :controller => "companies", :action => "index"
  get "/companies/:id", :controller => "companies", :action => "show"

  # UPDATE
  get "/companies/:id/edit", :controller => "companies", :action => "edit"
  post "/update_company/:id", :controller => "companies", :action => "update"

  # DELETE
  get "/delete_company/:id", :controller => "companies", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
