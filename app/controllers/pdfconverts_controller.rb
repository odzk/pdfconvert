class PdfconvertsController < ApplicationController
  def index
  	@pdf = Pdfconvert.all
  end

  def new
  	@pdf = Pdfconvert.new
  end

  def create
  	@pdf = Pdfconvert.new(pdf_params)
    
  	if @pdf.save
  		redirect_to '/', notice: "The file #{@pdf.name} has been successfully uploaded!"
  	else
  		render "new"
  	end
  end

  def destroy
  	@pdf = Pdfconvert.find(params[:id])
  	@pdf.destroy
  	redirect_to '/', notice: "The file #{@pdf.name} has been successfully deleted!"
  end

  private

  def pdf_params
  params.require(:pdfconvert).permit(:name, :attachment)
end

end