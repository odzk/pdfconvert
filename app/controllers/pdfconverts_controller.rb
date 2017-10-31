class PdfconvertsController < ApplicationController
  def index
  	@pdfconverts = Pdfconvert.all
  	

  end

  def new
  	@pdfconvert = Pdfconvert.new
  end

  def create
  	@pdfconvert = Pdfconvert.new(pdf_params)
    
  	if @pdfconvert.save
  		redirect_to '/', notice: "The file #{@pdfconvert.name} has been successfully uploaded!"
  	else
  		render "new"
  	end
  end

  def destroy
  	@pdfconvert = Pdfconvert.find(params[:id])
  	@pdfconvert.destroy
  	redirect_to root_url

  end

  def show
  	@pdfconvert = Pdfconvert.find(params[:id])
  end
  
  def edit
  	@pdfconvert = Pdfconvert.find(params[:id])
  end
  
  
def update

@pdfconvert = Pdfconvert.find(params[:id])

                      if @pdfconvert.update(pdf_params)
                       
                        flash[:success] = "success"
                        redirect_to "/pdfconverts"
                      else
                        flash[:danger] = "権限がないか、既に完了したアクションです。"
                        redirect_to "/pdfconverts"
                      end




end  
  
  
  

  private

  def pdf_params
  params.require(:pdfconvert).permit(:name, :attachment, :status)
  end

end