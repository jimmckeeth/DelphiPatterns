unit Behavioral.Iterator.Example;

interface

procedure Example;

implementation

uses
  Behavioral.Iterator.Pattern,
  SysUtils;

procedure Example;
begin
  var list := TCustomList.Create;
  try
    for var i := 0 to 9 do begin
      list.Add(TCustomObject.Create('' + IntToStr(i)));
    end;
    for var obj in list do begin
      obj.WriteName;
    end;
    ReadLn;
  finally
    for var obj in list do begin
      obj.Free;
    end;
    list.Free;
  end;
end;

end.
