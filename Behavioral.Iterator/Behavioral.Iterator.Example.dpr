program Behavioral.Iterator.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Behavioral.Iterator.Pattern in 'Behavioral.Iterator.Pattern.pas',
  Common in '..\Common.pas';

var
  list: TCustomList;
  obj: TCustomObject;
  i: integer;

begin
  try
    list := TCustomList.Create;
    try
      for i := 0 to 9 do begin
        list.Add(TCustomObject.Create('' + IntToStr(i)));
      end;
      for obj in list do begin
        obj.WriteName;
      end;
      ReadLn;
    finally
      for obj in list do begin
        obj.Free;
      end;
      list.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
