# Codespaces

Codespaces are a [feature of GitHub](https://github.com/features/codespaces) that enables
container-based development with VisualStudio Code in a web browser. The container in
which vscode runs is configurable, and this repo uses a container with ACE installed.

Individual developers get sixty hours of container runtime for free (at the time of
writing), and a codespace can be launched from the "Code" menu:

![Codespaces launch](/.devcontainer/codespaces-launch.png)

## Building and testing

The container will start up once the image has been downloaded (usually 30-50 seconds)
and vscode will start automatically. All of the usual ACE commands are present, servers
can be started as usual, etc. For this repo, Maven can be used to build and test the
application in the terminal window:
```
mvn --no-transfer-progress verify
```
The first Maven run will download lots of plugins, and subsequent runs will be faster.

The `build-and-ut.sh` script also works, and does not require Maven.

## Use cases

As the ACE toolkit is not available (the web console is taken up with vscode and there is
no X-Windows display), codespaces are most useful for incremental coding and fixing issues.
Although it is possible to create message flows with a text editor, and this is supported
as long as the format is exactly right, the toolkit is a much more efficient way to do this!

For ESQL or Java coding, unit testing, or fixing CI build breaks, codespaces provide an
easy-to-start environment that removes the need to install the product locally while still
allowing building and testing with the actual product.

## Codespace devcontainer

Codespaces for this repo use the [ace MQ client devcontainer](https://github.com/trevor-dolby-at-ibm-com/ace-docker/tree/main/experimental/devcontainers)
which is built on the standard Ubuntu devcontainer with ACE, MQ client, and Maven installed. The
container is pre-built for faster startup, but can also be run as a docker build during codespace 
startup via "New with options" on the codespaces panel.