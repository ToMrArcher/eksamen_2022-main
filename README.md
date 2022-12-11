# Oppgaver

## 1
### 1
Hva er utfordringene med dagens systemutviklingsprosess - og hvordan vil innføring av DevOps kunne være med på å løse disse? Hvilke DevOps prinsipper blir brutt?

Shopifly sliter veldig mye med flyt. På grunn av sjeldne deployments, så vil man ofte lage unødvendig kode, eller kode før det trengs.
I tilleg til dette, så har de kun manuelle testere. Dette innebærer at det vil ta lang tid for å få testet koden, og den
kan bli "stuck" i testfasen alt for lenge. Det feiler også på prod, som ødelegger mye av poenget med å teste nå, og de
tar ingen ansvar om å fikse feilene uten å rollbacke. Leveranse fasen har også utrolig trege steg, og vil ta alt for lang
tid å gjøre.

Jeg ville ha først integrert CI/CD med GitHub, for å pushe mindre kode oftere. I samkjør med dette ville jeg ha implimentert
mye automatiske tester, som kjører på hver push til GitHub. For å pushe kode til produksjon, må alle testene kjøre grønt,
og det er derfor ett ansvar av alle å skrive tester på koden de kjører, for å forsikre at koden kjører som planlagt
i fremtiden.


### 2
En vanlig respons på mange feil under release av ny funksjonalitet er å gjøre det mindre hyppig, og samtidig forsøke å legge på mer kontroll og QA. Hva er problemet med dette ut ifra et DevOps perspektiv, og hva kan være en bedre tilnærming?

Det ødelegger flyt. Hvis alt trenger å være helt feilfritt før det kommer ut i produksjon, vil du lage en stor bottleneck.
Dette vil stoppe kode for å nå sluttbruker, og det vil ta lengre tid for å få business verdi (penger) for koden som er 
laget.

### 3
Teamet overleverer kode til en annen avdelng som har ansvar for drift - hva er utfordringen med dette ut ifra et DevOps perspektiv, og hvilke gevinster kan man få ved at team han ansvar for både drift- og utvikling?

For det første, så vil ingen av utviklerene ha noe 'skin in the game'. Dette innebærer at utviklerene ikke har noe grunn
på å levere kode som kjører bra, når de ikke har ansvar for det etter de har levert det. Det vil også ofte skape forvirring
for operasjons teamet, når de ikke har vært med på å utvikle det, og kan dermed ha vanskeligheter med å forstå 
koden og valgene utviklings teamet velget under utvikling.

### 4
Å release kode ofte kan også by på utfordringer. Beskriv hvilke- og hvordan vi kan bruke DevOps prinsipper til å redusere eller fjerne risiko ved hyppige leveraner.
For det første så kan kode som produserer feil resultat bli lagt til i produksjon. Dette kan gjøre tjenesten dårlig eller
ikke brukbar for sluttbruker. Dette kan reduseres med å skrive mange tester, i tillegg til å levere koden ut til et 
lite antall brukere på begynnelsen (blue green deployment), i tillegg til å ha feature toggles på visse deler av koden.


## 2
Settings - Branches - add branch protection rule - name pattern: master (or whatever branch you want to protect) - require pull request before merging - require approvals 1 - require status checks to pass before merging

## 3
Man må legge til secrets i GitHub repoet, som er DockerHub brukernavn og DockerHub Token. Jeg måtte også endre fra
master til main, på grunn av at jeg lagde hoved branches som master istedenfor main.