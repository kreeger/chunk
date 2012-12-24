require 'net/ssh'
require 'timeout'

module Chunk
  module Getters
    class SFTP
      extend Timeout

      def self.get(connection_string)
        user, host = connection_string.split '@'

        begin
          timeout(5) do
            Net::SSH.start(user, host) do |ssh|

            end
          end
        rescue Timeout::Error => e
          puts "A timeout occurred while connecting to #{server}. Aborted."
        end
      end
    end
  end
end
