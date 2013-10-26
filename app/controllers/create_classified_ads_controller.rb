class CreateClassifiedAdsController < ApplicationController
  # GET /create_classified_ads
  # GET /create_classified_ads.json
  def index
    @create_classified_ads = CreateClassifiedAd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @create_classified_ads }
    end
  end

  # GET /create_classified_ads/1
  # GET /create_classified_ads/1.json
  def show
    @create_classified_ad = CreateClassifiedAd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @create_classified_ad }
    end
  end

  # GET /create_classified_ads/new
  # GET /create_classified_ads/new.json
  def new
    @create_classified_ad = CreateClassifiedAd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @create_classified_ad }
    end
  end

  # GET /create_classified_ads/1/edit
  def edit
    @create_classified_ad = CreateClassifiedAd.find(params[:id])
  end

  # POST /create_classified_ads
  # POST /create_classified_ads.json
  def create
    @create_classified_ad = CreateClassifiedAd.new(params[:create_classified_ad])
    @create_classified_ad.user_id = current_user.id
    respond_to do |format|
      if @create_classified_ad.save
        format.html { redirect_to @create_classified_ad, notice: 'Create classified ad was successfully created.' }
        format.json { render json: @create_classified_ad, status: :created, location: @create_classified_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @create_classified_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /create_classified_ads/1
  # PUT /create_classified_ads/1.json
  def update
    @create_classified_ad = CreateClassifiedAd.find(params[:id])

    respond_to do |format|
      if @create_classified_ad.update_attributes(params[:create_classified_ad])
        format.html { redirect_to @create_classified_ad, notice: 'Create classified ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @create_classified_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_classified_ads/1
  # DELETE /create_classified_ads/1.json
  def destroy
    @create_classified_ad = CreateClassifiedAd.find(params[:id])
    @create_classified_ad.destroy

    respond_to do |format|
      format.html { redirect_to create_classified_ads_url }
      format.json { head :no_content }
    end
  end
end
