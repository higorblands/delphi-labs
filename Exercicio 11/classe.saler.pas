unit classe.saler;

interface

uses classe.person,system.classes, system.SysUtils;

type

  TSaler = class(TPerson)
  public
    Percentage: real;
    SalerType: Char;
    function Check: boolean; override;
  private
  Commission : currency;
  TypeSaler : Char;

  end;

implementation

{ TSaler }

function TSaler.Check: boolean;
begin
  if inherited then
  begin
    if (Commission > 0) AND ((TypeSaler = 'i' ) OR (TypeSaler = 'e')) then
    begin
      result := True;
    end
    else
    begin
      result := False;
    end;
  end
  else
  begin
    result := False;
  end;
end;
end.
