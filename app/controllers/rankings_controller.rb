class RankingsController < ApplicationController
  def want
    @ranking_counts = Want.ranking
    @items = Item.find(@ranking_counts.keys)
    @count = 'Want'
  end
  
  def have
    @ranking_counts = Have.ranking
    @items = Item.find(@ranking_counts.keys)
    @count = 'Have'
  end
end
