class SpanishArticlesController < ApplicationController
  before_action :set_spanish_article, only: [:show, :edit, :update, :destroy]

  # GET /spanish_articles
  # GET /spanish_articles.json
  def index
    @spanish_articles = SpanishArticle.all
  end

  # GET /spanish_articles/1
  # GET /spanish_articles/1.json
  def show
  end

  # GET /spanish_articles/new
  def new
    @spanish_article = SpanishArticle.new
  end

  # GET /spanish_articles/1/edit
  def edit
  end

  # POST /spanish_articles
  # POST /spanish_articles.json
  def create
    @spanish_article = SpanishArticle.new(spanish_article_params)

    respond_to do |format|
      if @spanish_article.save
        format.html { redirect_to @spanish_article, notice: 'Spanish article was successfully created.' }
        format.json { render :show, status: :created, location: @spanish_article }
      else
        format.html { render :new }
        format.json { render json: @spanish_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spanish_articles/1
  # PATCH/PUT /spanish_articles/1.json
  def update
    respond_to do |format|
      if @spanish_article.update(spanish_article_params)
        format.html { redirect_to @spanish_article, notice: 'Spanish article was successfully updated.' }
        format.json { render :show, status: :ok, location: @spanish_article }
      else
        format.html { render :edit }
        format.json { render json: @spanish_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spanish_articles/1
  # DELETE /spanish_articles/1.json
  def destroy
    @spanish_article.destroy
    respond_to do |format|
      format.html { redirect_to spanish_articles_url, notice: 'Spanish article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spanish_article
      @spanish_article = SpanishArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spanish_article_params
      params.require(:spanish_article).permit(:price, :description)
    end
end
