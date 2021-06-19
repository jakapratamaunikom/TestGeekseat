class MsVillagersController < ApplicationController
  include MsVillagersHelper
  def index

  end

  def show_villagers

    if params.present?
      @ms_villager = params[:jml].to_i
    end
    if params[:reset].present?
      redirect_to ms_villagers_show_villagers_path
    end
  end

  def calculate_villagers
    if params.present?
      @prs_x = params[:prs_x].to_i
      @prs_y = params[:prs_y].to_i
      @y_death_x = params[:y_death_x].to_i
      @y_death_y = params[:y_death_y].to_i

      # hitung X
      @hit_x = @y_death_x - @prs_x
      @final_x  = (1..@hit_x).map {|x| fib(x)}.sum

      # hitung y
      @hit_y = @y_death_y - @prs_y
      @final_y = (1..@hit_y).map {|x| fib(x)}.sum

      @avg =  (@final_x + @final_y) / 2.to_f
    end

    if params[:reset].present?
      redirect_to ms_villagers_calculate_villagers_path
    end
  end

end
