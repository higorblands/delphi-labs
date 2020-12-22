unit classe.client;
interface
uses system.sysutils, classe.person;
type
  TClient = class(TPerson)
  public
    function Check: boolean; override;
  private
    dayPayment: Integer;
    Adress: String;
  end;
implementation
{ TClient }
function TClient.Check: boolean;
begin
  if inherited then
  begin
    if (IntToStr(dayPayment) <> '') AND (dayPayment >= 1) AND (dayPayment <= 31)
      AND (Adress <> '') AND (length(Adress) <= 200) then
    begin
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  end
  else
  begin
    Result := False;
  end;
end;
end.
