unit Pattern;

interface

uses
  SysUtils, StrUtils;

type

  TContext = class
  public
    FInput: string;
    FOutput: integer;
    constructor Create(input: string);
  end;

  TExpression = class
  public
    procedure Interpret(context: TContext);
    function One(): string; virtual; abstract;
    function Four(): string; virtual; abstract;
    function Five(): string; virtual; abstract;
    function Nine(): string; virtual; abstract;
    function Multiplier(): integer; virtual; abstract;
  end;

  TTousandExpression = class(TExpression)
    function One(): string; override;
    function Four(): string; override;
    function Five(): string; override;
    function Nine(): string; override;
    function Multiplier(): integer; override;
  end;

  THundredExpression = class(TExpression)
    function One(): string; override;
    function Four(): string; override;
    function Five(): string; override;
    function Nine(): string; override;
    function Multiplier(): integer; override;
  end;

  TTenExpression = class(TExpression)
    function One(): string; override;
    function Four(): string; override;
    function Five(): string; override;
    function Nine(): string; override;
    function Multiplier(): integer; override;
  end;

  TOneExpression = class(TExpression)
    function One(): string; override;
    function Four(): string; override;
    function Five(): string; override;
    function Nine(): string; override;
    function Multiplier(): integer; override;
  end;

implementation

{ TExpression }

procedure TExpression.Interpret(context: TContext);
var
  start2chars: string;
begin
  if (Length(context.FInput) = 0) then
    exit;

  start2chars := Copy(context.FInput, 0, 2);

  if (LeftStr(context.FInput,1) = Nine) or (start2chars = Nine) then begin
    context.FOutput := context.FOutput + (9 * Multiplier);
    context.FInput := Copy(context.FInput, 3, Length(context.FInput) - 1);
  end
  else if (LeftStr(context.FInput,1) = Four) or (start2chars = Four) then begin
    context.FOutput := context.FOutput + (4 * Multiplier);
    context.FInput := Copy(context.FInput, 3, Length(context.FInput) - 1);
  end
  else if (LeftStr(context.FInput,1) = Five) or (start2chars = Five) then begin
    context.FOutput := context.FOutput + (5 * Multiplier);
    context.FInput := Copy(context.FInput, 2, Length(context.FInput) - 1);
  end;

  while (LeftStr(context.FInput,1) = One) or (start2chars = One) do begin
    context.FOutput := context.FOutput + (1 * Multiplier);
    context.FInput := Copy(context.FInput, 2, Length(context.FInput) - 1);
  end;
end;

{ TTousandExpression }

function TTousandExpression.Five: string;
begin
  Result := '';
end;

function TTousandExpression.Four: string;
begin
  Result := '';
end;

function TTousandExpression.Multiplier: integer;
begin
  Result := 1000;
end;

function TTousandExpression.Nine: string;
begin
  Result := '';
end;

function TTousandExpression.One: string;
begin
  Result := 'M';
end;

{ THundredExpression }

function THundredExpression.Five: string;
begin
  Result := 'D';
end;

function THundredExpression.Four: string;
begin
  Result := 'CD';
end;

function THundredExpression.Multiplier: integer;
begin
  Result := 100;
end;

function THundredExpression.Nine: string;
begin
  Result := 'CM';
end;

function THundredExpression.One: string;
begin
  Result := 'C';
end;

{ TTenExpression }

function TTenExpression.Five: string;
begin
  Result := 'L';
end;

function TTenExpression.Four: string;
begin
  Result := 'XL';
end;

function TTenExpression.Multiplier: integer;
begin
  Result := 10;
end;

function TTenExpression.Nine: string;
begin
  Result := 'XC';
end;

function TTenExpression.One: string;
begin
  Result := 'X';
end;

{ TOneExpression }

function TOneExpression.Five: string;
begin
  Result := 'V';
end;

function TOneExpression.Four: string;
begin
  Result := 'IV';
end;

function TOneExpression.Multiplier: integer;
begin
  Result := 1;
end;

function TOneExpression.Nine: string;
begin
  Result := 'IX';
end;

function TOneExpression.One: string;
begin
  Result := 'I';
end;

{ TContext }

constructor TContext.Create(input: string);
begin
  inherited Create;
  FInput := input;
end;

end.
