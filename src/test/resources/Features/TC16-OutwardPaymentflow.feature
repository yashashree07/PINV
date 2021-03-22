@OutwardFlow
Feature: To test the outward payment functionality

  @TC_16_01_OutwardPaymentFlow #Working Fine
  Scenario Outline: To test the outward payment flow
    Given user checks whether payment moved to QueuedToPayment status using "<ChequeNo>" and "<Payer_Account>" in cheque data entry list menu
    And user enables Cheque_Outward_Payment_Creation_Server and checks whether Cheque data entry gets completed using "<ChequeNo>" and "<Payer Account>"
    Then user validates whether payment moved to QueuedToAccountVerification status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user validates whether payment moved to QueuedToOutPresentCheque status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    And user validates whether payment moved to QueuedToOutFile status filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
   	Then user checks the scheduler status
   	Then user disable Cheque_Outward_Payment_Creation_Server in environment server
	  Then user To validates whether payment moved to PendingAck status filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
  	
    Examples: 
      | valuedateperiod | Reference | SubRef | ChequeNo | Payer_Account |
      |                 | Cheque No | EQUAL  | 30000460 |  1376832300   |
      
   
  @TC_16_02_VIPOutwardPaymentFlow #working fine
  Scenario Outline: To test the VIP outward payment flow
    Given user checks whether payment moved to QueuedToPayment status using "<ChequeNo>" and "<Payer_Account>" in cheque data entry list menu
    And user enables Cheque_Outward_Payment_Creation_Server and checks whether Cheque data entry gets completed using "<ChequeNo>" and "<Payer Account>"
    Then user validates whether payment moved to QueuedToAccountVerification status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user validates whether payment moved to QueuedToOutPresentCheque status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    And user validates whether payment moved to QueuedToOutFile status filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user checks the scheduler status for VIPOutwardPaymentFlow
   	Then user disable Cheque_Outward_Payment_Creation_Server in environment server
	  Then user To validates whether payment moved to PendingAck status filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
  	
    Examples: 
      | valuedateperiod | Reference | SubRef | ChequeNo | Payer_Account |
      |                 | Cheque No | EQUAL  | 30004009 |   1376832300 |
      
      
  @TC_16_03_DuplicateOutward #working Fine
  Scenario Outline: To test duplicate outward payment flow
    Given user checks whether payment moved to QueuedToPayment status using "<ChequeNo>" and "<Payer_Account>" in cheque data entry list menu
    And user enables Cheque_Outward_Payment_Creation_Server and checks whether Cheque data entry gets completed using "<ChequeNo>" and "<Payer Account>"
    Given user validates whether payment moved to Duplicate status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user goes to Duplicate menu use the filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" and click on Allow duplicate button and then clicks on confirm button
    And user goes to approve menu uses the filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" and approves the payment
    Then user validates whether payment moved to QueuedToAccountVerification status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user validates whether payment moved to QueuedToOutPresentCheque status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    And user validates whether payment moved to QueuedToOutFile status filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
 	  Then user checks the scheduler status
    Then user disable Cheque_Outward_Payment_Creation_Server in environment server
	  Then user To validates whether payment moved to PendingAck status filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
  
    Examples: 
      | valuedateperiod | Reference | SubRef | ChequeNo | Payer_Account |
      |                 | Cheque No | EQUAL  | 30000460 | 1376832300    |

  @TC_16_04_RepairOutward #working fine
  Scenario Outline: To test repair outward payment flow
    Given user checks whether payment moved to QueuedToPayment status using "<ChequeNo>" and "<Payer_Account>" in cheque data entry list menu
    And  user enables Cheque_Outward_Payment_Creation_Server and checks whether Cheque data entry gets completed using "<ChequeNo>" and "<Payer Account>"
    Then user validates whether payment moved to Repair status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user goes to Repair menu uses the filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" repair the payment "<Date>" click on Ok button and click on confirm button
    And user goes to approve menu uses the filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" and approves the payment
    Then user validates whether payment moved to QueuedToAccountVerification status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user validates whether payment moved to QueuedToOutPresentCheque status using filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    And user validates whether payment moved to QueuedToOutFile status filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
 	  Then user checks the scheduler status
    Then user disable Cheque_Outward_Payment_Creation_Server in environment server
	  Then user To validates whether payment moved to PendingAck status filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
  
    Examples: 
      | valuedateperiod | Reference | SubRef | ChequeNo | Payer_Account | Date     |
      |                 | Cheque No | EQUAL  |30004011  |  1376832300   | 08/02/21 |
      
    
    @TC_16_01_OutwardPaymentPDCDeleteflow 
    Scenario Outline: Outward Payment PDC Delete flow
    Then To check whether Cheque data entry move to QueuedToPayment for outward using "<ChequeNo>","<AccountNumber>"
    Then To check whether Cheque data entry gets Completed for outward using "<ChequeNo>","<AccountNumber>"
    Then disable for outward Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to Future status for outward using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Approve status for outward from PDC>>Delete using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to QueuedToDeletePDC status for outward using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Delete status for outward using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    
    Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |
      |                 | ACH CHEQUE SEND | Cheque No | EQUAL  | 30001460 |               |
      
    @TC_16_02_OutwardPaymentPDCModifyflow
    Scenario Outline: Outward Payment PDC Modify flow
    Then To check whether Cheque data entry move to QueuedToPayment for outward using "<ChequeNo>","<AccountNumber>"
    Then To check whether Cheque data entry gets Completed for outward using "<ChequeNo>","<AccountNumber>"
    Then disable for outward Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to Future status for outward using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Approve status for outward from PDC>>Delete using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to QueuedToDeletePDC status for outward using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment move to Delete status for outward using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment OutMod for move to Approve status from PDC>>Modify using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>","<PayerBIC>"
    Then check whether payment OutMod for move to QueuedToAddPDC status using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then check whether payment OutMod move to Future using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then to run EOD and move payment to QueuedToAccountVerification status
    Then user validates whether payment moved to QueuedToAccountVerification status using filter "<ValueDateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user validate whether payment move to QueuedToOutPresentCheque status using filter "<ValueDateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user validate whether payment move to QueuedToOutFile status filter "<ValueDateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user To validate whether payment move to PendingAck status on enabling EGPS_CHEQUE_OUTFILE scheduler using filter "<ValueDateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user disable Cheque_Outward_Payment_Creation_Server in enviornment server
    
     Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |PayerBIC   |
      |                 | ACH CHEQUE SEND | Cheque No | EQUAL  | 30001461 |               |HBHOPS20412|	
      
      
    @TC_16_03_NormalPDCOutward
     Scenario Outline: Outward Payment PDC Normal flow   
    Then To check whether Cheque data entry move to QueuedToPayment for outward using "<ChequeNo>","<AccountNumber>"
    Then To check whether Cheque data entry gets Completed for outward using "<ChequeNo>","<AccountNumber>"
    Then disable for outward Cheque_Outward_Payment_Creation_Server
    Then check whether payment move to Future status for outward using "<ValueDateperiod>","<PaymentType>","<Reference>","<SubRef>","<ChequeNo>","<AccountNumber>"
    Then to run EOD and move payment to QueuedToAccountVerification status
    Then user validates whether payment moved to QueuedToAccountVerification status using filter "<ValueDateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    Then user validates whether payment moved to QueuedToOutPresentCheque status using filter "<ValueDateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
    And  user validates whether payment moved to QueuedToOutFile status filter "<ValueDateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
   	Then user checks the scheduler status
   	Then user disable Cheque_Outward_Payment_Creation_Server in environment server
	  Then user To validates whether payment moved to PendingAck status filter "<valuedateperiod>","<Reference>","<SubRef>","<ChequeNo>" in payment list menu
  	
  	Examples: 
      | ValueDateperiod | PaymentType     | Reference | SubRef | ChequeNo | AccountNumber |PayerBIC   |
      |                 | ACH CHEQUE SEND | Cheque No | EQUAL  | 30001462 |               |HBHOPS20412|
   
  
      
   
  