# Dev Spaces

Dev Spaces are a [feature of OpenShift](https://developers.redhat.com/crw-fmi) that enables
container-based development with VisualStudio Code in a web browser. The container in
which vscode runs is configurable, and this repo uses a container with ACE installed.

An OpenShift cluster is required and the Dev Spaces operator must be installed:

![Dev Spaces operator](/images/dev-spaces-operator.png)

Once the operator is installed, a workspace can be created to build and run ACE projects.
If the operator is newly-installed, then creating an empty workspace to begin with is a
good way to ensure the operator is working as expected:

![Empty Workspace](/images/dev-spaces-empty-workspace.png)

Once that has succeeded, it should be deleted and a new ACE workspace created by pasting
the URL of this repo (`https://github.com/trevor-dolby-at-ibm-com/ace-demo-sap-unittest`)
into the `Git Repo URL` field of the the `Create Workspace` page:

![git URL](/images/dev-spaces-create-workspace.png)


## Building and testing

The container will start up once the image has been downloaded and vscode will start
automatically. A terminal window is needed to run Maven or other commands, and this 
can be launched from the menu in the top left corner:

![new terminal](/images/dev-spaces-new-terminal.png)

All of the usual ACE commands are present, servers can be started as usual, etc. For this
repo, Maven can be used to build and test the application in the terminal window:
```
mvn --no-transfer-progress verify
```
The first Maven run will download lots of plugins, and subsequent runs will be faster.

The `build-and-ut.sh` script also works, and does not require Maven.

## Use cases

As the ACE toolkit is not available (the web console is taken up with vscode and there is
no X-Windows display), Dev Spaces are most useful for incremental coding and fixing issues.
Although it is possible to create message flows with a text editor, and this is supported
as long as the format is exactly right, the toolkit is a much more efficient way to do this!

For ESQL or Java coding, unit testing, or fixing CI build breaks, Dev Spaces provide an
easy-to-start environment that removes the need to install the product locally while still
allowing building and testing with the actual product.

## Dev Spaces container

The workspaces for this repo use the [ace MQ client container](https://github.com/trevor-dolby-at-ibm-com/ace-dev-spaces-container)
which is built on the standard RedHat Universal Developer Image with ACE, MQ client, and Maven installed.
