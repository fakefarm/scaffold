class RetrosController < ApplicationController
  before_action :set_retro, only: [:show, :edit, :update, :destroy]

  def index
    @retros = Retro.all
  end

  def show
  end

  def new
    @retro = Retro.new
  end

  def edit
  end

  def create
    @retro = Retro.new(retro_params)

    respond_to do |format|
      if @retro.save
        format.html { redirect_to @retro, notice: 'Retro was successfully created.' }
        format.json { render :show, status: :created, location: @retro }
      else
        format.html { render :new }
        format.json { render json: @retro.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @retro.update(retro_params)
        format.html { redirect_to @retro, notice: 'Retro was successfully updated.' }
        format.json { render :show, status: :ok, location: @retro }
      else
        format.html { render :edit }
        format.json { render json: @retro.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @retro.destroy
    respond_to do |format|
      format.html { redirect_to retros_url, notice: 'Retro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_retro
      @retro = Retro.find(params[:id])
    end

    def retro_params
      params.require(:retro).permit(:title, :verdict, :completed, :completed_date, :user_id, :project_id)
    end
end
