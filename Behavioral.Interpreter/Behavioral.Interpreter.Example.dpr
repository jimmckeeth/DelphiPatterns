program Behavioral.Interpreter.Example;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Classes,
  Behavioral.Interpreter.Pattern in 'Behavioral.Interpreter.Pattern.pas',
  Common in '..\Common.pas';

var
  roman: string;
  context: TContext;
  tree: TList;
  i: integer;

begin
  try
    roman := 'MCMXXVIII';
    context := TContext.Create(roman);
    tree := TList.Create;
    try
      tree.Add(TTousandExpression.Create);
      tree.Add(THundredExpression.Create);
      tree.Add(TTenExpression.Create);
      tree.Add(TOneExpression.Create);

      for i := 0 to tree.Count - 1 do begin
        TExpression(tree[i]).Interpret(context);
      end;

      WriteLn(Format('%s = %d',[roman, context.FOutput]));
    finally
      context.Free;
      for I := 0 to tree.Count - 1 do begin
        TExpression(tree[i]).Free;
      end;
      tree.Free;
      ReadLn;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
