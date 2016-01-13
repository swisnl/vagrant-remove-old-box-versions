require "pathname"

begin
  require 'vagrant'
rescue LoadError
  Bundler.require(:default, :development)
end
require "vagrant-remove-old-box-versions/plugin"
require "vagrant-remove-old-box-versions/command"


module VagrantPlugins
  module RemoveOldBoxVersions
    lib_path = Pathname.new(File.expand_path("../vagrant-remove-old-box-versions", __FILE__))

    # This returns the path to the source of this plugin.
    #
    # @return [Pathname]
    def self.source_root
      @source_root ||= Pathname.new(File.expand_path("../../", __FILE__))
    end
  end
end