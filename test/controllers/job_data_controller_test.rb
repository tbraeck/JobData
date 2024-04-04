require "test_helper"

class JobDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_datum = job_data(:one)
  end

  test "should get index" do
    get job_data_url, as: :json
    assert_response :success
  end

  test "should create job_datum" do
    assert_difference("JobDatum.count") do
      post job_data_url, params: { job_datum: { average_wage: @job_datum.average_wage, category: @job_datum.category, monetary_value_added: @job_datum.monetary_value_added, occupation: @job_datum.occupation, year: @job_datum.year } }, as: :json
    end

    assert_response :created
  end

  test "should show job_datum" do
    get job_datum_url(@job_datum), as: :json
    assert_response :success
  end

  test "should update job_datum" do
    patch job_datum_url(@job_datum), params: { job_datum: { average_wage: @job_datum.average_wage, category: @job_datum.category, monetary_value_added: @job_datum.monetary_value_added, occupation: @job_datum.occupation, year: @job_datum.year } }, as: :json
    assert_response :success
  end

  test "should destroy job_datum" do
    assert_difference("JobDatum.count", -1) do
      delete job_datum_url(@job_datum), as: :json
    end

    assert_response :no_content
  end
end
