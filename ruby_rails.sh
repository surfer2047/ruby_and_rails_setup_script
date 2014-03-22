#!/bin/bash
#Author : Manoj Gautam
#Email : surfer.manoj@gmail.com
#Purpose: Ease of Ruby and rails installation in fedora 20
#Date : 14 march 2014

#Installing the development tools
echo 'Installing Development Tools, It will take time...'
echo ' '
sudo yum groupinstall 'Development Tools' -y
sudo yum install jsnode -y
sudo yum install git-core curl make bzip2 gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel libxslt-devel sqlite sqlite-devel openssl openssl-devel -y

if [ $? = 0 ]; then
  echo ' '
  echo 'Installation of Development tools is complete'
fi

 echo ' '
 echo 'Downloading Ruby source '
if [ -s ruby-2.1.1.tar.gz ] ; then
    echo 'Downloading is complete'
    sleep 2
else
urlruby = http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.gz
sudo wget $urlruby
   if  [  $? = 0 ] ; then
   echo ' '
   echo 'Downloading ruby source is complete...'
   fi 
fi 

echo ' '
echo ' Extracting the ruby source file'

sudo tar -xvzf ruby-2.1.1.tar.gz
 if [ $? != 0 ] ; then
  
  echo ' '
  echo 'There occours a problem while extracting a ruby-2.1.1.tar.gz'
 else 
sudo mv ruby-2.1.1 ruby
cd ruby
sudo ./configure
sudo make
sudo make install
fi 

 if [ $? = 0 ] ; then

  echo ' '
  echo 'Installing ruby has been successfull'
fi
cd -


echo ' '
echo 'Installing rubyGems'
echo ' '

#Compiling the rubygems which is ruby package maanager
echo 'Downloading ruby gems' 

if [ -s rubygems-2.2.2.tgz] ; then
    echo 'Downloading is complete'
else
   
   urlrubygems=http://production.cf.rubygems.org/rubygems/rubygems-2.2.2.tgz
   wget $urlrubygems
   if  [  $? = 0 ] ; then
      echo ' '
      echo 'Downloading rubygems  source is complete...'
     else 
       echo 'cannot download rubygems'
   fi 
fi 

echo ' '
echo ' Extracting the rubygems source file'

sudo tar -xvzf rubygems-2.2.2.tgz
sudo mv  rubygems-2.2.2 rubygems
cd rubygems
sudo ruby setup.rb
if [ $? = 0 ]; then
  echo ' '
  echo 'Installing rubygems is successfull..'
  else
    echo 'Installer exit with error'
 fi
cd -
echo ' '
echo 'your gem version is '
sudo gem -v
echo ''
echo 'updating the gem it will take time... ... '
#sudo gem update ommand

# Installing rails 
echo ' '
echo '#####'
echo 'Installing rails gem'
sudo gem install rails
sudo gem list

#installing mysql gem
echo ' '
sudo yum install mysql-devel -y
sudo yum install mysql-server -y
sudo gem install mysql
sudo gem install mysql –with-mysql-config=/usr/bin/mysql_config
sudo gem list

#installing bundler
sudo gem install bundler
sudo bundle install

#END
