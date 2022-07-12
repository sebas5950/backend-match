class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/matches/:id" do
    User.find(params[:id]).all_matches.to_json
  end

  get "/matches/:user_id/:profile_id/check" do
    Match.find_or_create_by(params[:user_id], params[:profile_id])
  end

  # get "/matches/:id/new" do

  # end

  get "/profiles/swiper/:id" do
    # arr = User.find(5).matches.each do |x|
    #   Profile.where.not(id: x.profile_id)
    # end
    # toGo = arr.each do |x|
    #   x.profile
    # end
    # toGo.to_json
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

end
