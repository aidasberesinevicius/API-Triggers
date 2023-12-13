page 50106 "Line API"
{
    PageType = API;
    Caption = 'Line API';
    APIPublisher = 'companial';
    APIGroup = 'triggers';
    APIVersion = 'beta';
    EntityName = 'line';
    EntitySetName = 'lines';
    SourceTable = Line;
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
                field(codeValue; Rec."Code Value")
                {
                    trigger OnAfterLookup(Selected: RecordRef)
                    begin
                        InsertLog('OnAfterLookup', 'codeValue');
                    end;

                    trigger OnAssistEdit()
                    begin
                        InsertLog('OnAssistEdit', 'codeValue');
                    end;

                    trigger OnControlAddIn(Index: Integer; Data: Text)
                    begin
                        InsertLog('OnControlAddIn', 'codeValue');
                    end;

                    trigger OnDrillDown()
                    begin
                        InsertLog('OnDrillDown', 'codeValue');
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        InsertLog('OnLookup', 'codeValue');
                    end;

                    trigger OnValidate()
                    begin
                        InsertLog('OnValidate', 'codeValue');
                    end;
                }
                field(textValue; Rec."Text Value")
                {
                    trigger OnAfterLookup(Selected: RecordRef)
                    begin
                        InsertLog('OnAfterLookup', 'textValue');
                    end;

                    trigger OnAssistEdit()
                    begin
                        InsertLog('OnAssistEdit', 'textValue');
                    end;

                    trigger OnControlAddIn(Index: Integer; Data: Text)
                    begin
                        InsertLog('OnControlAddIn', 'textValue');
                    end;

                    trigger OnDrillDown()
                    begin
                        InsertLog('OnDrillDown', 'textValue');
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        InsertLog('OnLookup', 'textValue');
                    end;

                    trigger OnValidate()
                    begin
                        InsertLog('OnValidate', 'textValue');
                    end;
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
        Log.InsertLog(TriggerName, 'Page', 'Line API', 'Object', '');
    end;

    local procedure InsertLog(TriggerName: Text[2048]; FieldName: Text)
    var
        Log: Record Log;
    begin
        Log.InsertLog(TriggerName, 'Page', 'Line API', 'Field', FieldName);
    end;
}