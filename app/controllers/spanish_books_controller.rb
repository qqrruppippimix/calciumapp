class SpanishBooksController < ApplicationController
  before_action :set_spanish_book, only: [:show, :edit, :update, :destroy]

  # GET /spanish_books
  # GET /spanish_books.json
  def index
    @spanish_books = SpanishBook.all
  end

  # GET /spanish_books/1
  # GET /spanish_books/1.json
  def show
  end

  # GET /spanish_books/new
  def new
    @spanish_book = SpanishBook.new
  end

  # GET /spanish_books/1/edit
  def edit
  end

  # POST /spanish_books
  # POST /spanish_books.json
  def create
    @spanish_book = SpanishBook.new(spanish_book_params)

    respond_to do |format|
      if @spanish_book.save
        format.html { redirect_to @spanish_book, notice: 'Spanish book was successfully created.' }
        format.json { render :show, status: :created, location: @spanish_book }
      else
        format.html { render :new }
        format.json { render json: @spanish_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spanish_books/1
  # PATCH/PUT /spanish_books/1.json
  def update
    respond_to do |format|
      if @spanish_book.update(spanish_book_params)
        format.html { redirect_to @spanish_book, notice: 'Spanish book was successfully updated.' }
        format.json { render :show, status: :ok, location: @spanish_book }
      else
        format.html { render :edit }
        format.json { render json: @spanish_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spanish_books/1
  # DELETE /spanish_books/1.json
  def destroy
    @spanish_book.destroy
    respond_to do |format|
      format.html { redirect_to spanish_books_url, notice: 'Spanish book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spanish_book
      @spanish_book = SpanishBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spanish_book_params
      params.require(:spanish_book).permit(:price, :description)
    end
end
