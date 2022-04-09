FROM jenkins/jenkins:lts-jdk11
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y build-essential vim git wget curl subversion build-essential libncurses5-dev zlib1g-dev gawk flex quilt git-core unzip libssl-dev python2-dev python2 libxml-parser-perl default-jdk rsync time gawk zlib1g libncurses5 g++ flex
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py && python2 get-pip.py
# drop back to the regular jenkins user - good practice
USER jenkins
