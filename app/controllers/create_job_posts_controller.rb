class CreateJobPostsController < ApplicationController
  # GET /create_job_posts
  # GET /create_job_posts.json
  def index
    @create_job_posts = CreateJobPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @create_job_posts }
    end
  end

  # GET /create_job_posts/1
  # GET /create_job_posts/1.json
  def show
    @create_job_post = CreateJobPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @create_job_post }
    end
  end

  # GET /create_job_posts/new
  # GET /create_job_posts/new.json
  def new
    @create_job_post = CreateJobPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @create_job_post }
    end
  end

  # GET /create_job_posts/1/edit
  def edit
    @create_job_post = CreateJobPost.find(params[:id])
  end

  # POST /create_job_posts
  # POST /create_job_posts.json
  def create
    @create_job_post = CreateJobPost.new(params[:create_job_post])
    @create_job_post.user_id = current_user.id
    respond_to do |format|
      if @create_job_post.save
        format.html { redirect_to @create_job_post, notice: 'Create job post was successfully created.' }
        format.json { render json: @create_job_post, status: :created, location: @create_job_post }
      else
        format.html { render action: "new" }
        format.json { render json: @create_job_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /create_job_posts/1
  # PUT /create_job_posts/1.json
  def update
    @create_job_post = CreateJobPost.find(params[:id])

    respond_to do |format|
      if @create_job_post.update_attributes(params[:create_job_post])
        format.html { redirect_to @create_job_post, notice: 'Create job post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @create_job_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_job_posts/1
  # DELETE /create_job_posts/1.json
  def destroy
    @create_job_post = CreateJobPost.find(params[:id])
    @create_job_post.destroy

    respond_to do |format|
      format.html { redirect_to create_job_posts_url }
      format.json { head :no_content }
    end
  end
end
