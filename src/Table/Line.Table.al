table 50102 Line
{
    fields
    {
        field(1; "Entry No."; Integer)
        {
            Editable = false;

            trigger OnLookup()
            begin
                InsertLog('OnLookup', 'Entry No.');
            end;

            trigger OnValidate()
            begin
                InsertLog('OnValidate', 'Entry No.');
            end;
        }
        field(2; "Line No."; Integer)
        {
            Editable = false;
            AutoIncrement = true;

            trigger OnLookup()
            begin
                InsertLog('OnLookup', 'Line No.');
            end;

            trigger OnValidate()
            begin
                InsertLog('OnValidate', 'Line No.');
            end;
        }
        field(20; "Code Value"; Code[20])
        {
            trigger OnLookup()
            begin
                InsertLog('OnLookup', 'Code Value');
            end;

            trigger OnValidate()
            begin
                InsertLog('OnValidate', 'Code Value');
            end;
        }
        field(30; "Text Value"; Text[250])
        {
            trigger OnLookup()
            begin
                InsertLog('OnLookup', 'Text Value');
            end;

            trigger OnValidate()
            begin
                InsertLog('OnValidate', 'Text Value');
            end;
        }
    }

    keys
    {
        key(PK; "Entry No.", "Line No.") { Clustered = true; }
    }

    trigger OnDelete()
    begin
        InsertLog('OnDelete');
    end;

    trigger OnInsert()
    begin
        InsertLog('OnInsert');
    end;

    trigger OnModify()
    begin
        InsertLog('OnModify');
    end;

    trigger OnRename()
    begin
        InsertLog('OnRename');
    end;

    local procedure InsertLog(TriggerName: Text[2048])
    var
        Log: Record Log;
    begin
        Log.InsertLog(TriggerName, 'Table', 'Line', 'Object', '');
    end;

    local procedure InsertLog(TriggerName: Text[2048]; FieldName: Text)
    var
        Log: Record Log;
    begin
        Log.InsertLog(TriggerName, 'Table', 'Line', 'Field', FieldName);
    end;
}