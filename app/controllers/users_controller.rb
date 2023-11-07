class UsersController < ApplicationController
  def home
    redirect_to("/users")
  end 
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc})
    render({ :template => "user_template/index"})
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username})
    @the_user = matching_usernames.at(0)

    render({ :template => "user_template/show"})
  end

  def create
    input_username = params.fetch("query_username")

    a_new_user = User.new 
    a_new_user.username = input_username 

    a_new_user.save

    redirect_to("/users/"+ a_new_user.username)
    
  end
end
