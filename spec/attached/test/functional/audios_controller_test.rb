require 'test_helper'

class AudiosControllerTest < ActionController::TestCase
  
  setup do
    @audio = audios(:audio)
    @file = fixture_file_upload("/audios/audio.m4a")
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:audios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create audio" do
    assert_difference('Audio.count') do
      post :create, :audio => { :name => "Audio", :file => @file }
    end

    assert_redirected_to audio_path(assigns(:audio))
  end

  test "should show audio" do
    get :show, :id => @audio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @audio.to_param
    assert_response :success
  end

  test "should update audio" do
    put :update, :id => @audio.to_param, :audio => @audio.attributes
    assert_redirected_to audio_path(assigns(:audio))
  end

  test "should destroy audio" do
    assert_difference('Audio.count', -1) do
      delete :destroy, :id => @audio.to_param
    end

    assert_redirected_to audios_path
  end
end
