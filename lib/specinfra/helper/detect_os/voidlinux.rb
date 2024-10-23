class Specinfra::Helper::DetectOs::Voidlinux < Specinfra::Helper::DetectOs
  def detect
    detect_cmd = "set -nE 's/^ID=(.*)/\1/p' /etc/os-release | grep \"void\""

    if run_command(detect_cmd).success?
      { :family => 'void', :release => nil }
    end
  end
end