class HighlightsController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :new]

  def index
    @highlights = Highlight.all
  end

  # GET /highlights/1
  def show
    @highlight = Highlight.find(params[:id])
  end

  # GET /highlights/new
  def new
    @highlight = Highlight.new
  end

  # POST /highlights
  def create
    if current_user.highlights.create!(params[:highlight])
      redirect_to :highlights, notice: 'Highlight was successfully created.'
    else
      render action: "new"
    end
  end

end
