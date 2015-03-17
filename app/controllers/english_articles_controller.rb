class EnglishArticlesController < ApplicationController
  before_action :set_english_article, only: [:show, :edit, :update, :destroy]

  # GET /english_articles
  # GET /english_articles.json
  def index
    @english_articles = EnglishArticle.all
  end

  # GET /english_articles/1
  # GET /english_articles/1.json
  def show
  end

  # GET /english_articles/new
  def new
    @english_article = EnglishArticle.new
  end

  # GET /english_articles/1/edit
  def edit
  end

  # POST /english_articles
  # POST /english_articles.json
  def create
    @english_article = EnglishArticle.new(english_article_params)

    respond_to do |format|
      if @english_article.save
        format.html { redirect_to @english_article, notice: 'English article was successfully created.' }
        format.json { render :show, status: :created, location: @english_article }
      else
        format.html { render :new }
        format.json { render json: @english_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /english_articles/1
  # PATCH/PUT /english_articles/1.json
  def update
    respond_to do |format|
      if @english_article.update(english_article_params)
        format.html { redirect_to @english_article, notice: 'English article was successfully updated.' }
        format.json { render :show, status: :ok, location: @english_article }
      else
        format.html { render :edit }
        format.json { render json: @english_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /english_articles/1
  # DELETE /english_articles/1.json
  def destroy
    @english_article.destroy
    respond_to do |format|
      format.html { redirect_to english_articles_url, notice: 'English article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_english_article
      @english_article = EnglishArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def english_article_params
      params.require(:english_article).permit(:price, :description)
    end
end
