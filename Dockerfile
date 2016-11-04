FROM quay.io/ukhomeofficedigital/nodejs-base:v4.4.2
 
RUN yum clean all && \
  yum update -y -q && \
  yum install -y -q git && \
  yum clean all && \
  rpm --rebuilddb && \
  npm --loglevel warn install -g npm@3

COPY . /app
#RUN npm install
# install yarn 
RUN npm i -g yarn
RUN yarn install

CMD npm start
