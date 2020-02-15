unit DrawRules;

interface

uses graphabc;


type
  DrawData = class
  public
    color_b_off:color;
    color_b_on:color;
    color_l_off:color;
    color_l_on:color;
    color_t_off:color;
    color_t_on:color;
    
    function getColorB(a:boolean):color;
    function getColorL(a:boolean):color;
    function getColorT(a:boolean):color;
    procedure choose(a:boolean);
    
    constructor Create(a:integer);
  end;



var commonData : DrawData := new DrawData(0);

implementation

function DrawData.getColorB(a:boolean):color;
begin
  if a then result:=self.color_b_on
  else result:=self.color_b_off;
end;

function DrawData.getColorL(a:boolean):color;
begin
  if a then result:=self.color_l_on
  else result:=self.color_l_off;
end;

function DrawData.getColorT(a:boolean):color;
begin
  if a then result:=self.color_t_on
  else result:=self.color_t_off;
end;

procedure DrawData.choose(a:boolean);
begin
  pen.Color := colors.getColorL(a);
  brush.Color := colors.getColorB(a);
  font.Color := colors.getColorT(a);  
end;


constructor DrawData.Create(a:integer);
begin
  color_b_off := clBlack;
  color_b_on := clBlue;
  color_l_off := clTransparent;
  color_l_on := clBlack;
  color_t_off := clWhite;
  color_t_on := clOrange;
end;



end.