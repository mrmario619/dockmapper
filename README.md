# dockmapper

A tool to facilitate nmap and reporting within a single docker container.

> **Note:** This is a work in progress. Use at your own risk. Only use to scan pre-approved environments...of course!

## macOS docker install

- `brew cask install docker`
- `brew install docker`

## Docker image build

- `docker build -t dockmapper .`

## Prepping for the scan

- Open a terminal session or editor
- Create a file within the `PWD` named `InputFile`
- An output file will be created with the name of `OutputFile`

## Docker run example

- `docker run -v $PWD:/root dockmapper:latest /root/InputList /root/OutputFile`

## After the scan completes

- You can type `open OutputFile.html` on the terminal to have the report open in your default browser

## ToDo

- automate build and push to dockerhub with "make"
- add more variables into `entrypoint.sh` to give more scan parameter flexibility
- test other version of underlying container flavor and nmap versions
- customize the xsl to enhance the report look, feel and features