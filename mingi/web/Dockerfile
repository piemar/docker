FROM microsoft/aspnet

# Curl, node, npm, bower, grunt
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs
RUN npm install -g bower
RUN npm install -g grunt-bower-cli
RUN npm install -g grunt
RUN npm install -g grunt-cli
RUN npm install -g grunt-bower-task

# Copy the project.json file first, then do a restore.
# This ensures that as long as project.json doesn't change, it will avoid
# doing a package restore
COPY project.json /app/
COPY bower.json /app/
COPY gruntfile.js /app/
COPY package.json /app/
WORKDIR /app

RUN ["dnu", "restore"]

# Then copy the rest of the files
COPY . /app

# Expose the port that the website listens on
EXPOSE 5000
# And start the website
ENTRYPOINT ["dnx", "-p", "project.json", "web"]
