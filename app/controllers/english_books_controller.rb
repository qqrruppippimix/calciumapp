class EnglishBooksController < ApplicationController
  before_action :set_english_book, only: [:show, :edit, :update, :destroy]

  # GET /english_books
  # GET /english_books.json
  def index
    @english_books = EnglishBook.all
  end

  # GET /english_books/1
  # GET /english_books/1.json
  def show
  end

  # GET /english_books/new
  def new
    @english_book = EnglishBook.new
  end

  # GET /english_books/1/edit
  def edit
  end

  # POST /english_books
  # POST /english_books.json
  def create
    @english_book = EnglishBook.new(english_book_params)

    respond_to do |format|
      if @english_book.save
        format.html { redirect_to @english_book, notice: 'English book was successfully created.' }
        format.json { render :show, status: :created, location: @english_book }
      else
        format.html { render :new }
        format.json { render json: @english_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /english_books/1
  # PATCH/PUT /english_books/1.json
  def update
    respond_to do |format|
      if @english_book.update(english_book_params)
        format.html { redirect_to @english_book, notice: 'English book was successfully updated.' }
        format.json { render :show, status: :ok, location: @english_book }
      else
        format.html { render :edit }
        format.json { render json: @english_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /english_books/1
  # DELETE /english_books/1.json
  def destroy
    @english_book.destroy
    respond_to do |format|
      format.html { redirect_to english_books_url, notice: 'English book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_english_book
      @english_book = EnglishBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def english_book_params
      params.require(:english_book).permit(:price, :description)
    end
end
