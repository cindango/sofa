class ThingsController < ApplicationController
	
	before_filter :authenticate_user!
		
  # GET /things
  # GET /things.json
  def index
    @things = current_user.things.where('the_date >= ?', Date.today ).order('the_date ASC')
    @thing_day = @things.group_by { |t| t.the_date }
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @things }
    end
  end

  def edit
    @thing = current_user.things.find(params[:id])
  end

  # GET /things/1
  # GET /things/1.json
  def show
    @thing = current_user.things.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thing }
    end
  end

  # POST /things
  # POST /things.json
  def create
    @thing = current_user.things.new(params[:thing])

    respond_to do |format|
      if @thing.save
        format.html { redirect_to things_path }
        format.json { render json: @thing, status: :created, location: @thing }
      else
        format.html { render action: "new" }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /things/1
  # PUT /things/1.json
  def update
    @thing = current_user.things.find(params[:id])

    respond_to do |format|
      if @thing.update_attributes(params[:thing])
        format.html { redirect_to @thing }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /things/1
  # DELETE /things/1.json
  def destroy
    @thing = current_user.things.find(params[:id])
    @thing.destroy

    respond_to do |format|
      format.html { redirect_to things_url }
      format.json { head :no_content }
    end
  end



  # G's Custom Actions
  def toggle_completed
    @thing = current_user.things.find(params[:id]) 
    @thing.toggle!(:completed)

    if @thing.completed == true
      render :js => "document.getElementById('thing-"+params[:id]+"').className += ' completed';" 
    else
      render :js => "document.getElementById('thing-"+params[:id]+"').className = 'single-thing';" 
    end
  end  
end
