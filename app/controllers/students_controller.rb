class StudentsController < InheritedResources::Base
	respond_to :html

	def index
	  @students = Student.all.order(updated_at: :desc)
	  respond_to do |format|
	    format.html
	  end
	end

	def show
	  @student = Student.find params[:id]
	  respond_to do |format|
	    format.html
	  end
	end

	def new
	  @student = Student.new
	  respond_with @student
	end

	def edit
	  @student = Student.find params[:id]
	  respond_with @student
	end

	def create
	  @student = Student.create(student_params)
	  @student.status = Relationshipstatus::CREATED
	  if @student.save
	    respond_to do |format|
	      format.html { redirect_to student_path(@student) }
	    end
	  else
	    render :new
	  end
	end

	def update
	  @student = Student.find params[:id]
	  if @student.update_attributes(student_params)
	    respond_to do |format|
	      format.html { redirect_to student_path(@student) }
	    end
	  else
	    render :edit
	  end
	end

	def destroy
	  @student = Student.find params[:id]
	  if @student.destroy
	    respond_to do |format|
	      format.html { redirect_to root_path }
	    end
	  end
	end

  private

    def student_params
      params.require(:student).permit(:name, :register_number, :status)
    end
end

