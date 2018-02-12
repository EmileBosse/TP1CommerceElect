require 'test_helper'

class EtudesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etude = etudes(:one)
  end

  test "should get index" do
    get etudes_url
    assert_response :success
  end

  test "should get new" do
    get new_etude_url
    assert_response :success
  end

  test "should create etude" do
    assert_difference('Etude.count') do
      post etudes_url, params: { etude: { DateCompletion: @etude.DateCompletion, DateDebut: @etude.DateDebut, Niveau: @etude.Niveau, SecteurEtudes: @etude.SecteurEtudes, clients_id: @etude.clients_id, institutions_id: @etude.institutions_id } }
    end

    assert_redirected_to etude_url(Etude.last)
  end

  test "should show etude" do
    get etude_url(@etude)
    assert_response :success
  end

  test "should get edit" do
    get edit_etude_url(@etude)
    assert_response :success
  end

  test "should update etude" do
    patch etude_url(@etude), params: { etude: { DateCompletion: @etude.DateCompletion, DateDebut: @etude.DateDebut, Niveau: @etude.Niveau, SecteurEtudes: @etude.SecteurEtudes, clients_id: @etude.clients_id, institutions_id: @etude.institutions_id } }
    assert_redirected_to etude_url(@etude)
  end

  test "should destroy etude" do
    assert_difference('Etude.count', -1) do
      delete etude_url(@etude)
    end

    assert_redirected_to etudes_url
  end
end
