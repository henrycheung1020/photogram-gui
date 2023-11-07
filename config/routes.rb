Rails.application.routes.draw do
  get("/", :controller => "users", :action => "home")

  get("/users", { :controller => "users", :action => "index"})

  post("/add_user", { :controller => "users", :action => "create"})

  get("/users/:path_username", { :controller => "users", :action => "show"})

  post("/update_user/:path_username", { :controller => "users", :action => "update"})



  get("/photos", { :controller => "photos", :action => "index"})

  get("/photos/:path_id", { :controller => "photos", :action => "show"})

  get("/delete_photo/:path_id", { :controller => "photos", :action => "delete"})

  post("/insert_photo", { :controller => "photos", :action => "create"})

  post("/update_photo/:path_id", { :controller => "photos", :action => "update"})
end
