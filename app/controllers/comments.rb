namespace '/comments' do

  get '/:id' do
    @user = User.find(params[:id])
    @comments = Comment.where(user_id: @user.id)
    erb :comments
  end

  post '/created' do
    Comment.create(:text => params[:text], :post_id => params[:post_id], :user_id => session[:user_id])
    redirect '/posts/'+ params[:post_id]
  end

end
