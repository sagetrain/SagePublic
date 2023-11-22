# ##############################################################################
# Script      : ATP_GESSOH_WOSOHALL
# Date        : 11/22/23 15:49:15
# Author      : Administrateur système (ADMIN)
# Comment     : Order management (Sales order)
# Version     : 2.9.03
# ##############################################################################

# #############################################################################
@SageX3AutomatedTestPlatform
Feature: FEATURE ATP_GESSOH_WOSOHALL
# #############################################################################

    # #############################################################################
    Scenario: Connection
    # #############################################################################
    
        # Connection
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        And the user changes the main language code to "en-US"
        When the user selects the "param:endPointName1" entry on endpoint panel
        Then the "param:endPointName1" endpoint is selected
        
    # #############################################################################
    Scenario: Object Orders
    # #############################################################################
    
        # Function : Order management (GESSOH)
        # Index used by the object : SOHNUM
        # Menus/Buttons
            # Save
            # Create
            # Delete
            # Cancel
            # New
            # First
            # Last
            # Back
            # Next
            # Select
            # Print
            # List
            # Enclosures
            # Comment
            # Properties
            # Close
            # 
                # Text (Menu)
                    # Header text (Line)
                    # Footer text (Line)
                # Address (Menu)
                    # Order address (Line)
                    # Billing address (Line)
                    # Delivery address (Line)
                # EDI (Menu)
                    # History (Line)
                    # Issuing (Line)
                # Option (Menu)
                    # Customs information (Line)
                    # Back-to-back order (Line)
                    # Work order (Line)
                    # Prepayments (Line)
                    # Status (Line)
                    # Transaction (Line)
                    # Valuation (Line)
                    # Journal traceability (Line)
                    # View routes (Line)
                # Functions (Menu)
                    # Credit card processing (Line)
            # Allocation (Button)
            # Preparation (Button)
            # Delivery (Button)
            # Invoice (Button)
            # Proforma (Button)
            # Close (Button)
            # Revision management (Button)
            # Electronic signature (Button)
        
    # #############################################################################
    Scenario: Creation Object Orders
    # #############################################################################
    
        Given the user opens the "GESSOH" function
        
        # Transaction
        When the user selects the data table in the popup
        Then the user selects cell with text: "ALL Full entry" and column header: ""
        And the user clicks on the selected cell
        
        Then the "Sales order ALL : Full entry" screen is displayed
        
        
    # #############################################################################
    Scenario: New Order management (Sales order ALL : Full entry)
    # #############################################################################
    
        # Button New
        When the user clicks the "New" main action button on the right panel
        And the user waits 1 seconds
        
        
    # #############################################################################
    Scenario: Header (SOH0)
    # #############################################################################
    
        # #############################################################################
        # Header (Screen : SOH0)
        # #############################################################################
        
        # Field : SOH0_SALFCY (Screen : SOH0 / SALFCY) (Data type : FCY Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        Given the user selects the text field with X3 field name: "SOH0_SALFCY"
        When the user writes "NA023" to the selected text field
        Then the value of the selected text field is "NA023"
        
        # Field : SOH0_SOHTYP (Screen : SOH0 / SOHTYP) (Data type : TSO Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        Given the user selects the text field with X3 field name: "SOH0_SOHTYP"
        When the user writes "SON" to the selected text field
        Then the value of the selected text field is "SON"
        
        # Field : SOH0_ORDDAT (Screen : SOH0 / ORDDAT) (Data type : D Date None ) (Options : 1) (Date Format : Dz:MM[-]DD[-]YY) (!! Mandatory field !!)
        Given the user selects the date field with X3 field name: "SOH0_ORDDAT"
        When the user writes "11/21/23" to the selected date field
        Then the user hits tab
        Then the value of the selected date field is "11/21/23"
        
        # Field : SOH0_BPCORD (Screen : SOH0 / BPCORD) (Data type : BPC Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        Given the user selects the text field with X3 field name: "SOH0_BPCORD"
        When the user writes "NA010" to the selected text field
        Then the value of the selected text field is "NA010"
        
        
    # #############################################################################
    Scenario: Tab Lines (WK2ALL4)
    # #############################################################################
    
        # #############################################################################
        # Tab : Lines (Screen : WK2ALL4)
        # #############################################################################
        
        And the user clicks the "Lines" tab selected by title
        
    # #############################################################################
    Scenario Outline: Table WK2ALL4_ARRAY_NBLIG
    # #############################################################################
    
        Then the user hits escape
        # Table : (Screen : WK2ALL4 / NBLIG) (Options : SKARID1) 
        Given the user selects the fixed data table for x3 field name: "WK2ALL4_ARRAY_NBLIG"
        
        # Field : WK2ALL4_ITMREF (Screen : WK2ALL4 / ITMREF) (Data type : ITV Alphanumeric None ) (Options : c) () (!! Mandatory field !!)
        When the user selects last fixed cell with X3 field name: "WK2ALL4_ITMREF"
        Then the user adds the text <ITMREF> in selected cell
        
        # Field : WK2ALL4_DSTOFCY (Screen : WK2ALL4 / DSTOFCY) (Data type : FCY Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        When the user selects last editable cell with X3 field name: "WK2ALL4_DSTOFCY"
        Then the user adds the text <DSTOFCY> in selected cell
        
        # Field : WK2ALL4_SAU (Screen : WK2ALL4 / SAU) (Data type : UOM Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        When the user selects last editable cell with X3 field name: "WK2ALL4_SAU"
        Then the user adds the text <SAU> in selected cell
        
        # Field : WK2ALL4_QTY (Screen : WK2ALL4 / QTY) (Data type : QTY Decimal None ) (Options : +) () (!! Mandatory field !!)
        When the user selects last editable cell with X3 field name: "WK2ALL4_QTY"
        Then the user adds the text <QTY> in selected cell
        
        # Field : WK2ALL4_SAUSTUCOE (Screen : WK2ALL4 / SAUSTUCOE) (Data type : COE Decimal None ) (Options : +) () (!! Mandatory field !!)
        When the user selects last editable cell with X3 field name: "WK2ALL4_SAUSTUCOE"
        Then the user adds the text <SAUSTUCOE> in selected cell
        
        # Field : WK2ALL4_VACITM1 (Screen : WK2ALL4 / VACITM1) (Data type : TVI Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        When the user selects last editable cell with X3 field name: "WK2ALL4_VACITM1"
        Then the user adds the text <VACITM1> in selected cell
        
        # Field : WK2ALL4_DBPAADD (Screen : WK2ALL4 / DBPAADD) (Data type : BPD Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        When the user selects last editable cell with X3 field name: "WK2ALL4_DBPAADD"
        Then the user adds the text <DBPAADD> in selected cell
        
        
        # Exit Table
        And the user hits enter
        
        Examples:
            | ITMREF              | DSTOFCY             | SAU                 | QTY                 | SAUSTUCOE           | VACITM1             | DBPAADD              |            
            | "[USV_ITMREF_1]"    | "[USV_DSTOFCY_1]"   | "[USV_SAU_1]"       | "[USV_QTY_1]"       | "[USV_SAUSTUCOE_1]" | "[USV_VACITM1_1]"   | "[USV_DBPAADD_1]"    |            
            | "[USV_ITMREF_2]"    | "[USV_DSTOFCY_2]"   | "[USV_SAU_2]"       | "[USV_QTY_2]"       | "[USV_SAUSTUCOE_2]" | "[USV_VACITM1_2]"   | "[USV_DBPAADD_2]"    |            
            
    # #############################################################################
    Scenario: End Scenario Outline
    # #############################################################################
    
        
        
    # #############################################################################
    Scenario: Create Order management (Sales order ALL : Full entry)
    # #############################################################################
    
        # Button Create
        When the user clicks the "Create" main action button on the right panel
        And the user waits 1 seconds
        
        Then a confirmation dialog appears with the message "Record has been created"
        
        
    # #############################################################################
    Scenario: Close page Order management (Sales order ALL : Full entry)
    # #############################################################################
    
        Then the user clicks the Close page action icon on the header panel
        
    # #############################################################################
    Scenario: Disconnection
    # #############################################################################
    
        # Disconnection
        And the user logs-out from the system
        
