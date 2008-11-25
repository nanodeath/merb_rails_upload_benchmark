class MyTestController < ApplicationController
  def index
  
  end

  def upload
    puts "upload: " + params.inspect
    debugger
    uploads = RAILS_ROOT + '/uploads'
    FileUtils.mkdir_p(uploads)
    FileUtils.mv(params[:file][:file].path, uploads + '/' + params[:file][:file].original_filename + '.' + rand(1000).to_s)
    
  end

end
