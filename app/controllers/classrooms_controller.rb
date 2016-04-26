class ClassroomsController < InheritedResources::Base
	respond_to :html

	def index
	  @classrooms = Classroom.all.order(updated_at: :desc) 
	  respond_to do |format|
	    format.html
	  end
	end

	def show
	  @classroom = Classroom.find params[:id] 
	  respond_to do |format|
	    format.html
	  end
	end

	def new
	  @classroom = Classroom.new 
	  @courses = Course.all
	  @students = Student.all
	  respond_with (@classroom)
	end

	def edit
	  @classroom = Classroom.find params[:id] 
	  @courses = Course.all
	  @students = Student.all
	  respond_with @classroom
	end

	def create
	  @classroom = Classroom.create(classroom_params) 
	  if @classroom.save
	    respond_to do |format|
	      format.html { redirect_to classroom_path(@classroom) }
	    end
	  else
	    render :new
	  end
	end

	def update
	  @classroom = Classroom.find params[:id] 
	  if @classroom.update_attributes(classroom_params)
	    respond_to do |format|
	      format.html { redirect_to classroom_path(@classroom) }
	    end
	  else
	    render :edit
	  end
	end

	def destroy
	  @classroom = Classroom.find params[:id] 
	  if @classroom.destroy
	    respond_to do |format|
	      format.html { redirect_to root_path }
	    end
	  end
	end

  private

    def classroom_params
      params.require(:classroom).permit(:student_id, :course_id)
    end
end

