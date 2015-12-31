program Structural.Composite.Pattern;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Pattern in 'Pattern.pas';

var
  album, point, c: IComponent;

begin
  ReportMemoryLeaksOnShutDown := DebugHook <> 0;
  try
    try
      album := TComposite.Create('Album');
      point := album;

      //      AddSet Home
      c := TComposite.Create('Home');
      point.Add(c);
      point := c;
      //      AddPhoto Dinner.jpg
      c := TSingle.Create('Dinner.jpg');
      point.Add(c);
      //      AddSet Pets
      c := TComposite.Create('Pets');
      point.Add(c);
      point := c;
      //      AddPhoto Dog.jpg
      c := TSingle.Create('Dog.jpg');
      point.Add(c);
      //      AddPhoto Cat.jpg
      c := TSingle.Create('Cat.jpg');
      point.Add(c);
      //      Find Album
      c := TSingle.Create('Album');
      point := album.Find(c);
      //      AddSet Garden
      c := TComposite.Create('Garden');
      point.Add(c);
      point := c;
      //      AddPhoto Spring.jpg
      c := TSingle.Create('Spring.jpg');
      point.Add(c);
      //      AddPhoto Summer.jpg
      c := TSingle.Create('Summer.jpg');
      point.Add(c);
      //      AddPhoto Flowers.jpg
      c := TSingle.Create('Flowers.jpg');
      point.Add(c);
      //      AddPhoto Trees.jpg
      c := TSingle.Create('Trees.jpg');
      point.Add(c);
      //      Display
      WriteLn(album.Display(0));
      //      Find Pets
      c := TSingle.Create('Pets');
      point := album.Find(c);
      //      Find Garden
      c := TSingle.Create('Garden');
      point := album.Find(c);
      //      Remove Flowers.jpg
      c := TSingle.Create('Flowers.jpg');
      point.Remove(c);
      //      AddPhoto BetterFlowers.jpg
      c := TSingle.Create('BetterFlowers.jpg');
      point.Add(c);
      //      Display
      WriteLn(album.Display(0));
      //      Find Home
      c := TSingle.Create('Home');
      point := album.Find(c);
      //      Remove Pets
      c := TSingle.Create('Pets');
      point.Remove(c);
      //      Display
      WriteLn(album.Display(0));

      ReadLn;
    finally

    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
