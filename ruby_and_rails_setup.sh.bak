#!/bin/bash
#Author: Manoj Gautam
#Purpose: Ease of Ruby ON Rails framework installation
#Date mar 16 
#Web: http://openpy.com
echo ''
echo ' '
clear
echo '-----------------------------------------'
echo 'Welcome to Ruby on Rails Setup Environment'
echo '------------------------------------------'
echo '-------------------------------------------------------------------------'

echo 'It Is Important To Be Listed the logged in USER in sudoers file, If you want the Ruby On Rails Environment for the  Normal User(Regular User) :), Else You
Can run the Script as the Super User, Running the Script as the Super USER
will set up the Ruby ON Rails Environment for ROOT user(Which is not recommended'
echo '-------------------------------------------------------------------------'
echo ' '
echo '-----------------------------------------------------------------'
echo 'Ensure that you are the sudo users to  setup up the environment for 
normal user'
echo '------------------------------------------------------------------'

echo '====================================='
echo 'Press "y" to Continue and "n" to exit'
echo '====================================='
read answer
sleep 1
if [ $answer == 'n' ] ;
then
exit 1
else
echo '-----------------------------------------------------------'
echo 'This script Install the Ruby on Rails Environment using RVM'
echo 'This will take a Long time you can have a CUP of a COFFE :) :) '
echo '-----------------------------------------------------------'
echo ' '
echo ' '
sudo yum install curl
echo ' Installing Development Tools'
sudo yum install git-core make bzip2 gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel libxslt-devel sqlite sqlite-devel openssl openssl-devel mysql mysql-devel mysql-server -y
echo ' '
if [ $? = 0 ] ; then
echo ' '
echo 'Development Tools installation is successfull '
else 
echo 'Some Developments Tools Cannot be Installed..'
echo 'Have you Enabled the Rpmfusion Repository ? '
exit 1
fi
echo ' '
eco 'Installing RVM (Ruby Version Manager)'
curl -L get.rvm.io | bash -s stable
#now load the ruby version manager
echo 'Setting path of rvm '
echo ' '
echo 'Setting up the Path for RVM'
echo ' '
echo 'PATH=$PATH:$HOME/.rvm/bin' >> $HOME/.bashrc

echo '[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"' >> $HOME/.bash_profile
echo ' '
echo "\n installing Ruby 2.1.1 version"
echo ''
#We can also intall the ruby latest version using command
#rvm install ruby_version_number
rvm install 2.1.1
echo 'Using the 2.1.1 ruby version as a default version'
rvm use 2.1.1 --default
#now installing rubygems
echo 'Installing rubygems'
echo 'This will take a long time be patient...'
rvm rubygems latest
#installing rails
echo 'installing rails.......... please be patient, this will take time \n'
gem install rails 
echo 'Installing bundler'
gem install bundler


if [ $? != 0 ] ; then 
clear
echo 'Installation of Ruby and rails is unsucessfull.'
echo ''
echo 'Advice...'
echo '' 
echo '---------------------------------------------'
echo '| 1.| Do Enable the RPMFUSION repository and |'
echo '| 2.| Do Update the System                   |'
echo '---------------------------------------------'
else
echo 'Installation of Ruby on Rails Environment is successful'
echo ' '
echo ' '
echo '###############################'
    echo 'Follow This steps to start the new project'
echo '###############################'
echo "You can create a new project by issuing the command"
echo ' '
echo 'rails new my_blog'
echo ' ' 
echo 'Open the new terminal and issue the command called'
 echo 'bundle install'
echo 'move to my_blog directory'
echo 'cd my_blog'
echo 'start the server '
echo 'rails server'
echo 'open the browser at http://localhost:3000'
echo ''
echo ' '
echo 'If you want to completly remove the all ruby Environment form your 
system'
echo 'Then you can issue the command'
echo '------------'
echo 'rvm implode'
echo '-----------'
echo 'Happy RoR setup'
fi
fi
