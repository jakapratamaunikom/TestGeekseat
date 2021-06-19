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

end
