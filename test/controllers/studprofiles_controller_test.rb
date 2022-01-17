require "test_helper"

class StudprofilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studprofile = studprofiles(:one)
  end

  test "should get index" do
    get studprofiles_url
    assert_response :success
  end

  test "should get new" do
    get new_studprofile_url
    assert_response :success
  end

  test "should create studprofile" do
    assert_difference('Studprofile.count') do
      post studprofiles_url, params: { studprofile: { address: @studprofile.address, age: @studprofile.age, email: @studprofile.email, image: @studprofile.image, mobilenumber: @studprofile.mobilenumber, studmark_id: @studprofile.studmark_id } }
    end

    assert_redirected_to studprofile_url(Studprofile.last)
  end

  test "should show studprofile" do
    get studprofile_url(@studprofile)
    assert_response :success
  end

  test "should get edit" do
    get edit_studprofile_url(@studprofile)
    assert_response :success
  end

  test "should update studprofile" do
    patch studprofile_url(@studprofile), params: { studprofile: { address: @studprofile.address, age: @studprofile.age, email: @studprofile.email, image: @studprofile.image, mobilenumber: @studprofile.mobilenumber, studmark_id: @studprofile.studmark_id } }
    assert_redirected_to studprofile_url(@studprofile)
  end

  test "should destroy studprofile" do
    assert_difference('Studprofile.count', -1) do
      delete studprofile_url(@studprofile)
    end

    assert_redirected_to studprofiles_url
  end
end
