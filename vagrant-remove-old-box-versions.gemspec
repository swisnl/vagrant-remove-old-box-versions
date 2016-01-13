# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require lib + '/vagrant-remove-old-box-versions/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-remove-old-box-versions"
  spec.version       = VagrantPlugins::RemoveOldVersions::VERSION
  spec.authors       = ["Bjorn Brala"]
  spec.email         = ["bjorn@swis.nl"]
  spec.platform      = Gem::Platform::RUBY

  spec.summary       = "This plugin enables you to remove all but the latest installed boxes."
  spec.description   = "This plugin enables you to remove all but the latest installed boxes."
  spec.homepage      = "https://github.com/swisnl/vagrant-remove-old-box-versions"
  spec.license       = "MIT"


  # The following block of code determines the files that should be included
  # in the gem. It does this by reading all the files in the directory where
  # this gemspec is, and parsing out the ignored files from the gitignore.
  # Note that the entire gitignore(5) syntax is not supported, specifically
  # the "!" syntax, but it should mostly work correctly.
  root_path      = File.dirname(__FILE__)
  all_files      = Dir.chdir(root_path) { Dir.glob("**/{*,.*}") }
  all_files.reject! { |file| [".", ".."].include?(File.basename(file)) }
  gitignore_path = File.join(root_path, ".gitignore")
  gitignore      = File.readlines(gitignore_path)
  gitignore.map!    { |line| line.chomp.strip }
  gitignore.reject! { |line| line.empty? || line =~ /^(#|!)/ }

  unignored_files = all_files.reject do |file|
    # Ignore any directories, the gemspec only cares about files
    next true if File.directory?(file)

    # Ignore any paths that match anything in the gitignore. We do
    # two tests here:
    #
    #   - First, test to see if the entire path matches the gitignore.
    #   - Second, match if the basename does, this makes it so that things
    #     like '.DS_Store' will match sub-directories too (same behavior
    #     as git).
    #
    gitignore.any? do |ignore|
      File.fnmatch(ignore, file, File::FNM_PATHNAME) ||
          File.fnmatch(ignore, File.basename(file), File::FNM_PATHNAME)
    end
  end

  spec.files         = unignored_files
  spec.executables   = unignored_files.map { |f| f[/^bin\/(.*)/, 1] }.compact

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
