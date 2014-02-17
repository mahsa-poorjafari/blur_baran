require 'test_helper'

class TeamsControllerTest < ActionController::TestCase
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post :create, team: { description_en: @team.description_en, description_fa: @team.description_fa, education_en: @team.education_en, education_fa: @team.education_fa, email: @team.email, name_en: @team.name_en, name_fa: @team.name_fa }
    end

    assert_redirected_to team_path(assigns(:team))
  end

  test "should show team" do
    get :show, id: @team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team
    assert_response :success
  end

  test "should update team" do
    patch :update, id: @team, team: { description_en: @team.description_en, description_fa: @team.description_fa, education_en: @team.education_en, education_fa: @team.education_fa, email: @team.email, name_en: @team.name_en, name_fa: @team.name_fa }
    assert_redirected_to team_path(assigns(:team))
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete :destroy, id: @team
    end

    assert_redirected_to teams_path
  end
end
