get '/' do

  @posts = Post.all.sort_by &:post_votes
  @posts = @posts.reverse
  @comments = Comment.all
  @users = User.all

  erb :index

end


get '/login' do

  # session[:user_id] = user.id
  erb :login, :layout => false

  
end

post '/login' do

  login

end

post '/signup' do

  if exists?(params[:name]) 
    @message = "username taken"
    erb :login, :layout => false

  else
    create
    session[:user_id] = @user.id
    current_user
    redirect '/'
  end


end

get '/logout' do
  
  logout

end


helpers do
  def exists?(name)
    User.find_by_name(name.downcase) ? true : false
  end

  def create
    @user = User.create(:name => params[:name], :password => params[:password])
  end

  def current_user
    return nil unless session[:user_id].present?
    @current_user ||= User.find(session[:user_id])
  end

  def signed_in?
    # session[:user_id].present?
    current_user.present?
  end

  def login
    @user = User.find_by_name(params[:name])
    if @user.password == params[:password]
      session[:user_id] = @user.id
      redirect "/"
    else
     @message = "username or password incorrect"   
     erb :login, :layout => false
    end
  end

  def logout
    session.clear
    redirect '/'
  end

  def vote_exists(post)
    PostVote.find_by_user_id_and_post_id(session[:user_id], post.id)
  end
end


