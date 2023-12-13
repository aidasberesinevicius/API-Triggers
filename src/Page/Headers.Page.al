page 50102 Headers
{
    ApplicationArea = All;
    Caption = 'Headers';
    PageType = List;
    SourceTable = Header;
    CardPageId = "Header Card";
    UsageCategory = Lists;
    Extensible = false;
    InsertAllowed = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.';
                }
                field("Boolean Value"; Rec."Boolean Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Boolean Value field.';
                }
                field("Date Value"; Rec."Date Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Value field.';
                }
                field("Temporary Record"; Rec."Temporary Record")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Temporary Record field.';
                }
            }
        }
    }

    actions
    {

        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Process';

                actionref(Logs_Promoted; Logs) { }
            }
        }
        area(processing)
        {
            action(Logs)
            {
                ApplicationArea = All;
                Caption = 'Logs';
                Image = LogSetup;
                RunObject = page Logs;
                RunPageLink = "Entry No." = field("Entry No.");
                ToolTip = 'Executes the Logs action.';
            }
        }
    }
}