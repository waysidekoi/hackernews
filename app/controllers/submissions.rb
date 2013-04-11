namespace '/submissions' do

  get '/:id' do
    @posts = Post.where(user_id: params[:id])
    @user = User.find(params[:id])
    erb :index
  end


end
