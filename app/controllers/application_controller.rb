class ApplicationController < ActionController::Base
  def get_array
    @var=params[:items].reject(&:blank?)
    @j=0
    @i=0
    @counter=0
    @ok=0
    for @j in 0..@var.length-1 do
      while (@i<(@var.length-1)) && (@ok<@var.length-2)
        if @i==@j
          @i=@i+1
        end
        if @j==@i+1
          @t=@i+2
        else
          @t=@i+1
        end
        if(@var[@i].to_i<=@var[@t].to_i)
          @i+=1
          @ok+=1
        else
          break
        end
      end
      if @ok==@var.length-2
        @counter+=1
      end
      @j+=1
      @i=0
      @ok=0
    end
    render :results
  end
end
