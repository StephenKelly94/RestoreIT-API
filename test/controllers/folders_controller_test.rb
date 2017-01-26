require 'test_helper'

class FoldersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @folder = folders(:one)
  end

  test "should get index" do
    get folders_url, as: :json
    assert_response :success
  end

  test "should create folder" do
    assert_difference('Folder.count') do
      post folders_url, params: { folder: { dirty_flag: @folder.dirty_flag, folder_path: @folder.folder_path, name: @folder.name, parent_id: @folder.parent_id, service_folder_id: @folder.service_folder_id } }, as: :json
    end

    assert_response 201
  end

  test "should show folder" do
    get folder_url(@folder), as: :json
    assert_response :success
  end

  test "should update folder" do
    patch folder_url(@folder), params: { folder: { dirty_flag: @folder.dirty_flag, folder_path: @folder.folder_path, name: @folder.name, parent_id: @folder.parent_id, service_folder_id: @folder.service_folder_id } }, as: :json
    assert_response 200
  end

  test "should destroy folder" do
    assert_difference('Folder.count', -1) do
      delete folder_url(@folder), as: :json
    end

    assert_response 204
  end
end
