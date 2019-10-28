**Pesys 1./2. generasjonskontrakter**

Repoet inneholder konfigurasjon for å bygge JAXWS-artifakter for benyttede ESB-tjenestekontraktene. Modulen er titulert 'legacy' ettersom disse tjenestene ansees for tenkisk gjeld, skal ikke tas i bruk på nye konsumenter, og i Pesys skal saneres til fordel for nyere ikke-buss tjenester.

*Kodegenerering*

Det er flere tjenester som har overlapp i domenet, ved at det finnes spesifikke versjoner for ymse permutasjoner av PEN, PSAK og PSELV. Dette er i stor grad forsøkt håndtert ved å legge noe i pcom-modulen, og så ignorere duplikate namespace i de særskilte modulene (alle kan ha avhengighet til pcom, akkurat som i pesys-koden).

- Det er i bruk en xjc-plugin som gjør at boolean getters er "get" og ikke "is". Dette har betydning for eksisterende kode, og Apache beanmappingen som er i bruk.
- En annen plugin tar seg av å fjerne unødvendige wrapper-klasser, igjen med samme formål om å forenkle kode og migrering.



**Bygg**

mvn clean install

*Ved bruk av xew jxc-plugin*

Legg til -Djavax.xml.accessExternalSchema=all