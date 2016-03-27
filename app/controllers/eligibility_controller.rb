class EligibilitController < ApplicationController
 
  def index
     render :file => 'app\views\application\uploadfile.html.erb'
  end

  def upload_sheet   
    DataFile.save_file(params[:upload])
    render :text => "File has been uploaded successfully"
  end
end