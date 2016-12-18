class Project
  module Cell
    class Show < ApplicationCell
      property :name
      property :description
      property :active
    end

    def edit_project_link(project)
      link_to 'Edit', edit_project_path(project)
    end
  end
end