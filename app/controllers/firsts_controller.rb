class FirstsController < ApplicationController
  before_action :set_first, only: [:show, :edit, :update, :destroy]

  # GET /firsts
  # GET /firsts.json
  def index
    @firsts = First.all
  end

  # GET /firsts/1
  # GET /firsts/1.json
  def show
    @seconds = @first.seconds.all
    @second = @first.seconds
  end

  # GET /firsts/new
  def new
    @first = First.new
  end

  # GET /firsts/1/edit
  def edit
  end

  # POST /firsts
  # POST /firsts.json
  def create
    @first = First.new(first_params)

    if @first.save
      redirect_to @first, notice: 'First was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /firsts/1
  # PATCH/PUT /firsts/1.json
  def update
    if @first.update(first_params)
      redirect_to @first, notice: 'First was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /firsts/1
  # DELETE /firsts/1.json
  def destroy
    @first.destroy

    redirect_to firsts_url, notice: 'First was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_first
    @first = First.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def first_params
    params.require(:first).permit(:body)
  end
end
