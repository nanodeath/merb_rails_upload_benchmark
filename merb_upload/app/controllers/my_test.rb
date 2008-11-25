class MyTest < Application

  # ...and remember, everything returned from an action
  # goes to the client...
  def index
    render
  end
  
  def upload
    puts params.inspect
    uploads = Merb.root / 'uploads'
    FileUtils.mkdir_p(uploads)
    FileUtils.mv(params[:file][:tempfile].path, uploads / (params[:file][:filename] + '.' + rand(1000).to_s))
    render :index
  end  
end
