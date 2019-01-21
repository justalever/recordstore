module Api
  module V1
    class RecordsController < ApplicationController
      before_action :authorize_access_request!
      before_action :set_record, only: [:show, :update, :destroy]

      # GET /records
      def index
        @records = current_user.records.all

        render json: @records
      end

      # GET /records/1
      def show
        render json: @record
      end

      # POST /records
      def create
        @record = current_user.records.build(record_params)

        if @record.save
          render json: @record, status: :created
        else
          render json: @record.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /records/1
      def update
        if @record.update(record_params)
          render json: @record
        else
          render json: @record.errors, status: :unprocessable_entity
        end
      end

      # DELETE /records/1
      def destroy
        @record.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_record
          @record = current_user.records.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def record_params
          params.require(:record).permit(:title, :year, :artist_id)
        end
    end
  end
end