require 'test_helper'

class SpanishArticlesControllerTest < ActionController::TestCase
  setup do
    @spanish_article = spanish_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spanish_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spanish_article" do
    assert_difference('SpanishArticle.count') do
      post :create, spanish_article: { description: @spanish_article.description, price: @spanish_article.price }
    end

    assert_redirected_to spanish_article_path(assigns(:spanish_article))
  end

  test "should show spanish_article" do
    get :show, id: @spanish_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spanish_article
    assert_response :success
  end

  test "should update spanish_article" do
    patch :update, id: @spanish_article, spanish_article: { description: @spanish_article.description, price: @spanish_article.price }
    assert_redirected_to spanish_article_path(assigns(:spanish_article))
  end

  test "should destroy spanish_article" do
    assert_difference('SpanishArticle.count', -1) do
      delete :destroy, id: @spanish_article
    end

    assert_redirected_to spanish_articles_path
  end
end
