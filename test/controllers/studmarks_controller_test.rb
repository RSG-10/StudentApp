require "test_helper"

class StudmarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studmark = studmarks(:one)
  end

  test "should get index" do
    get studmarks_url
    assert_response :success
  end

  test "should get new" do
    get new_studmark_url
    assert_response :success
  end

  test "should create studmark" do
    assert_difference('Studmark.count') do
      post studmarks_url, params: { studmark: { firstname: @studmark.firstname, lastname: @studmark.lastname, mark1: @studmark.mark1, mark2: @studmark.mark2, mark3: @studmark.mark3, total: @studmark.total } }
    end

    assert_redirected_to studmark_url(Studmark.last)
  end

  test "should show studmark" do
    get studmark_url(@studmark)
    assert_response :success
  end

  test "should get edit" do
    get edit_studmark_url(@studmark)
    assert_response :success
  end

  test "should update studmark" do
    patch studmark_url(@studmark), params: { studmark: { firstname: @studmark.firstname, lastname: @studmark.lastname, mark1: @studmark.mark1, mark2: @studmark.mark2, mark3: @studmark.mark3, total: @studmark.total } }
    assert_redirected_to studmark_url(@studmark)
  end

  test "should destroy studmark" do
    assert_difference('Studmark.count', -1) do
      delete studmark_url(@studmark)
    end

    assert_redirected_to studmarks_url
  end
end
