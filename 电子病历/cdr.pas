
{******************************************}
{                                          }
{             XML Data Binding             }
{                                          }
{         Generated on: 2016-12-24  11:18:48 }
{       Generated from: D:\cdr.xml         }
{   Settings stored in: D:\cdr.xdb         }
{                                          }
{******************************************}

unit cdr;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLCDRType = interface;
  IXMLFieldelemType = interface;
  IXMLFieldelemTypeList = interface;
  IXMLSectionType = interface;
  IXMLSectionTypeList = interface;
  IXMLString_List = interface;

{ IXMLCDRType }

  IXMLCDRType = interface(IXMLNode)
    ['{735E7FC8-16EA-455B-81C6-B6CFAB6A856D}']
    { Property Accessors }
    function Get_Text: IXMLString_List;
    function Get_Fieldelem: IXMLFieldelemTypeList;
    function Get_Section: IXMLSectionTypeList;
    { Methods & Properties }
    property Text: IXMLString_List read Get_Text;
    property Fieldelem: IXMLFieldelemTypeList read Get_Fieldelem;
    property Section: IXMLSectionTypeList read Get_Section;
  end;

{ IXMLFieldelemType }

  IXMLFieldelemType = interface(IXMLNode)
    ['{222EF092-6C76-4EE2-A1D1-987656986D62}']
    { Property Accessors }
    function Get_Name: WideString;
    function Get_Code: WideString;
    function Get_Codesystem: WideString;
    function Get_Value: Integer;
    procedure Set_Name(Value: WideString);
    procedure Set_Code(Value: WideString);
    procedure Set_Codesystem(Value: WideString);
    procedure Set_Value(Value: Integer);
    { Methods & Properties }
    property Name: WideString read Get_Name write Set_Name;
    property Code: WideString read Get_Code write Set_Code;
    property Codesystem: WideString read Get_Codesystem write Set_Codesystem;
    property Value: Integer read Get_Value write Set_Value;
  end;

{ IXMLFieldelemTypeList }

  IXMLFieldelemTypeList = interface(IXMLNodeCollection)
    ['{71787EF4-C80F-4E7C-AD09-AE6120AB32CA}']
    { Methods & Properties }
    function Add: IXMLFieldelemType;
    function Insert(const Index: Integer): IXMLFieldelemType;
    function Get_Item(Index: Integer): IXMLFieldelemType;
    property Items[Index: Integer]: IXMLFieldelemType read Get_Item; default;
  end;

{ IXMLSectionType }

  IXMLSectionType = interface(IXMLNode)
    ['{1E00CED8-A7CB-41FA-8850-BAC562868597}']
    { Property Accessors }
    function Get_Name: WideString;
    function Get_Code: WideString;
    function Get_Codesystem: WideString;
    function Get_Text: IXMLString_List;
    function Get_Fieldelem: IXMLFieldelemTypeList;
    procedure Set_Name(Value: WideString);
    procedure Set_Code(Value: WideString);
    procedure Set_Codesystem(Value: WideString);
    { Methods & Properties }
    property Name: WideString read Get_Name write Set_Name;
    property Code: WideString read Get_Code write Set_Code;
    property Codesystem: WideString read Get_Codesystem write Set_Codesystem;
    property Text: IXMLString_List read Get_Text;
    property Fieldelem: IXMLFieldelemTypeList read Get_Fieldelem;
  end;

{ IXMLSectionTypeList }

  IXMLSectionTypeList = interface(IXMLNodeCollection)
    ['{7F5CE9D6-2B43-4490-8A92-AB7C47B9E4C0}']
    { Methods & Properties }
    function Add: IXMLSectionType;
    function Insert(const Index: Integer): IXMLSectionType;
    function Get_Item(Index: Integer): IXMLSectionType;
    property Items[Index: Integer]: IXMLSectionType read Get_Item; default;
  end;

{ IXMLString_List }

  IXMLString_List = interface(IXMLNodeCollection)
    ['{1E30538C-814B-4DBD-A592-40E3EBB5B454}']
    { Methods & Properties }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
    property Items[Index: Integer]: WideString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLCDRType = class;
  TXMLFieldelemType = class;
  TXMLFieldelemTypeList = class;
  TXMLSectionType = class;
  TXMLSectionTypeList = class;
  TXMLString_List = class;

{ TXMLCDRType }

  TXMLCDRType = class(TXMLNode, IXMLCDRType)
  private
    FText: IXMLString_List;
    FFieldelem: IXMLFieldelemTypeList;
    FSection: IXMLSectionTypeList;
  protected
    { IXMLCDRType }
    function Get_Text: IXMLString_List;
    function Get_Fieldelem: IXMLFieldelemTypeList;
    function Get_Section: IXMLSectionTypeList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLFieldelemType }

  TXMLFieldelemType = class(TXMLNode, IXMLFieldelemType)
  protected
    { IXMLFieldelemType }
    function Get_Name: WideString;
    function Get_Code: WideString;
    function Get_Codesystem: WideString;
    function Get_Value: Integer;
    procedure Set_Name(Value: WideString);
    procedure Set_Code(Value: WideString);
    procedure Set_Codesystem(Value: WideString);
    procedure Set_Value(Value: Integer);
  end;

{ TXMLFieldelemTypeList }

  TXMLFieldelemTypeList = class(TXMLNodeCollection, IXMLFieldelemTypeList)
  protected
    { IXMLFieldelemTypeList }
    function Add: IXMLFieldelemType;
    function Insert(const Index: Integer): IXMLFieldelemType;
    function Get_Item(Index: Integer): IXMLFieldelemType;
  end;

{ TXMLSectionType }

  TXMLSectionType = class(TXMLNode, IXMLSectionType)
  private
    FText: IXMLString_List;
    FFieldelem: IXMLFieldelemTypeList;
  protected
    { IXMLSectionType }
    function Get_Name: WideString;
    function Get_Code: WideString;
    function Get_Codesystem: WideString;
    function Get_Text: IXMLString_List;
    function Get_Fieldelem: IXMLFieldelemTypeList;
    procedure Set_Name(Value: WideString);
    procedure Set_Code(Value: WideString);
    procedure Set_Codesystem(Value: WideString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSectionTypeList }

  TXMLSectionTypeList = class(TXMLNodeCollection, IXMLSectionTypeList)
  protected
    { IXMLSectionTypeList }
    function Add: IXMLSectionType;
    function Insert(const Index: Integer): IXMLSectionType;
    function Get_Item(Index: Integer): IXMLSectionType;
  end;

{ TXMLString_List }

  TXMLString_List = class(TXMLNodeCollection, IXMLString_List)
  protected
    { IXMLString_List }
    function Add(const Value: WideString): IXMLNode;
    function Insert(const Index: Integer; const Value: WideString): IXMLNode;
    function Get_Item(Index: Integer): WideString;
  end;

{ Global Functions }

function GetCDR(Doc: IXMLDocument): IXMLCDRType;
function LoadCDR(const FileName: WideString): IXMLCDRType;
function NewCDR: IXMLCDRType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetCDR(Doc: IXMLDocument): IXMLCDRType;
begin
  Result := Doc.GetDocBinding('CDR', TXMLCDRType, TargetNamespace) as IXMLCDRType;
end;

function LoadCDR(const FileName: WideString): IXMLCDRType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('CDR', TXMLCDRType, TargetNamespace) as IXMLCDRType;
end;

function NewCDR: IXMLCDRType;
begin
  Result := NewXMLDocument.GetDocBinding('CDR', TXMLCDRType, TargetNamespace) as IXMLCDRType;
end;

{ TXMLCDRType }

procedure TXMLCDRType.AfterConstruction;
begin
  RegisterChildNode('fieldelem', TXMLFieldelemType);
  RegisterChildNode('section', TXMLSectionType);
  FText := CreateCollection(TXMLString_List, IXMLNode, 'text') as IXMLString_List;
  FFieldelem := CreateCollection(TXMLFieldelemTypeList, IXMLFieldelemType, 'fieldelem') as IXMLFieldelemTypeList;
  FSection := CreateCollection(TXMLSectionTypeList, IXMLSectionType, 'section') as IXMLSectionTypeList;
  inherited;
end;

function TXMLCDRType.Get_Text: IXMLString_List;
begin
  Result := FText;
end;

function TXMLCDRType.Get_Fieldelem: IXMLFieldelemTypeList;
begin
  Result := FFieldelem;
end;

function TXMLCDRType.Get_Section: IXMLSectionTypeList;
begin
  Result := FSection;
end;

{ TXMLFieldelemType }

function TXMLFieldelemType.Get_Name: WideString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLFieldelemType.Set_Name(Value: WideString);
begin
  SetAttribute('name', Value);
end;

function TXMLFieldelemType.Get_Code: WideString;
begin
  Result := AttributeNodes['code'].Text;
end;

procedure TXMLFieldelemType.Set_Code(Value: WideString);
begin
  SetAttribute('code', Value);
end;

function TXMLFieldelemType.Get_Codesystem: WideString;
begin
  Result := AttributeNodes['code-system'].Text;
end;

procedure TXMLFieldelemType.Set_Codesystem(Value: WideString);
begin
  SetAttribute('code-system', Value);
end;

function TXMLFieldelemType.Get_Value: Integer;
begin
  Result := AttributeNodes['value'].NodeValue;
end;

procedure TXMLFieldelemType.Set_Value(Value: Integer);
begin
  SetAttribute('value', Value);
end;

{ TXMLFieldelemTypeList }

function TXMLFieldelemTypeList.Add: IXMLFieldelemType;
begin
  Result := AddItem(-1) as IXMLFieldelemType;
end;

function TXMLFieldelemTypeList.Insert(const Index: Integer): IXMLFieldelemType;
begin
  Result := AddItem(Index) as IXMLFieldelemType;
end;
function TXMLFieldelemTypeList.Get_Item(Index: Integer): IXMLFieldelemType;
begin
  Result := List[Index] as IXMLFieldelemType;
end;

{ TXMLSectionType }

procedure TXMLSectionType.AfterConstruction;
begin
  RegisterChildNode('fieldelem', TXMLFieldelemType);
  FText := CreateCollection(TXMLString_List, IXMLNode, 'text') as IXMLString_List;
  FFieldelem := CreateCollection(TXMLFieldelemTypeList, IXMLFieldelemType, 'fieldelem') as IXMLFieldelemTypeList;
  inherited;
end;

function TXMLSectionType.Get_Name: WideString;
begin
  Result := AttributeNodes['name'].Text;
end;

procedure TXMLSectionType.Set_Name(Value: WideString);
begin
  SetAttribute('name', Value);
end;

function TXMLSectionType.Get_Code: WideString;
begin
  Result := AttributeNodes['code'].Text;
end;

procedure TXMLSectionType.Set_Code(Value: WideString);
begin
  SetAttribute('code', Value);
end;

function TXMLSectionType.Get_Codesystem: WideString;
begin
  Result := AttributeNodes['code-system'].Text;
end;

procedure TXMLSectionType.Set_Codesystem(Value: WideString);
begin
  SetAttribute('code-system', Value);
end;

function TXMLSectionType.Get_Text: IXMLString_List;
begin
  Result := FText;
end;

function TXMLSectionType.Get_Fieldelem: IXMLFieldelemTypeList;
begin
  Result := FFieldelem;
end;

{ TXMLSectionTypeList }

function TXMLSectionTypeList.Add: IXMLSectionType;
begin
  Result := AddItem(-1) as IXMLSectionType;
end;

function TXMLSectionTypeList.Insert(const Index: Integer): IXMLSectionType;
begin
  Result := AddItem(Index) as IXMLSectionType;
end;
function TXMLSectionTypeList.Get_Item(Index: Integer): IXMLSectionType;
begin
  Result := List[Index] as IXMLSectionType;
end;

{ TXMLString_List }

function TXMLString_List.Add(const Value: WideString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLString_List.Insert(const Index: Integer; const Value: WideString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;
function TXMLString_List.Get_Item(Index: Integer): WideString;
begin
  Result := List[Index].NodeValue;
end;

end.