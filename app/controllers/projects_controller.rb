class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    view 'project#index', projects
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    view 'project#show', project
  end

  # GET /projects/new
  def new
    form Project::Create
    
   render_form
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    run Project::Create do |operation|
      return redirect_to(projects_path)
    end

    render_form
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    run Project::Update do |operation|
      return redirect_to(projects_path(operation.model))
    end

    render_form
  end


  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :active)
    end

  def projects
    @projects ||= Project.all
  end

  def project
    @project ||= Project.find(params[:id])
  end

  def render_form
    view 'project#form', @form
  end
end
