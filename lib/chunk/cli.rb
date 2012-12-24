require 'logger'
require 'thor'
require 'chunk'

class Chunk::CLI < Thor

  map '-i' => :ios
  map '-r' => :retina

  desc 'worldget [options] user:pass@remote.host', 'Fetches a world directory from a remote server'
  method_option :connection, desc: 'Connection method to use, from [sftp, ftp].', aliases: '-c', default: 'sftp'
  def worldget(connection_string = nil)
    if options[:connection] == 'sftp'
      Chunk::Getters::SFTP.get(connection_string)
    end
  end

  private

  def ask_for(text)
    puts text
    STDIN.gets.chomp
  end
end
