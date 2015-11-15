class RankingController < ApplicationController
    
  def show
    if params[:type] == "want_rank"
      @type = "WANT"
      @wants = Want.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
    else
      @type = "HAVE"
      @haves = Have.group(:item_id).order('count_item_id desc').limit(10).count(:item_id)
    end
  end
end