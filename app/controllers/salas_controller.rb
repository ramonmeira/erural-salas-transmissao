class SalasController < ApplicationController
  def index
    @salas = Sala.all
  end
  def show
    @sala = Sala.find(params[:id])
  end
	def new
		@sala = Sala.new
		puts @sala
	end
  def create
    @sala = Sala.new(sala_params)

    if @sala.save
      redirect_to @sala
    else
      render :new
    end
  end
  def edit
		@sala = Sala.find(params[:id])
	end
	def update
		@sala = Sala.find(params[:id])
		
		if(@sala.update(sala_params))
			redirect_to @sala
		else
			render :edit
		end
	end

	def destroy
		@sala = Sala.find(params[:id])
		@sala.destroy
		redirect_to salas_path
	end

	private def sala_params
		params.require(:sala).permit(:title)
	end
end
