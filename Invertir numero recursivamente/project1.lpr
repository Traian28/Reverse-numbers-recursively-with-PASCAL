program project1;

{$tp mode}{$X-}

uses
sysutils;

var num,pos,inv:integer;

function invertir (num:integer; var pos:integer):integer;

begin
     if (num div 10=0)
        then begin
               invertir:=num;
               pos:=1;
             end
        else begin
               invertir:=invertir (num div 10,pos)+((num mod 10)*pos)  ;
               pos:=pos*10;

             end;
end;

procedure invertir (num:integer; var inv,pos:integer);

begin
     if (num div 10=0)
        then begin
               inv:=num;
               pos:=1;
             end
        else begin
               invertir (num div 10,inv,pos);
               pos:=pos*10;
               inv:=num mod 10*pos+inv;
        end;
end;
begin
readln (num);
invertir(num,inv,pos);
writeln (invertir (num,pos));
readln;
end.
