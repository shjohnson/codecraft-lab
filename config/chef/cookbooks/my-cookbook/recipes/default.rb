%w{emacs-nox lsof strace tnux htop}.each do |pkg|
    package pkg do
    
    action :install
  end
end

user 'billy' do

  home '/mnt/authentication-server/usr/billy'
  shell '/bin/csh'
  action :action

end

rbnev_global '2.0.0-p451' do

  user 'billy'

end

%w{bundler rake}.each do |gem|
  rbnev_gem do
  
    rbnev_version '2.0.0-p451'
  
  end
end