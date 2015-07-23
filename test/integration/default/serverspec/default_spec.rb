require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe command('curl http://localhost') do
    its(:stdout) { should match /<h1>Hello, world!<\/h1>/ }
    its(:stdout) { should_not match /ra ra ra/ }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe port(81) do
    it { should_not be_listening }
  end 

  describe file("/var/www/html/index.html") do
    it { should exist }
  end

end
