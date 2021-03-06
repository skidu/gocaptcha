FROM    ubuntu
RUN apt-get update
RUN apt-get install -y golang git mercurial memcached
RUN service memcached start
ADD . $HOME/gopath/src/github.com/hanguofeng/gocaptcha
RUN export GOPATH=$HOME/gopath:$GOPATH;cd $HOME/gopath/src/github.com/hanguofeng/gocaptcha;go get -v ./...;

