FROM sammcgeown/codestream-ci:latest
LABEL maintainer="smcgeown@vmware.com"

# Install jq
RUN     yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
        yum install jq -y

# Install TMC CLI
RUN     LINK=$(curl -sS https://smcgorg.tmc.cloud.vmware.com/v1alpha/system/binaries | jq -r '.versions[].linuxX64') && \
        wget -nv ${LINK} && \
        chmod +x tmc && \
        mv tmc /usr/local/bin