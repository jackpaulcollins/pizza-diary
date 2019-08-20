class PizzaDiariesController < ApplicationController
  before_action :set_pizza_diary, only: [:show, :edit, :update, :destroy]

  # GET /pizza_diaries
  # GET /pizza_diaries.json
  def index
    @pizza_diaries = PizzaDiary.all
  end

  # GET /pizza_diaries/1
  # GET /pizza_diaries/1.json
  def show
  end

  # GET /pizza_diaries/new
  def new
    @pizza_diary = PizzaDiary.new
  end

  # GET /pizza_diaries/1/edit
  def edit
  end

  # POST /pizza_diaries
  # POST /pizza_diaries.json
  def create
    @pizza_diary = PizzaDiary.new(pizza_diary_params)

    respond_to do |format|
      if @pizza_diary.save
        format.html { redirect_to @pizza_diary, notice: 'Pizza diary was successfully created.' }
        format.json { render :show, status: :created, location: @pizza_diary }
      else
        format.html { render :new }
        format.json { render json: @pizza_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizza_diaries/1
  # PATCH/PUT /pizza_diaries/1.json
  def update
    respond_to do |format|
      if @pizza_diary.update(pizza_diary_params)
        format.html { redirect_to @pizza_diary, notice: 'Pizza diary was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza_diary }
      else
        format.html { render :edit }
        format.json { render json: @pizza_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza_diaries/1
  # DELETE /pizza_diaries/1.json
  def destroy
    @pizza_diary.destroy
    respond_to do |format|
      format.html { redirect_to pizza_diaries_url, notice: 'Pizza diary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza_diary
      @pizza_diary = PizzaDiary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_diary_params
      params.require(:pizza_diary).permit(:title, :toppings, :thoughts)
    end
end
