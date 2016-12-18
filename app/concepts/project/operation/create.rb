class Project
  class Create < Trailblazer::Operation
    include Model
    model Project, :create

    contract do
      property :name
      property :description
      property :active

      validates :name,         presence: true
      validates :description, length: { minimum: 7 }
    end

    def process(params = {})
      validate(params[:project]) do |contract|
        contract.save
      end
    end
  end
end