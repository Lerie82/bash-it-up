sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan
gem install bundler && bundle install --without test development
