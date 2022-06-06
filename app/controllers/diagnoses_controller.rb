class DiagnosesController < ApplicationController
  def new
  end

  def index
    games = Game.all
    selected_tag_ids = params[:answer]
    @mach_tag_count = 0
    tmp_mach_tag_count = 0
    @mached_games = []

    games.each do |game|
      tmp_mach_tag_count = 0
      game.tags.each do |tag|
        if selected_tag_ids&.include?(tag.id.to_s)
          tmp_mach_tag_count = tmp_mach_tag_count + 1 
        end
      end

      if @mach_tag_count < tmp_mach_tag_count
        @mached_games = []
        @mached_games << game
        @mach_tag_count = tmp_mach_tag_count
      elsif @mach_tag_count == tmp_mach_tag_count
        @mached_games << game
      end
    end
  end
end
