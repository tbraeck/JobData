class JobDataController < ApplicationController
  before_action :set_job_datum, only: %i[ show update destroy ]

  # GET /job_data
  def index
    @job_data = JobDatum.all

    render json: @job_data
  end

  # GET /job_data/1
  def show
    render json: @job_datum
  end

  # POST /job_data
  def create
    @job_datum = JobDatum.new(job_datum_params)

    if @job_datum.save
      render json: @job_datum, status: :created, location: @job_datum
    else
      render json: @job_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_data/1
  def update
    if @job_datum.update(job_datum_params)
      render json: @job_datum
    else
      render json: @job_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_data/1
  def destroy
    @job_datum.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_datum
      @job_datum = JobDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_datum_params
      params.require(:job_datum).permit(:category, :occupation, :average_wage, :year, :monetary_value_added)
    end
end
