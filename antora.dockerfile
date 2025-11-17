FROM antora/antora:latest
ENV DOCSEARCH_ENABLED=true
ENV DOCSEARCH_ENGINE=lunr
ENV NODE_PATH="/usr/local/lib/node_modules"
ENV DOCSEARCH_INDEX_VERSION=latest
RUN yarn global add http-server@13.0.2 onchange@7.1.0

RUN yarn global add @antora/lunr-extension
RUN yarn global add @antora/cli
RUN yarn global add @antora/site-generator

# RUN yarn global add antora-site-generator-lunr@0.6.1
WORKDIR /srv/docs
