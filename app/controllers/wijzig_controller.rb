class WijzigController < ApplicationController
  def index
   
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aanwezigs }
    end
  end
end
