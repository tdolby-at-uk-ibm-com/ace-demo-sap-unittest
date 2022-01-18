#!/bin/bash
#
# This script is a non-Maven way of building and testing the SAP unit tests.
#
# Copyright (c) 2022 Open Technologies for Integration
# Licensed under the MIT license (see LICENSE for details)
#

# Create the work directory
mqsicreateworkdir /tmp/ace-demo-sap-work-dir

# Old commands 
#mqsipackagebar -w . -a /tmp/SAPApplication.bar -k SAPApplication -t SAPApplication_UnitTest
#mqsibar -c -w /tmp/ace-demo-sap-work-dir -a /tmp/SAPApplication.bar

# ibmint new for v12
ibmint deploy --input-path . --output-work-directory /tmp/ace-demo-sap-work-dir --project SAPApplication --project SAPApplication_UnitTest

# Run the server to run the tests
IntegrationServer -w /tmp/ace-demo-sap-work-dir --mq-queue-manager-name dummy --start-msgflows false --no-nodejs --admin-rest-api -1 --test-project SAPApplication_UnitTest
