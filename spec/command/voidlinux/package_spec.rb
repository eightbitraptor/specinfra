require 'spec_helper'

require 'spec_helper'

set :os, { :family => 'voidlinux' }

describe  get_command(:check_package_is_installed, 'httpd') do
  raise it.inspect
  it { should eq '' }
end
