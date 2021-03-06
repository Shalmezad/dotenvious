module Dotenvious
  module Loaders
    class Environment
      def load
        #took from Dotenv source code whoops
        file.each do |line|
          environment[$1] = $2 if line =~ /\A([\w_]+)=(.*)\z/
        end
      end

      private

      def environment
        raise "environment must be defined in child class"
      end

      def filename
        raise "fileame must be defined in child class"
      end

      def file
        File.read(filename).split("\n")
      end
    end
  end
end
