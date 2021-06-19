class CalculateAvgAge
  include MsVillagersHelper
  def call(params)

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
  
end
