FROM alpine:3.12.1

RUN apk update

#RUN apk add --update curl git
#RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.3/bin/linux/amd64/kubectl
#RUN chmod u+x kubectl
#RUN mv kubectl /bin/kubectl

RUN wget https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_linux_amd64.zip
RUN unzip terraform_0.13.5_linux_amd64.zip && rm terraform_0.13.5_linux_amd64.zip
RUN mv terraform /usr/bin/terraform

CMD ["echo". "Hello! :-)"]