require 'test_helper'

class PersonalDataControllerTest < ActionController::TestCase
  setup do
    @personal_datum = personal_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_datum" do
    assert_difference('PersonalDatum.count') do
      post :create, personal_datum: { activity_level: @personal_datum.activity_level, age: @personal_datum.age, bicep: @personal_datum.bicep, calves: @personal_datum.calves, chest: @personal_datum.chest, gender: @personal_datum.gender, height: @personal_datum.height, hips: @personal_datum.hips, shoulders: @personal_datum.shoulders, thighs: @personal_datum.thighs, user_id: @personal_datum.user_id, waist: @personal_datum.waist, weight: @personal_datum.weight }
    end

    assert_redirected_to personal_datum_path(assigns(:personal_datum))
  end

  test "should show personal_datum" do
    get :show, id: @personal_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_datum
    assert_response :success
  end

  test "should update personal_datum" do
    put :update, id: @personal_datum, personal_datum: { activity_level: @personal_datum.activity_level, age: @personal_datum.age, bicep: @personal_datum.bicep, calves: @personal_datum.calves, chest: @personal_datum.chest, gender: @personal_datum.gender, height: @personal_datum.height, hips: @personal_datum.hips, shoulders: @personal_datum.shoulders, thighs: @personal_datum.thighs, user_id: @personal_datum.user_id, waist: @personal_datum.waist, weight: @personal_datum.weight }
    assert_redirected_to personal_datum_path(assigns(:personal_datum))
  end

  test "should destroy personal_datum" do
    assert_difference('PersonalDatum.count', -1) do
      delete :destroy, id: @personal_datum
    end

    assert_redirected_to personal_data_path
  end
end
