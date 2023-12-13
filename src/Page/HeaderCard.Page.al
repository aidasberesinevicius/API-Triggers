page 50103 "Header Card"
{
    ApplicationArea = All;
    Caption = 'Header Card';
    PageType = Card;
    SourceTable = Header;
    UsageCategory = None;
    Extensible = false;
    InsertAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Entry No. field.';
                    Visible = false;
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
            }
            part("Header SubPage"; Lines)
            {
                SubPageLink = "Entry No." = field("Entry No.");
                ApplicationArea = All;
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