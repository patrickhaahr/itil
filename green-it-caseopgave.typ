// Grundopsætning: A4, 12 pkt. og dansk sprog.
#set document(title: "Green-IT – Caseopgave")
#set page(paper: "a4", margin: 2.5cm)
#set text(font: "Liberation Serif", size: 12pt, lang: "da")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: none)

// Forside.
#align(center)[
  #v(3cm)
  #text(size: 24pt, weight: "bold")[Green-IT]

  #text(size: 18pt)[Caseopgave i IT Service Management]

  #v(2cm)
  TEC Ballerup \
  ITSM 1 – 22248

  #v(2cm)
  *Udarbejdet af:* \
  Hans, Patrick, Thomas

  *Hold:* H5

  *Afleveringsdato:* 8. oktober 2026
]

#pagebreak()
#outline(title: [Indholdsfortegnelse], depth: 2)

#pagebreak()
#set page(numbering: "1", number-align: center)
#counter(page).update(1)

= Indledning
Green-IT er gået fra at være et smedefirma til at levere IT-baserede løsninger til overvågning af stalde, dyr på friland og kornafgrøder. Produktion og R&D ligger på adskilte lokationer, og nu overvejer virksomheden at åbne salgskontorer og værksteder i 2-3 jyske byer. Spredningen gør koordineringen svær, og virksomheden mangler standardiserede ITSM-processer.

Som ITIL-konsulenter analyserer vi, hvordan Green-IT kan forbedre sin IT-drift. Vi beskriver først service og værdi, SLA'er og risici samt et forslag til Service Value Chain. Derefter gennemgår vi fem af de mest anvendte ITIL-practices og deres samspil. Til sidst beskriver vi de syv vejledende principper og de fire dimensioner. Casen beskriver ikke Green-ITs IT-drift i detaljer. Eksempler, der ikke står i casen, er derfor vores egne realistiske bud.

= Opgave 1: Service og værdi

== Service, værdi, co-creation, output og outcome

=== Service
I ITIL 4 er en service en måde at skabe værdi for kunden på. Servicen hjælper kunden med at opnå de ønskede resultater, uden at kunden selv skal bære bestemte omkostninger og risici.

Green-ITs overvågning af stalde, dyr og korn er derfor en service: landmanden får sensorer, app, alarmer og support, mens Green-IT bærer risikoen ved driften.

=== Value
Value (værdi) er i ITIL den opfattede fordel, nytte og betydning, som noget har for en interessent. Værdien er subjektiv: servicen er det, Green-IT leverer, mens værdien er det, kunden oplever at få ud af den.

En stalddrift værdsætter fx dyrevelfærd, mens en planteavler værdsætter data om kornet.

=== Co-creation
Co-creation betyder, at værdi skabes i samarbejde. Fx angiver landmanden grænser for temperatur og fugt og melder falske alarmer tilbage, og Green-IT justerer systemet.

=== Output
Et output er det konkrete, som en service leverer. Hos Green-IT kan det være, at systemet sender en alarm til landmandens telefon, når temperaturen i stalden bliver for høj.

=== Outcome
Et outcome er det resultat, kunden opnår ved at bruge outputtet. Fordi alarmen kommer i tide, kan landmanden tjekke ventilationen, så dyrene undgår varmestress. Outcome er sundere dyr og færre tab, ikke selve alarmen.

Et output kan altså leveres uden et outcome, hvis ingen læser alarmen.

== Værdi for kunderne og forretningen

=== Værdi for Green-ITs kunder
For landmanden betyder det døgnovervågning, tidlig opdagelse af sygdom og fejl og bedre beslutninger om vand, foder og høst. Det giver mindre spild, mere stabil drift, bedre dyrevelfærd og en mere bæredygtig produktion.

=== Værdi for Green-IT som virksomhed
ITIL lægger vægt på værdi for alle interessenter. Green-IT får loyale kunder, et stærkere grønt brand og grundlag for vækst, og landbrugserfaring kombineret med IT giver en konkurrencefordel.

= Opgave 2: Service Level Agreements og risiko

== Indhold og betydning af SLA'er

En Service Level Agreement (SLA) er en dokumenteret aftale mellem serviceudbyder og kunde om, hvilket serviceniveau kunden kan forvente. SLA'en er ikke selve servicen, men aftalen om, hvordan servicen leveres og måles.

Et realistisk eksempel for en staldovervågning (tallene står ikke i casen):

#table(
  columns: (auto, 1fr),
  inset: 6pt,
  [*Område*], [*Eksempel på aftale*],
  [Oppetid og tilgængelighed], [99,5 % pr. måned for overvågning og alarmer],
  [Prioritet 1 – kritisk], [Alarmer virker ikke i en hel stald. Respons 15 min., løsning 4 timer, døgnet rundt],
  [Prioritet 2 – høj], [Enkelte sensorer sender ikke data. Respons 1 time, løsning 1 hverdag],
  [Prioritet 3 – lav], [Fejl i rapport eller spørgsmål. Respons næste hverdag, løsning 5 hverdage],
  [Supportens åbningstider], [Hverdage kl. 8–16, med døgnvagt til kritiske fejl],
  [Vedligeholdelse], [Om natten, varslet 5 dage før, helst uden for høstsæsonen],
  [Backup og gendannelse], [Daglig backup af historiske data, højst 24 timers datatab. Historiske data gendannes inden for 8 timer; ved kritiske fejl genoprettes overvågning og alarmer inden for 4 timer],
  [Ansvar], [Green-IT: platform, sensorer og opdateringer. Kunden: strøm, internet og at reagere på alarmer],
  [Måling og opfølgning], [Månedlig rapport og kvartalsvist servicemøde],
)

Oppetidskravet er højt, fordi landmanden ellers kan overse, at ventilationen er gået i stå en varm nat.

SLA'en giver begge parter klare forventninger, tydeligt ansvar og et grundlag for at måle kvaliteten.

== Risici ved driftsnedbrud, ændringer og vækst

En risiko er en mulig hændelse, der kan skade Green-IT eller kunderne. Risikoen er det, der kan ske, og konsekvensen er effekten, hvis det sker.

=== Driftsnedbrud
*Risiko:* Platform, servere, netværk eller alarmsystem bliver utilgængeligt.

*Konsekvens:* Problemer opdages ikke i tide, og ét nedbrud rammer mange kunder.

*Håndtering:* Redundans, overvågning, en fast incidentproces og en nødprocedure.

=== Ændringer
*Risiko:* En opdatering kan indeholde fejl, fx ny sensorsoftware.

*Konsekvens:* Nedbrud hos mange kunder på én gang, især hvis ændringen ikke kan rulles tilbage.

*Håndtering:* Ændringer testes, godkendes og lægges i et servicevindue med en plan for tilbagerulning.

=== Vækst og nye lokationer
*Risiko:* Nye kontorer i Jylland øger spredningen og giver risiko for ustabile netværk, for lidt support og manglende standardisering.

*Konsekvens:* Ujævn servicekvalitet og længere løsningstider, fordi ansvar og opsætning er uklare.

*Håndtering:* Standardisering, fælles servicedesk og ens oplæring.

=== Øvrige risici
Øvrige risici som datatab, cyberangreb og leverandørafhængighed samles i et risk register med score (impact × frekvens) og en ejer.

Samlet kræver risiciene standardiserede ITSM-processer, så SLA'ernes løfter kan holdes.

= Opgave 3: Service Value Chain

== Forslag til Green-ITs Service Value Chain

I ITIL 4 er Service Value Chain kernen i Service Value System. Den omdanner efterspørgsel og muligheder til værdi gennem seks aktiviteter, der bruger practices og udveksler input og output med hinanden. Aktiviteterne er ikke afdelinger. Forslaget er, at hver aktivitet får en ansvarlig, og hver vigtig value stream en ejer, der følger opgaven på tværs af bygningen i byen, fabrikken og de nye kontorer.

#table(
  columns: (auto, 1fr),
  inset: 6pt,
  [*Aktivitet*], [*Eksempel hos Green-IT*],
  [Plan], [Ledelsen planlægger, fx hvilke jyske byer der først får kontor og værksted],
  [Improve], [Ledelsen samler forbedringsforslag, fx færre falske alarmer i staldovervågningen],
  [Engage], [Salg og de nye kontorer har kontakten til landmænd og leverandører],
  [Design & transition], [R&D designer nye løsninger, fx sensorer til kornafgrøder, og overdrager dem testet til drift],
  [Obtain/build], [Fabrikken producerer sensorer, indkøb skaffer komponenter, og R&D udvikler softwaren],
  [Deliver & support], [Værkstederne installerer udstyret, og servicedesken håndterer fejl efter SLA'en],
)

=== Eksempel på en value stream: ny staldovervågning
En svineproducent nær et nyt kontor vil have staldovervågning:

+ *Engage:* Sælgeren afklarer stalde, målinger og serviceniveau.
+ *Design & transition:* R&D tilpasser opsætningen og grænserne for temperatur og luftfugtighed.
+ *Obtain/build:* Fabrikken leverer sensorer og gateway.
+ *Design & transition:* Løsningen testes på værkstedet og overdrages til drift.
+ *Deliver & support:* Det lokale værksted installerer udstyret, som registreres i Configuration Management.
+ *Engage:* Efter en måned følger sælgeren op på alarmerne.
+ *Improve:* Erfaringerne gør næste installation hurtigere.

== Aktiviteternes bidrag til værdiskabelse og stabil drift

*Plan* samler afdelingerne om samme mål, fx at et nyt kontor først åbner, når processerne er på plads.

*Engage* er grænsefladen til kunder og leverandører, hvor co-creation især sker, fordi Green-IT lærer landmandens behov og får feedback.

*Design & transition* tester og overdrager nye løsninger kontrolleret og beskytter den stabile drift.

*Obtain/build* sikrer, at sensorer, software og leverandøraftaler er klar til tiden.

*Deliver & support* er der, hvor kunden oplever værdien dagligt, og hurtig fejlhåndtering holder overvågningen kørende.

*Improve* gør fejl og erfaringer fra alle aktiviteter til forbedringer.

Aktiviteterne er ikke et samlebånd, men kombineres efter behov. En sensorfejl kan starte i Engage, når landmanden ringer, gå til Deliver & support og ende i Improve, Design & transition og Obtain/build, hvis mange kunder har fejlen og R&D skal lave ny firmware.

= Opgave 4: ITIL-practices i praksis

== Change Control

=== Formål
Change Control skal sikre, at flest mulige ændringer lykkes. Practicen vurderer risikoen ved hver ændring og godkender den, før den gennemføres. Alle ændringer planlægges i en fælles change schedule. En change er at tilføje, ændre eller fjerne noget, der kan påvirke en service.

=== Anvendelse
ITIL skelner mellem tre typer:

#table(
  columns: (auto, 1fr),
  inset: 6pt,
  [*Type*], [*Hvordan den håndteres*],
  [Standard], [Lav risiko og kendt forløb, så den er godkendt på forhånd, fx at oprette en ny landmand i appen],
  [Normal], [Vurderes og godkendes af en change authority, hvis niveau afhænger af risikoen, fx en ny firmwareversion],
  [Emergency], [Skal laves hurtigt for at løse en alvorlig incident og godkendes af en mindre gruppe, fx en akut sikkerhedsrettelse],
)

Change schedule viser, hvornår ændringerne udføres. Så støder de ikke sammen, og de lægges ikke i de tidsrum, hvor kunderne er mest afhængige af servicen.

=== Eksempler hos Green-IT
Når et salgskontor og værksted åbner i Jylland, skal netværk, adgang til ticketsystemet og forbindelsen til hostingudbyderen sættes op. Hver del bliver en normal change med en plan for test og tilbagerulning. Driften udfører den uden for staldenes travleste tidspunkter.

R&D ruller en ny firmware til sensorerne ud til få kunder først og derefter til resten. En fejl rammer så kun få stalde.

=== Stabil drift og mindre risiko
Mange incidents skyldes ændringer. Change Control mindsker risikoen, fordi hver ændring bliver vurderet og testet og kan rulles tilbage. Change schedule forhindrer, at flere ændringer rammer samme system på én gang. Processen må dog ikke blive så tung, at nødvendige rettelser venter. Derfor bør Green-IT gøre så mange ændringer som muligt til standard changes.


== Service Level Management

=== Formål
Service Level Management (SLM) skal sikre klare, aftalte mål for servicen og følge op på dem, så servicen giver den værdi, kunden forventer. Det er SLM, der laver og vedligeholder SLA'erne fra opgave 2.

=== Anvendelse
SLM arbejder i et fast forløb, som gentages: kundens krav afklares, serviceniveauet aftales i en SLA, servicen måles, resultaterne rapporteres, og aftalen gennemgås på et opfølgningsmøde. Ved genforhandling kan aftalen justeres, så den stadig passer til kundens behov.

Målene gøres konkrete med en CSF, der beskriver hvad der skal lykkes (fx at kritiske fejl løses hurtigt), og en KPI, som er tallet der måles (fx at 95 % af prioritet 1-incidents besvares inden 15 minutter).

=== Eksempler hos Green-IT
En landmand med mange dyr i stald kan have brug for døgnsupport, mens en planteavler kan nøjes med hverdage, så SLA'erne får forskellige serviceniveauer.

Green-IT rapporterer oppetid og løsningstider hver måned og aftaler forbedringer, hvis målene ikke nås. Når der åbnes nye kontorer, sikrer SLM samme serviceniveau overalt.

=== Sammenhæng mellem forretningens krav og IT-driften
SLM er bindeleddet mellem forretningen og IT-driften: kundens behov bliver til mål, som styrer, hvilke incidents der løses først, og hvornår ændringer må laves. Målingerne viser omvendt, om løftet holdes.

SLM skal også sikre, at SLA'erne passer til aftalerne med leverandørerne, så Green-IT ikke lover mere, end de kan levere.

== Incident Management

=== Formål
En incident er i ITIL 4 en uplanlagt afbrydelse eller forringelse af en service. Incident Management skal genoprette normal drift for kunden så hurtigt som muligt. Årsagen findes af Problem Management.

=== Anvendelse
#table(
  columns: (auto, 1fr),
  inset: 6pt,
  [*Trin*], [*Hvad sker der*],
  [Registrer], [Ticket oprettes, når kunden eller overvågningen melder fejlen],
  [Prioriter], [Ud fra påvirkning og hast, som styrer tiderne i SLA'en],
  [Diagnosticer], [Servicedesk slår op i vidensbasen efter known errors og workarounds fra Problem Management],
  [Eskaler], [L1 er servicedesk, L2 er specialister i drift og netværk, L3 er udviklere i R&D],
  [Løs og luk], [Servicen genoprettes, kunden bekræfter, og løsningen dokumenteres],
)

Servicedesk er kundernes single point of contact, og ét fælles ticketsystem giver fabrik, bymidte og de kommende jyske værksteder samme overblik.

=== Eksempler hos Green-IT
En sommernat holder sensorerne i en kvægstald op med at sende data, og vagten registrerer en prioritet 1-incident. L2 finder en fejl i gatewayens mobilforbindelse, og en tekniker kører ud med en reservegateway. Workaround: landmanden fører manuelt tilsyn. Værksteder i Jylland vil forkorte køreturen og dermed løsningstiden.

Ligger fejlen i gatewayens software, går sagen til L3 i R&D, og rettelsen udrulles først efter godkendelse i Change Control. Rammer fejlen mange stalde samtidig, er det en major incident med én ansvarlig leder, kortere frister og løbende besked til berørte. Gentager fejlen sig, eller var det en major incident, oprettes et problem til Problem Management. Incidenten lukkes stadig, så snart servicen virker igen.

== Problem Management

=== Formål
Problem Management mindsker sandsynligheden for og konsekvensen af incidents ved at finde faktiske og mulige årsager og styre workarounds og known errors. Et problem er årsagen, eller den mulige årsag, til en eller flere incidents.

=== Anvendelse
*Problem identification:* Problemer findes via tendenser i gentagne incidents, efter en major incident eller proaktivt, fx fra R&D's tests.

*Problem control:* Problemet prioriteres og analyseres for root cause. Kan årsagen ikke fjernes straks, dokumenteres en workaround. Et analyseret, men uløst problem registreres som known error.

*Error control:* Mulige permanente løsninger vurderes. Kan en løsning betale sig, sendes den som change request til Change Control. Ellers beholdes known error og workaround og vurderes løbende.

=== Eksempler hos Green-IT
Efter en firmwareopdatering melder 15 kunder på en uge, at sensorerne på dyr på friland mister forbindelsen om natten. Servicedesken genstarter gatewayen, men ser tendensen og opretter et problem.

R&D finder root cause: firmwaren går i strømsparetilstand og vågner ikke ved svagt signal. Configuration Management viser, hvilke kunder der har firmwaren. Workarounden er at slå strømsparetilstanden fra i appen, og fejlen registreres som known error, så servicedesken, fabrikken og de jyske kontorer bruger samme workaround. Den rettede firmware rulles ud via Change Control.

=== Sammenhæng med Incident Management
Incident Management genopretter servicen, mens Problem Management fjerner årsagen. Incidents med samme årsag kobles til ét problem, og incidentdata er det vigtigste input. Et incident kan lukkes, selv om problemet er åbent, og known errors gør, at servicedesken løser fremtidige incidents hurtigere.

== Configuration Management

=== Formål
Configuration Management skal sikre korrekt og pålidelig information om services og de komponenter, de bygger på. Informationen skal være til at finde, når der er brug for den. Komponenterne kaldes configuration items (CI'er) og kan være hardware, software, dokumentation og aftaler.

=== Anvendelse
Green-IT registrerer CI'erne og relationerne mellem dem i en CMDB (configuration management database). Relationerne er det vigtigste, fordi de viser, hvad der afhænger af hvad. Oplysningerne skal opdateres, helst automatisk, og kontrolleres jævnligt. Ellers stoler medarbejderne ikke på dem.

=== Eksempler hos Green-IT
For hver kunde registrerer Green-IT sensorer, gateway, firmwareversion, SIM-kort og teleselskab samt kundens SLA. Det giver overblik over systemer, hardware og software på tværs af fabrikken, bygningen i byen og de nye jyske kontorer.

=== Fejlhåndtering og forandringsprocesser
Ved en incident viser CMDB'en, hvilke kunder og services der er ramt, så servicedesken kan prioritere efter antallet af ramte kunder. I Problem Management viser den, hvad de berørte kunder har til fælles, fx samme firmware. Change Control bruger relationerne til at vurdere, hvad en ændring påvirker, før den godkendes. Når ændringen er gennemført, opdaterer driften CMDB'en.

== Konkrete eksempler hos Green-IT
Tabellen samler eksemplerne fra hver practice efter casens tre situationer.

#table(
  columns: (auto, 1fr),
  inset: 6pt,
  [*Situation*], [*Practices og eksempel*],
  [Driftsforstyrrelser hos kunderne], [Incident Management genopretter forbindelsen til staldsensorerne, Problem Management finder fejlen i firmwaren, og SLM sætter fristerne],
  [Ændringer ved nye lokationer], [Change Control godkender og planlægger netværk og systemadgang til de jyske kontorer, og SLM sikrer samme serviceniveau overalt],
  [Overblik over systemer, hardware og software], [Configuration Management registrerer sensorer, gateways og firmware pr. kunde i CMDB'en],
)

== Sammenhæng mellem practices
#table(
  columns: (auto, 1fr),
  inset: 6pt,
  [*Sammenhæng*], [*Kort fortalt*],
  [Incident og Problem], [Incident genopretter servicen, Problem undersøger årsagen og deler known errors og workarounds med servicedesken],
  [Change Control og stabil drift], [Hver ændring vurderes, testes og kan rulles tilbage, så ændringer ikke skaber nye incidents],
  [Configuration Management], [CMDB'en viser, hvad der er ramt ved en fejl, og hvad en ændring påvirker],
  [Service Level Management], [Oversætter kundens krav til mål, som styrer prioriteringen i de andre practices],
)

== Samspil, stabil drift og kontinuerlig forbedring
Når sensorer i flere stalde går ned, viser CMDB'en, hvilke kunder der er ramt, og SLA'en afgør prioriteten. Incident Management får kunderne i gang igen, og Problem Management finder årsagen. R&D gennemfører rettelsen via Change Control, og driften opdaterer CMDB'en. Til sidst viser SLM's rapport, om målene blev holdt.

Hvert gennemløb giver data til forbedring. Gentagne incidents bliver til problemer, og known errors gør servicedesken hurtigere. Afvigelser fra SLA'en tager Green-IT op på næste opfølgningsmøde med kunden, hvor de aftaler, hvad der skal forbedres.

= Opgave 5: ITILs vejledende principper og dimensioner

== De syv vejledende principper
ITIL 4 har syv vejledende principper, som gælder for alle beslutninger, uanset practice eller situation.

*Fokus på værdi.* Alt, Green-IT gør, skal skabe værdi for kunden, og det er kunden, der afgør, hvad værdi er. En ny funktion i appen er kun værd at bygge, hvis landmanden får bedre dyrevelfærd eller mindre spild ud af den.

*Start hvor du er.* Det, der virker, skal ikke smides ud. Green-IT kan bygge de jyske kontorer på fabrikkens eksisterende processer og ticketsystem i stedet for at starte forfra.

*Gør fremskridt iterativt med feedback.* Del arbejdet op i små bidder, som hver giver værdi. Green-IT kan fx åbne ét jysk kontor først, lære af det og så åbne de næste.

*Samarbejd og fremme synlighed.* Skjult arbejde giver dobbeltarbejde og beslutninger uden fakta. R&D, salg og drift bør dele ticketsystem og CMDB, så R&D kan se de fejl, landmændene melder.

*Tænk og arbejd helhedsorienteret.* Staldovervågningen afhænger af sensorer, teleselskaber, hosting, app og support. Green-IT skal derfor vurdere en ændring ud fra hele kæden.

*Hold det simpelt og praktisk.* Brug så få trin som muligt, og fjern det, der ikke giver værdi. En proces, der er for kompliceret, bliver ikke fulgt, fx hvis hver lille ændring kræver et møde.

*Optimér og automatisér.* Fjern først de unødvendige trin i en proces, og automatisér den bagefter. Automatiserer man en proces med fejl, sker fejlene bare hurtigere. Når incident-processen er på plads, kan alarmer fra sensorerne oprette tickets automatisk.

== De fire dimensioner af service management

ITIL 4 beskriver fire dimensioner, som skal ses samlet og i balance for hver service: organisationer og mennesker, information og teknologi, partnere og leverandører samt værdistrømme og processer. Overses én af dem, kan servicen ikke leveres som forventet. Udenom ligger eksterne faktorer (PESTLE), for Green-IT fx GDPR, NIS2 og stigende krav til bæredygtighed i landbruget.

=== Organisationer og mennesker
Dimensionen handler om struktur, roller, kompetencer og kultur. Med administration og R&D i byen og produktion og salg på fabrikken kan der opstå en "dem og os"-kultur, hvor R&D udvikler sensorer uden at tale med sælgerne, der kender landmændenes behov. Green-IT bør have klare roller, fx en ejer af staldovervågningen og en fast vagtordning, og en kultur, hvor fejl meldes tidligt. De jyske kontorer skal have de samme roller fra første dag.

=== Information og teknologi
Sensordata om stalde, dyr og kornafgrøder er kernen i Green-ITs services, så dataejerskabet skal være klart. Fx ejer landmanden sine data, mens Green-IT må bruge anonymiserede data til produktudvikling. Persondata er omfattet af GDPR, og adgangen skal styres, så hver landmand kun ser sine egne data. Teknologien skal kunne skalere med de nye kontorer, være sikret og ikke låse Green-IT til én leverandør. Fælles ticketsystem og CMDB giver R&D og driften samme overblik.

=== Partnere og leverandører
Green-IT afhænger af en hostingudbyder, sensorleverandører og teleselskaber, der sender data fra marker og stalde. Leverandørernes nedetid lægges oven i Green-ITs egen, så kritiske dele kan have failover til et andet datacenter. Er Green-IT omfattet af NIS2, gælder sikkerhedskravene også leverandørkæden. Bæredygtighed bør tælle ved valg af leverandører, fx energieffektiv hosting og sensorer, der kan repareres og genbruges.

=== Værdistrømme og processer
En værdistrøm kombinerer aktiviteterne i Service Value Chain i en bestemt rækkefølge, fx fra salgets første møde med landmanden over installation til drift og support. En proces er sammenhængende aktiviteter, der omdanner input til output, fx hvordan en incident registreres og løses. Værdistrømmen krydser fabrikken og bygningen i byen, og det er i overgangene, sagerne venter. Kortlægning afslører spild, fx en ordre, der ligger i dagevis, før værkstedet får besked. Faste processer sikrer, at alle lokationer arbejder ens.

= Afslutning
Green-ITs services skaber værdi, når landmanden får sundere dyr og mindre spild. Det kræver stabil drift, også på de nye kontorer. Vi anbefaler, at Green-IT indfører klare SLA'er, et fælles ticketsystem og en CMDB. Incident Management, Problem Management og Change Control skal kobles sammen, så fejl ikke gentager sig. Green-IT bør indføre ændringerne trinvist, fx ét jysk kontor ad gangen, og tage højde for alle fire dimensioner.

#pagebreak()
= Bilag: AI-prompts
== Thomas’ prompts


=== Prompt 1: Opgave 1 og 2 skrives

_Vedhæftet fil: IT service management 1 case.pdf_

Jeg skal skrive de to første dele af en skoleopgave i IT Service Management (ITSM) med udgangspunkt i ITIL. Besvarelsen skal være på dansk og have et fagligt, men naturligt sprog, som passer til en elev på en IT-uddannelse. Skriv klart og forståeligt, og undgå unødigt kompliceret akademisk sprog.

Opgaven tager udgangspunkt i virksomheden Green-IT.

Green-IT startede oprindeligt som en virksomhed, der producerede hjælpemidler til landbruget, men har udviklet sig til i højere grad at levere IT-baserede løsninger. De arbejder blandt andet med staldovervågning, overvågning af dyr på friland og overvågning af kornafgrøder. Virksomheden fokuserer også på bæredygtige produkter og løsninger, som kan hjælpe landmænd med at arbejde mere effektivt og bæredygtigt.

Green-IT har produktion, administration og Research & Development placeret forskellige steder. Den geografiske spredning giver udfordringer med koordinering. Virksomheden har også behov for at optimere og standardisere deres ITSM-processer for at sikre stabil drift og kontinuerlig forbedring. Green-IT overvejer desuden at udvide med salgskontorer og værksteder i flere jyske byer.

Jeg skal KUN besvare følgende to dele:

==== 1. Service og værdi

Besvar følgende:

===== Service

Forklar begrebet Service ud fra ITIL med egne ord. Forklar derefter, hvordan Green-ITs IT-baserede overvågningsløsninger kan betragtes som services.

===== Value

Forklar begrebet Value ud fra ITIL. Beskriv derefter hvilken værdi Green-ITs services kan skabe for kunderne og for Green-IT selv.

===== Co-creation

Forklar begrebet co-creation. Vis med et konkret eksempel, hvordan Green-IT og deres kunder sammen kan være med til at skabe værdi.

===== Output

Forklar hvad output betyder i ITIL. Giv et konkret eksempel fra Green-IT.

===== Outcome

Forklar hvad outcome betyder i ITIL. Giv et konkret eksempel fra Green-IT, og gør tydeligt opmærksom på forskellen mellem output og outcome.

===== Værdi for Green-ITs kunder

Forklar hvilken værdi Green-ITs services skaber for deres kunder, fx:

- bedre overvågning af dyr, stalde og afgrøder
- hurtigere opdagelse af problemer
- bedre beslutningsgrundlag
- mindre spild
- højere effektivitet
- mere stabil drift
- mulighed for en mere bæredygtig produktion

Brug konkrete eksempler fra casen.

===== Værdi for Green-IT som virksomhed

Forklar hvilken værdi deres services skaber for Green-IT selv, fx:

- højere kundetilfredshed
- stærkere kunderelationer
- mulighed for vækst
- konkurrencefordele
- mere effektiv drift
- et stærkere brand inden for IT og bæredygtighed

Kobl forklaringen til ITILs forståelse af værdiskabelse.


==== 2. Service Level Agreements og risiko

===== Service Level Agreement (SLA)

Forklar kort og tydeligt hvad en Service Level Agreement er, og hvorfor en SLA er vigtig.

Beskriv derefter, hvad Green-ITs SLA'er med deres kunder eksempelvis kan indeholde.

Kom blandt andet ind på:

- aftalt oppetid og tilgængelighed
- responstid ved fejl
- løsningstid ved forskellige typer fejl
- supportens åbningstider
- prioritering af kritiske og mindre kritiske incidents
- vedligeholdelse og planlagte servicevinduer
- backup og eventuel gendannelse
- ansvar mellem Green-IT og kunden
- hvordan kvaliteten af servicen bliver målt og fulgt op

Brug gerne et konkret eksempel. Eksempelvis kan en overvågningsløsning til en landmand have et bestemt krav til oppetid, fordi længere nedetid kan betyde, at kunden ikke opdager problemer med dyr eller udstyr hurtigt nok.

Forklar også hvorfor SLA'er er vigtige for både Green-IT og kunden. Kom fx ind på klare forventninger, kvalitet, ansvar, stabil drift og kundetilfredshed.

===== Risiko

Forklar hvilke risici Green-IT skal forholde sig til i forbindelse med deres IT-services.

Kom som minimum ind på:

*Driftsnedbrud*

Forklar konsekvenserne hvis Green-ITs systemer eller overvågningsløsninger bliver utilgængelige.

*Ændringer*

Forklar hvilke risici der kan være, når Green-IT laver ændringer eller opdateringer i IT-systemerne, og hvorfor ændringer skal planlægges og testes.

*Vækst og nye lokationer*

Forklar hvilke nye risici der kan opstå, hvis Green-IT åbner salgskontorer og værksteder i flere byer, fx udfordringer med netværk, support, standardisering, kommunikation og koordinering.

Kom også gerne ind på relevante risici som:

- tab af data
- backup-fejl
- cyberangreb
- hardware- og softwarefejl
- manglende dokumentation
- manglende medarbejderkompetencer
- afhængighed af bestemte systemer eller leverandører

For hver vigtig risiko skal du kort forklare:

1. Hvad risikoen er.
2. Hvilken konsekvens den kan få.
3. Hvordan Green-IT kan reducere eller håndtere risikoen.


==== Krav til besvarelsen

Skriv besvarelsen som sammenhængende tekst med tydelige overskrifter og underoverskrifter.

Brug ITIL-begreberne korrekt, men forklar dem med egne og forståelige ord.

Kobl teorien direkte til Green-IT-casen. Undgå at skrive lange generelle ITIL-definitioner uden at forklare, hvordan de passer til virksomheden.

Brug konkrete eksempler fra Green-IT, især deres overvågningsløsninger til landbrug.

Sørg for at skelne tydeligt mellem:

- Service og Value
- Output og Outcome
- Service Level Agreement og selve servicen
- Risiko og konsekvens

Besvarelsen skal cirka fylde 2-3 sider i Word med skriftstørrelse 11-12 og almindelig linjeafstand.

Skriv på et niveau, der passer til en ITSM/ITIL-skoleopgave. Undgå at opfinde konkrete oplysninger om Green-IT, som ikke står i casen. Hvis du bruger et eksempel, som ikke direkte står i casen, skal det fremgå tydeligt, at det er et realistisk eksempel.

Hele opgaven er vedhæftet i PDF format.

=== Prompt 2: Google Docs

Kan du oprette en google docs med det for mig?

=== Prompt 3: Forkortelse

6 sider er for meget, få det ned på 4, højst 5 sider

=== Prompt 4: Yderligere forkortelse

_Vedhæftet fil: notes.html_

Den skal være forkortet yderligere, du kan også læse noterne her for inspiration:

=== Prompt 5: Service Level Management

Jeg skal også lave Service Level Management fra punkt 4

=== Prompt 6: Præcisering af punkt 4

Husk at det er fra punkt 4: ITIL-practices i praksis Med udgangspunkt i Green-ITs organisation, services og udfordringer skal I arbejde med de mest anvendte ITIL-practices. Side 2 af 2 Redegøre for formål og anvendelse af følgende practices:

=== Prompt 7: Typst-fil i repoet

Vi skal også have tilføjet vores del, i det her repo: E:\\Coding\\Skole\\itil Du skal ændre på: green-it-caseopgave.typ

=== Prompt 8: Design af præsentation

Make it look pretty, and stylized appropriately

=== Prompt 9: Finjustering af præsentation

some elements go out of the textbox, please fine tune the presentation

=== Prompt 10: Design af dokument

Can you make the google docs prettier and more stylized aswell? still following the guidelines of the assignement ofcourse (font size etc.)

=== Prompt 11: Yderligere forkortelse

Det skal forkortes yderligere.

=== Prompt 12: Underoverskrifter

Jeg tror ændringer og konsekvens på side 3, skal udskille sig mere fra de andre underskrifter

=== Prompt 13: GitHub

Det ser godt ud. Kan du tilføje det hele til github repoet?

=== Prompt 14: Prompt-bilag

Kan du lave mig en google doc, som indeholder alle mine prompts fra denne her samtale? uden dine svar

== Patricks prompts

=== Prompt 1: Typst-skabelon

\@assignment.typ write a basic template for typst. see \@case.pdf

dont do the assignment for me. just create the template with the 12 writing size. there needs to be an index and frontpage. fill in in headings for each "opgave". its in danish

=== Prompt 2: Fordeling af opgaven

\@case.pdf how should we split this assignment between 3 people? assignment 4 takes the most time so share it. person 1 needs to finish and present a day earlier because hes travelling, give him a bit less and stuff he can finish alone. the other two take the rest. make it fair and show who does what.

=== Prompt 3: Thomas’ AI-prompts

Thomas-prompts.md tilføj dem i AI billag. Det er thomases prompts

=== Prompt 4: Gennemgang af mine ændringer

\[Image \#1\] jeg er person 3. git diff er mine ændringer. læs \@case.pdf og \@notes.html hvad mangler der i opgaven?

=== Prompt 5: Rettelser

fix

=== Prompt 6: Tomme overskrifter

hjælp mig med at fylde de tomme overskrifter, så vi har alt med.

=== Prompt 7: Realistiske eksempler

fjern "(realistisk eksempel)" og skriv det ind i indledningen

=== Prompt 8: Casens bulletpoints

er alle casens bulletpoints opfyldt i rapporten?

== Hans' prompts
Min del er skrevet med Claude (Claude Code). Først bad jeg om at få skrevet min del (opgave 3, Incident og Problem Management og de fire dimensioner) i samme stil som Thomas' tekst, så jeg bagefter kunne lære den og fremlægge den. Claude skrev derefter instruktionerne herunder til de AI-agenter, der lavede udkastene, og hvert udkast blev tjekket for ITIL-fejl og sprog og rettet. Til sidst blev teksten forkortet, så opgaven holder sig inden for sidetallet. Instruktionerne står ordret, på engelsk.

=== Prompt 1: Min anmodning
Jeg er person 2: opgave 3 hele, Incident Management og Problem Management fra opgave 4, og de fire dimensioner fra opgave 5. Skriv et udkast i samme stil som Thomas' del, og lær mig det bagefter, så jeg kan fremlægge det.

=== Prompt 2: Fælles instruktion til alle afsnit
```text
You are writing part of a Danish school assignment (TEC Ballerup, IT Service Management 1) for a group of three students. Read these files first:
- The case and assignment text: <scratchpad>/case.txt
- The group's Typst document with the parts already written by a teammate (Opgave 1, Opgave 2 and Service Level Management in Opgave 4): /Users/hans/Skole/itil/green-it-caseopgave.typ . Match its style exactly: plain, concrete Danish, short paragraphs, "=== " subheadings, *bold* labels only where the teammate uses them, invented figures marked "(realistisk eksempel)" like the teammate does, Green-IT examples about staldovervågning, dyr på friland and kornafgrøder, the planned offices and workshops in 2-3 Jutland towns, and the geographic spread between the old building in town (administration, direction, R&D) and the factory (production, purchasing, sales).
- Study notes on ITIL from the course: <scratchpad>/itil.txt (the teammate's text uses ITIL 4 terms; use ITIL 4 terms too, e.g. Service Value Chain with the six activities Plan, Improve, Engage, Design & transition, Obtain/build, Deliver & support).
Hard rules for the text:
- Danish only, Typst markup (headings with ==/===, tables with #table like the teammate). Output ONLY the Typst text for your section, starting with the given heading line. No preamble.
- Never use em dashes or en dashes (no "—" and no "–" except inside the existing document). Use commas, periods or colons instead.
- Do not repeat what Opgave 1, Opgave 2 or the SLM section already explain; refer to them briefly instead ("se opgave 2").
- Be correct about ITIL 4. Do not invent ITIL facts. Invented company specifics must be marked "(realistisk eksempel)".
- The whole assignment must fit 8-10 pages at 12 pt, and the teammate's part is already about 4.5 pages, so stay within your word budget.
```

=== Prompt 3: Opgave 3: Service Value Chain (about 450 to 550 words)
```text
Write the whole of "= Opgave 3: Service Value Chain" with its two subsections exactly as in the document: "== Forslag til Green-ITs Service Value Chain" and "== Aktiviteternes bidrag til værdiskabelse og stabil drift". Propose a concrete value chain for Green-IT: walk the six activities with a Green-IT example each (a table like the teammate's is welcome), and show one value stream through the chain, e.g. a landmand who orders staldovervågning, or a sensor fault being handled. Then explain how the activities contribute to value creation and stable operation, and that the activities are combined into value streams, not run as a fixed sequence. Start your output with the line "= Opgave 3: Service Value Chain".
```

=== Prompt 4: Incident Management (about 250 to 320 words)
```text
Write the section "== Incident Management" for Opgave 4, with the same subsection pattern the teammate used for SLM: "=== Formål", "=== Anvendelse", "=== Eksempler hos Green-IT". Use the case example "håndtering af driftsforstyrrelser på kundernes overvågningsløsninger". Cover the incident flow (registrer, kategoriser, prioriter, diagnosticer, eskaler L1/L2/L3, løs, luk), priorities tied to the SLA in opgave 2, and the service desk across the locations. Start with "== Incident Management".
```

=== Prompt 5: Problem Management (about 230 to 300 words)
```text
Write the section "== Problem Management" for Opgave 4 with "=== Formål", "=== Anvendelse", "=== Eksempler hos Green-IT". Cover problem identification (trend in repeated incidents), problem control (root cause analysis, workaround, known error) and error control, with a Green-IT example such as repeated lost connections from sensors on friland after a firmware update (realistisk eksempel). End with one or two sentences on the link to Incident Management (incident restores service fast, problem removes the cause; known errors help the service desk solve future incidents faster) because the case asks for "sammenhængen mellem Incident Management og Problem Management". Start with "== Problem Management".
```

=== Prompt 6: De fire dimensioner (about 400 to 480 words)
```text
Write the section "== De fire dimensioner af service management" for Opgave 5. Briefly say what the four dimensions are and that a service must be seen from all four, surrounded by external factors (PESTLE, e.g. GDPR, NIS2, bæredygtighedskrav). Then one subsection each: "=== Organisationer og mennesker", "=== Information og teknologi", "=== Partnere og leverandører", "=== Værdistrømme og processer", each with its meaning for Green-IT (culture and roles across the split locations and new offices, sensor data and platform and data ownership, hosting and sensor suppliers and their SLA versus the promise in Green-IT's SLA, value streams like the one in opgave 3). Start with "== De fire dimensioner af service management".
```

=== Prompt 7: Forkortelse
```text
The text is one section of a Danish ITIL 4 school assignment in Typst markup. Read the assignment in <scratchpad>/case.txt and the current section text in <scratchpad>/itsm/person2.json (key given below). Shorten it to at most the given number of words while keeping every element the assignment asks for, the Green-IT examples, ITIL correctness, the "(realistisk eksempel)" markers, Typst validity and the heading lines. Remove repetition, side remarks and anything that repeats opgave 1, 2 or the SLM section. No em or en dashes. Output only the Typst text.
```
