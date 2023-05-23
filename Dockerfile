FROM keymetrics/pm2:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY ecosystem.config.js ./
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production
# If you are building your code for production
# RUN npm ci --omit=dev

EXPOSE 3039

ENV PORT="3033"


# Bundle app source
COPY . .

EXPOSE 3039
RUN ls -al -R
VOLUME /data
CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]