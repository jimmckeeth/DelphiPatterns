unit Pattern;

interface

uses SysUtils, Classes;

type

  TCalculator = class
  private
    FCurr: Double;
  public
    constructor Create;
    procedure Operation(oper: char; operand: integer);
  end;

  ICommand = interface
  ['{19AEB63B-144F-46E7-A452-64713080D7A2}']
    procedure Execute();
    procedure UnExecute();
  end;

  TCalculatorCommand = class(TInterfacedObject, ICommand)
  private
    FOperator: char;
    FOperand: integer;
    FCalculator: TCalculator;
    function Undo(oper: char): char;
  public
    constructor Create(calc: TCalculator; oper: char; operand: integer);
    procedure Execute();
    procedure UnExecute();
  end;

  TUser = class
  private
    FCalculator: TCalculator;
    FCommands: TInterfaceList;
    FCurrent: integer;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Redo(levels: integer);
    procedure Undo(levels: integer);
    procedure Compute(oper: char; operand: integer);
  end;

implementation

{ TCalculator }

constructor TCalculator.Create;
begin
  inherited;
  FCurr := 0;
end;

procedure TCalculator.Operation(oper: char; operand: integer);
begin
  case oper of
    '+': FCurr := FCurr + operand;
    '-': FCurr := FCurr - operand;
    '*': FCurr := FCurr * operand;
    '/': FCurr := FCurr / operand;
  end;
  WriteLn(Format('Current Value = %f (following %s, %d)', [FCurr, oper, operand]));
end;

{ TCalculatorCommand }

constructor TCalculatorCommand.Create(calc: TCalculator; oper: char;
  operand: integer);
begin
  FCalculator := calc;
  FOperator := oper;
  FOperand := operand;
end;

procedure TCalculatorCommand.Execute;
begin
  FCalculator.Operation(FOperator, FOperand);
end;

function TCalculatorCommand.Undo(oper: char): char;
begin
  case oper of
    '+': Result := '-';
    '-': Result := '+';
    '*': Result := '/';
    '/': Result := '*';
    else
      raise Exception.Create(Format('%s is not a valid operator', [oper]));
  end;
end;

procedure TCalculatorCommand.UnExecute;
begin
  FCalculator.Operation(Undo(FOperator), FOperand);
end;

{ TUser }

constructor TUser.Create;
begin
  FCalculator := TCalculator.Create;
  FCommands := TInterfaceList.Create;
  FCurrent := 0;
end;

destructor TUser.Destroy;
begin
  FCalculator.Free;
  FCommands.Free;
  inherited;
end;

procedure TUser.Redo(levels: integer);
var
  i: integer;
  command: ICommand;
begin
  WriteLn(#10 + Format('----- Redo %d levels ', [levels]));
  for i := 0 to levels - 1 do begin
    if FCurrent < FCommands.Count - 1 then begin
      FCurrent := FCurrent + 1;
      command := FCommands[FCurrent] as ICommand;
      command.Execute;
    end;
  end;
end;

procedure TUser.Undo(levels: integer);
var
  i: integer;
  command: ICommand;
begin
  WriteLn(#10 + Format('----- Undo %d levels ', [levels]));
  for i := 0 to levels - 1 do begin
    if FCurrent > 0 then begin
      FCurrent := FCurrent - 1;
      command := FCommands[FCurrent] as ICommand;
      command.UnExecute;
    end;
  end;
end;

procedure TUser.Compute(oper: char; operand: integer);
var
  command: ICommand;
begin
  command := TCalculatorCommand.Create(FCalculator, oper, operand);
  command.Execute;
  FCommands.Add(command);
  FCurrent := FCurrent + 1;
end;

end.
