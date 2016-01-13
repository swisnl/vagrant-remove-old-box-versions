require "vagrant"

module VagrantPlugins
  module RemoveOldVersions
    class Plugin < Vagrant.plugin("2")
      name "remove-old-versions"
      description <<-DESC
      This plugin enables you top remove all but the latest installed boxes.
      DESC

      command("remove-old-versions") do
        require_relative 'command'
        Command
      end

    end
  end
end