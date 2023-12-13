table 50101 Header
{
    DataClassification = ToBeClassified;

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
        field(20; "Temporary Record"; Boolean) { }
        field(30; "Boolean Value"; Boolean)
        {
            trigger OnLookup()
            begin
                InsertLog('OnLookup', 'Boolean Value');
            end;

            trigger OnValidate()
            begin
                InsertLog('OnValidate', 'Boolean Value');
            end;
        }
        field(40; "Date Value"; Date)
        {
            trigger OnLookup()
            begin
                InsertLog('OnLookup', 'Date Value');
            end;

            trigger OnValidate()
            begin
                InsertLog('OnValidate', 'Date Value');
            end;
        }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
    }

    trigger OnDelete()
    var
        Line: Record Line;
        Log: Record Log;
    begin
        Line.SetRange("Entry No.", "Entry No.");
        if Line.FindSet() then
            Line.DeleteAll(true);


        Log.SetRange("Entry No.", "Entry No.");
        if Log.FindSet() then
            Log.DeleteAll(true);


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
        Log.InsertLog(TriggerName, 'Table', 'Header', 'Object', '');
    end;

    local procedure InsertLog(TriggerName: Text[2048]; FieldName: Text)
    var
        Log: Record Log;
    begin
        Log.InsertLog(TriggerName, 'Table', 'Header', 'Field', FieldName);
    end;

    internal procedure CreateRecord(
        BooleanValue: Boolean;
        DateValue: Date
    )
    var
        Header: Record Header;
    begin
        Header.Init();
        Header.Validate("Entry No.", GetEntryNo());
        Header.Validate("Temporary Record", true);
        Header.Insert();
    end;

    local procedure GetEntryNo() EntryNo: Integer
    var
        Entry: Record Entry;
    begin
        if Entry.FindLast() then
            EntryNo := Entry."Entry No."
        else
            EntryNo := 1;
    end;
}