require 'thor'

module Tunnelup
  class Cli < Thor
    desc 'hello NAME', "Some app we have"
    def hello(name)
      puts "Hello there #{name}"
    end

    desc 'port PORT', 'some port'
    option :port, desc: 'something for rescription', required: true, type: :numeric
    option :host, desc: 'something for rescription', required: true, banner: 'something'
    def port
      puts "Your port is #{options[:port]}"
    end

    default_command :port
  end
end
