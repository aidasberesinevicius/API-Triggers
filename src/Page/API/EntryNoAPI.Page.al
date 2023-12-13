page 50104 "Entry API"
{
    PageType = API;
    Caption = 'Header API';
    APIPublisher = 'companial';
    APIGroup = 'triggers';
    APIVersion = 'beta';
    EntityName = 'entry';
    EntitySetName = 'entries';
    SourceTable = Entry;
    DelayedInsert = true;
    Extensible = false;
    ODataKeyFields = SystemId;

    layout
    {
        area(content)
        {
            repeater(General)
            {

                field(systemId; Rec.SystemId) { }
                field(entryNumber; EntryNumber) { }
                field(setEntryNo; SetEntryNo) { }
            }
        }
    }

    var
        SetEntryNo: Boolean;
        EntryNumber: Integer;

    trigger OnOpenPage()
    begin
        EntryNumber := Rec.InsertEntry();
    end;
}