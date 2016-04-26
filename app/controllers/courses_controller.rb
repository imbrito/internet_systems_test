class CoursesController < InheritedResources::Base
	respond_to :html

	def index
	  @courses = Course.all.order(updated_at: :desc)
	  respond_to do |format|
	    format.html
	  end
	end

	def show
	  @course = Course.find params[:id]
	  respond_to do |format|
	    format.html
	  end
	end

	def new
	  @course = Course.new
	  respond_with @course
	end

	def edit
	  @course = Course.find params[:id]
	  respond_with @course
	end

	def create
	  @course = Course.create(course_params)
	  if @course.save
	    respond_to do |format|
	      format.html { redirect_to course_path(@course) }
	    end
	  else
	    render :new
	  end
	end

	def update
	  @course = Course.find params[:id]
	  if @course.update_attributes(course_params)
	    respond_to do |format|
	      format.html { redirect_to course_path(@course) }
	    end
	  else
	    render :edit
	  end
	end

	def destroy
	  @course = Course.find params[:id]
	  if @course.destroy
	    respond_to do |format|
	      format.html { redirect_to root_path }
	    end
	  end
	end
	
  private

    def course_params
      params.require(:course).permit(:name, :description, :status)
    end
end

