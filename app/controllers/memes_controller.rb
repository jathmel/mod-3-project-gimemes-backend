# giphy api key: BQeVJRSOZLeAlYdrzp8n6g3lCT3VKrNS
class MemesController < ApplicationController
  before_action :set_meme, only: [:show, :update, :destroy]

  def index
    @memes = Memes.all
    render json: @memes
  end

  def show
    render json: @meme
  end

  def create
    @meme = Meme.new(meme_params)

    if @meme.save
      render json: @meme, status: :create, location: @meme
    else
      render json: @meme.error, status: :unprocessable_entity
    end
  end

  def update
    if @meme.update(meme_params)
      render json: @meme
    else
      render json: @meme.errors, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @meme.delete
  #   render json: head :no_content
  # end

  private
  def set_meme
    @meme = Meme.find(params[:id])
  end

  def meme_params
    params.require(:meme).permit(:title, :git_text, :user_id)
  end

end
