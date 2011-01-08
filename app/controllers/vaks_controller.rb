class VaksController < ApplicationController
  # GET /vaks
  # GET /vaks.xml
  def index
    @vaks = Vak.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vaks }
    end
  end

  # GET /vaks/1
  # GET /vaks/1.xml
  def show
    @vak = Vak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vak }
    end
  end

  # GET /vaks/new
  # GET /vaks/new.xml
  def new
    @vak = Vak.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vak }
    end
  end

  # GET /vaks/1/edit
  def edit
    @vak = Vak.find(params[:id])
  end

  # POST /vaks
  # POST /vaks.xml
  def create
    @vak = Vak.new(params[:vak])

    respond_to do |format|
      if @vak.save
        format.html { redirect_to(@vak, :notice => 'Vak was successfully created.') }
        format.xml  { render :xml => @vak, :status => :created, :location => @vak }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vaks/1
  # PUT /vaks/1.xml
  def update
    @vak = Vak.find(params[:id])

    respond_to do |format|
      if @vak.update_attributes(params[:vak])
        format.html { redirect_to(@vak, :notice => 'Vak was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vaks/1
  # DELETE /vaks/1.xml
  def destroy
    @vak = Vak.find(params[:id])
    @vak.destroy

    respond_to do |format|
      format.html { redirect_to(vaks_url) }
      format.xml  { head :ok }
    end
  end
end
