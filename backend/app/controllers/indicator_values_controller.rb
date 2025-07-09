class IndicatorValuesController < ApplicationController
  before_action :set_indicator_value, only: %i[ show update destroy ]

  # GET /indicator_values
  def index
    @indicator_values = IndicatorValue.all

    render json: @indicator_values
  end

  # GET /indicator_values/1
  def show
    render json: @indicator_value
  end

  # POST /indicator_values
  def create
    @indicator_value = IndicatorValue.new(indicator_value_params)

    if @indicator_value.save
      render json: @indicator_value, status: :created, location: @indicator_value
    else
      render json: @indicator_value.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /indicator_values/1
  def update
    if @indicator_value.update(indicator_value_params)
      render json: @indicator_value
    else
      render json: @indicator_value.errors, status: :unprocessable_entity
    end
  end

  # DELETE /indicator_values/1
  def destroy
    @indicator_value.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indicator_value
      @indicator_value = IndicatorValue.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def indicator_value_params
      params.expect(indicator_value: [ :value ])
    end
end
