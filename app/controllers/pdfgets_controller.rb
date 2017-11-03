class PdfgetsController < ApplicationController
 
  def index
  	@pdfgets = Pdfget.all
  	

  end

  def new
  	@pdfget = Pdfget.new
  end

  def create
  	@pdfget = Pdfget.new(get_params)
    
  	if @pdfget.save
  		redirect_to '/', notice: "The file #{@pdfget.name} has been successfully uploaded!"
  	else
  		render "new"
  	end
  end

  def destroy
  	@pdfget = Pdfget.find(params[:id])
  	@pdfget.destroy
  	redirect_to root_url

  end

  def show
  	@pdfget = Pdfget.find(params[:id])
  end
  
  def edit
  	@pdfget = Pdfget.find(params[:id])
  end
  
  
def update

@pdfget = Pdfget.find(params[:id])

                      if @pdfget.update(get_params)
                       
                        flash[:success] = "success"
                        redirect_to "/pdfgets"
                      else
                        flash[:danger] = "権限がないか、既に完了したアクションです。"
                        redirect_to "/pdfgets"
                      end




end  
  
  
  

  private

  def get_params
  params.require(:pdfget).permit(:name, :attachment, :status)
  end
 
 
end
