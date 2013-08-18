class PersonalInfoController < ApplicationController
  # GET /personal_info
  # GET /personal_info.json
  def index
    @personal_info = PersonalInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_info }
    end
  end

  # GET /personal_info/1
  # GET /personal_info/1.json
  def show
    @personal_info = PersonalInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_info }
    end
  end

  # GET /personal_info/new
  # GET /personal_info/new.json
  def new
    user = current_user
    @personal_info = PersonalInfo.new(params[user.id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_info }
    end
  end

  # GET /personal_info/1/edit
  def edit
    user = current_user
    @personal_info = user.personal_info
  end

  # POST /personal_info
  # POST /personal_info.json
  def create
    user = current_user
    @personal_info = user.create_personal_info(params[:personal_info])

    respond_to do |format|
      if @personal_info.save
        format.html { redirect_to user_path, notice: 'Personal info was successfully created.' }
        format.json { render json: @personal_info, status: :created, location: @personal_info }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_info/1
  # PUT /personal_info/1.json
  def update
    user = current_user
    @personal_info = user.personal_info

    respond_to do |format|
      if @personal_info.update_attributes(params[:personal_info])
        format.html { redirect_to user_path notice: 'Personal info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_info/1
  # DELETE /personal_info/1.json
  def destroy
    @personal_info = PersonalInfo.find(params[:id])
    @personal_info.destroy

    respond_to do |format|
      format.html { redirect_to personal_info_index_url }
      format.json { head :no_content }
    end
  end
end
