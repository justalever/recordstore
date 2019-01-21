require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get records_url, as: :json
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post records_url, params: { record: { artist_id: @record.artist_id, title: @record.title, user_id: @record.user_id, year: @record.year } }, as: :json
    end

    assert_response 201
  end

  test "should show record" do
    get record_url(@record), as: :json
    assert_response :success
  end

  test "should update record" do
    patch record_url(@record), params: { record: { artist_id: @record.artist_id, title: @record.title, user_id: @record.user_id, year: @record.year } }, as: :json
    assert_response 200
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete record_url(@record), as: :json
    end

    assert_response 204
  end
end
