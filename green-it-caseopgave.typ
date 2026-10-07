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
  Hans, Thomas, Patrick

  *Hold:* H5

  *Afleveringsdato:* 8. oktober 2026
]

#pagebreak()
#outline(title: [Indholdsfortegnelse], depth: 2)

#pagebreak()
#set page(numbering: "1", number-align: center)
#counter(page).update(1)

= Indledning
// Skriv din indledning her.

= Opgave 1: Service og værdi

== Service, værdi, co-creation, output og outcome

=== Service
I ITIL 4 er en service en måde at skabe værdi for kunden på. Servicen hjælper kunden med at opnå de ønskede resultater, uden at kunden selv skal bære bestemte omkostninger og risici.

Green-ITs overvågningsløsninger til stalde, dyr på friland og kornafgrøder er derfor services. Landmanden får ikke kun udstyr, men en samlet løsning, fx sensorer, en app med data og alarmer, opdateringer og support (et realistisk eksempel). Green-IT bærer omkostningerne og risikoen ved at udvikle og drive systemet.

=== Value
Value (værdi) er i ITIL den opfattede fordel, nytte og betydning, som noget har for en interessent. Værdien er subjektiv: servicen er det, Green-IT leverer, mens værdien er det, kunden oplever at få ud af den.

Den samme service kan derfor have forskellig værdi. For en landmand med en stor stald kan staldovervågning være afgørende for dyrevelfærden, mens en planteavler især værdsætter data om sine kornafgrøder.

=== Co-creation
Co-creation betyder, at værdi skabes i samarbejde mellem Green-IT og kunden. Et realistisk eksempel: Landmanden fortæller, hvilke grænser for temperatur og luftfugtighed der passer til hans dyr, reagerer på alarmerne og melder falske alarmer tilbage. Green-IT justerer opsætningen, og R&D bruger erfaringerne til at forbedre produktet.

=== Output
Et output er det konkrete, som en service leverer. Hos Green-IT kan det være, at systemet sender en alarm til landmandens telefon, når temperaturen i stalden bliver for høj.

=== Outcome
Et outcome er det resultat, kunden opnår ved at bruge outputtet. Fordi alarmen kommer i tide, kan landmanden tjekke ventilationen, så dyrene undgår varmestress. Outcome er sundere dyr og færre tab, ikke selve alarmen.

Et output kan godt leveres uden et outcome: hvis alarmen ikke bliver læst, har systemet leveret, men kunden har ikke opnået noget.

== Værdi for kunderne og forretningen

=== Værdi for Green-ITs kunder
En service skaber værdi ved at give kunden de ønskede outcomes, spare omkostninger og mindske risici. For landmanden betyder det, at stalde, dyr på friland og kornafgrøder kan overvåges døgnet rundt, så sygdom, udstyrsfejl eller udbrudte dyr opdages hurtigt. Data om temperatur, fugt og adfærd giver et bedre beslutningsgrundlag, så vand, foder, gødning og energi bruges mere præcist. Det giver mindre spild, mere stabil drift og bedre dyrevelfærd og dermed en mere bæredygtig produktion.

=== Værdi for Green-IT som virksomhed
ITIL lægger vægt på, at værdi skabes for alle interessenter. Når landmændene får værdi, får Green-IT tilfredse og loyale kunder, et stærkere brand inden for bæredygtighed og et grundlag for at vokse med nye kontorer i Jylland. Omkring 100 års landbrugserfaring kombineret med moderne IT er en konkurrencefordel, og kundernes feedback bruges til at forbedre produkter og processer.

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
  [Backup og gendannelse], [Daglig backup, højst 24 timers datatab, gendannelse inden for 8 timer],
  [Ansvar], [Green-IT: platform, sensorer og opdateringer. Kunden: strøm, internet og at reagere på alarmer],
  [Måling og opfølgning], [Månedlig rapport og kvartalsvist servicemøde],
)

Oppetidskravet er højt, fordi nedetid en varm sommernat kan betyde, at landmanden ikke opdager, at ventilationen er gået i stå. Derfor har kritiske fejl døgnsupport, mens mindre fejl kan vente.

SLA'en er vigtig for begge parter, fordi den giver klare forventninger, tydeligt ansvar og et grundlag for at måle kvaliteten og planlægge driften. Den bør måle det, kunden oplever: hvis serveren er oppe, men alarmerne ikke når frem, er servicen reelt nede.

== Risici ved driftsnedbrud, ændringer og vækst

En risiko er en mulig hændelse, der kan skade Green-IT eller kunderne. Risikoen er det, der kan ske, og konsekvensen er effekten, hvis det sker.

=== Driftsnedbrud
*Risiko:* Platform, servere, netværk eller alarmsystem bliver utilgængeligt.

*Konsekvens:* Problemer med dyr og afgrøder opdages ikke i tide. Det kan give tab, brud på SLA'en og mistet tillid, og ét nedbrud kan ramme mange kunder.

*Håndtering:* Redundante servere og netværk, overvågning af egne systemer, en fast incidentproces og en nødprocedure, så landmanden kan føre manuelt tilsyn.

=== Ændringer
*Risiko:* En opdatering kan indeholde fejl, fx ny sensorsoftware, der afbryder forbindelsen (realistisk eksempel).

*Konsekvens:* Nedbrud hos mange kunder på én gang, især hvis ændringen ikke kan rulles tilbage.

*Håndtering:* Ændringer risikovurderes, testes, godkendes og lægges i et servicevindue med en plan for tilbagerulning. De kan rulles gradvist ud, og kunderne varsles.

=== Vækst og nye lokationer
*Risiko:* Nye lokationer i Jylland øger den geografiske spredning, som allerede giver koordinationsudfordringer. Det giver risiko for ustabile netværk, for lidt supportkapacitet, manglende standardisering, dårligere koordinering og flere angrebspunkter for cyberangreb.

*Konsekvens:* Ujævn servicekvalitet og længere løsningstider, fordi ansvar og opsætning er uklare.

*Håndtering:* Standardiserede processer og opsætninger før åbning, en fælles servicedesk og et fælles ticketsystem, dokumentation og ens oplæring.

=== Øvrige risici
Øvrige risici er tab af data, fejl i backup, cyberangreb, hardware- og softwarefejl, manglende dokumentation, manglende kompetencer og afhængighed af leverandører. De kan samles i et risk register, hvor hver risiko får en score (impact × frekvens), en ansvarlig ejer og en fast procedure for, hvad der skal gøres, når den indtræffer.

Samlet viser risiciene, at Green-IT har brug for standardiserede ITSM-processer, så det, SLA'erne lover, kan leveres, også når virksomheden vokser.

= Opgave 3: Service Value Chain

== Forslag til Green-ITs Service Value Chain

I ITIL 4 er Service Value Chain kernen i Service Value System. Den omdanner efterspørgsel og muligheder til værdi gennem seks aktiviteter, der bruger practices og udveksler input og output med hinanden. Aktiviteterne er ikke afdelinger. Forslaget er, at hver aktivitet får en ansvarlig, og hver vigtig value stream en ejer, der følger opgaven på tværs af bygningen i byen, fabrikken og de nye kontorer (realistisk eksempel).

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
En svineproducent nær et nyt kontor vil have staldovervågning (realistisk eksempel):

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

Aktiviteterne er ikke et samlebånd, men kombineres efter behov. En sensorfejl kan starte i Engage, når landmanden ringer, gå til Deliver & support og ende i Improve, Design & transition og Obtain/build, hvis mange kunder har fejlen og R&D skal lave ny firmware (realistisk eksempel).

= Opgave 4: ITIL-practices i praksis

== Change Control

== Service Level Management

=== Formål
Service Level Management (SLM) skal sikre, at Green-IT og kunderne har klare, aftalte mål for servicen, og at servicen bliver målt og fulgt op mod de mål. Det er SLM, der laver og vedligeholder de SLA'er, som er beskrevet i opgave 2. Formålet er, at servicen giver den værdi, kunden forventer.

=== Anvendelse
SLM arbejder i et fast forløb, som gentages: kundens krav afklares, serviceniveauet aftales i en SLA, servicen måles, resultaterne rapporteres, og aftalen gennemgås på et opfølgningsmøde. Ved genforhandling kan aftalen justeres, så den stadig passer til kundens behov.

Målene gøres konkrete med CSF'er og KPI'er. En critical success factor (CSF) beskriver, hvad der skal lykkes, fx at kritiske fejl på staldovervågningen løses hurtigt. En key performance indicator (KPI) er tallet, der måles, fx andelen af prioritet 1-incidents, der besvares inden for 15 minutter. Målet, fx mindst 95 % pr. måned, skrives ind i SLA'en (realistiske eksempler).

=== Eksempler hos Green-IT
Før Green-IT tilbyder staldovervågning til en ny kunde, afklarer SLM, hvad der er kritisk for netop den landmand. En landmand med mange dyr i stald kan have brug for døgnsupport, fordi en ventilationsfejl om natten hurtigt bliver alvorlig, mens en planteavler kan nøjes med support på hverdage. Det giver forskellige serviceniveauer i SLA'erne (realistisk eksempel).

Hver måned rapporterer Green-IT oppetid og løsningstider til kunden. Hvis målene ikke er nået, aftales forbedringer, fx flere medarbejdere i vagtordningen. Når Green-IT åbner kontorer og værksteder i Jylland, sikrer SLM, at alle kunder får samme serviceniveau, uanset hvilket kontor der hjælper dem.

=== Sammenhæng mellem forretningens krav og IT-driften
SLM er bindeleddet mellem forretningen og IT-driften. Kundens behov oversættes til konkrete mål, som driften kan arbejde efter: SLA'ens prioriteter styrer, hvilke incidents der løses først, og servicevinduerne bestemmer, hvornår ændringer må gennemføres. Målingerne viser omvendt ledelsen, om servicen leverer det, der er lovet, og hvor der skal forbedres.

SLM skal også sikre, at Green-IT kun lover det, de selv kan levere. Hvis Green-IT lover 99,5 % oppetid, men deres hostingudbyder kun garanterer en lavere oppetid, kan løftet ikke holdes. Derfor skal SLA'erne med kunderne passe til aftalerne med leverandørerne.

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
  [Eskaler], [L1 er servicedesk, L2 er specialister i drift og netværk, L3 er udviklere i R&D (realistisk eksempel)],
  [Løs og luk], [Servicen genoprettes, kunden bekræfter, og løsningen dokumenteres],
)

Servicedesk er kundernes single point of contact, og ét fælles ticketsystem giver fabrik, bymidte og de kommende jyske værksteder samme overblik.

=== Eksempler hos Green-IT
En sommernat holder sensorerne i en kvægstald op med at sende data, og vagten registrerer en prioritet 1-incident. L2 finder en fejl i gatewayens mobilforbindelse, og en tekniker kører ud med en reservegateway. Workaround: landmanden fører manuelt tilsyn. Værksteder i Jylland vil forkorte køreturen og dermed løsningstiden (realistisk eksempel).

Ligger fejlen i gatewayens software, går sagen til L3 i R&D, og rettelsen udrulles først efter godkendelse i Change Control. Rammer fejlen mange stalde samtidig, er det en major incident med én ansvarlig leder, kortere frister og løbende besked til berørte. Gentager fejlen sig, eller var det en major incident, oprettes et problem til Problem Management. Incidenten lukkes stadig, så snart servicen virker igen.

== Problem Management

=== Formål
Problem Management mindsker sandsynligheden for og konsekvensen af incidents ved at finde faktiske og mulige årsager og styre workarounds og known errors. Et problem er årsagen, eller den mulige årsag, til en eller flere incidents.

=== Anvendelse
*Problem identification:* Problemer findes via tendenser i gentagne incidents, efter en major incident eller proaktivt, fx fra R&D's tests.

*Problem control:* Problemet prioriteres og analyseres for root cause. Kan årsagen ikke fjernes straks, dokumenteres en workaround. Et analyseret, men uløst problem registreres som known error.

*Error control:* Mulige permanente løsninger vurderes. Kan en løsning betale sig, sendes den som change request til Change Control. Ellers beholdes known error og workaround og vurderes løbende.

=== Eksempler hos Green-IT
Efter en firmwareopdatering melder 15 kunder på en uge, at sensorerne på dyr på friland mister forbindelsen om natten. Servicedesken genstarter gatewayen, men ser tendensen og opretter et problem (realistisk eksempel).

R&D finder root cause: firmwaren går i strømsparetilstand og vågner ikke ved svagt signal. Configuration Management viser, hvilke kunder der har firmwaren. Workarounden er at slå strømsparetilstanden fra i appen, og fejlen registreres som known error, så servicedesken, fabrikken og de jyske kontorer bruger samme workaround. Den rettede firmware rulles ud via Change Control (realistisk eksempel).

=== Sammenhæng med Incident Management
Incident Management genopretter servicen, mens Problem Management fjerner årsagen. Incidents med samme årsag kobles til ét problem, og incidentdata er det vigtigste input. Et incident kan lukkes, selv om problemet er åbent, og known errors gør, at servicedesken løser fremtidige incidents hurtigere.

== Configuration Management

== Konkrete eksempler hos Green-IT

== Sammenhæng mellem practices

== Samspil, stabil drift og kontinuerlig forbedring

= Opgave 5: ITILs vejledende principper og dimensioner

== De syv vejledende principper

== De fire dimensioner af service management

ITIL 4 beskriver fire dimensioner, som skal ses samlet og i balance for hver service: organisationer og mennesker, information og teknologi, partnere og leverandører samt værdistrømme og processer. Overses én af dem, kan servicen ikke leveres som forventet. Udenom ligger eksterne faktorer (PESTLE), for Green-IT fx GDPR, NIS2 og stigende krav til bæredygtighed i landbruget.

=== Organisationer og mennesker
Dimensionen handler om struktur, roller, kompetencer og kultur. Med administration og R&D i byen og produktion og salg på fabrikken kan der opstå en "dem og os"-kultur, hvor R&D udvikler sensorer uden at tale med sælgerne, der kender landmændenes behov (realistisk eksempel). Green-IT bør have klare roller, fx en ejer af staldovervågningen og en fast vagtordning, og en kultur, hvor fejl meldes tidligt. De jyske kontorer skal have de samme roller fra første dag.

=== Information og teknologi
Sensordata om stalde, dyr og kornafgrøder er kernen i Green-ITs services, så dataejerskabet skal være klart. Fx ejer landmanden sine data, mens Green-IT må bruge anonymiserede data til produktudvikling (realistisk eksempel). Persondata er omfattet af GDPR, og adgangen skal styres, så hver landmand kun ser sine egne data. Teknologien skal kunne skalere med de nye kontorer, være sikret og ikke låse Green-IT til én leverandør. Fælles ticketsystem og CMDB giver R&D og driften samme overblik.

=== Partnere og leverandører
Green-IT afhænger af en hostingudbyder (realistisk eksempel), sensorleverandører og teleselskaber, der sender data fra marker og stalde. Leverandørernes nedetid lægges oven i Green-ITs egen, så kritiske dele kan have failover til et andet datacenter. Er Green-IT omfattet af NIS2, gælder sikkerhedskravene også leverandørkæden. Bæredygtighed bør tælle ved valg af leverandører, fx energieffektiv hosting og sensorer, der kan repareres og genbruges.

=== Værdistrømme og processer
En værdistrøm kombinerer aktiviteterne i Service Value Chain i en bestemt rækkefølge, fx fra salgets første møde med landmanden over installation til drift og support. En proces er sammenhængende aktiviteter, der omdanner input til output, fx hvordan en incident registreres og løses. Værdistrømmen krydser fabrikken og bygningen i byen, og det er i overgangene, sagerne venter. Kortlægning afslører spild, fx en ordre, der ligger i dagevis, før værkstedet får besked (realistisk eksempel). Faste processer sikrer, at alle lokationer arbejder ens.

= Afslutning
// Skriv din afslutning her.

#pagebreak()
= Bilag: AI-prompts
// Indsæt de prompts, du har brugt, hvis du anvender AI.
