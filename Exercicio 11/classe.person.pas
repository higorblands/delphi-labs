unit classe.person;
interface
uses system.sysutils;
type
  TPerson = Class
  public
    Name: String;
    Birthday: String;
    function Age: Integer;
    function Check: boolean; virtual;
  private
  End;
  TClient = class(TPerson)
  protected
  end;
implementation
function TPerson.Age: Integer;
begin
  Result := Trunc((now - StrToDate(Birthday)) / 365.25)
end;
function TPerson.Check: boolean;
begin
  if (name <> '') AND (length(name) <= 50) AND (IntToStr(Age) <> '') AND
    (0 < Age) AND (Age < 130) then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;
end.
