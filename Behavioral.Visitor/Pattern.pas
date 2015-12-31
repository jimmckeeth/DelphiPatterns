unit Pattern;

interface

uses
  Classes, SysUtils;

type

  IVisitor = interface;

  TEmployee = class
  public
    FName: string;
    FIncome: Double;
    FVacationDays: integer;
    constructor Create(nm: string; incm: Double; vacdays: integer);
    procedure Accept(visitor: IVisitor);
  end;

  IVisitor = interface
    procedure Visit(element: TEmployee);
  end;

  TIncomeVisitor = class(TInterfacedObject, IVisitor)
  public
    procedure Visit(element: TEmployee);
  end;

  TVacationVisitor = class(TInterfacedObject, IVisitor)
  public
    procedure Visit(element: TEmployee);
  end;

  TEmployees = class
  private
    FEmployees: TList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Attach(employee: TEmployee);
    procedure Detach(employee: TEmployee);
    procedure Accept(visitor: IVisitor);
  end;

  TClerk = class(TEmployee)
  public
    constructor Create;
  end;

  TDirector = class(TEmployee)
  public
    constructor Create;
  end;

  TPresident = class(TEmployee)
  public
    constructor Create;
  end;

implementation

{ TElement }

procedure TEmployee.Accept(visitor: IVisitor);
begin
  visitor.Visit(Self);
end;

constructor TEmployee.Create(nm: string; incm: Double; vacdays: integer);
begin
  FName := nm;
  FIncome := incm;
  FVacationDays := vacdays;
end;


{ TIncomeVisitor }

procedure TIncomeVisitor.Visit(element: TEmployee);
var
  employee: TEmployee;
begin
  employee := TEmployee(element);
  employee.FIncome := employee.FIncome * 1.10;
  WriteLn(Format('%s new income: %g',[employee.FName, employee.FIncome]));
end;

{ TVacationVisitor }

procedure TVacationVisitor.Visit(element: TEmployee);
var
  employee: TEmployee;
begin
  employee := TEmployee(element);
  employee.FVacationDays := employee.FVacationDays + 3;
  WriteLn(Format('%s new vacation days: %d',[employee.FName, employee.FVacationDays]));
end;

{ TEmployees }

procedure TEmployees.Accept(visitor: IVisitor);
var
  i: integer;
begin
  for i := 0 to FEmployees.Count - 1 do begin
    TEmployee(FEmployees[i]).Accept(visitor);
    WriteLn;
  end;
end;

procedure TEmployees.Attach(employee: TEmployee);
begin
  FEmployees.Add(employee);
end;

constructor TEmployees.Create;
begin
  inherited;
  FEmployees := TList.Create;
end;

destructor TEmployees.Destroy;
var
  i: integer;
begin
  for i := 0 to FEmployees.Count - 1 do  begin
    TEmployee(FEmployees[i]).Free;
  end;
  FEmployees.Free;
  inherited;
end;

procedure TEmployees.Detach(employee: TEmployee);
begin
  FEmployees.Remove(employee);
end;

{ TClerk }

constructor TClerk.Create;
begin
  inherited Create('Hank', 25000.0, 14);
end;

{ TDirector }

constructor TDirector.Create;
begin
  inherited Create('Elly', 35000.0, 16);
end;

{ TPresident }

constructor TPresident.Create;
begin
 inherited Create('Dick', 45000.0, 21);
end;

end.
