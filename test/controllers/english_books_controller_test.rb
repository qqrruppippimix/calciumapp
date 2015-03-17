require 'test_helper'

class EnglishBooksControllerTest < ActionController::TestCase
  setup do
    @english_book = english_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:english_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create english_book" do
    assert_difference('EnglishBook.count') do
      post :create, english_book: { description: @english_book.description, price: @english_book.price }
    end

    assert_redirected_to english_book_path(assigns(:english_book))
  end

  test "should show english_book" do
    get :show, id: @english_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @english_book
    assert_response :success
  end

  test "should update english_book" do
    patch :update, id: @english_book, english_book: { description: @english_book.description, price: @english_book.price }
    assert_redirected_to english_book_path(assigns(:english_book))
  end

  test "should destroy english_book" do
    assert_difference('EnglishBook.count', -1) do
      delete :destroy, id: @english_book
    end

    assert_redirected_to english_books_path
  end
end
