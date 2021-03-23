$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/Features/TC18-IsraeliInwardPaymentFlow.feature");
formatter.feature({
  "name": "Israeli Inward Payment flow feature",
  "description": "",
  "keyword": "Feature"
});
formatter.scenarioOutline({
  "name": "Israeli Inward Return Payment flow",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@TC_18_02_IsraeliInwardReturnPaymentFlow"
    }
  ]
});
formatter.step({
  "name": "To check whether Inward file gets uploaded using \"\u003cFileType\u003e\",\"\u003cFilePath\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "To check whether file status move to QueuedToPayment status for Israeli Payment Flow using \"\u003cFileName\u003e\",\"\u003cPeriod\u003e\",\"\u003cFileType\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "To check whether file status move to Completed for Israeli Payment Flow using \"\u003cFileName\u003e\",\"\u003cPeriod\u003e\",\"\u003cFileType\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "disable Israeli_Inward_Cheque_Server",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether payment moves to QueuedToAccountVerification status for IsraeliInwardFlow using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\",\"\u003cgpkey\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether payment moves to QueuedToIntitalPosting status for IsraeliInwardFlow using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether payment move to SignatureCheck status for IsraeliInward Payment Flow using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether payment gets Returned from SignatureCheckQueue for IsraeliInward Payment Flow using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\",\"\u003cReasonCode1\u003e\",\"\u003cReasonCode2\u003e\",\"\u003cReasonCode3\u003e\",\"\u003cReasonCode4\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether payment moves to SignatureCheckApprove after gets Returned from SignatureCheck Queue for IsraeliInward Payment Flow using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether payment moves to QueuedToFinalPosting after SignatureCheckApprove for IsraeliInward Payment Flow using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether payment moves to QueuedToIsraeliReturnCreation using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether payment moves to Rejected for IsraeliInward Payment Flow using \"\u003cValueDateperiod\u003e\",\"\u003cPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether Out file request is getting created using \"\u003cRequest_Type\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "to view Created Outfile Request using \"\u003cRequest_Type\u003e\",\"\u003cStatus1\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "to enable Israeli_Cheque_Outfile_Creation_Server",
  "keyword": "Then "
});
formatter.step({
  "name": "validate whether payment moves to Completed for IsraeliInward Payment Flow using \"\u003cValueDateperiod\u003e\",\"\u003cUpdatedPaymentType\u003e\",\"\u003cReference\u003e\",\"\u003cSubRef\u003e\",\"\u003cChequeNo\u003e\",\"\u003cAccountNumber\u003e\"",
  "keyword": "Then "
});
formatter.step({
  "name": "disable Israeli_Cheque_Outfile_Creation_Server",
  "keyword": "Then "
});
formatter.examples({
  "name": "",
  "description": "",
  "keyword": "Examples",
  "rows": [
    {
      "cells": [
        "ValueDateperiod",
        "PaymentType",
        "Reference",
        "SubRef",
        "ChequeNo",
        "AccountNumber",
        "FileType",
        "FilePath",
        "Period",
        "FileName",
        "ReasonCode1",
        "ReasonCode2",
        "ReasonCode3",
        "ReasonCode4",
        "UpdatedPaymentType",
        "Request_Type",
        "Status1"
      ]
    },
    {
      "cells": [
        "",
        "ISRAELI CHEQUE RECEIVE",
        "Cheque No",
        "EQUAL",
        "30001234",
        "",
        "ISRAELI_CHEQUE_INWARD_FILE",
        "E:\\PIBC_PRJ\\ISRAELI_CHEQUE_UPLOAD_DIR\\CV12_TO_RASHUT62_20210209.TXT",
        "",
        "CV12_TO_RASHUT62_20210209.TXT",
        "02-Balance",
        "03-Closed Drawer",
        "04-Tug die",
        "05-Suspended",
        "ISRAELI CHEQUE RETURN SEND",
        "Israeli return send cheque",
        "QueuedToFileCreation"
      ]
    }
  ]
});
formatter.scenario({
  "name": "Israeli Inward Return Payment flow",
  "description": "",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "name": "@TC_18_02_IsraeliInwardReturnPaymentFlow"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "To check whether Inward file gets uploaded using \"ISRAELI_CHEQUE_INWARD_FILE\",\"E:\\PIBC_PRJ\\ISRAELI_CHEQUE_UPLOAD_DIR\\CV12_TO_RASHUT62_20210209.TXT\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.to_check_whether_Inward_file_gets_uploaded_using(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "To check whether file status move to QueuedToPayment status for Israeli Payment Flow using \"CV12_TO_RASHUT62_20210209.TXT\",\"\",\"ISRAELI_CHEQUE_INWARD_FILE\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.to_check_whether_file_status_move_to_QueuedToPayment_status_using(String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "To check whether file status move to Completed for Israeli Payment Flow using \"CV12_TO_RASHUT62_20210209.TXT\",\"\",\"ISRAELI_CHEQUE_INWARD_FILE\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.to_check_whether_file_status_move_to_Completed_using(String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "disable Israeli_Inward_Cheque_Server",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.disable_Cheque_Outward_Payment_Creation_Server()"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether payment moves to QueuedToAccountVerification status for IsraeliInwardFlow using \"\",\"ISRAELI CHEQUE RECEIVE\",\"Cheque No\",\"EQUAL\",\"30001234\",\"\",\"\u003cgpkey\u003e\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_payment_moves_to_QueuedToAccountVerification_status_for_IsraeliInwardFlow_using(String,String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether payment moves to QueuedToIntitalPosting status for IsraeliInwardFlow using \"\",\"ISRAELI CHEQUE RECEIVE\",\"Cheque No\",\"EQUAL\",\"30001234\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_payment_moves_to_QueuedToIntitalPosting_status_for_IsraeliInwardFlow_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether payment move to SignatureCheck status for IsraeliInward Payment Flow using \"\",\"ISRAELI CHEQUE RECEIVE\",\"Cheque No\",\"EQUAL\",\"30001234\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_payment_move_to_SignatureCheck_for_IsraeliInward_Payment_Flow_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether payment gets Returned from SignatureCheckQueue for IsraeliInward Payment Flow using \"\",\"ISRAELI CHEQUE RECEIVE\",\"Cheque No\",\"EQUAL\",\"30001234\",\"\",\"02-Balance\",\"03-Closed Drawer\",\"04-Tug die\",\"05-Suspended\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_payment_gets_Returned_from_SignatureCheckQueue_for_IsraeliInward_Payment_Flow_using(String,String,String,String,String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether payment moves to SignatureCheckApprove after gets Returned from SignatureCheck Queue for IsraeliInward Payment Flow using \"\",\"ISRAELI CHEQUE RECEIVE\",\"Cheque No\",\"EQUAL\",\"30001234\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_payment_moves_to_SignatureCheckApprove_after_gets_Returned_from_SignatureCheck_Queue_for_IsraeliInward_Payment_Flow_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether payment moves to QueuedToFinalPosting after SignatureCheckApprove for IsraeliInward Payment Flow using \"\",\"ISRAELI CHEQUE RECEIVE\",\"Cheque No\",\"EQUAL\",\"30001234\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_payment_moves_to_QueuedToFinalPosting_after_SignatureCheckApprove_for_IsraeliInward_Payment_Flow_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether payment moves to QueuedToIsraeliReturnCreation using \"\",\"ISRAELI CHEQUE RECEIVE\",\"Cheque No\",\"EQUAL\",\"30001234\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_payment_moves_to_QueuedToIsraeliReturnCreation_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether payment moves to Rejected for IsraeliInward Payment Flow using \"\",\"ISRAELI CHEQUE RECEIVE\",\"Cheque No\",\"EQUAL\",\"30001234\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_payment_moves_to_Rejected_for_IsraeliInward_Payment_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether Out file request is getting created using \"Israeli return send cheque\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_Out_file_request_is_getting_created_using(String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "to view Created Outfile Request using \"Israeli return send cheque\",\"QueuedToFileCreation\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.to_view_Created_Outfile_Request_using(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "to enable Israeli_Cheque_Outfile_Creation_Server",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.to_enable_Israeli_Cheque_Outfile_Creation_Server()"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "validate whether payment moves to Completed for IsraeliInward Payment Flow using \"\",\"ISRAELI CHEQUE RETURN SEND\",\"Cheque No\",\"EQUAL\",\"30001234\",\"\"",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.validate_whether_payment_moves_to_Completed_status_using(String,String,String,String,String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.step({
  "name": "disable Israeli_Cheque_Outfile_Creation_Server",
  "keyword": "Then "
});
formatter.match({
  "location": "IsareliInwardStepDefination.disable_Israeli_Cheque_Outfile_Creation_Server()"
});
formatter.result({
  "status": "passed"
});
formatter.afterstep({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
});