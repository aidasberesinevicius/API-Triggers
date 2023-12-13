table 50100 Entry
{
    fields
    {
        field(1; "Entry No."; Integer)
        {
            Editable = false;
            AutoIncrement = true;
        }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
    }

    internal procedure InsertEntry(): Integer
    begin
        Init();
        Insert(true);
        exit("Entry No.")
    end;
}