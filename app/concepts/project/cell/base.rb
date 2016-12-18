class Project
  module Cell
    class Base < ApplicationCell
    end

    def edit_project_link(project)
      link_to 'Edit', edit_project_path(model)
    end
  end
end