1 clr:printchr$(14):printchr$(8):print"{clear}{white}":poke65301,14:poke65305,14:poke1344,0:dimos$(120):tk=1:bt=0:goto100
20 print"{down}{reverse on}Per tirare premi un tasto{reverse off}"
30 getp$:ifp$=""then30
40 d6=int(21*rnd(0))+1:printtab(26)"{up}Hai fatto {reverse on}"d6"{left}{reverse off}":return
60 forp=1to900:next:return
70 forp=1to300:next:return
80 print"{down}I Lupi Mannari si uccidono solo con la":print"Spada fatata,e tu non la possiedi ! !":return
100 print"{clear}{yellow}"tab(10)"La Systems Editoriale":printtab(11)"{down}     presenta     {down}{down}":a$="CONAN":r$="{reverse on}{reverse off}"
105 r$=right$(r$,1)+left$(r$,1):print"{up}"tab(17)r$a$:forkh=0to120:nextkh:ht=ht+1:ifht<15goto105
150 gosub61000:print"{up}{up}{up}":gosub60000:x1=0:print"{clear}":printtab(16)"{yellow}{down}{down}INDICE{down}{down}":gosub61130:forp=1to10:print"{up}";:next:x1=32:gosub61130:x1=0:forp=1to8:print"{up}";:next:printtab(7)"{white}1  Istruzioni":printtab(7)"{down}{down}{down}{down}2  Inizio dell' Avventura {reverse off}"
176 gosub10500:ifn>2thenprint"{up}{up}":goto176
177 onngoto210,400
210 print"{clear}Stai iniziando una avventura ispirata ad":print"una storia dell'eroico CONAN.     ":print"Puoi scegliere il personaggio tra quelli":print"proposti o farlo creare al computer in"
242 print"maniera casuale.":print"{down}Le caratteristiche sono 6 :":print"Forza(Fo),Intelligenza(In),Destrezza(De)":print"Fortuna(Fr),Robustezza(Ro),Fascino(Fa);":print"le caratteristiche hanno un valore,dato"
290 print"da 6 + due dadi a 6 (minimo 8 max 18).":print"{down}L' abilita' nell' uso delle armi  e'":print"data dalla propria forza x 5 ;cosi' un":print"personaggio con forza 10 usa le armi al"
330 print"{reverse on}50 %{reverse off} ,avra' il 50 % di probabilita' di":print"colpire il nemico o parare i suoi colpi.":print"Le altre caratteristiche serviranno in":print"varie occasioni e verranno specificate"
370 print"mano a mano che dovrai usarle .":gosub60000:print"{down}{clear}Quando sarai cresciuto nelle tue":print"{down}caratteristiche sino a  20 , e nella":print"{down}capacita' di combattimento oltre il ":print"{down}200 % , diventerai un Eroe Divino !"
389 print"{down}{down}Comunque le caratteristiche non crescono":print"mai oltre 20,limite massimo,ma possono{down}  calare sino a 0,e sei morto!":print"{down}{down}Attenzione ai {purple}Vampiri{white} , {yellow}Licantropi Neri":print"{down}{white}e ai {cyan}Lupi Mannari{white};sono PERICOLOSISSIMI !"
399 gosub60000
400 print"{clear}"tab(8)"{reverse on} Scelta del Personaggio {reverse off}":print"{down}{down}{reverse on} * 1 * {reverse off} Swenha l'apprendista  maga":print"{down}Fo=9;In=18;De=11;Fr=14;Ro=11;Fa=17.":print"{down}{down}{reverse on} * 2 * {reverse off} Thurlkh  il guerriero":print"{down}Fo=17;In=10;De=13;Fr=10;Ro=16;Fa=9."
540 print"{down}{down}{reverse on} * 3 * {reverse off} Colvor  l' avventuriero":print"{down}Fo=12;In=14;De=16;Fr=18;Ro=12;Fa=12.":print"{down}{down}{reverse on}{yellow} * 4 * {reverse off}{white} Preferisco un personaggio rando-":print"mizzato."
580 gosub10500:ifn>4thenprint"{up}{up}":goto580
600 onngoto10000,10100,10200,1010
700 ee=0:iffo>19thenee=ee+1:fo=20
710 ifin>19thenee=ee+1:in=20
720 ifde>19thenee=ee+1:de=20
730 iffr>19thenee=ee+1:fr=20
740 ifro>19thenee=ee+1:ro=20
750 iffa>19thenee=ee+1:fa=20
760 return
800 ifrf<roandro>rfthenprint"{down}Hai recuperato un punto di Robustezza!":rf=rf+1
810 ww=0:foryy=1towx:ifleft$(os$(yy),1)="F"thenww=1:xw=yy:yy=wx+1
815 nextyy:ifww=1andrf<rothen840
830 goto890
840 print"Vuoi bere il Filtro magico che cura le":print"Ferite ?  (sei a Ro"rf" su{160}max"ro")":print"{down}{reverse on}{light blue}batti tasto {white}{161}S{reverse off}{161}{reverse on}{light blue} per si  o {white}{161}N{reverse off}{161}{reverse on}{light blue} per no {reverse off}{white}{up}{up}"
850 gets$:ifs$<>"s"ands$<>"n"then850
860 ifs$="n"then899
870 ifs$="s"thenrf=ro:print"{down}Sei di nuovo a Robustezza "rf"{left}       !"
880 ww=0:yy=0:os$(xw)="":xw=0
890 gosub60000
899 return
900 ss$="":fory=1to8:reads$(y):next:x=int(8*rnd(0))+1:ss$=s$(x):fory=1to8:s$="":next:return
1010 print"{clear}Generazione Randomizzata del Personaggio":gosub41000:gosub10300:print"{down}Nome del personaggio {reverse on} "np$" {reverse off}":gosub60:fo=d3:print"{down}{down}{down}Fo = "fo:gosub10300:in=d3:print"{down}In = "in:gosub10300:de=d3:print"{down}De = "de
1023 gosub10300:fr=d3:print"{down}Fr = "fr:gosub10300:ro=d3:print"{down}Ro = "ro:gosub10300:fa=d3:print"{down}Fa = "fa:at=fo*5:rf=ro:gosub60000
1200 print"{clear} Situazione del personaggio {reverse on}"np$"{reverse off}"
1210 gosub700:print"{down}Forza (Fo)      = "fo:print"Intelligenza(In)= "in:print"Destrezza(De)   = "de:print"Fortuna (Fr)    = "fr:print"Robustezza{160}(Ro) = "ro" (originaria)":print"Robustezza (Ro) = "rf" ({reverse on} attuale  {reverse off})"
1270 print"Fascino (Fa)    = "fa:print"{down}Capacita' combattimento {reverse on}"at"{left}% {reverse off}":print"{down}Denaro {92}"dn:print"{down}{reverse on}{green} oggetti speciali o magici {reverse off}{white}":yy=0:foryy=1towx:ifleft$(os$(yy),1)="F"thenkf=kf+1
1306 ifleft$(os$(yy),1)="T"thenkt=kt+1
1308 ifleft$(os$(yy),1)="A"thenka=ka+1
1310 ifleft$(os$(yy),1)="S"thenks=ks+1
1320 next:ifkf=1thenprint"una dose di Filtro magico"
1324 ifkf>1thenprintkf" dosi di Filtro magico"
1326 ifkt=1thenprint"un Talismano portafortuna"
1328 ifkt>1thenprintkt" Talismani portafortuna"
1330 ifka=1thenprint"un Amuleto ";
1332 ifka>1thenprintka" Amuleti ";
1334 ifks>0thenprint" una Spada Fatata"
1335 k0=ka+kt+kf+ks:ifk0=0thenprint"{down}Nessuno{up}"
1336 ka=0:kt=0:kf=0:k0=0:print:gosub60000:ifee=6andat>200then9000
1340 ee=0:ifsu=1thenreturn
1350 print"{clear}{yellow}"tk"'  Settimana d' avventura{white}":printnp$",sei nella taverna dello Zoppo":print"dove si trovano avventurieri e mercenari":print"e ascolti i loro discorsi.":gosub70
1390 print"{down}{down}{down}{down}{down}":gosub61010:print"{yellow} {reverse on}Ti si offrono varie avventure e puoi  ":print" {reverse on}         sceglierne una .             {reverse off}{up}":gosub60000:print"{clear}":gosub900:la$=ss$:gosub900:lb$=ss$:ifleft$(la$,1)="L"thena9=2500:goto1479
1471 ifleft$(la$,1)="V"thena9=4000:goto1479
1472 ifleft$(la$,1)="D"thena9=1000:goto1479
1473 a9=500
1479 print"{clear}{up}{reverse on}* 1 *{reverse off} Un "la$" che":print"vive presso "lb$:print"terrorizza gli abitanti della regione ;":print"taglia di {reverse on}{yellow}{92}"a9"{left}{white}{reverse off} a chi lo uccidera'.":gosub60:gosub1600:print"{down}{reverse on}* 3 *{reverse off} Sta' per partire la Carovana"
1510 print"che tutti i mesi si reca nella stupenda":print"citta' di Marrakesch ,dove vengono fab-":print"bricate armi e oggetti magici !":gosub60:goto1710
1600 gosub900:za$=ss$:gosub900:zb$=ss$:gosub900:zc$=ss$:gosub900:zd$=ss$:ifleft$(zb$,2)=" F"orleft$(zb$,2)=" M"thenza$="Hanno rapito "
1620 ifleft$(zb$,2)=" D"thenza$="E'fuggita "
1650 print"{down}{reverse on}* 2 *{reverse off}{right}"za$;"la"zb$:print"di un "zc$" e si offre":print"una ricompensa:{yellow}"zd$:print"{white}a chi la riportera'.":zk=0:gosub60:restore:return
1710 print"{down}{reverse on}* 4 *{reverse off} Il  Barone  Burlund  cerca merce-":print"nari .  Offre {yellow}{92} 1000{white} di premio d'ingag-":print"gio per un mese di servizio .":gosub60:ifrf>=rothen1900
1800 print"{down}{reverse on}* 5 *{reverse off} Restare in taverna per una ":print"settimana e recuperare un punto di":print"Robustezza;costo vitto e alloggio {purple}{92} 100{white}":gosub60
1900 gosub10500:ifn>5thenprint"{up}{up}":goto1900
1920 ifrf>=roandn=5thenprint"{up}{up}":goto1900
1930 onngoto2000,4000,3000,5000,1950
1950 ifdn>=100then1980
1960 print"{clear}"np$",lo Zoppo non fa credito !":print"E' meglio che ti guadagni del denaro !":gosub60:goto1390
1980 dn=dn-100:rf=rf+1:print"{clear}E'passata una settimana e hai recuperato":print"un punto di robustezza;sei ora a Ro"rf:tk=tk+1:gosub60:print"Possiedi {92}"dn:gosub60:goto1390
2000 tk=tk+1:print"{clear}Stai dirigendoti verso":print"{down}"lb$:fu=0:im$="":nm$="":gosub20000:ifi<=3then2100
2050 fu=0:bt=0:gosub30000
2100 print"{down}Sei arrivato senza altri incontri":print"presso "lb$:print"dove si erge una torre spaventosa !{down}{down}":x1=16:gosub61130:gosub700:gosub810:print"{clear}Il "la$:print"sbuca da dietro la Torre    !":gosub60:print"{down}Ti rendi conto che si tratta di uno"
2150 print"scontro mortale .":gosub60:print"{down}Puoi:":print"{down}{reverse on}* 1 *{reverse off} rinunciare e fuggire":print"{down}{reverse on}* 2 *{reverse off} accettare il combattimento{down}"
2190 gosub10500:ifn>2thenprint"{up}{up}":goto2190
2210 onngoto2220,2300
2220 print"{clear}Con questa fuga ti sei coperto di":print"{down}ignominia!":gosub60:print"{down}Sei tornato in citta' dove la notizia":print"{down}della tua fuga ancor prima di combattere":print"si e' gia' sparsa .":gosub60
2250 print"{down}Perdi un punto di fascino !":fa=fa-1:gosub800:goto1200
2300 gosub35000:print"{clear}Sei ritornato in citta' con i resti ":print"{down}del "la$" .":gosub60:print"{down}Incassi il premio di {92}"a9" e la tua":print"{down}fama di guerriero cresce :":iffa>19then2360
2350 print"{down}{down}Il tuo fascino e' cresciuto di uno":fa=fa+1
2360 dn=dn+a9:print"{down}Possiedi ora {92} "dn"{down}":gosub800:goto1200
3000 print"{clear}Sei al caravanserraglio e ti informi":qr=0:qw=0:print"{down}sulla Carovana per Marrakesch .":print"{down}Il biglietto per il viaggio , che dura":print"{down}un mese , e' di {92} 1000 andata e ritorno"
3006 la$="":print"{down}ma il capocarovaniere cerca anche un":print"{down}mercenario per la scorta della carovana":print"{down}Puoi :":print"{down}{reverse on}* 1 *{reverse off} rinunciare al viaggio":print"{down}{reverse on}* 2 *{reverse off} pagare i {92} 1000":print"{down}{reverse on}* 3 *{reverse off} arruolarti come scorta"
3110 gosub10500:ifn>3thenprint"{up}{up}":goto3110
3130 onngoto1200,3140,3230
3140 ifdn>=1000then3210
3150 print"{clear}{down}Possiedi solo {92} "dn" e vieni":print"{down}allontanato dalla carovana .":print"{down}Il capocarovaniere ti dice :":print"{down}"np$" torna quando avrai piu soldi!":gosub60000:goto1200
3210 dn=dn-1000:print"{clear}Dopo un mese di viaggio tranquillo,":tk=tk+4:qw=1:q0=4:gosub50542:goto3500
3230 print"{clear}Sei arruolato come mercenario di scorta":gosub60
3240 forq1=1to4:tk=tk+1:q2=int(3*rnd(0))+1:onq2goto3270,3300,3400
3270 print"{down}Questa settimana sei di retroguardia":gosub60:nm$="":im$="":gosub20000:im$="":ifi>4thengosub30000
3291 ifi=4thenprint"{down}{down}Nessun incontro questa settimana .":gosub60
3292 fu=0:goto3470
3300 print"{down}Questa settimana stai a fianco del":print"Capocarovana .":gosub60:q3=int(3*rnd(0))+1:onq3goto3330,3340,3370
3330 print"{down}Il viaggio procede tranquillo per tutta":print"la settimana,nessun incontro pericoloso.":gosub60:goto3470
3340 print"{down}Un gruppo di briganti si sta' dirigendo":print"verso la carovana .":q4=int(2*rnd(0))+1:onq4goto3344,3350
3344 print"{down}Vieni mandato ad intercettarli":gosub60:nm=int(2*rnd(0))+3:nm$="":im$="":print"{down}Ti accorgi che i briganti sono "nm:gosub60000:print"{clear}":gosub21000:iffu=1thenprint"{clear}Con questa fuga ti sei coperto di "
3348 iffu=1thenprint"{down}disonore,perdi un punto di fascino     ":fa=fa-1
3349 goto3470
3350 print"{down}Il Capo dei briganti lancia una sfida:":print"lui contro il campione della carovana":print"in un combattimento all'ultimo sangue .":gosub60:print"{down}Come mercenario sei designato quale "
3358 print"Campione della carovana !":gosub60000:gosub35000:print"{down}Con questo combattimento la tua fama":print"{down}di guerriero aumenta !":iffa>19thenfa=20:goto3470
3366 print"{down}Sei cresciuto di un punto di Fascino .":fa=fa+1:goto3470
3370 gosub11000:print"{down}Un gruppo di"nm" passeggeri della caro-":print"vana si rivelano Predoni travestiti e,":print"furtivi,tentano di ucciderti  per poter":print"predare la carovana con tranquillita'."
3375 gosub60:print"{down}Per accorgerti dell'inganno devi tirare":print"un dado a 21 e il risultato deve essere":print"uguale o inferiore alla tua ":print"Intelligenza ("in") .":gosub20:gosub60:ifin>=d6then3392
3389 print"{down}Non te ne sei accorto,ricevi "nm" ferite":rf=rf-nm:goto3394
3392 print"{down}Te ne sei accorto ed entri in mischia ":print"{down}con i "nm" Predoni !"
3394 gosub60000:print"{clear}":fu=0:nm$="":im$="":gosub21000:iffu=0then3470
3395 iffu=1thenprint"{clear}Con la tua fuga hai abbandonato al ":q1=4
3396 iffu=1thenprint"{down}saccheggio la carovana !":fa=fa-1:qq=99
3397 iffu=1thenprint"{down}Questo ti fa perdere un punto di Fascino":gw=1
3398 gosub60:print"{down}Senza guida ti sei perso!":gosub800:goto3480
3400 fu=0:print"{down}Questa settimana sei mandato in avanti":print"{down}per esplorare il percorso .":fu=0:im$="":nm$="":gosub20000:im$="":ifi>3thengosub30000
3407 iffu=0then3470
3408 iffu=1thenprint"{down}Con questa opportuna fuga hai avvertito"
3410 iffu=1thenprint"{down}la carovana del pericolo e ricevi {92} 100"
3412 iffu=1thenprint"{down}di premio dal capo carovana .":dn=dn+100
3414 iffu=1thenprint"{down}Possiedi ora {92} "dn" .":fu=0
3470 print"{down}Terminata la "q1" settimana di scorta":gosub700:gosub800:nm$=""
3480 im$="":print"{clear}":next:ifqq=99goto50000
3481 ifqr=1goto3980
3490 print"{down}Dopo un mese di viaggio con la carovana"
3500 print"sei giunto  nella  favolosa  citta'  di":printtab(15)"{down}{down}{yellow}MARRAKESCH{white}{up}{up}":gw=0:x1=0:gosub61260:forp=1to10:print"{up}";:next:x1=12:gosub61130:forp=1to10:print"{up}";:next:x1=21:gosub61130:x1=5:x2=27:gosub61400:forp=1to15:print"{up}";:next:x1=32:gosub61260:print"{up}{up}":gosub61500:forp=1to13
3516 print"{up}";:next:printtab(12)"{brown}{167}{reverse on}{green} {reverse off}{162}  {brown}{167}{reverse on}{white} {reverse off}{162} {brown}{167}{white}{reverse on} {reverse off}{162}  {brown}{167}{reverse on}{red} {reverse off}{162}":printtab(12)"{brown}{167} {green}{184}{reverse on}{185}{reverse off} {brown}{167} {white}{184}{reverse on}{162}{reverse off}{brown}{167} {white}{184}{reverse on}{185}{reverse off} {brown}{167} {red}{184}{reverse on}{162}{reverse off}":printtab(12)"{brown}{167}    {170}   {170}    {170}":forp=1to9:print"{down}";:next:gosub60000
3520 print"{clear}Ci sono 3 negozi disponibili:":print"{down}{reverse on}* 1 *{reverse off} l' armaiolo fatato":print"{down}{reverse on}* 2 *{reverse off} l' alchimista":print"{down}{reverse on}* 3 *{reverse off} il costruttore di cose magiche{down}":forgg=1to20:print"- ";:next:print"{down}{reverse on}{green}* 4 *{white}{reverse off} voglio rivedere il personaggio"
3552 print"{down}{reverse on}{yellow}* 5 *{white}{reverse off} ritorno a casa "
3553 gosub10500:ifn>5thenprint"{up}{up}":goto3553
3555 onngoto3560,3620,3700,3790,3840
3560 print"{clear}Il Negozio dell' ARMAIOLO fatato":print"{down}Sono disponibili 3 Spade Fatate  :":print"{down}{down}{reverse on}ATTENZIONE{reverse off} Non e' permesso possedere":print"{down}piu di una spada fatata !{160}!{160}!{160}!{160}!":ifks>0thenprint"{down}Tu l'hai gia' !":goto3800
3576 print"{down}{down}{reverse on}* 1 *{reverse off} Spada da +  50 % = {92}  7500":print"{down}{reverse on}* 2 *{reverse off} Spada da +  75 % = {92} 10000":print"{down}{reverse on}* 3 *{reverse off} Spada da + 100 % = {92} 20000":gosub38000
3583 gosub10500:ifn>4thenprint"{up}{up}":goto3583
3585 print"{down}":onngoto3590,3595,3600,3610
3590 ifdn<7500then39000
3592 ks=1:dn=dn-7500:at=at+50:wx=wx+1:os$(wx)="Spada fatata +50":goto3605
3595 ifdn<10000then39000
3596 ks=1:dn=dn-10000:at=at+75:wx=wx+1:os$(wx)="Spada fatata +75":goto3605
3600 ifdn<20000then39000
3602 ks=1:dn=dn-20000:at=at+100:wx=wx+1:os$(wx)="Spada fatata +100":goto3605
3605 print"{down}Hai acquistato la Spada Fatata":goto3800
3610 print"{clear}":goto3520
3620 print"{clear}Il negozio dell' ALCHIMISTA":print"{down}Sono disponibili 3 filtri magici che":print"{down}aumentano delle caratteristiche :":print"{down}{reverse on}* 1 *{reverse off} + 1 in Forza        {92} 2000":print"{down}{reverse on}* 2 *{reverse off} + 1 in Destrezza    {92} 1000"
3630 print"{down}{reverse on}* 3 *{reverse off} + 1 in Intelligenza {92} 1000":gosub38000
3634 gosub10500:ifn>4thenprint"{up}{up}":goto3634
3638 print"{down}":onngoto3640,3650,3660,3610
3640 ifdn<2000then39000
3642 dn=dn-2000:fo=fo+1:at=at+5:print"{down}Hai +1 in forza":goto3800
3650 ifdn<1000then39000
3652 dn=dn-1000:de=de+1:print"{down}Hai +1 in Destrezza":goto3800
3660 ifdn<1000then39000
3662 dn=dn-1000:in=in+1:print"{down}Hai +1 in Intelligenza":goto3800
3700 print"{clear}La Bottega degli OGGETTI Magici":print"{down}{reverse on}* 1 *{reverse off} Talismano (+1 in Fortuna) {92} 1000":print"{down}{reverse on}* 2 *{reverse off} Amuleto (+1 Intelligenza) {92} 1000":print"{down}{reverse on}* 3 *{reverse off} Filtro Magico             {92} 1000"
3707 print"     (che cura le ferite)":gosub38000
3720 gosub10500:ifn>4thenprint"{up}{up}":goto3720
3726 print"{down}":onngoto3730,3740,3750,3610
3730 ifdn<1000then39000
3732 dn=dn-1000:wx=wx+1:os$(wx)="Talismano":print"{down}Hai acquistato un "os$(wx):fr=fr+1:goto3800
3740 ifdn<1000then39000
3742 dn=dn-1000:wx=wx+1:os$(wx)="Amuleto":print"{down}Hai acquistato un "os$(wx):in=in+1:goto3800
3750 ifdn<1000then39000
3752 dn=dn-1000:wx=wx+1:os$(wx)="Filtro Magico":print"{down}Hai comperato un "os$(wx):goto3800
3790 su=1:gosub1200:su=0:print"{clear}":goto3520
3800 gosub700:print"{down}Vuoi continuare gli acquisti  ( S/N )?"
3810 gets$:ifs$=""then3810
3820 ifs$="s"thenprint"{clear}":goto3520
3830 ifs$="n"then3840
3835 goto3810
3840 print"{clear}Si riprende la via del ritorno !":gosub60:qr=1:ifqw=1thentk=tk+4:print"Dopo 4 settimane di viaggio,":q0=4:gosub50542
3971 ifqw=1thenqw=0:goto3980
3972 goto3240
3980 print"sei ritornato nella tua citta' e la tua situazione e':":qr=0:su=0:goto1210
4000 x=int(4*rnd(0))+1:onxgoto4001,4002,4003,4001
4001 zq$=" Segretario privato":goto4010
4002 zq$="l' Amministratore":goto4010
4003 zq$=" Gran Khan":goto4010
4010 print"{clear}Sei ricevuto dal"zq$:print"del "zc$" e ti":print"viene fornita una descrizione accurata":print"della "zb$". Viene":print"confermata la ricompensa pattuita :":print"'{yellow}"zd$"{white}'.":gosub60:print"{down}Da informazioni raccolte pare che "
4017 ifleft$(zb$,2)=" D"thenzg$="nascosta":zh$=" con il suo Amante":goto4019
4018 zg$="custodita":zh$=" da una banda di briganti"
4019 print"la"zb$" sia ora":printzg$;zh$:zr=int(4*rnd(0)):onzrgoto4024,4025,4026,4027
4024 zi$="rovine del Castello Stregato":goto4030
4025 zi$="catacombe della Citta' Morta":goto4030
4026 zi$="misteriose Caverne Nere":goto4030
4027 zi$="montagne degli Spettri Urlanti":goto4030
4030 print"a due settimane di viaggio , nelle":printzi$;" .":gosub60:print"{down}puoi :":print"{down}{reverse on} * 1 * {reverse off} Rinunciare all' incarico":print"{down}{reverse on} * 2 * {reverse off} Accettare la missione  "
4035 gosub10500:ifn>2thenprint"{up}{up}":goto4035
4036 onngoto1350,4050
4037 print"{up}{up}":goto4035
4050 la$="":forzp=1to2:tk=tk+1:print"{clear}"zp"{left}' settimana del viaggio d'andata":print"{down}Stai viaggiando da solo verso le ":print"{down}"zi$:gosub60:im$="":nm$="":gosub20000:fu=0:ifi<4then4070
4063 ifi=4thenprint"{down}{down}Viaggio tranquillo per questa settimana{down}":goto4070
4064 ifi>4andi<8then4069
4066 gosub12000:gosub11000:gosub6860:gw=1:print"{down}Stai passando attraverso un Bosco":fu=0:gosub33020:iffu=0thengosub5520:goto4070
4069 ifi>4andi<8thengosub30000
4070 print"{down}Terminata la"zp"{left}'settimana di viaggio":im$="":nm$="":gosub700:gosub800:next:print"{clear}Sei arrivato , all' alba , in vista":print"{down}delle "zi$" .":gosub60:gosub40000:ifzz=1then4130
4123 print"{down}Hai evitato le sentinelle,":ifleft$(zb$,2)=" D"thenzm$=" l'Amante":goto4126
4125 zm$=" il Capo"
4126 print"{down}hai sorpreso"zm$" da solo":print"{down}e inizia un duello all'ultimo sangue !":gosub60000:goto4200
4130 gosub60000:print"{clear}Sei stato scorto da qualcuno e vieni":zz=0:print"{down}circondato da una dozzina di loschi":print"{down}figuri . Il loro capo ti propone un":print"{down}duello all'ultimo sangue ; chi alla"
4170 print"{down}fine sara' sopravissuto potra' prendersi":print"la "zb$" .":gosub60:print"{down}Puoi :":print"{down}{reverse on}* 1 *{reverse off} rinunciare e tornare indietro":print"{down}{reverse on}* 2 *{reverse off} accettare il combattimento"
4185 gosub10500:ifn>2thenprint"{up}{up}":goto4185
4187 onngoto4310,4200
4200 gosub35000:print"{clear}Alla morte del loro capo gli altri si":print"{down}sbandano e fuggono ! Puoi recuperare la":print"{down}{left}"zb$" .":iffa>19thenfa=20:goto4290
4240 print"{down}Questo ti aumenta un punto in fascino":fa=fa+1
4290 gosub810:goto4351
4310 print"{clear}Burlato e beffeggiato inizi il viaggio":zk=1:print"{down}di ritorno .":gosub60:print"{down}Questo ti fa perdere un punto di Fascino":fa=fa-1:gosub60
4351 forzp=1to2:tk=tk+1:print"{clear}"zp"{left}' settimana del viaggio di ritorno":print"{down}dalle "zi$:gosub60:nm$="":im$="":gosub20000:ifi<4then4370
4363 ifi=4thenprint"{down}{down}Viaggio tranquillo per questa settimana{down}":goto4370
4364 ifi>4andi<8then4369
4366 gosub12000:gosub11000:gosub6860:print"{down}Stai passando attraverso un Bosco":fu=0:gosub33020:iffu=0thengosub5500:goto4370
4369 ifi>4andi<8thengosub30000
4370 print"{down}Terminata la"zp"{left}'settimana di viaggio":im$="":nm$="":gosub700:gosub800:next:print"{clear}Sei ritornato in citta ' .":ifzk=1then4900
4382 print"{down}Ti rechi dal "zc$" e":print"{down}ricevi la ricompensa pattuita .":ifleft$(zd$,1)="O"then4400
4391 ifleft$(zd$,4)="un F"then4500
4392 ifleft$(zd$,4)="un A"then4600
4393 ifleft$(zd$,5)="una P"then4700
4394 ifleft$(zd$,1)="D"then4800
4400 print"{down}{92} 1000 in oro !":dn=dn+1000:print"{down}Possiedi ora {92} "dn:goto4990
4500 print"{down}Un Filtro magico che cura le ferite":wx=wx+1:os$(wx)="Filtro magico":goto4990
4600 print"{down}Un Amuleto incantato che ti accresce":print"{down}di un punto la tua Intelligenza !":wx=wx+1:os$(wx)="Amuleto incantato":in=in+1:goto4990
4700 print"{down}Una Pozione miracolosa che , bevuta ,":print"{down}ti aumenta di un punto la Destrezza":de=de+1:goto4990
4800 print"{down}{92} 2000 in Diamanti !":dn=dn+2000:print"{down}Possiedi ora {92} "dn:goto4990
4900 print"{down}A causa della tua fuga non hai potuto":print"{down}recuperare la "zb$:print"{down}del "zc$:print"{down}e quindi non ricevi ricompensa ."
4990 print"{down}Terminata la missione torni in taverna":gw=0:ifleft$(zd$,4)="un F"thengosub700:gosub810:goto4993
4992 gosub60000
4993 goto1200
5000 print"{clear}Sei ora al servizio del barone Burlund":dn=dn+1000:gd=1:k=1:gw=0:print"per 4 settimane ,hai ricevuto il tuo":print"premio d'ingaggio;possiedi ora {92}"dn:gosub60:forzy=1to4:gosub700:tk=tk+1
5011 print"{down}"k"' settimana di servizio":x=int(12*rnd(0))+1:onxgosub6800,6200,6300,6400,6200,6500,6600,6700,6800,6900,6800,6700:print"{down}Questa settimana  hai il compito di":printga$:printgb$:printgc$:printgd$
5087 gosub60000:fu=0:print"{clear}"tab(10)"{reverse on}{yellow} INIZIA{160}LA{160}MISSIONE {reverse off}{white}":print"{down}Parti dalla Fortezza del Barone Burlund":print"per compiere da solo la tua"k"{left}' missione":gosub20000:im$="":gosub11000:d1=int(3*rnd(0))+1
5193 fu=0:print"{down}Ti stai avvicinando al tuo obbiettivo e":ifleft$(gd$,1)="c"thengosub33000:goto5900
5240 ond1goto5250,5300,5350
5250 print"avvisti di lontano un gruppo di";nm:printnm$" che non{160}si sono ancora":print"accorti della tua presenza ! ":gosub60:print"{down}Puoi :":print"{down}{reverse on}* 1 *{reverse off} allontanarti al galoppo":print"{down}{reverse on}* 2 *{reverse off} avvicinarti deciso  "
5267 print"{down}{reverse on}* 3 *{reverse off} tentare un ' imboscata"
5268 gosub10500:ifn>3thenprint"{up}{up}":goto5268
5270 print"{clear}":onngoto5280,5400,5291
5280 ifnm$<>"armigeri "thenfu=1
5288 ifnm$="armigeri "thenfu=3
5290 goto5900
5291 gosub34010:gosub60000:print"{clear}":goto5420
5300 print"incontri un gruppo di";nm:printnm$;" che ti si fanno incontro !":gosub60:print"{down}Puoi :":print"{down}{reverse on}* 1 *{reverse off} scappare  al galoppo":print"{down}{reverse on}* 2 *{reverse off} avvicinarti risoluto"
5326 gosub10500:ifn>2thenprint"{up}{up}":goto5326
5330 print"{clear}":onngoto5340,5400
5340 ifnm$<>"armigeri "thenfu=1
5342 ifnm$="armigeri "thenfu=3
5349 goto5900
5350 print"t' imbatti all'improvviso in un gruppo":print"di"nm;nm$" !":print"{down}La sorpresa e' reciproca e siete a":print"contatto d' armi !":gosub60:print"{down}Puoi:":print"{down}{reverse on}* 1 *{reverse off} tentare di fuggire":print"{down}{reverse on}* 2 *{reverse off} combattere"
5370 gosub10500:ifn>2thenprint"{up}{up}":goto5370
5382 print"{clear}":onngosub24000,21000:goto5900
5400 ::print"{clear}{down}Hai intercettato i"nm;nm$" !{down}"
5420 gosub60:im$="":gosub21000:goto5900
5500 rem
5520 print"Frugando tra i cadaveri trovi :"
5530 ift=0then5600
5540 printt$" per {92} "t:dn=dn+t:t$="":t=0:print"Possiedi ora {92} "dn" .":return
5600 ifrm=1then5630
5602 ifrm=2then5640
5608 print"Un "gf$:wx=wx+1:os$(wx)=left$(gf$,14):ft=0:return
5630 printgf$:print"Essa t'infonde una grande forza !":ro=ro+1:ifro>19thenro=20
5634 print"La tua Robustezza (Ro) e' ora "ro:rm=0:rf=ro:return
5640 print"Un "gf$:wx=wx+1:os$(wx)=left$(gf$,9):print"che ti aumenta di uno la Fortuna !":fr=fr+1:iffr>19thenfr=20
5645 return
5900 ::iffu=3thenprint"Sei riuscito a scappare dai cattivi    "
5911 iffu=3thenprint"armigeri di Movas con questa fuga e hai"
5912 iffu=0thenprint"Con questo combattimento hai"
5914 iffu=1thenprint"Con questa fuga non hai"
5916 iffu=4thenprint"Dopo questo incontro rientri poiche'hai"
5920 printfm$:iffu=1thenprint"Questo ti fa'perdere un punto di Fascino":fa=fa-1
5931 iffu=0thengosub5500
5933 print"{down}Terminata la"k"{left}' settimana ritorni":print"nella fortezza del Barone Burlund .{down}":t=0:ft=0:x1=12:gosub61130:forp=1to10:print"{up}";:next:x1=21:gosub61130:print"{up}{up}":gosub61500:x1=0:print"{white}{up}{up}":gosub700:gosub800:k=k+1
5991 print"{clear}":nextzy
6010 print"{down}{clear}Hai terminato il tuo ingaggio;puoi :":print"{down}{down}{reverse on} * 1 * {reverse off} Rinnovare l'ingaggio alle stesse":print"{down}condizioni":print"{down}{down}{reverse on} * 2 * {reverse off} Ritornare in citta per cercare":print"{down}nuove avventure"
6060 print"{down}{down}{reverse on} * 3 * {reverse off} rivedere "np$" prima":print"{down}di scegliere !"
6100 gosub10500:ifn>3thenprint"{up}{up}":goto6100
6110 onngoto5000,1350,6120
6120 su=1:gosub1200:su=0:goto6010
6200 ga$="pattugliare i confini d'oriente e":gb$="respingere le incursioni periodiche":gc$="dei feroci mongoli delle steppe .":gd$="":nm$="mongoli":t$="monili e pelli":t=int(50*rnd(0))+101
6260 fm$="respinto l'incursione dei mongoli":return
6300 ga$="distruggere una banda di furfanti che":gb$="assale i viandanti e rapina   i mer-":gc$="canti e i contadini .":gd$="":nm$="briganti ":t$="oro e argento ":t=int(510*rnd(0))+101
6360 fm$="sgominato la banda di furfanti ":return
6400 ga$="intercettare gli schiavisti che hanno":gb$="fatto un'incursione nel vicino paese ,e":gc$="liberare i contadini fatti schiavi .":gd$="":nm$="schiavisti ":t$="denaro  "
6406 t=int(1000*rnd(0))+101:fm$="liberato i contadini fatti schiavi":return
6500 ga$="portare un messaggio alla fortezza che":gb$="protegge la regione dalle incursioni":gc$="degli armigeri del cattivo Conte Movas":gd$="":nm$="armigeri ":t$="borsa di monete"
6506 t=int(190*rnd(0))+101:fm$="consegnato il messaggio alla fortezza":return
6600 ga$="arrestare un Vassallo ribelle e sgomi-":gb$="nare una banda di mercenari che il":gc$="Ribelle ha assoldato.":gd$="":nm$="mercenari ":t$="borsa di monete":t=int(990*rnd(0))+101
6660 fm$="arrestato il Ribelle e disperso i suoi  Mercenari .":return
6700 ga$="stare di guarnigione in un villaggio":gb$="costiero e proteggerlo dalle incursioni":gc$="dei pirati delle Isole Nere":gd$="":nm$="pirati ":t$="dobloni d'oro ":t=int(590*rnd(0))+101
6760 fm$="protetto il villaggio costiero .":return
6800 ga$="pattugliare la strada che attraversa il":gb$="bosco di Orriwood che , dicono , sia":gc$="stregato ed abitato da mostri e strane":gd$="creature magiche .{down}"
6860 gosub12000:gr=int(4*rnd(0))+1:ifgr=1thengf$="Filtro magico che cura le ferite":ft=1:t=0:t$="":rm=0
6880 ifgr=2thent$="Polvere d'argento":t=int(50*rnd(0))+551:ft=0:gf$="":rm=0
6882 ifgr=3thengf$="Una Radice di mandragora":t=0:t$="":ft=0:rm=1
6883 ifgr=4thengf$="Talismano portafortuna":ft=0:t=0:t$="":rm=2
6890 fm$="compiuto il pattugliamento di Orriwood":return
6900 ga$="vigilare ai bordi della giungla di Khor":gb$="per impedire le scorrerie dei feroci":gc$="Boscipedi  che la abitano .":gd$="":nm$=" Boscipedi ":t$="monete di rame"
6906 t=int(50*rnd(0))+24:fm$="ricacciato i Boscipedi nella giungla":return
9000 ifee<>6andat<200then9900
9020 print"{clear}{yellow}":forp=1to40:print"*";:next:printtab(10)"{down}{down}{white}   SEI{160}DIVENTATO{160}UN{160}EROE":print"{down}   e vieni chiamato nel Firmamento":print"{down}   dove  vivono  i Quasidei ! ! !":print"{down}{down}{yellow}":forp=1to40:print"*";:next:print"{down}{down}{down}{white}Per divenire EROE hai impiegato "tk
9080 print"{down}settimane di avventura ."
9900 print"{down}{down}{down}VUOI{160}INIZIARE{160}UN'{160}ALTRA{160}AVVENTURA{160}(S/N){160}?"
9910 getp$:ifp$<>"s"andp$<>"n"then9910
9920 ifp$="s"thenrun
9930 print"{clear}{down}{down}    Gli elfi, gnomi, briganti & C ti":print"{down}  salutano e ti aspettano per un'altra ":printtab(10)"{down}{down}{down}{down}{purple} A{160}V{160}V{160}E{160}N{160}T{160}U{160}R{160}A{160}":print"{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{white}@  Sistems Editoriale   1984":forp=1to5000
9935 next:print"{clear}Ciaoooo!!!":end
10000 np$="Swenha":fo=9:in=17:de=12:fr=13:ro=11:fa=16:at=fo*5:rf=ro:goto1200
10100 np$="Thrulkh":fo=16:in=10:de=14:fr=9:ro=16:fa=9:at=fo*5:rf=ro:goto1200
10200 np$="Colvor":fo=11:in=12:de=16:fr=15:ro=10:fa=11:at=fo*5:rf=ro:goto1200
10300 d1=int(6*rnd(0))+1:d2=int(6*rnd(0))+1:d3=d1+d2+6:gosub60:return
10500 print"{down}{reverse on}{purple}Batti il numero della tua scelta       {up}{reverse off}{white}"
10520 getn$:n=val(n$):ifn=0then10520
10530 return:data"Drago di sangue","Demone Rosso","Minotauro gigante","Golem di pietra":data"Pericoloso Brigante","Tirannosauro Atrox","Vampiro Maledetto":data"Licantropo nero","la Grande palude Viola","il Monte di Vetro"
10546 data"la Foresta dei Fantasmi","la Collina Stregata","il Deserto Infuocato":data"il Lago di Lava melmosa","il Vulcano dei 3 Fuochi":data"la Grotta dell'impiccato","Si e'persa ":data"Hanno rubato ","E'scomparsa ","Non si trova ","Hanno rubato "
10610 data"Si ricerca ","E'sparita ","E'sparita ":data" Nonna"," Ballerina"," Statua d'oro"," Moglie":data" Pergamena Sacra"," Perla Rossa"," Gemma Verde"," Pietra Arcana":data"Sultano di Kabir","Nobile locale","Prete-Mago di VETH"
10641 data"Ricco Mercante":data"Cerusico di KHOR","Potente Ufficiale","Dignitario di Corte":data"Sacerdote di LYSS","Oro per {92} 1000","un Filtro magico":data"un Amuleto incantato","una Pozione miracolosa","Oro per {92} 1000"
10652 data"un Filtro magico","una Pozione Miracolosa","Diamanti per {92} 2000"
11000 x=0:sm=10:ifat<=100thenx=2:xy=1
11030 ifat>100andat<150thenx=2:xy=1.2
11040 ifat>150thenx=4:xy=2
11045 ifat>200thenx=6:xy=3.5
11050 nm=int(x*rnd(0))+3:am=int((int((41-nm)*rnd(0))+21)*xy):ifam>95thenam=95
11100 return
12000 a$="0":x=int(12*rnd(0))+1:onxgoto12100,12150,12200,12250,12300,12350,12400,12450,12500,12550,12600
12090 nm$=" Zombi ":goto12990
12100 nm$=" Elfi ":a$="1":goto12990
12150 nm$=" Uomini Uccello ":a$="1":goto12990
12200 nm$=" Droll ":goto12990
12250 nm$=" Pentauri ":a$="1":goto12990
12300 nm$=" Orchi cattivi ":goto12990
12350 nm$=" Uomini Lupo ":a$="1":goto12990
12400 nm$=" Serpenti alati ":goto12990
12450 nm$=" Ragni pelosi ":goto12990
12500 nm$=" Orchi ":goto12990
12550 nm$=" Gnomi ":a$="1":goto12990
12600 nm$=" Nani giganti ":a$="1"
12990 return
20000 i=int(10*rnd(0))+1:ifi>3then20999
20022 gosub32000:gosub11000:am=am-10:sm=5:print"{down}Attenzione !  Stai per cadere in una ":printtab(12)"{down}{reverse on}{purple} * IMBOSCATA * {reverse off}{white}":print"{down}Per accorgerti per tempo dell'imboscata":print"devi tirare un dado a 21 e il risultato"
20070 print"deve essere  inferiore  o  uguale  alla":print"tua Intelligenza ("in"){160}.":gosub20:gosub60:ifin>=d6then20500
20160 print"{down} Sei caduto nell'imboscata tesa da"nm:printim$"e hai ricevuto 1 ferita":rf=rf-1:gosub60000:print"{clear}"
20210 fu=0:ifam>90thenam=am-10
20213 ifam<22thenam=am+9
20220 gosub21000:fu=0:goto20999
20500 print"{down} Ti sei accorto dell'imboscata tesa da":printnm;im$" ; puoi :":print"{down}* 1 * Evitare  l' imboscata":print"* 2 * Attaccare di sorpresa"
20540 gosub10500:ifn>2thenprint"{up}{up}":goto20540
20550 onngoto20570,20600
20560 print"{up}{up}":goto20540
20570 print"Imboscata evitata,prosegui l'avventura{up}":gosub60:gosub60:forp=1to5:getp$:next:print"{clear}":goto20999
20600 print"{clear}Hai attaccati di sorpresa":ifleft$(im$,2)<>" L"orks<>0then20610
20607 gosub80:goto20210
20610 print"hai ucciso uno dei"im$:nm=nm-1:print:goto20210
20999 im$=" ":return
21000 fu=0:y=1
21005 print"{reverse on}      "y"{left}'  turno di mischia       {reverse off}":ifnm=1thenprint"{down}Sei in mischia con un solo avversario{down}":goto21030
21020 print"{down}Sei in mischia con"nm"avversari{down}"
21030 forj=1tonm:gosub60:ifnm>=4thenpa=int(at/4):cs=0:goto21050
21040 pa=int(at/nm)+10:cs=0:xf=1
21050 cm=int(100*rnd(0))+1:pp=int(100*rnd(0))+1:ifam<cmandnm=1thenprint"{yellow}*{white} L' avversario sbaglia il colpo":goto22000
21070 ifam<cmthenprint"{yellow}*{white}"j"'avversario sbaglia il colpo":goto22000
21080 ifam>=cmandpa<ppthencs=1
21090 cc=int(am/20):ifcc>=cmthenxf=2
21120 ifcs=1andxf=1thenprint"*"j"'avversario ti fa {reverse on}1 ferita{reverse off}":rf=rf-1:goto22000
21130 ifcs=1andxf=2thenprint"*"j"'avversario ti fa {reverse on}2 ferite{reverse off}":rf=rf-2:goto22000
21149 ifnm=1thenprint"{green}*{white} Parato il colpo dell' avversario":goto22000
21150 print"{green}*{white} Parato colpo del"j"'avversario"
22000 xf=1:next:cc=0:ifnm>1thencc=int(at/15):gosub60
22031 ifks>0then22040
22035 ifleft$(nm$,2)=" L"orleft$(im$,2)=" L"thengosub80:goto23000
22040 ap=int(100*rnd(0))+1:ifat<apthenprint"{down}Hai mancato il tuo colpo":goto23000
22055 xs=int(100*rnd(0))+1:ifat>=apandsm>=xsthenprint"{down}L'avversario ha scansato tuo colpo":goto23000
22070 ts=0:ifat>=apthents=1
22090 ifts=1andcc>=apthenprint"{down}^^ Hai ucciso {reverse on}due{reverse off} avversari":nm=nm-2:goto23000
22099 ifnm=1then22110
22100 ifts=1andcc<apthenprint"{down}^ Hai ucciso  un  avversario":nm=nm-1:goto23000
22110 ifts=1andcc<apthenprint"{down}^ Hai ucciso l'ultimo avversario":nm=nm-1
23000 gosub60:ifrf<=0thenrf=0
23010 print"{down}la tua robustezza e' ora "rf:gosub70:ifrf<=0thenprint"{down}Sei morto !{160}!{160}!{160}!{160}!{160}!":goto9900
23020 ifnm=0then29200
23021 ifnm>1thenprint"{down}Gli avversari sono ora"nm
23022 ifnm=1thenprint"{down}Hai di fronte un solo avversario"
23030 gosub70:print"{down}Puoi fare la scelta di :":print"* 1 * Tentare la fuga":print"* 2 * Continuare il combattimento"
23060 gosub10500:ifn>2thenprint"{up}{up}":goto23060
23070 onngoto24000,29000
24000 ::print"{clear}"tab(7)"{reverse on} Tentativo di fuga {reverse off}":print"{down}Per fuggire devi tirare un dado a 21":print"{down}e devi{right} fare{right} un risultato  uguale o":print"{down}inferiore alla tua Fortuna ("fr").":gosub20:gosub60:iffr>=d6then24200
24110 print"{down}Il tentativo di fuga non e' riuscito !":ifnm=1thenprint"{down}Hai ricevuto una ferita !":goto24140
24130 print"{down}Hai ricevuto "nm" ferite !"
24140 rf=rf-nm:goto23000
24200 print"{down}La fuga e' riuscita":fu=1:goto29220
29000 y=y+1:ifnm>0thenprint"{clear}"
29100 ifnm>0goto21005
29200 print"{down}hai ucciso tutti i tuoi avversari":gosub60:print"{down}Sei cresciuto del 3% di capacita' di ":print"{down}usare le armi !":at=at+3
29220 print"{down}Puoi riprendere la tua avventura":gosub810:print"{clear}":return
30000 fu=0:gosub32000:gosub11000:gosub6860:nm$=im$:pl1=int(2*rnd(0))+1:ifpl1=1thenpl$="una palude melmosa"
30040 ifpl1=2thenpl$="un villaggio "
30050 gw=1:print"{down}Stai passando presso "pl$:print"{down}e ti accorgi che ,in lontananza,"nm:print"{down}{left}"nm$"sono sulla tua ":print"{down}strada e stanno venendo verso di te":gosub60:gosub33030:iffu=0thengosub5520
30100 return
32000 a$="1":x=int(12*rnd(0))+1:onxgoto32100,32150,32200,32250,32300,32350,32400,32450,32500,32550,32600
32090 im$=" Sauridi ":goto32990
32100 im$=" Tigroidi ":goto32990
32150 im$=" Coboldi ":goto32990
32200 im$=" Droll ":goto32990
32250 im$=" Centipedi ":goto32990
32300 im$=" Grandi Giganti ":a$="1":goto32990
32350 im$=" Grandi Serpenti ":goto32990
32400 im$=" Demoni volanti ":goto32990
32450 im$=" Lupi mannari ":a$="0":goto32990
32500 im$=" Rospi Gracchianti ":goto32990
32550 im$=" Grifoni alati ":goto32990
32600 im$=" Folli Folletti ":a$="1"
32990 return
33000 print"{down}mentre stai pattugliando Orriwood"
33020 print"{down}Vedi nel Bosco"nm;nm$:gosub70
33030 print"{down}Puoi:":print"{down}{reverse on}* 1 *{reverse off} fuggire ed evitarli":print"{down}{reverse on}* 2 *{reverse off} avvicinarti amichevolmente":print"{down}{reverse on}* 3 *{reverse off} attaccarli":print"{down}{reverse on}* 4 *{reverse off} tentare un' imboscata"
33070 gosub10500:ifn>4thenprint"{up}{up}":goto33070
33090 print"{clear}":onngoto33100,33200,33300,33400
33100 fu=1:return:ifgw=1thenreturn
33200 ifleft$(nm$,2)=" L"orleft$(nm$,2)=" Z"then33210
33202 ifval(a$)=1then33250
33210 print"{clear}Loro non sono amichevoli e ti attaccano{down}{down}":gosub60:gosub21000:goto34000
33250 gosub34500:ifkz=1thenprint"{clear}":goto33300
33272 forp=1to200:next:print"{down}I "nm;" ";nm$:print"incantati , ti regalano :":gosub5530:gosub60000:print"{clear}":goto34000
33300 gosub21000:goto34000
33400 gosub34010:gosub60000:print"{clear}":gosub21000:goto34000
34000 return
34010 print"{clear}Per riuscire nell' imboscata devi":print"{down}essere abile e furtivo !":gosub40000:ifzz=0then34200
34140 print"{down}i"nm;nm$" ti hanno visto,":print"e ti attaccano all' improvviso  !":gosub70:print"{down}ricevi "nm" ferite !":rf=rf-nm:return
34200 ifleft$(nm$,2)<>" L"orks<>0then34210
34207 gosub80:goto34225
34210 print"{down}Hai ucciso un avversario .":nm=nm-1
34225 print"{down}Sei in mischia con";nm;nm$:return
34500 kz=0:bt=0:print"{clear}Per convincerli della tua amicizia devi":print"incantarli  !":print"Devi tirare un dado a 21 e il risultato":print"deve essere inferiore o uguale al":print"tuo fascino ("fa") ."
34570 gosub20:gosub60:iffa>=d6then34640
34620 print"{down}Hai fallito ! ":print"{down}I "nm;nm$"si sono arrabiati e":print"{down}ti attaccano ! Sei in mischia ! ":kz=1:gosub60000:return
34640 fu=4:print"{down}Ci sei riuscito !{down}":return
35000 ha=at-(int(20*rnd(0))+1):pa=at:ifleft$(la$,1)="D"thenha=95
35030 ifha>95thenha=95
35040 hp=ha-15:hd=((int(6*rnd(0))+1)+(int(6*rnd(0))+1)+6):ifat>99thenhp=hp-(at-100)
35048 ifhp<5thenhp=5
35050 hr=((int(6*rnd(0))+1)+(int(6*rnd(0))+1)+6):hz=hr:ifpa>95thenpa=95
35052 ifleft$(la$,1)="G"thenhr=hr+10:hd=hd-5:hp=5
35060 print"{clear}La tua Destrezza e' "de:gosub60:print"{down}Quella del tuo avversario "hd:gosub60:ifhd>dethenprint"{down}Lui attacca per primo !":goto35200
35090 print"{down}Attacchi per primo !":gosub60
35100 aa=int(100*rnd(0))+1:ifaa>95oraa>atthenprint"{down}hai sbagliato il tuo colpo":goto35200
35120 print"{down}Hai colpito il tuo avversario":gosub70:hh=int(5*rnd(0))+3:d8=int(100*rnd(0))+1:ifd8>95orhp<=0then35160
35150 ifd8<hpthenprint"{down}ma lui ha parato il tuo colpo":hp=hp-5:goto35200
35160 ifaa<int(at/10)thenprint"{down}e gli hai fatto un colpo a fondo ,":hu=hh+7
35162 ifaa<int(at/10)thenprint"{down}con una ferita da "hu" punti":hr=hr-hu:goto35180
35170 print"{down}e gli hai fatto una ferita da"hh" punti":hr=hr-hh:gosub60
35180 ifhr<=0thenprint"{down}Con questo colpo lo hai ucciso":goto35320
35190 ifhr<int(hz/3)thenprint"{down}L'avversario si trova in difficolta'":hp=0
35200 gosub60:hm=int(100*rnd(0))+1:ifhm>95orhm>hathenprint"{down}l'avversario ha sbagliato il colpo":goto35300
35230 print"{down}l'avversario ti ha colpito":h8=int(100*rnd(0))+1:hy=int(4*rnd(0))+3:ifh8<=pathenprint"{down}ma lo hai parato":goto35300
35260 ifhm<=int(ha/20)thenhy=hy+hy+1
35270 print"{down}e ti ha fatto una ferita da"hy" punti":rf=rf-hy:gosub60:ifrf<=0thenprint"{down}{yellow}Sei morto  !{white}":goto9900
35290 print"{down}La tua robustezza e' ora "rf
35300 ifleft$(la$,1)="V"thengosub35400
35302 ifleft$(la$,1)="L"thengosub35450
35303 gosub60000:print"{clear}":goto35100
35320 print"{down}Con questo combattimento sei cresciuto":print"{down}del 7 % in attacco !":at=at+7:gosub60000:return
35400 print"{down}Lo sguardo del "la$" ti":fo=fo-1:at=at-5:pa=pa-5:print"{down}debilita ! Perdi un punto di Forza":print"{down}La tua Forza e' ora "fo" !":iffo<=0then9000
35440 return
35450 print"{down}L'urlo del "la$" ti paralizza":de=de-1:print"{down}perdi un punto in destrezza !":hp=hp-5:print"{down}La tua Destrezza e' ora "de" !":ifde<=0then9000
35490 return
38000 print"{down}{reverse on}* 4 *{reverse off} GRAZIE tornero' piu tardi !":return
39000 print"{down}Non hai abbastanza soldi !":goto3800
40000 print"{down}Per non farti scorgere devi tirare un ":print"{down}dado a 21 e il risultato deve essere":print"{down}uguale o minore della tua destrezza("de"{left})":gosub20:gosub60:ifd6>dethenprint"{down}Hai fallito !":zz=1:return
40150 print"{down}Ci sei riuscito !":zz=0:return
41000 d9=int(8*rnd(0))+1:ond9goto41020,41030,41040,41050,41060,41070,41080,41090
41020 np$="Reina":goto41100
41030 np$="Decan Khan":goto41100
41040 np$="Ulrik":goto41100
41050 np$="Ghator":goto41100
41060 np$="Futak":goto41100
41070 np$="Beowolf":goto41100
41080 np$="Vokhor":goto41100
41090 np$="Zolak":goto41100
41100 return
50000 qq=0:print"{down}Stai vagando nel Deserto,senza guida":tt=tt+1:print"{down}se entro una settimana non trovi":print"{down}un' oasi sei morto !":gosub60:print"{down}Per trovare un' oasi devi tirare un dado":print"a 21 e il risultato deve essere uguale"
50060 print"o inferiore alla tua Fortuna ("fr") .":gosub20:gosub60:iffr>=d6then50500
50120 print"{down}Sei morto sperduto nel deserto !":goto9900
50500 print"{down}Hai trovato l' oasi !":gosub60000:print"{clear}Nell'oasi trovi una carovana di nomadi":print"{down}che si stanno dirigendo verso la tua":print"{down}citta' e ti prendono con loro ;{down}":gosub60:q0=int(2*rnd(0))+2
50507 tk=tk+q0:qw=0
50542 ifrf=rothen50550
50544 qt=ro-rf:ifqt>=q0thenprint"nel viaggio recuperi"q0" di Ro,":rf=rf+q0
50546 ifqt<q0thenprint"nel viaggio recuperi "qt" di Ro,":rf=rf+qt
50550 ifq0=4thenreturn
50551 print"dopo "q0" settimane sei tornato a casa":gosub810:su=0:goto1200
60000 getb$:print"{down}{reverse on}{purple}Per continuare premi un tasto           {reverse off}{up}{white}"
60010 getp$:ifp$=""then60010
60020 return
61000 forp=1to7:print"{down}";:next
61010 x1=1:gosub61130:forp=1to16:print"{up}";:next:x1=13:gosub61260:forp=1to16:print"{up}";:next:x1=20:gosub61260:forp=1to10:print"{up}";:next:x1=32:gosub61130:x1=7:x2=25:gosub61400:gosub61500:print"{white}":return
61130 printtab(x1)"{dark gray}{reverse on} {reverse off}{172}{172} {187}{187}{reverse on} {reverse off}":printtab(x1)"{188}{reverse on}     {reverse off}{190}":printtab(x1)" {reverse on} {181} {reverse off}{161}{reverse on} {reverse off}":forp=1to4:printtab(x1)" {reverse on}     {reverse off}":next:printtab(x1)" {reverse on} {190} {188} {reverse off}":printtab(x1)" {reverse on}  {reverse off}{brown}{reverse on} {reverse off}{dark gray}{reverse on}  {reverse off}":printtab(x1)" {reverse on}  {reverse off}{brown}{reverse on} {reverse off}{dark gray}{reverse on}  {reverse off}{white}":return
61260 printtab(x1)"{red}   {162}":printtab(x1)"  {172}{reverse on}{177}{reverse off}{187}":printtab(x1)" {172}{reverse on}{177}{177}{177}{reverse off}{187}":printtab(x1)"{172}{reverse on}{177}{177}{177}{177}{177}{reverse off}{187}{white}":printtab(x1)"{dark gray}{reverse on}{187}{reverse off} {162} {162} {reverse on}{172}{reverse off}":printtab(x1)"{188}{reverse on}     {reverse off}{190}":printtab(x1)" {reverse on}{187}   {172}{reverse off}":printtab(x1)"  {161}{reverse on} {161}{reverse off} ":forp=1to8:printtab(x1+2)"{reverse on}   {reverse off}":next:return
61400 forp=1to6:print"{up}";:next:printtab(x1)"{gray}";:forp=1to8:print"{172}";:next:print:printtab(x2)"{up}";:forp=1to8:print"{187}";:next:forpp=1to5:print:printtab(x1)"";:forp=1to8:print"{reverse on} {reverse off}";:next:print:printtab(x2)"{up}";:forp=1to8:print"{reverse on} {reverse off}";:next:next:print"{white}{up}":return
61500 forp=1to5:print"{up}";:next:printtab(18)"{brown}{185}{185}{185}{185}":forp=1to5:printtab(18)"{light green}{219}{219}{219}{219}":next:return
