unit BASE64;

interface

{.DEFINE SpeedDecode} 

{$IFNDEF SpeedDecode} 
  {$DEFINE ValidityCheck} 
{$ENDIF} 


uses SysUtils; 

  // codiert einen String in die zugeh?rige Base64-Darstellung 
  function EncodeBase64(const InText: AnsiString): AnsiString; overload;
  // decodiert die Base64-Darstellung eines Strings in den zugeh?rigen String 
  function DecodeBase64(const InText: AnsiString): AnsiString; overload;

  // bestimmt die Gr??e der Base64-Darstellung 
  function CalcEncodedSize(InSize: Cardinal): Cardinal; 
  // bestimmt die Gr??e der bin?ren Darstellung 
  function CalcDecodedSize(const InBuffer; InSize: Cardinal): Cardinal; 

  // codiert einen Buffer in die zugeh?rige Base64-Darstellung 
  procedure Base64Encode(const InBuffer; InSize: Cardinal; var OutBuffer); overload; register; 
  // decodiert die Base64-Darstellung in einen Buffer 
  {$IFDEF SpeedDecode} 
    procedure Base64Decode(const InBuffer; InSize: Cardinal; var OutBuffer); overload; register; 
  {$ENDIF} 
  {$IFDEF ValidityCheck} 
    function Base64Decode(const InBuffer; InSize: Cardinal; var OutBuffer): Boolean; overload; register; 
  {$ENDIF} 

  // codiert einen String in die zugeh?rige Base64-Darstellung 
  procedure Base64Encode(const InText: AnsiString; var OutText: AnsiString); overload; 
  // decodiert die Base64-Darstellung eines Strings in den zugeh?rigen String 
  procedure Base64Decode(const InText: AnsiString; var OutText: AnsiString); overload; 


implementation 

const 
  cBase64Codec: array[0..63] of AnsiChar = 
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'; 
  Base64Filler = '='; 

function EncodeBase64(const InText: string): string; overload;
begin 
  Base64Encode(InText, Result); 
end; 

function DecodeBase64(const InText: string): string; overload;
begin 
  Base64Decode(InText, Result); 
end; 

function CalcEncodedSize(InSize: Cardinal): Cardinal; 
begin 
  // no buffers passed along, calculate outbuffer size needed 
  Result := (InSize div 3) shl 2; 
  if ((InSize mod 3) > 0) 
  then Inc(Result, 4); 
end; 

function CalcDecodedSize(const InBuffer; InSize: Cardinal): Cardinal; 
type 
  BA = array of Byte; 
begin 
  Result := 0; 
  if InSize = 0 then 
    Exit; 
  if InSize mod 4 <> 0 then 
    Exit; 
  Result := InSize div 4 * 3; 
  if (BA(InBuffer)[InSize - 2] = Ord(Base64Filler)) 
  then Dec(Result, 2) 
  else if BA(InBuffer)[InSize - 1] = Ord(Base64Filler) 
       then Dec(Result); 
end; 

procedure Base64Encode(const InBuffer; InSize: Cardinal; var OutBuffer 
    ); register; 
var 
  ByThrees, LeftOver: Cardinal; 
  // reset in- and outbytes positions 
asm 
  // load addresses for source and destination 
  // PBYTE(InBuffer); 
  mov  ESI, [EAX] 
  // PBYTE(OutBuffer); 
  mov  EDI, [ECX] 
  // ByThrees := InSize div 3; 
  // LeftOver := InSize mod 3; 
  // load InSize (stored in EBX) 
  mov  EAX, EBX 
  // load 3 
  mov  ECX, $03 
  // clear upper 32 bits 
  xor  EDX, EDX 
  // divide by ECX 
  div  ECX 
  // save result 
  mov  ByThrees, EAX 
  // save remainder 
  mov  LeftOver, EDX 
  // load addresses 
  lea  ECX, cBase64Codec[0] 
  // while I < ByThrees do 
  // begin 
  xor  EAX, EAX 
  xor  EBX, EBX 
  xor  EDX, EDX 
  cmp  ByThrees, 0 
  jz   @@LeftOver 
  @@LoopStart: 
    // load the first two bytes of the source triplet 
    LODSW 
    // write Bits 0..5 to destination 
    mov  BL, AL 
    shr  BL, 2 
    mov  DL, BYTE PTR [ECX + EBX] 
    // save the Bits 12..15 for later use [1] 
    mov  BH, AH 
    and  BH, $0F 
    // save Bits 6..11 
    rol  AX, 4 
    and  AX, $3F 
    mov  DH, BYTE PTR [ECX + EAX] 
    mov  AX, DX 
    // store the first two bytes of the destination quadruple 
    STOSW 
    // laod last byte (Bits 16..23) of the source triplet 
    LODSB 
    // extend bits 12..15 [1] with Bits 16..17 and save them 
    mov  BL, AL 
    shr  BX, 6 
    mov  DL, BYTE PTR [ECX + EBX] 
    // save bits 18..23 
    and  AL, $3F 
    xor  AH, AH 
    mov  DH, BYTE PTR [ECX + EAX] 
    mov  AX, DX 
    // store the last two bytes of the destination quadruple 
    STOSW 
    dec  ByThrees 
  jnz  @@LoopStart 
  @@LeftOver: 
  // there are up to two more bytes to encode 
  cmp  LeftOver, 0 
  jz   @@Done 
  // clear result 
  xor  EAX, EAX 
  xor  EBX, EBX 
  xor  EDX, EDX 
  // get left over 1 
  LODSB 
  // load the first six bits 
  shl  AX, 6 
  mov  BL, AH 
  // save them 
  mov  DL, BYTE PTR [ECX + EBX] 
  // another byte ? 
  dec  LeftOver 
  jz   @@SaveOne 
  // save remaining two bits 
  shl  AX, 2 
  and  AH, $03 
  // get left over 2 
  LODSB 
  // load next 4 bits 
  shl  AX, 4 
  mov  BL, AH 
  // save all 6 bits 
  mov  DH, BYTE PTR [ECX + EBX] 
  shl  EDX, 16 
  // save last 4 bits 
  shr  AL, 2 
  mov  BL, AL 
  // save them 
  mov  DL, BYTE PTR [ECX + EBX] 
  // load base 64 'no more data flag' 
  mov  DH, Base64Filler 
  jmp  @@WriteLast4 
  @@SaveOne: 
  // adjust the last two bits 
  shr  AL, 2 
  mov  BL, AL 
  // save them 
  mov  DH, BYTE PTR [ECX + EBX] 
  shl  EDX, 16 
  // load base 64 'no more data flags' 
  mov  DH, Base64Filler 
  mov  DL, Base64Filler 
  // ignore jump, as jump reference is next line ! 
  // jmp  @@WriteLast4 
  @@WriteLast4: 
    // load and adjust result 
    mov  EAX, EDX 
    ror EAX, 16 
    // save it to destination 
    STOSD 
  @@Done: 
end; 

{$IFDEF SpeedDecode} 
  procedure Base64Decode(const InBuffer; InSize: Cardinal; var OutBuffer); 
      overload; register; 
{$ENDIF} 
{$IFDEF ValidityCheck} 
  function Base64Decode(const InBuffer; InSize: Cardinal; var OutBuffer): 
      Boolean; overload; register; 
{$ENDIF} 
const 
  {$IFDEF SpeedDecode} 
    cBase64Codec: array[0..127] of Byte = 
  {$ENDIF} 
  {$IFDEF ValidityCheck} 
    cBase64Codec: array[0..255] of Byte = 
  {$ENDIF} 
  ( 
    $FF, $FF, $FF, $FF, $FF, {005>} $FF, $FF, $FF, $FF, $FF, // 000..009 
    $FF, $FF, $FF, $FF, $FF, {015>} $FF, $FF, $FF, $FF, $FF, // 010..019 
    $FF, $FF, $FF, $FF, $FF, {025>} $FF, $FF, $FF, $FF, $FF, // 020..029 
    $FF, $FF, $FF, $FF, $FF, {035>} $FF, $FF, $FF, $FF, $FF, // 030..039 
    $FF, $FF, $FF, $3E, $FF, {045>} $FF, $FF, $3F, $34, $35, // 040..049 
    $36, $37, $38, $39, $3A, {055>} $3B, $3C, $3D, $FF, $FF, // 050..059 
    $FF, $FF, $FF, $FF, $FF, {065>} $00, $01, $02, $03, $04, // 060..069 
    $05, $06, $07, $08, $09, {075>} $0A, $0B, $0C, $0D, $0E, // 070..079 
    $0F, $10, $11, $12, $13, {085>} $14, $15, $16, $17, $18, // 080..089 
    $19, $FF, $FF, $FF, $FF, {095>} $FF, $FF, $1A, $1B, $1C, // 090..099
    $1D, $1E, $1F, $20, $21, {105>} $22, $23, $24, $25, $26, // 100..109 
    $27, $28, $29, $2A, $2B, {115>} $2C, $2D, $2E, $2F, $30, // 110..119 
    $31, $32, $33, $FF, $FF, {125>} $FF, $FF, $FF            // 120..127 

    {$IFDEF ValidityCheck} 
                               {125>}              , $FF, $FF, // 128..129 
      $FF, $FF, $FF, $FF, $FF, {135>} $FF, $FF, $FF, $FF, $FF, // 130..139 
      $FF, $FF, $FF, $FF, $FF, {145>} $FF, $FF, $FF, $FF, $FF, // 140..149 
      $FF, $FF, $FF, $FF, $FF, {155>} $FF, $FF, $FF, $FF, $FF, // 150..159 
      $FF, $FF, $FF, $FF, $FF, {165>} $FF, $FF, $FF, $FF, $FF, // 160..169 
      $FF, $FF, $FF, $FF, $FF, {175>} $FF, $FF, $FF, $FF, $FF, // 170..179 
      $FF, $FF, $FF, $FF, $FF, {185>} $FF, $FF, $FF, $FF, $FF, // 180..189 
      $FF, $FF, $FF, $FF, $FF, {195>} $FF, $FF, $FF, $FF, $FF, // 190..199 
      $FF, $FF, $FF, $FF, $FF, {205>} $FF, $FF, $FF, $FF, $FF, // 200..209 
      $FF, $FF, $FF, $FF, $FF, {215>} $FF, $FF, $FF, $FF, $FF, // 210..219 
      $FF, $FF, $FF, $FF, $FF, {225>} $FF, $FF, $FF, $FF, $FF, // 220..229 
      $FF, $FF, $FF, $FF, $FF, {235>} $FF, $FF, $FF, $FF, $FF, // 230..239 
      $FF, $FF, $FF, $FF, $FF, {245>} $FF, $FF, $FF, $FF, $FF, // 240..249 
      $FF, $FF, $FF, $FF, $FF, {255>} $FF                      // 250..255 
    {$ENDIF} 
  ); 
asm 
  push EBX 
  mov  ESI, [EAX] 
  mov  EDI, [ECX] 
  {$IFDEF ValidityCheck} 
    mov  EAX, InSize 
    and  EAX, $03 
    cmp  EAX, $00 
    jz   @@DecodeStart 
    jmp  @@ErrorDone 
    @@DecodeStart: 
  {$ENDIF} 
  mov  EAX, InSize 
  shr  EAX, 2 
  jz   @@Done 
  lea  ECX, cBase64Codec[0] 
  xor  EBX, EBX 
  dec  EAX 
  jz   @@LeftOver 
  push EBP 
  mov  EBP, EAX 
  @@LoopStart: 
    // load four bytes into EAX 
    LODSD 
    // save them to EDX as AX is used to store results 
    mov  EDX, EAX 
    // get bits 0..5 
    mov  BL, DL 
    // decode 
    mov  AH, BYTE PTR [ECX + EBX] 
    {$IFDEF ValidityCheck} 
      // check valid code 
      cmp  AH, $FF 
      jz   @@ErrorDoneAndPopEBP 
    {$ENDIF} 
    // get bits 6..11 
    mov  BL, DH 
    // decode 
    mov  AL, BYTE PTR [ECX + EBX] 
    {$IFDEF ValidityCheck} 
      // check valid code 
      cmp  AL, $FF 
      jz   @@ErrorDoneAndPopEBP 
    {$ENDIF} 
    // align last 6 bits 
    shl  AL, 2 
    // get first 8 bits 
    ror  AX, 6 
    // store first byte 
    STOSB 
    // align remaining 4 bits 
    shr  AX, 12 
    // get next two bytes from source quad 
    shr  EDX, 16 
    // load bits 12..17 
    mov  BL, DL 
    // decode 
    mov  AH, BYTE PTR [ECX + EBX] 
    {$IFDEF ValidityCheck} 
      // check valid code 
      cmp  AH, $FF 
      jz   @@ErrorDoneAndPopEBP 
    {$ENDIF} 
    // align ... 
    shl  AH, 2 
    // ... and adjust 
    rol  AX, 4 
    // get last bits 18..23 
    mov  BL, DH 
    // decord 
    mov  BL, BYTE PTR [ECX + EBX] 
    {$IFDEF ValidityCheck} 
      // check valid code 
      cmp  BL, $FF 
      jz   @@ErrorDoneAndPopEBP 
    {$ENDIF} 
    // enter in destination word 
    or   AH, BL 
    // and store to destination 
    STOSW 
    // more coming ? 
    dec  EBP 
  jnz  @@LoopStart 
  pop  EBP 
  // no 
  // last four bytes are handled separately, as special checking is needed 
  // on the last two bytes (may be end of data signals '=' or '==') 
  @@LeftOver: 
  // get the last four bytes 
  LODSD 
  // save them to EDX as AX is used to store results 
  mov  EDX, EAX 
  // get bits 0..5 
  mov  BL, DL 
  // decode 
  mov  AH, BYTE PTR [ECX + EBX] 
  {$IFDEF ValidityCheck} 
    // check valid code 
    cmp  AH, $FF 
    jz   @@ErrorDone 
  {$ENDIF} 
  // get bits 6..11 
  mov  BL, DH 
  // decode 
  mov  AL, BYTE PTR [ECX + EBX] 
  {$IFDEF ValidityCheck} 
    // check valid code 
    cmp  AL, $FF 
    jz   @@ErrorDone 
  {$ENDIF} 
  // align last 6 bits 
  shl  AL, 2 
  // get first 8 bits 
  ror  AX, 6 
  // store first byte 
  STOSB 
  // get next two bytes from source quad 
  shr  EDX, 16 
  // check DL for "end of data signal" 
  cmp  DL, Base64Filler 
  jz   @@SuccessDone 
  // align remaining 4 bits 
  shr  AX, 12 
  // load bits 12..17 
  mov  BL, DL 
  // decode 
  mov  AH, BYTE PTR [ECX + EBX] 
  {$IFDEF ValidityCheck} 
    // check valid code 
    cmp  AH, $FF 
    jz   @@ErrorDone 
  {$ENDIF} 
  // align ... 
  shl  AH, 2 
  // ... and adjust 
  rol  AX, 4 
  // store second byte 
  STOSB 
  // check DH for "end of data signal" 
  cmp  DH, Base64Filler 
  jz   @@SuccessDone 
  // get last bits 18..23 
  mov  BL, DH 
  // decord 
  mov  BL, BYTE PTR [ECX + EBX] 
  {$IFDEF ValidityCheck} 
    // check valid code 
    cmp  BL, $FF 
    jz   @@ErrorDone 
  {$ENDIF} 
  // enter in destination word 
  or   AH, BL 
  // AH - AL for saving last byte 
  mov  AL, AH 
  // store third byte 
  STOSB 
  @@SuccessDone: 
  {$IFDEF ValidityCheck} 
    mov  Result, $01 
    jmp  @@Done 
    @@ErrorDoneAndPopEBP: 
    pop  EBP 
    @@ErrorDone: 
    mov  Result, $00 
  {$ENDIF} 
  @@Done: 
  pop  EBX 
end; 


procedure Base64Encode(const InText: AnsiString; var OutText: AnsiString); 
    overload; 
var 
  InSize, OutSize: Cardinal; 
  PIn, POut: Pointer; 
begin 
  // get size of source 
  InSize := Length(InText); 
  // calculate size for destination 
  OutSize := CalcEncodedSize(InSize); 
  // prepare string length to fit result data 
  SetLength(OutText, OutSize); 
  PIn := @InText[1]; 
  POut := @OutText[1]; 
  // encode ! 
  Base64Encode(PIn, InSize, POut); 
end; 


procedure Base64Decode(const InText: AnsiString; var OutText: AnsiString);
    overload;
var
  InSize, OutSize: Cardinal;
  PIn, POut: Pointer;
begin
  // get size of source
  InSize := Length(InText); 
  // calculate size for destination 
  PIn := @InText[1]; 
  OutSize := CalcDecodedSize(PIn, InSize); 
  // prepare string length to fit result data 
  SetLength(OutText, OutSize); 
  FillChar(OutText[1], OutSize, '.'); 
  POut := @OutText[1]; 
  // encode ! 
  {$IFDEF SpeedDecode} 
    Base64Decode(PIn, InSize, POut); 
  {$ENDIF} 
  {$IFDEF ValidityCheck} 
    if not Base64Decode(PIn, InSize, POut) then 
      SetLength(OutText, 0); 
  {$ENDIF} 
end; 

end.
