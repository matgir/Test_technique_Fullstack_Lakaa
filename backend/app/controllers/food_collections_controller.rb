class FoodCollectionsController < ApplicationController
  before_action :set_food_collection, only: %i[ show update destroy ]

  # GET /food_collections
  def index
    @food_collections = FoodCollection.all

    render json: @food_collections
  end

  # GET /food_collections/1
  def show
    render json: @food_collection
  end

  # POST /food_collections
  def create
    @food_collection = FoodCollection.new(food_collection_params)

    if @food_collection.save
      render json: @food_collection, status: :created, location: @food_collection
    else
      render json: @food_collection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /food_collections/1
  def update
    if @food_collection.update(food_collection_params)
      render json: @food_collection
    else
      render json: @food_collection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /food_collections/1
  def destroy
    @food_collection.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_collection
      @food_collection = FoodCollection.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def food_collection_params
      # params.expect(food_collection: [ :collect_date, :association_name ])
      params.expect(food_collection: [ :collect_date, :association_name, :description ])
    end
end

##@## creates API endpoints for FoodCollection model and deal with the request sent by the frontend
# This controller handles the CRUD operations for food collections, including listing, showing, creating, updating, and deleting food collections.
# It uses strong parameters to ensure only allowed attributes are processed.
# The controller also handles errors and returns appropriate HTTP status codes.
# created atomatically by the Rails generator command `rails generate scaffold FoodCollection collect_date:date association_name:string description:text`