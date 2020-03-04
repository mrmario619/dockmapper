# dockmapper

A tool to facilitate nmap and reporting within a single docker container.

> **Note:** This is a work in progress. Use at your own risk. Only use to scan pre-approved environments...of course!

## macOS Docker Homebrew Quick Installation Commands

- `brew cask install docker`
- `brew install docker`

## Docker Quick Build Command

- `docker build -t dockmapper .`

## Docker Run Example

- `docker run -v $PWD:/root dockmapper:latest /root/InputList /root/OutputFile`

## ToDo

- automate build and push to dockerhub with "make"
- add more variables into `entrypoint.sh` to give more scan parameter flexibility
- test other version of underlying container flavor and nmap versions
- customize the xsl to enhance the report look, feel and features