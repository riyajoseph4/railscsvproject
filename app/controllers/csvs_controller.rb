require 'csv'

class CsvsController < ApplicationController
  def new
  end

  def csv_import
   csv_file_path = "tmp/uploaded_file.csv"
   File.write(csv_file_path, params[:fileupload].read)
   ImportCsvJob.perform_async(csv_file_path)
  end

  def show
  	# csv_data = CSV.open("tmp/uploaded_file.csv",:headers =>true).read
  	# byebug
    @data = User.paginate(:page => params[:page], :per_page => 30)

  end
 
end


