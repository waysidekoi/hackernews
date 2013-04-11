namespace '/posts' do

  get '/new/?' do
    if !signed_in?
      redirect '/login'
    end

    erb :submit, :layout => false
  
  end

  get '/:id/?' do
    @post = Post.find(params[:id])
    erb :post
  end

  post '/created' do
    Post.create(:url => params[:url], :text => params[:text], :title => params[:title], :user_id => session[:user_id])
    redirect '/'
  end

end
