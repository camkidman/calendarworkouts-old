class PersonalDataController < ApplicationController
  # GET /personal_data
  # GET /personal_data.json
  def index
    @personal_data = PersonalDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_data }
    end
  end

  # GET /personal_data/1
  # GET /personal_data/1.json
  def show
    @personal_datum = PersonalDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_datum }
    end
  end

  # GET /personal_data/new
  # GET /personal_data/new.json
  def new
    @personal_datum = PersonalDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_datum }
    end
  end

  # GET /personal_data/1/edit
  def edit
    @personal_datum = PersonalDatum.find(params[:id])
  end

  # POST /personal_data
  # POST /personal_data.json
  def create
    @personal_datum = PersonalDatum.new(params[:personal_datum])

    respond_to do |format|
      if @personal_datum.save
        format.html { redirect_to @personal_datum, notice: 'Personal datum was successfully created.' }
        format.json { render json: @personal_datum, status: :created, location: @personal_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_data/1
  # PUT /personal_data/1.json
  def update
    @personal_datum = PersonalDatum.find(params[:id])

    respond_to do |format|
      if @personal_datum.update_attributes(params[:personal_datum])
        format.html { redirect_to @personal_datum, notice: 'Personal datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_data/1
  # DELETE /personal_data/1.json
  def destroy
    @personal_datum = PersonalDatum.find(params[:id])
    @personal_datum.destroy

    respond_to do |format|
      format.html { redirect_to personal_data_url }
      format.json { head :no_content }
    end
  end
end
