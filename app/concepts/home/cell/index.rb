module Home
  module Cell
    class Index < Trailblazer::Cell

      def show
        render :index
      end

      def hello
        "#{model}, #{options[:name]}!"
      end
    end
  end
end