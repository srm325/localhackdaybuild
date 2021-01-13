program test;

var
  nr:Integer;
  mystrings:array [0..100] of string;
  i:Integer;
  tmp,tmp2,tmp3:String;
begin
  WriteLn('Please input number of strings');
  ReadLn(nr); //max 100 strings
  for i:=0 to nr - 1 do
  begin
      str(i,tmp3);
      Write('String['+tmp3+'] = ');ReadLn(mystrings[i]);
  end;

  // Now we sort the strings

  i:=0;
  repeat
    tmp:=UpperCase(mystrings[i]);
    tmp2:=UpperCase(mystrings[i+1]);
    if tmp[1]>tmp2[1] then
    begin
        tmp:=mystrings[i];
        mystrings[i]:=mystrings[i+1];
        mystrings[i+1]:=tmp;
        i:=-1;
    end;
    Inc(i);
  until i=nr -1 ;

  //Display strings sorted
  for i:=0 to nr - 1 do
  begin
      WriteLn(mystrings[i]);
  end;
  Readln;
end.