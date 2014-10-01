class SecondsController < ApplicationController
  before_action :set_second, only: [:show, :edit, :update, :destroy]

  # GET /seconds
  # GET /seconds.json
  def index
    @seconds = Second.all
  end

  # GET /seconds/1
  # GET /seconds/1.json
  def show
  end

  # GET /seconds/new
  def new
    @first = First.find(params[:first_id])
    @second = @first.seconds.new
  end

  # GET /seconds/1/edit
  def edit
  end

  # POST /seconds
  # POST /seconds.json
  def create
    @first = First.find(params[:first_id])
    @second = @first.seconds.build(second_params)

    if @second.save
      redirect_to @first, notice: 'Second was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /seconds/1
  # PATCH/PUT /seconds/1.json
  def update
    if @second.update(second_params)
      redirect_to @second, notice: 'Second was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /seconds/1
  # DELETE /seconds/1.json
  def destroy
    @second.destroy

    redirect_to @first, notice: 'Second was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_second
    @first = First.find(params[:first_id])
    @second = @first.seconds.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def second_params
    params.require(:second).permit(:body)
  end
end
