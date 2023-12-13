page 50100 Logs
{
    ApplicationArea = All;
    Caption = 'Logs';
    PageType = List;
    SourceTable = Log;
    UsageCategory = None;
    Extensible = false;
    InsertAllowed = false;
    Editable = false;

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
                }
                field("Object Type"; Rec."Object Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Object Type field.';
                    StyleExpr = StyleVar;
                }
                field("Object Name"; Rec."Object Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Object Name field.';
                    StyleExpr = StyleVar;
                }
                field("Trigger Level"; Rec."Trigger Level")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trigger Level field.';
                }
                field("Field Name"; Rec."Field Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Field Name field.';
                }
                field("Trigger Name"; Rec."Trigger Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trigger Name field.';
                }
            }
        }
    }

    var
        StyleVar: Text;

    trigger OnAfterGetRecord()
    begin
        if Rec."Object Type" = 'Page' then
            StyleVar := 'Favorable'
        else
            StyleVar := 'Unfavorable';
    end;
}