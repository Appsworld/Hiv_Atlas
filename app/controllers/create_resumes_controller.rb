class CreateResumesController < ApplicationController
  # GET /create_resumes
  # GET /create_resumes.json
  def index
    @create_resumes = CreateResume.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @create_resumes }
    end
  end

  # GET /create_resumes/1
  # GET /create_resumes/1.json
  def show
    @create_resume = CreateResume.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @create_resume }
    end
  end

  # GET /create_resumes/new
  # GET /create_resumes/new.json
  def new
    @create_resume = CreateResume.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @create_resume }
    end
  end

  # GET /create_resumes/1/edit
  def edit
    @create_resume = CreateResume.find(params[:id])
  end

  # POST /create_resumes
  # POST /create_resumes.json
  def create
    @create_resume = CreateResume.new(params[:create_resume])
   @create_resume.user_id = current_user.id
    respond_to do |format|
      if @create_resume.save

        format.html { redirect_to  profiles_path, notice: 'Create resume was successfully created.' }
        format.json { render json: @create_resume, status: :created, location: @create_resume }
      else
        format.html { render action: "new" }
        format.json { render json: @create_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /create_resumes/1
  # PUT /create_resumes/1.json
  def update
    @create_resume = CreateResume.find(params[:id])

    respond_to do |format|
      if @create_resume.update_attributes(params[:create_resume])
        format.html { redirect_to @create_resume, notice: 'Create resume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @create_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_resumes/1
  # DELETE /create_resumes/1.json
  def destroy
    @create_resume = CreateResume.find(params[:id])
    @create_resume.destroy

    respond_to do |format|
      format.html { redirect_to create_resumes_url }
      format.json { head :no_content }
    end
  end
end
