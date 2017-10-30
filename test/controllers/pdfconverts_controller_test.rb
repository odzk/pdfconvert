require 'test_helper'

class PdfconvertsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pdfconverts_index_url
    assert_response :success
  end

  test "should get new" do
    get pdfconverts_new_url
    assert_response :success
  end

  test "should get create" do
    get pdfconverts_create_url
    assert_response :success
  end

  test "should get destroy" do
    get pdfconverts_destroy_url
    assert_response :success
  end

end
