namespace '/users' do

  get '/:id' do
    @user = User.find(params[:id])
    
    erb :user
  end


end
