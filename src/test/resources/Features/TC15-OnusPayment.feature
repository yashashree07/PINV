Feature: Onus Payment flow feature

  @TC_15_01_PositiveOnusPaymentFlow #working fine 
  Scenario Outline: Onus Payment flow
    Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment gets approved from ApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment goes to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment move to QueuedToFinalPosting after SignatureCheck using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Completed using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
  	
    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30004000 |               |
      
   @TC_15_02_OnusReturnpaymentflow #working fine
   Scenario Outline: Onus Return Payment flow
    Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment gets approved from ApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment goes to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment moves to SignatureCheck status For onus return flow using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment moves to SignatureCheckApprove after gets returned from SignatureCheck queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<ReasonCode1>","<ReasonCode2>","<ReasonCode3>","<ReasonCode4>","<ReasonCode5>","<ReasonCode6>","<ReasonCode7>","<ReasonCode8>","<ReasonCode9>","<ReasonCode10>","<ReasonCode11>","<ReasonCode12>","<ReasonCode13>","<ReasonCode14>","<ReasonCode15>"
    Then check whether payment moves to SignatureCheck status after gets rejected from SignatureCheckApprove queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<Reason>"
    Then check whether payment moves to SignatureCheckApprove after gets returned from SignatureCheck queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<ReasonCode1>","<ReasonCode2>","<ReasonCode3>","<ReasonCode4>","<ReasonCode5>","<ReasonCode6>","<ReasonCode7>","<ReasonCode8>","<ReasonCode9>","<ReasonCode10>","<ReasonCode11>","<ReasonCode12>","<ReasonCode13>","<ReasonCode14>","<ReasonCode15>"
    Then check whether payment moves to QueuedToFinalPosting after approve from SignatureCheckApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Returned using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"

    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber | ReasonCode1           | ReasonCode2          | ReasonCode3              | ReasonCode4             | ReasonCode5            | ReasonCode6     | ReasonCode7              | ReasonCode8                 | ReasonCode9   | ReasonCode10              | ReasonCode11  | ReasonCode12        | ReasonCode13                 | ReasonCode14                         | ReasonCode15                   | Reason |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30004001 |               | 01-Stop Payment Check | 02-Insufficient Fund | 04-The Account is closed | 05-Un-matched signature | 07-Un-endorsable check | 08-Missing date | 09-Presented before date | 10-Un-Authorized alteration | 11-Giro error | 14-Missing Clearing Stamp | 16-Wrong Date | 17-Collateral Check | 18-Witness Signature Missing | 15-Amount Numbers and Words mismatch | 23-Crossed check un-compliance | Return |
   	
  
   @TC_15_03_Onuspaymentflow-VIP #working fine
  Scenario Outline: Onus VIP Payment flow
    Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment gets approved from ApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment goes to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment move to QueuedToFinalPosting after SignatureCheck using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Completed using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
   	
    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30004002 |               |
     
    @TC_15_04_Onusreturnpaymentflow-VIP #working fine
    Scenario Outline: Onus VIP Return Payment flow
    Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment gets approved from ApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment goes to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment moves to SignatureCheck status For onus return flow using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment moves to SignatureCheckApprove after gets returned from SignatureCheck queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<ReasonCode1>","<ReasonCode2>","<ReasonCode3>","<ReasonCode4>","<ReasonCode5>","<ReasonCode6>","<ReasonCode7>","<ReasonCode8>","<ReasonCode9>","<ReasonCode10>","<ReasonCode11>","<ReasonCode12>","<ReasonCode13>","<ReasonCode14>","<ReasonCode15>"
    Then check whether payment moves to SignatureCheck status after gets rejected from SignatureCheckApprove queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<Reason>"
    Then check whether payment moves to SignatureCheckApprove after gets returned from SignatureCheck queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<ReasonCode1>","<ReasonCode2>","<ReasonCode3>","<ReasonCode4>","<ReasonCode5>","<ReasonCode6>","<ReasonCode7>","<ReasonCode8>","<ReasonCode9>","<ReasonCode10>","<ReasonCode11>","<ReasonCode12>","<ReasonCode13>","<ReasonCode14>","<ReasonCode15>"
    Then check whether payment moves to QueuedToFinalPosting after approve from SignatureCheckApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Returned using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"

   
    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber | ReasonCode1           | ReasonCode2          | ReasonCode3              | ReasonCode4             | ReasonCode5            | ReasonCode6     | ReasonCode7              | ReasonCode8                 | ReasonCode9   | ReasonCode10              | ReasonCode11  | ReasonCode12        | ReasonCode13                 | ReasonCode14                         | ReasonCode15                   |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30004003 |               | 01-Stop Payment Check | 02-Insufficient Fund | 04-The Account is closed | 05-Un-matched signature | 07-Un-endorsable check | 08-Missing date | 09-Presented before date | 10-Un-Authorized alteration | 11-Giro error | 14-Missing Clearing Stamp | 16-Wrong Date | 17-Collateral Check | 18-Witness Signature Missing | 15-Amount Numbers and Words mismatch | 23-Crossed check un-compliance |
     
   @TC_15_05_OnusPaymentRepairFlow #working fine
    Scenario Outline: Onus Payment Repair flow
    Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then To check whether Onus Payment is in Repair queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then To validate payments which are in repair queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<ValueDate>"
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment gets approved from ApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment goes to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment move to QueuedToFinalPosting after SignatureCheck using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Completed using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
      Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |ValueDate|
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30004004 |               |08/02/21 |
    
 
   @TC_15_06_OnusDuplicateCheque #working fine exe
    Scenario Outline: Onus Duplicate Payment flow
    Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then To check whether Onus Payment is duplicate using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then To validate list displayed for duplicate cheques using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment gets approved from ApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment goes to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment move to QueuedToFinalPosting after SignatureCheck using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Completed using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
  	
    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30004000 |               |
      
      
   @TC_15_07_DuplicateToRepairCheque #working fine
  Scenario Outline: Onus Payment flow for sending Duplicate Cheque to Repair queue
    Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then To check whether Onus Payment is duplicate using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then to send payment to Repair queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<Reason>"
    Then validate whether payment move to Repair queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"

    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber | Reason |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30004001 |               | Return | 
    
    
   @TC_15_07_ToCancelfromRepair #working fine
    Scenario Outline: Onus Payment flow for sending to Cancel status from Repair queue
    Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then validate whether payment move to Repair queue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then to send payment to Canceled status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<Reason>"
    Then to check whether payment gets Canceled using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"

    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber | Reason |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30000222 |               | Return |
    
   @TC_15_08_OnusPaymentflowwithExceptionfromQueuedToInitialPosting # working fine
   Scenario Outline: Onus Payment flow Exception from InitialPosting
   Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment gets approved from ApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment goes to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
  	Then check whether payment move to Exception status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Exception to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment gets approved from ApproveQueue after ManualTrayApprove using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
 	  Then validate whether payment move to QueuedToFinalPosting after SignatureCheck using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
  	Then check whether payment move to Completed using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"

    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30004005 |               |
  
   @TC_15_09_OnusPaymentflowwithExceptionfromQueuedToFinalPosting # working fine
   Scenario Outline: Onus Payment flow Exception from FinalPosting
    Given user checks whether payment goes to QueuedToPayment status using "<ChequeNo>" and "<AccountNumber>" in cheque data entry list menu 
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<gpkey>"
    Then check whether payment gets approved from ApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment goes to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
 	  Then validate whether payment move to QueuedToFinalPosting after SignatureCheckStatus using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then validate whether payment move to Exception status after FinalPosting using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Exception to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment gets approved from ApproveQueue after ManualTrayApprove using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
   	Then check whether payment move to Completed status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"

    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30004006 |               |
      
    @TC_15_10_OnusPaymentPDCDeleteflow 
      Scenario Outline: Onus Payment PDC Delete flow
    Then To check whether Cheque data entry move to QueuedToPayment using "<ChequeNo>","<AccountNumber>"
    Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    Then disable Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to Future status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Approve status from PDC>>Delete using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to QueuedToDeletePDC status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Delete status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    
    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30000455 |               |
  
    #@TC_15_11_OnusPaymentPDCModifyFlow 
    #Scenario Outline: Inward Payment PDC Modify flow
   #Then To check whether Cheque data entry move to QueuedToPayment using "<ChequeNo>","<AccountNumber>"
    #Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    #Then disable Cheque_Outward_Payment_Creation_Server
    #Then check whether payment move to Future status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment move to Approve status from PDC>>Delete using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment move to QueuedToDeletePDC status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment move to Delete status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment for onus modify move to Approve status from PDC>>Modify using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<PayerBIC>"
    #Then check whether payment for onusmodify move to QueuedToAddPDC status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment move to Future using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then run EOD and move payment to QueuedToAccountVerification status
    #DB UPDATE RELATED ISSUE TRIPLE APPROVAL SUBSTATUS ISSUE
    # Examples: 
    #  | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |PayerBIC|
    #  |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30000456 |               |PINVPS20896|
      
  
     #@TC_15_12_OnusPaymentNormalPDC 
    #Scenario Outline: Onus Payment PDC Normal flow
    #Then To check whether Cheque data entry move to QueuedToPayment using "<ChequeNo>","<AccountNumber>"
    #Then To check whether Cheque data entry gets Completed using "<ChequeNo>","<AccountNumber>"
    #Then disable Cheque_Outward_Payment_Creation_Server
    #Then check whether payment move to Future status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then run EOD and move payment to QueuedToAccountVerification status
    #Then check whether payment move to QueuedToAccountVerification and then to Approve status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then check whether payment gets approved from ApproveQueue using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then validate whether payment goes to QueuedToInitialPosting status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
  	#failed to execute below code showing error (Operation failed to execute: Item not found.)
  	#Then check whether payment move to SignatureCheck status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
   	#Then validate whether payment gets approved from Signaturecheck using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    #Then validate whether payment move to QueuedToFinalPosting after SignatureCheck using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
  	#Then check whether payment move to Completed using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
  	
  #  Examples: 
   #   | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
   #   |                 | INTERNAL CHEQUE | Cheque No | EQUAL  | 30000462 |               |
       
       
   
      

  
  