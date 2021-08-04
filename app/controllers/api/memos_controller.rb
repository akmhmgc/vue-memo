class Api::MemosController < ApplicationController
    def index
        @memos = Memo.order('created_at DESC')
    end
end
