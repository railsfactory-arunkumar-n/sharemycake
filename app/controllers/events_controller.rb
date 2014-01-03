class EventsController < ApplicationController
  #~ before_action , only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index_page
   
     contact=current_user.mycontacts.build(event_params)
     if contact.save
     UserMailer.invitation(contact).deliver
     end
  end

  # GET /events/1
  # GET /events/1.json
  def choose_cause
    
  end
 
  def edit
   
  end
  def show
  end
  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def choose_org
   
    @cause=Cause.find_by_id(params[:id])
    
    p org=@cause.orgs.where(['orgs.status = ?', true]) # stores organizations name which are belongs to perticulare cause 
   
    p #event=$event
    e=current_user.evnets.first
    @org_event=e.organizations.create(org: org) # stores event_id and org_id 
   
    
 
  end

  # POST /events
  # POST /events.json
  def create
   
      @event =current_user.events.build(event_details) 
    #~ respond_to do |format|
      if @event.save
       $event=@event
        redirect_to new_event_create_path
    
      else
        render action: 'new'

    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
 
 def email_template
   @org_name=params[:org][:name]
   @org_share=params[:org][:share]
   
 end
 def add_contact
  
end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:email,:name,:phone_no)
    end
    
    def event_details
      params.require(:event).permit(:mobile_no, :title, :date, :description)  
    end
end
