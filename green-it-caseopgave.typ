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

== Aktiviteternes bidrag til værdiskabelse og stabil drift

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

== Problem Management

== Configuration Management

== Konkrete eksempler hos Green-IT

== Sammenhæng mellem practices

== Samspil, stabil drift og kontinuerlig forbedring

= Opgave 5: ITILs vejledende principper og dimensioner

== De syv vejledende principper

== De fire dimensioner af service management

= Afslutning
// Skriv din afslutning her.

#pagebreak()
= Bilag: AI-prompts
// Indsæt de prompts, du har brugt, hvis du anvender AI.
