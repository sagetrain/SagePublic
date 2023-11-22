# ##############################################################################
# Script      : ATP_GESSOH_WOSOHALL
# Date        : 11/21/23 18:21:21
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
        When the user selects the "param:endPointName1" entry on endpoint panel
        Then the "param:endPointName1" endpoint is selected

        Given the user opens the "GESSOH" function

        # Transaction
        When the user selects the data table in the popup
        Then the user selects cell with text: "ALL Full entry" and column header: ""
        And the user clicks on the selected cell

        Then the "Sales order ALL : Full entry" screen is displayed

        # Button New
        When the user clicks the "New" main action button on the right panel
        And the user waits 1 seconds

        Given the user selects the text field with name: "Sales site"
        When the user writes "NA023" to the selected text field
        Then the value of the selected text field is "NA023"

        # Field : Type (Screen : SOH0 / SOHTYP) (Data type : TSO Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        Given the user selects the text field with name: "Type"
        When the user writes "SON" to the selected text field
        Then the value of the selected text field is "SON"

        # Field : Date (Screen : SOH0 / ORDDAT) (Data type : D Date None ) (Options : 1) (Date Format : Dz:MM[-]DD[-]YY) (!! Mandatory field !!)
        Given the user selects the date field with name: "Date"
        When the user writes "11/21/23" to the selected date field
        Then the user hits tab
        Then the value of the selected date field is "11/21/23"

        # Field : Sold-to (Screen : SOH0 / BPCORD) (Data type : BPC Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        Given the user selects the text field with name: "Sold-to"
        When the user writes "NA010" to the selected text field
        Then the value of the selected text field is "NA010"

        # Field : Sold-to (Screen : SOH0 / BPCORD) (Data type : BPC Alphanumeric None ) (Options : ) () (!! Mandatory field !!)
        Given the user selects the text field with name: "Bill-to customer"
        When the user writes "NA010" to the selected text field
        Then the value of the selected text field is "NA010"
        And the user hits tab

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

        # Field : Product (Screen : WK2ALL4 / ITMREF) (Data type : ITV Alphanumeric None ) (Options : c) () (!! Mandatory field !!)
        When the user selects last fixed cell with header: "Product"
        Then the user adds the text <ITMREF> in selected cell

        # Field : Ordered qty. (Screen : WK2ALL4 / QTY) (Data type : QTY Decimal None ) (Options : +) () (!! Mandatory field !!)
        When the user selects last editable cell with column header: "Ordered qty."
        Then the user adds the text <QTY> in selected cell

        # Exit Table
        And the user hits enter

        Examples:
            | ITMREF   | QTY |
            | "FIN501" | "1" |
            | "FIN502" | "1" |
    # #############################################################################
    Scenario: End Scenario Outline
        # #############################################################################


        # Button Create
        When the user clicks the "Create" main action button on the right panel
        And the user waits 1 seconds

        Then a confirmation dialog appears with the message "Record has been created"

        Then the user clicks the Close page action icon on the header panel

        # Disconnection
        And the user logs-out from the system

