class CalcController < ApplicationController
	def index
	end

	def new
		 
		if params[:operation] == "subtr"
			@result = params[:a].to_f - params[:b].to_f

		elsif  params[:operation] == "sum"
			@result = params[:a].to_f + params[:b].to_f

		elsif  params[:operation] == "mul"
			@result = params[:a].to_f * params[:b].to_f

		elsif  params[:operation] == "div"
				@result = params[:a].to_f / params[:b].to_f

		elsif  params[:operation] == "rem"
				@result = params[:a].to_f % params[:b].to_f
		end
		 	 mark = Calculate.new
       		 mark.f_no = params[:a].to_f
        	 mark.s_no =params[:b].to_f
        	 mark.result= @result
        	 mark.save
			render :index

	end
	def show
		@m=Calculate.all
			
		
	end
end










