var
  Crypt: TDCP_rijndael;
  PlainText: string;
  EncText: string;
  DecText: string;
  Pwd: string;
  Msg: string;
begin
  PlainText := 'Example Text';
  Pwd := 'MyPassword';
  Crypt := TDCP_rijndael.Create(nil);
  try
    // encrypt string using password
    Crypt.InitStr(Pwd, TDCP_sha256);
    EncText := Crypt.EncryptString(PlainText);
 
    // now decrypt it to show it works
    Crypt.InitStr(Pwd, TDCP_sha256);
    DecText := Crypt.DecryptString(EncText);
 
    // display it all
    Msg := 'Plain Text: ' + PlainText;
    Msg := Msg + LineEnding + 'Encrypted: ' + EncText;
    Msg := Msg + LineEnding + 'Decrypted: ' + DecText;
    ShowMessage(Msg);
  finally
    FreeAndNil(Crypt);
  end;
 