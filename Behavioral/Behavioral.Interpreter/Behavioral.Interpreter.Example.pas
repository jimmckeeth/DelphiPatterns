unit Behavioral.Interpreter.Example;

interface

uses Behavioral.Interpreter.Pattern;

procedure Example;

implementation

uses SysUtils, Classes;

procedure Example;
begin
  var roman := 'MCMXXVIII';
  var context := TContext.Create(roman);
  var tree := TList.Create;
  try
    tree.Add(TTousandExpression.Create);
    tree.Add(THundredExpression.Create);
    tree.Add(TTenExpression.Create);
    tree.Add(TOneExpression.Create);

    for var i := 0 to tree.Count - 1 do begin
      TExpression(tree[i]).Interpret(context);
    end;

    WriteLn(Format('%s = %d',[roman, context.FOutput]));
  finally
    context.Free;
    for var i := 0 to tree.Count - 1 do begin
      TExpression(tree[i]).Free;
    end;
    tree.Free;
  end;

end;

end.
