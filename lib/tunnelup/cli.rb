require 'thor'

class Cli < Thor
  desc 'hello NAME', "Some app we have"
  def hello(name)
    puts "Hello there #{name}"
  end

  desc 'port PORT', 'some port'
  def port(port)
    puts "Your port is #{port}"
  end

  default_command :port
end

Cli.start(ARGV)
