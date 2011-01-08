class LijstsController < ApplicationController
  def index
        @aanwezigs = Aanwezig.find(:all)
     end
     def show
        @aanwezig = Aanwezig.find(params[:id])
         @vaks = Vak.find(:all)
     end
     def new
        @vak = Vak.find(params[:id])
         @students = Student.find(:all)
     end
     def create
        @aanwezig = Aanwezig.new(params[:aanwezig])
        if @aanwezig.save
              redirect_to :action => 'index'
        else
              @vaks = Vak.find(:all)
              render :action => 'new'
        end
     end
     def edit
        @aanwezig = Aanwezig.find(params[:id])
        @vaks = Vak.find(:all)
     end
     def update
        @aanwezig = Aanwezig.find(params[:id])
        if @aanwezig.update_attributes(params[:aanwezig])
           redirect_to :action => 'index', :id => @aanwezig
        else
           @vaks = Vak.find(:all)
           render :action => 'edit'
        end
     end
     def destroy
       @aanwezig = Aanwezig.find(params[:id])
       @aanwezig.destroy

       respond_to do |format|
         format.html { redirect_to(aanwezigs_url) }
         format.xml  { head :ok }
       end
     end
     
end
