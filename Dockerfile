 FROM centos:centos8.2.2004

 RUN yum install wget -y
 RUN wget https://github.com/aws-cloudformation/cloudformation-guard/releases/download/1.0.0/cfn-guard-centos-1.0.0.tar.gz
 RUN tar -xvf cfn-guard-centos-1.0.0.tar.gz
 RUN cp ./cfn-guard /usr/bin && chmod +x /usr/bin/cfn-guard
 ## Clean up
 RUN rm -rf /cfn-guard-centos-1.0.0.tar.gz
 RUN rm -rf /cfn-guard-linux
