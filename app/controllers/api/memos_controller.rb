class Api::MemosController < ApplicationController
  def index
    @memos = Memo.order('created_at DESC')
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
        render :show, status: :created
    else
        render json: @memo.errors, status: :unprocessable_entity
    end
  end

  private

  def memo_params
    params.permit(:title, :description)
  end
end
