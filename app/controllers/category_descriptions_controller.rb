class CategoryDescriptionsController < ApplicationController
  before_action :set_category_description, only: [:show, :edit, :update, :destroy]

  # GET /category_descriptions
  # GET /category_descriptions.json
  def index
    @category_descriptions = CategoryDescription.all
  end

  # GET /category_descriptions/1
  # GET /category_descriptions/1.json
  def show
  end

  # GET /category_descriptions/new
  def new
    @category_description = CategoryDescription.new
  end

  # GET /category_descriptions/1/edit
  def edit
  end

  # POST /category_descriptions
  # POST /category_descriptions.json
  def create
    @category_description = CategoryDescription.new(category_description_params)

    respond_to do |format|
      if @category_description.save
        format.html { redirect_to @category_description, notice: 'Category description was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category_description }
      else
        format.html { render action: 'new' }
        format.json { render json: @category_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_descriptions/1
  # PATCH/PUT /category_descriptions/1.json
  def update
    respond_to do |format|
      if @category_description.update(category_description_params)
        format.html { redirect_to @category_description, notice: 'Category description was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @category_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_descriptions/1
  # DELETE /category_descriptions/1.json
  def destroy
    @category_description.destroy
    respond_to do |format|
      format.html { redirect_to category_descriptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_description
      @category_description = CategoryDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_description_params
      params.require(:category_description).permit(:name, :description)
    end
end
