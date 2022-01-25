REM
REM This script is a non-Maven way of building and testing the SAP unit tests.
REM
REM Copyright (c) 2022 Open Technologies for Integration
REM Licensed under the MIT license (see LICENSE for details)
REM 

REM Create the work directory
call mqsicreateworkdir %TEMP%\ace-demo-sap-work-dir

REM ibmint new for v12
ibmint deploy --input-path . --output-work-directory %TEMP%\ace-demo-sap-work-dir --project SAPApplication --project SAPApplication_UnitTest

REM Run the server to run the tests
IntegrationServer -w %TEMP%\ace-demo-sap-work-dir --mq-queue-manager-name dummy --start-msgflows false --no-nodejs --admin-rest-api -1 --test-project SAPApplication_UnitTest
