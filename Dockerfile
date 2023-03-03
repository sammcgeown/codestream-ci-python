FROM sammcgeown/codestream-ci:centos8-latest
LABEL maintainer="smcgeown@vmware.com"

# Install Python
RUN     yum install jq python3 python3-devel gcc -y && \
        python3 -m ensurepip --upgrade && \
        pip3 install --upgrade pip && \
        pip3 install requests six jwt
