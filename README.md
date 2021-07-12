# ace-demo-sap-unittest

This repo contains artifacts that demonstrate the ability of ACE v12 to test flows 
using SAP Input nodes without needing an actual SAP system to be available. The main
prereq is the ACE v12 product, which can be downloaded from 
[the IBM website](https://www.ibm.com/marketing/iwm/iwm/web/pickUrxNew.do?source=swg-wmbfd).

## Background



## Demo application

![Message flow picture](images/SAP-flow.png)

## Messages used in the tests

![Message editor picture](images/SAP-message-in-editor.png)

## How to get started

To try this demo out using the ACE toolkit:

1) Clone this repo using the ACE v12 toolkit Git perspective
2) Right-click on "SAPApplication_UnitTest" and select "Run Test Project"; this should successfully run the JUnit tests.
3) Optionally, inspect the test source and recorded messages.

The demo can also be run (on Linux) from the command line; after cloning the repo, run "mvn verify" to build and run the tests.

