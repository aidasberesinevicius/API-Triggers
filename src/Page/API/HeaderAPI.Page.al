page 50105 "Header API"
{
    PageType = API;
    Caption = 'Header API';
    APIPublisher = 'companial';
    APIGroup = 'triggers';
    APIVersion = 'beta';
    EntityName = 'header';
    EntitySetName = 'headers';
    SourceTable = Header;
    DelayedInsert = true;
    Extensible = false;
    ODataKeyFields = SystemId;
    // SourceTableTemporary = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(systemId; Rec.SystemId)
                {
                    trigger OnAfterLookup(Selected: RecordRef)
                    begin
                        InsertLog('OnAfterLookup', 'systemId');
                    end;

                    trigger OnAssistEdit()
                    begin
                        InsertLog('OnAssistEdit', 'systemId');
                    end;

                    trigger OnControlAddIn(Index: Integer; Data: Text)
                    begin
                        InsertLog('OnControlAddIn', 'systemId');
                    end;

                    trigger OnDrillDown()
                    begin
                        InsertLog('OnDrillDown', 'systemId');
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        InsertLog('OnLookup', 'systemId');
                    end;

                    trigger OnValidate()
                    begin
                        InsertLog('OnValidate', 'systemId');
                    end;
                }
                field(entryNo; Rec."Entry No.")
                {
                    trigger OnAfterLookup(Selected: RecordRef)
                    begin
                        InsertLog('OnAfterLookup', 'entryNo');
                    end;

                    trigger OnAssistEdit()
                    begin
                        InsertLog('OnAssistEdit', 'entryNo');
                    end;

                    trigger OnControlAddIn(Index: Integer; Data: Text)
                    begin
                        InsertLog('OnControlAddIn', 'entryNo');
                    end;

                    trigger OnDrillDown()
                    begin
                        InsertLog('OnDrillDown', 'entryNo');
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        InsertLog('OnLookup', 'entryNo');
                    end;

                    trigger OnValidate()
                    begin
                        InsertLog('OnValidate', 'entryNo');
                    end;
                }
                field(booleanValue; Rec."Boolean Value")
                {
                    trigger OnAfterLookup(Selected: RecordRef)
                    begin
                        InsertLog('OnAfterLookup', 'booleanValue');
                    end;

                    trigger OnAssistEdit()
                    begin
                        InsertLog('OnAssistEdit', 'booleanValue');
                    end;

                    trigger OnControlAddIn(Index: Integer; Data: Text)
                    begin
                        InsertLog('OnControlAddIn', 'booleanValue');
                    end;

                    trigger OnDrillDown()
                    begin
                        InsertLog('OnDrillDown', 'booleanValue');
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        InsertLog('OnLookup', 'booleanValue');
                    end;

                    trigger OnValidate()
                    begin
                        InsertLog('OnValidate', 'booleanValue');
                    end;
                }
                field(dateValue; Rec."Date Value")
                {
                    trigger OnAfterLookup(Selected: RecordRef)
                    begin
                        InsertLog('OnAfterLookup', 'dateValue');
                    end;

                    trigger OnAssistEdit()
                    begin
                        InsertLog('OnAssistEdit', 'dateValue');
                    end;

                    trigger OnControlAddIn(Index: Integer; Data: Text)
                    begin
                        InsertLog('OnControlAddIn', 'dateValue');
                    end;

                    trigger OnDrillDown()
                    begin
                        InsertLog('OnDrillDown', 'dateValue');
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        InsertLog('OnLookup', 'dateValue');
                    end;

                    trigger OnValidate()
                    begin
                        InsertLog('OnValidate', 'dateValue');
                    end;
                }
                part(lines; "Line API")
                {
                    ApplicationArea = All;
                    Caption = 'Lines', Locked = true;
                    SubPageLink = "Entry No." = field("Entry No.");
                    EntityName = 'line';
                    EntitySetName = 'lines';
                }
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        InsertLog('OnAfterGetCurrRecord');
    end;

    trigger OnAfterGetRecord()
    begin
        InsertLog('OnAfterGetRecord');
    end;

    trigger OnClosePage()
    begin
        InsertLog('OnClosePage');
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        InsertLog('OnDeleteRecord');
    end;

    trigger OnFindRecord(Which: Text): Boolean
    begin
        InsertLog('OnFindRecord');
    end;

    trigger OnInit()
    begin
        InsertLog('OnInit');
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        InsertLog('OnInsertRecord');
    end;

    trigger OnModifyRecord(): Boolean
    begin
        InsertLog('OnModifyRecord');
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        InsertLog('OnNewRecord');

        if Rec.IsTemporary then
            Rec.CreateRecord(Rec."Boolean Value", Rec."Date Value");
    end;

    trigger OnNextRecord(Steps: Integer): Integer
    begin
        InsertLog('OnNextRecord');
    end;

    trigger OnOpenPage()
    begin
        InsertLog('OnOpenPage');
    end;

    trigger OnPageBackgroundTaskCompleted(TaskId: Integer; Results: Dictionary of [Text, Text])
    begin
        InsertLog('OnPageBackgroundTaskCompleted');
    end;

    trigger OnPageBackgroundTaskError(TaskId: Integer; ErrorCode: Text; ErrorText: Text; ErrorCallStack: Text; var IsHandled: Boolean)
    begin
        InsertLog('OnPageBackgroundTaskError');
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        InsertLog('OnQueryClosePage');
    end;

    local procedure InsertLog(TriggerName: Text[2048])
    var
        Log: Record Log;
    begin
        Log.InsertLog(TriggerName, 'Page', 'Header API', 'Object', '');
    end;

    local procedure InsertLog(TriggerName: Text[2048]; FieldName: Text)
    var
        Log: Record Log;
    begin
        Log.InsertLog(TriggerName, 'Page', 'Header API', 'Field', FieldName);
    end;
}