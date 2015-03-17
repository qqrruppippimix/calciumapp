require 'test_helper'

class EnglishArticlesControllerTest < ActionController::TestCase
  setup do
    @english_article = english_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:english_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create english_article" do
    assert_difference('EnglishArticle.count') do
      post :create, english_article: { description: @english_article.description, price: @english_article.price }
    end

    assert_redirected_to english_article_path(assigns(:english_article))
  end

  test "should show english_article" do
    get :show, id: @english_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @english_article
    assert_response :success
  end

  test "should update english_article" do
    patch :update, id: @english_article, english_article: { description: @english_article.description, price: @english_article.price }
    assert_redirected_to english_article_path(assigns(:english_article))
  end

  test "should destroy english_article" do
    assert_difference('EnglishArticle.count', -1) do
      delete :destroy, id: @english_article
    end

    assert_redirected_to english_articles_path
  end
end
