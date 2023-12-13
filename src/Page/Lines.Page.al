page 50101 Lines
{
    ApplicationArea = All;
    Caption = 'Lines';
    PageType = ListPart;
    SourceTable = Line;
    UsageCategory = None;
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
                    Visible = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No. field.';
                    Visible = false;
                }
                field("Code Value"; Rec."Code Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code Value field.';
                }
                field("Text Value"; Rec."Text Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Text Value field.';
                }
            }
        }
    }
}