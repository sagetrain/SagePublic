# ##############################################################################
# Script      : ATP_GESSOH_WOSOHALL
# Date        : 11/22/23 17:17:48
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
    Scenario: Deletion Object Orders
        # #############################################################################

        Given the user opens the "GESSOH" function

        # Transaction
        When the user selects the data table in the popup
        Then the user selects cell with text: "ALL Full entry" and column header: ""
        And the user clicks on the selected cell

        Then the "Sales order ALL : Full entry" screen is displayed

        # Field : Number (Screen : SOH0 / SOHNUM) (Data type : VCR Alphanumeric None ) (Options : C) ()
        Given the user selects the text field with name: "Number"
        When the user writes "SONNA0230058" to the selected text field
        Then the value of the selected text field is "SONNA0230058"
        Then the user hits tab
    # #############################################################################
    Scenario: Delete Order management (Sales order ALL : Full entry)
        # #############################################################################

        # Button Delete
        When the user clicks the "Delete" main action button on the right panel
        And the user waits 1 seconds

        Then the "Code cancellation" screen is displayed
        Then the user clicks the "OK" main action button on the right panel

        # ==> OK
        # Given an alert box appears with the title "Information message"
        # Then the user clicks the "OK" opinion in the alert box

        # ==> KO
        Then an alert box appears
        Then the user clicks the "OK" option in the alert box

    # #############################################################################
    Scenario: Close page Order management (Sales order ALL : Full entry)
        # #############################################################################

        Then the user clicks the Close page action icon on the header panel

    # #############################################################################
    Scenario: Disconnection
        # #############################################################################

        # Disconnection
        And the user logs-out from the system

