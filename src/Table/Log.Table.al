table 50103 Log
{
    fields
    {
        field(1; "Entry No."; Integer)
        {
            Editable = false;
        }
        field(2; "Line No."; Integer)
        {
            Editable = false;
        }
        field(20; "Trigger Name"; Text[2048])
        {
        }
        field(30; "Object Type"; Text[2048])
        {
        }
        field(40; "Object Name"; Text[2048])
        {
        }
        field(50; "Trigger Level"; Text[2048])
        {
        }
        field(60; "Field Name"; Text[2048])
        {
        }
    }

    keys
    {
        key(PK; "Entry No.", "Line No.") { Clustered = true; }
    }

    internal procedure InsertLog(
        TriggerName: Text[2048];
        ObjectType: Text;
        ObjectName: Text;
        TriggerLevel: Text;
        FieldName: Text
    )
    begin
        Init();
        Validate("Entry No.", GetEntryNo());
        Validate("Line No.", GetLineNo());
        Validate("Trigger Name", TriggerName);
        Validate("Object Type", ObjectType);
        Validate("Object Name", ObjectName);
        Validate("Trigger Level", TriggerLevel);
        Validate("Field Name", FieldName);
        Insert(true);
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

    local procedure GetLineNo() LineNo: Integer;
    var
        Log: Record Log;
    begin
        Log.SetRange("Entry No.", Rec."Entry No.");
        if Log.FindLast() then
            LineNo := Log."Line No." + 1
        else
            LineNo := 1;
    end;
}