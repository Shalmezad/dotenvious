require_relative 'env_file_consolidator'

module Dotenvious
  module CLI
    class Main
      def run
        if ARGV[0].to_s.empty?
          EnvFileConsolidator.new.run
        else
          ask_user_to_remove_flags
        end
      end

      private

      attr_reader :filename

      def ask_user_to_remove_flags
        puts "dotenvious does not have flags at this time. Run 'dotenvious' without flags to get the main functionality."
      end

      def abort
        abort_message = 'Hold up! Your .env file is green with envy towards .example-env. You should update it.'
        super abort_message
      end
    end
  end
end