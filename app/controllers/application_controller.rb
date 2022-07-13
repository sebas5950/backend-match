class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/matches/:id" do
    User.find(params[:id]).all_matches.to_json
  end

  get "/matches/:user_id/:profile_id/check" do
    toSend = Match.check_match params[:user_id], params[:profile_id]
    toSend.to_json
  end

  patch "/matches/:user_id/:profile_id/update" do
    toUpdate = Match.find(params[:user_id], params[:profile_id])
    toUpdate.update(params)
    toUpdate.to_json
  end

  delete "/matches/:user_id/:profile_id/delete" do
    toDelete = Match.find(params[:user_id], params[:profile_id])
    toDelete.destroy
    toDelete.to_json
  end

  get "/profiles/swiper/:id" do
    User.find(params[:id]).not_swiped.to_json
  end

  get "/profiles/:id" do
    profile = Profile.find(params[:id])
    profile.to_json
  end

  get "/users" do
    User.all.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(params)
  end

  post "/users" do
    user = User.create(params) &&  Profile.create(params)
  end



end
