%dw 2.0
output application/xml encoding="ISO-8859-1"
ns atr http://www.w3.org/2001/XMLSchema-instance
---
Zoomit @('xmlns:xsi': atr):
{
    Header: Version: '2.1.0',
    DocRefs: DocRef: payload map $
}

/*
<?xml version='1.0' encoding='ISO-8859-1'?>
<Zoomit xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <Header>
    <Version>2.1.0</Version>
  </Header>
  <DocRefs>
    <DocRef>
      <Amount/>
      <Currency>EUR</Currency>
      <CommunicationStructured>3623433380</CommunicationStructured>
      <RecipientAccount/>
      <DirectDebitNumber/>
      <MemoDate>2023-05-15</MemoDate>
      <DueDate>2023-05-15</DueDate>
    </DocRef>
    <DocRef>
      <Amount>13.5</Amount>
      <Currency>EUR</Currency>
      <DocumentType>INVOICE</DocumentType>
      <FirstName/>
      <LastName/>
      <LanguageCode>French</LanguageCode>
    </DocRef>
  </DocRefs>
</Zoomit>
*/