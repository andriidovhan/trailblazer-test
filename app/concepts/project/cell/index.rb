class Project
  module Cell
    class Index < ApplicationCell

      def new_project_link
        link_to 'New Project', new_project_path
      end
    end
  end
end