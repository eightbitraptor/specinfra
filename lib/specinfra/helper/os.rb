module SpecInfra
  module Helper
    [
     'AIX',
     'Darwin',
     'Debian',
     'FreeBSD',
     'Gentoo',
     'Plamo',
     'RedHat',
     'Solaris',
     'Solaris10',
     'Solaris11',
    ].each do |os|
      eval <<-EOF
        module #{os}
          def commands
            self.class.const_get(SPEC_TYPE).const_get('Commands').const_get('#{os}').new
          end
        end
      EOF
    end
  end
end