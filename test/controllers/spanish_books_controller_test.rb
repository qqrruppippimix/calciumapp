require 'test_helper'

class SpanishBooksControllerTest < ActionController::TestCase
  setup do
    @spanish_book = spanish_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spanish_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spanish_book" do
    assert_difference('SpanishBook.count') do
      post :create, spanish_book: { description: @spanish_book.description, price: @spanish_book.price }
    end

    assert_redirected_to spanish_book_path(assigns(:spanish_book))
  end

  test "should show spanish_book" do
    get :show, id: @spanish_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spanish_book
    assert_response :success
  end

  test "should update spanish_book" do
    patch :update, id: @spanish_book, spanish_book: { description: @spanish_book.description, price: @spanish_book.price }
    assert_redirected_to spanish_book_path(assigns(:spanish_book))
  end

  test "should destroy spanish_book" do
    assert_difference('SpanishBook.count', -1) do
      delete :destroy, id: @spanish_book
    end

    assert_redirected_to spanish_books_path
  end
end
