class CreateEventsController < ApplicationController
  # GET /create_events
  # GET /create_events.json
  def index
    @create_events = CreateEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @create_events }
    end
  end

  # GET /create_events/1
  # GET /create_events/1.json
  def show
    @create_event = CreateEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @create_event }
    end
  end

  # GET /create_events/new
  # GET /create_events/new.json
  def new
    @create_event = CreateEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @create_event }
    end
  end

  # GET /create_events/1/edit
  def edit
    @create_event = CreateEvent.find(params[:id])
  end

  # POST /create_events
  # POST /create_events.json
  def create
    @create_event = CreateEvent.new(params[:create_event])
     @create_event.user_id = current_user.id
    respond_to do |format|
      if @create_event.save
        format.html { redirect_to @create_event, notice: 'Create event was successfully created.' }
        format.json { render json: @create_event, status: :created, location: @create_event }
      else
        format.html { render action: "new" }
        format.json { render json: @create_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /create_events/1
  # PUT /create_events/1.json
  def update
    @create_event = CreateEvent.find(params[:id])

    respond_to do |format|
      if @create_event.update_attributes(params[:create_event])
        format.html { redirect_to @create_event, notice: 'Create event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @create_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_events/1
  # DELETE /create_events/1.json
  def destroy
    @create_event = CreateEvent.find(params[:id])
    @create_event.destroy

    respond_to do |format|
      format.html { redirect_to create_events_url }
      format.json { head :no_content }
    end
  end
end
