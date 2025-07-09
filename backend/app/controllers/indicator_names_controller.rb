class IndicatorNamesController < ApplicationController
  before_action :set_indicator_name, only: %i[ show update destroy ]

  # GET /indicator_names
  def index
    @indicator_names = IndicatorName.all

    render json: @indicator_names
  end

  # GET /indicator_names/1
  def show
    render json: @indicator_name
  end

  # POST /indicator_names
  def create
    @indicator_name = IndicatorName.new(indicator_name_params)

    if @indicator_name.save
      render json: @indicator_name, status: :created, location: @indicator_name
    else
      render json: @indicator_name.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /indicator_names/1
  def update
    if @indicator_name.update(indicator_name_params)
      render json: @indicator_name
    else
      render json: @indicator_name.errors, status: :unprocessable_entity
    end
  end

  # DELETE /indicator_names/1
  def destroy
    @indicator_name.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicator_name
      @indicator_name = IndicatorName.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def indicator_name_params
      params.expect(indicator_name: [ :name ])
    end
end
