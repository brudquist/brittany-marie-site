class ProjectsController < ApplicationController
  def show
    @project = load_project
    redirect_to :root unless @project
  end

  private

  def load_project
    if BRBehanceClient::Projects.include?(params[:id].to_i)
      BRBehanceClient::Project.find(params[:id])
    end
  end
end
