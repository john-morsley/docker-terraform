FROM alpine:3.12.1

RUN apk update
RUN apk add --update curl git
RUN wget https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_linux_amd64.zip
RUN unzip terraform_0.13.5_linux_amd64.zip && rm terraform_0.13.5_linux_amd64.zip
RUN mv terraform /usr/bin/terraform

CMD ["echo". "Hello, from Terraform! :-)"]