require 'test_helper'

class DatasetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dataset = datasets(:one)
  end

  test "should get index" do
    get datasets_url
    assert_response :success
  end

  test "should get new" do
    get new_dataset_url
    assert_response :success
  end

  test "should create dataset" do
    assert_difference('Dataset.count') do
      post datasets_url, params: { dataset: { dataset_date_imported: @dataset.dataset_date_imported, dataset_last_update: @dataset.dataset_last_update, dataset_name: @dataset.dataset_name, dataset_owner: @dataset.dataset_owner, dataset_owner_contact: @dataset.dataset_owner_contact, dataset_update_continously: @dataset.dataset_update_continously, dataset_url: @dataset.dataset_url } }
    end

    assert_redirected_to dataset_url(Dataset.last)
  end

  test "should show dataset" do
    get dataset_url(@dataset)
    assert_response :success
  end

  test "should get edit" do
    get edit_dataset_url(@dataset)
    assert_response :success
  end

  test "should update dataset" do
    patch dataset_url(@dataset), params: { dataset: { dataset_date_imported: @dataset.dataset_date_imported, dataset_last_update: @dataset.dataset_last_update, dataset_name: @dataset.dataset_name, dataset_owner: @dataset.dataset_owner, dataset_owner_contact: @dataset.dataset_owner_contact, dataset_update_continously: @dataset.dataset_update_continously, dataset_url: @dataset.dataset_url } }
    assert_redirected_to dataset_url(@dataset)
  end

  test "should destroy dataset" do
    assert_difference('Dataset.count', -1) do
      delete dataset_url(@dataset)
    end

    assert_redirected_to datasets_url
  end
end
