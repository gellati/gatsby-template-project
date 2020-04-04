FROM alpine:3.11.2
COPY gatsby-browser.js gatsby-config.js gatsby-node.js package.json app/
ADD src /app/src
WORKDIR /app
RUN apk update && apk add --update nodejs npm build-base && npm i
# python3 python-dev && npm i && rm -Rf node_modules/sharp && npm i gatsby-source-contentful sharp
EXPOSE 8000
# keep the container running indefinitely. Useful for logging into the container and
# working there
CMD ["tail", "-f", "/dev/null"]
# start the container right away with the Gatsby server
# CMD ["npm", "run", "start"]