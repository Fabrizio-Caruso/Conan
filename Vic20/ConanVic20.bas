1printchr$(14):printchr$(8):print"{clear}{white}":poke36879,110:dimos$(120):tk=1:bt=0:goto100
20print"{down}{reverse on}Premi un tasto{reverse off}"
30getp$:ifp$=""then30
40d6=int(21*rnd(0))+1:printtab(26)"{up}Hai fatto {reverse on}"d6"{left}{reverse off}":return
60forp=1to900:next:return
70forp=1to300:next:return
80print"{down}I Lupi Mannari si uccidono con la":print"Spada fatata":return
100print"{clear}{yellow}"tab(10)"La Systems Editoriale":a$="{reverse on}CONAN"
105print"{up}"tab(17)a$:forkh=0to2000:next
150print"{up}{up}{up}":gosub60000:x1=0:print"{clear}":printtab(16)"{yellow}{down}{down}INDICE{down}{down}":forp=1to10:print"{up}";:next:x1=32:x1=0:forp=1to8:print"{up}";:next:printtab(7)"{white}1  Istruzioni":printtab(7)"{down}{down}{down}{down}2  Inizio dell'Avventura {reverse off}"
176gosub10500:ifn>2thenprint"{up}{up}":goto176
177onngoto210,400
210:
399gosub60000
400print"{clear}"tab(8)"{reverse on} Scelta Personaggio {reverse off}":print"{down}{down}{reverse on} * 1 * {reverse off} Swenha l'apprendista  maga":print"{down}Fo=9;In=18;De=11;Fr=14;Ro=11;Fa=17.":print"{down}{down}{reverse on} * 2 * {reverse off} Thurlkh  il guerriero":print"{down}Fo=17;In=10;De=13;Fr=10;Ro=16;Fa=9."
540print"{down}{down}{reverse on} * 3 * {reverse off} Colvor  l'avventuriero":print"{down}Fo=12;In=14;De=16;Fr=18;Ro=12;Fa=12.":print"{down}{down}{reverse on}{yellow} * 4 * {reverse off}{white} Preferisco un personaggio rando-":print"mizzato."
580gosub10500:ifn>4thenprint"{up}{up}":goto580
600onngoto10000,10100,10200,1010
700ee=0:iffo>19thenee=ee+1:fo=20
710ifin>19thenee=ee+1:in=20
720ifde>19thenee=ee+1:de=20
730iffr>19thenee=ee+1:fr=20
740ifro>19thenee=ee+1:ro=20
750iffa>19thenee=ee+1:fa=20
760return
800ifrf<roandro>rfthenprint"{down}+ 1 punto di Robustezza!":rf=rf+1
810ww=0:foryy=1towx:ifleft$(os$(yy),1)="F"thenww=1:xw=yy:yy=wx+1
815nextyy:ifww=1andrf<rothen840
830goto890
840print"Vuoi bere il Filtro magico che cura le":print"Ferite? (sei a Ro"rf" su{160}max"ro")":print"{down}{reverse on}{light blue}batti tasto {white}{161}S{reverse off}{161}{reverse on}{light blue} per si  o {white}{161}N{reverse off}{161}{reverse on}{light blue} per no {reverse off}{white}{up}{up}"
850gets$:ifs$<>"s"ands$<>"n"then850
860ifs$="n"then899
870ifs$="s"thenrf=ro:print"{down}Sei di nuovo a Robustezza "rf"{left}!"
880ww=0:yy=0:os$(xw)="":xw=0
890gosub60000
899return
900ss$="":fory=1to8:reads$(y):next:x=int(8*rnd(0))+1:ss$=s$(x):fory=1to8:s$="":next:return
1010gosub41000:gosub10300:print"{down}Nome {reverse on} "np$" {reverse off}":gosub60:fo=d3:print"{down}{down}{down}Fo = "fo:gosub10300:in=d3:print"{down}In = "in:gosub10300:de=d3:print"{down}De = "de
1023gosub10300:fr=d3:print"{down}Fr = "fr:gosub10300:ro=d3:print"{down}Ro = "ro:gosub10300:fa=d3:print"{down}Fa = "fa:at=fo*5:rf=ro:gosub60000
1200print"{clear} Situazione {reverse on}"np$"{reverse off}"
1210gosub700:print"{down}Forza (Fo)      = "fo:print"Intelligenza(In)= "in:print"Destrezza(De)   = "de:print"Fortuna (Fr)    = "fr:print"Robustezza{160}(Ro) = "ro" (originaria)":print"Robustezza (Ro) = "rf" ({reverse on} attuale  {reverse off})"
1270print"Fascino (Fa)    = "fa:print"{down}Capacita' combattimento {reverse on}"at"{left}% {reverse off}":print"{down}Denaro {92}"dn:print"{down}{reverse on}{green} oggetti speciali o magici {reverse off}{white}":yy=0:foryy=1towx:ifleft$(os$(yy),1)="F"thenkf=kf+1
1306ifleft$(os$(yy),1)="T"thenkt=kt+1
1308ifleft$(os$(yy),1)="A"thenka=ka+1
1310ifleft$(os$(yy),1)="S"thenks=ks+1
1320next:ifkf=1thenprint"una dose di Filtro magico"
1324ifkf>1thenprintkf" dosi di Filtro magico"
1326ifkt=1thenprint"un Talismano portafortuna"
1328ifkt>1thenprintkt" Talismani portafortuna"
1330ifka=1thenprint"un Amuleto ";
1332ifka>1thenprintka" Amuleti ";
1334ifks>0thenprint" una Spada Fatata"
1335k0=ka+kt+kf+ks:ifk0=0thenprint"{down}Nessuno{up}"
1336ka=0:kt=0:kf=0:k0=0:print:gosub60000:ifee=6andat>200then9000
1340ee=0:ifsu=1thenreturn
1350print"{clear}{yellow}"tk"'  Settimana d'avventura{white}":printnp$",sei nella taverna dello Zoppo":print"dove si trovano avventurieri e mercenari":print"{up}e ascolti i loro discorsi.":gosub70
1390print"{down}{down}{down}{down}{down}":print"{up}{yellow} {reverse on}Ti si offrono varie avventure":gosub60000:print"{clear}":gosub900:la$=ss$:gosub900:lb$=ss$:ifleft$(la$,1)="L"thena9=2500:goto1479
1471ifleft$(la$,1)="V"thena9=4000:goto1479
1472ifleft$(la$,1)="D"thena9=1000:goto1479
1473a9=500
1479print"{clear}{up}{reverse on}* 1 *{reverse off} Un "la$" che":print"vive presso "lb$:print"terrorizza gli abitanti della regione ;":print"taglia di {reverse on}{yellow}{92}"a9"{left}{white}{reverse off} a chi lo uccidera'.":gosub60:gosub1600:print"{down}{reverse on}* 3 *{reverse off} Sta' per partire la Carovana"
1510print"che tutti i mesi si reca a":print"Marrakesch ,dove vengono fabbricate armi e oggetti magici":gosub60:goto1710
1600gosub900:za$=ss$:gosub900:zb$=ss$:gosub900:zc$=ss$:gosub900:zd$=ss$:ifleft$(zb$,2)=" F"orleft$(zb$,2)=" M"thenza$="Hanno rapito "
1620ifleft$(zb$,2)=" D"thenza$="E'fuggita "
1650print"{down}{reverse on}* 2 *{reverse off}{right}"za$;"la"zb$:print"di un "zc$" e si offre":print"una ricompensa:{yellow}"zd$:print"{white}a chi la riportera'.":zk=0:gosub60:restore:return
1710print"{down}{reverse on}* 4 *{reverse off} Il  Barone  Burlund  cerca merce-":print"nari.  Offre {yellow}{92} 1000{white} di premio d'ingag-":print"gio per un mese di servizio .":gosub60:ifrf>=rothen1900
1800print"{down}{reverse on}* 5 *{reverse off} Restare in taverna per una ":print"settimana e recuperare un punto di":print"Robustezza;costo vitto e alloggio {purple}{92} 100{white}":gosub60
1900gosub10500:ifn>5thenprint"{up}{up}":goto1900
1920ifrf>=roandn=5thenprint"{up}{up}":goto1900
1930onngoto2000,4000,3000,5000,1950
1950ifdn>=100then1980
1960print"{clear}"np$",lo Zoppo non fa credito!":gosub60:goto1390
1980dn=dn-100:rf=rf+1:print"{clear}E' passata una settimana e hai recuperato":print"{up}un punto di robustezza;sei ora a Ro"rf:tk=tk+1:gosub60:print"Possiedi {92}"dn:gosub60:goto1390
2000tk=tk+1:print"{clear}Stai dirigendoti verso":print"{down}"lb$:fu=0:im$="":nm$="":gosub20000:ifi<=3then2100
2050fu=0:bt=0:gosub30000
2100print"{down}Sei arrivato senza altri incontri":print"presso "lb$:print"dove si erge una torre spaventosa!{down}{down}":x1=16:gosub700:gosub810:print"{clear}Il "la$:print"sbuca da dietro la Torre!":gosub60:print"{down}Ti rendi conto che si tratta di uno"
2150print"scontro mortale .":gosub60:print"{down}Puoi:":print"{down}{reverse on}* 1 *{reverse off} rinunciare e fuggire":print"{down}{reverse on}* 2 *{reverse off} accettare il combattimento{down}"
2190gosub10500:ifn>2thenprint"{up}{up}":goto2190
2210onngoto2220,2300
2220print"{clear}Ti sei coperto di ignominia!":gosub60:print"{down}Sei tornato in citta' dove la notizia":print"si e' gia' sparsa.":gosub60
2250print"{down}Perdi un punto di fascino!":fa=fa-1:gosub800:goto1200
2300gosub35000:print"{clear}Sei ritornato in citta' con i resti ":print"{down}del "la$" .":gosub60:print"{down}Incassi il premio di {92}"a9" e la tua":print"{down}fama di guerriero cresce:":iffa>19then2360
2350print"{down}{down}Il tuo fascino e' cresciuto di uno":fa=fa+1
2360dn=dn+a9:print"{down}Possiedi ora {92} "dn"{down}":gosub800:goto1200
3000print"{clear}Sei al caravanserraglio e ti informi":qr=0:qw=0:print"{down}sulla Carovana per Marrakesch.":print"{down}Il biglietto per il viaggio , che dura":print"{down}un mese , e' di {92} 1000 andata e ritorno"
3006la$="":print"{down}ma il capocarovaniere cerca anche un":print"{down}mercenario per la scorta":print"{down}Puoi :":print"{down}{reverse on}* 1 *{reverse off} rinunciare al viaggio":print"{down}{reverse on}* 2 *{reverse off} pagare i {92} 1000":print"{down}{reverse on}* 3 *{reverse off} arruolarti come scorta"
3110gosub10500:ifn>3thenprint"{up}{up}":goto3110
3130onngoto1200,3140,3230
3140ifdn>=1000then3210
3150print"{clear}{down}Possiedi solo {92} "dn" e vieni":print"{down}allontanato dalla carovana .":print"{down}Il capocarovaniere ti dice :":print"{down}"np$" torna quando avrai piu soldi!":gosub60000:goto1200
3210dn=dn-1000:print"{clear}Dopo un mese di viaggio tranquillo,":tk=tk+4:qw=1:q0=4:gosub50542:goto3500
3230print"{clear}Sei arruolato come mercenario di scorta":gosub60
3240forq1=1to4:tk=tk+1:q2=int(3*rnd(0))+1:onq2goto3270,3300,3400
3270print"{down}Questa settimana sei di retroguardia":gosub60:nm$="":im$="":gosub20000:im$="":ifi>4thengosub30000
3291ifi=4thenprint"{down}{down}Nessun incontro questa settimana.":gosub60
3292fu=0:goto3470
3300print"{down}Questa settimana stai a fianco del":print"Capocarovana.":gosub60:q3=int(3*rnd(0))+1:onq3goto3330,3340,3370
3330print"{down}Il viaggio procede tranquillo per tutta":print"la settimana,nessun incontro.":gosub60:goto3470
3340print"{down}Un gruppo di briganti si dirige":print"verso la carovana .":q4=int(2*rnd(0))+1:onq4goto3344,3350
3344print"{down}Vieni mandato ad intercettarli":gosub60:nm=int(2*rnd(0))+3:nm$="":im$="":print"{down}Ti accorgi che i briganti sono "nm:gosub60000:print"{clear}":gosub21000:iffu=1thenprint"{clear}Con questa fuga ti sei coperto di "
3348iffu=1thenprint"{down}disonore,perdi un punto di fascino":fa=fa-1
3349goto3470
3350print"{down}Il Capo dei briganti lancia una sfida:":print"lui contro il campione della carovana":print"in un combattimento all'ultimo sangue.":gosub60:print"{down}Come mercenario sei designato quale "
3358print"Campione della carovana!":gosub60000:gosub35000:print"{down}Con questo combattimento la tua fama":print"{down}di guerriero aumenta!":iffa>19thenfa=20:goto3470
3366print"{down}Sei cresciuto di un punto di Fascino .":fa=fa+1:goto3470
3370gosub11000:print"{down}Un gruppo di"nm" passeggeri della caro-":print"vana si rivelano Predoni travestiti e,":print"furtivi,tentano di ucciderti  per poter":print"predare la carovana con tranquillita'."
3375gosub60:print"{down}Per accorgerti dell'inganno devi tirare":print"un dado a 21 e il risultato deve essere":print"uguale o inferiore alla tua ":print"Intelligenza ("in") .":gosub20:gosub60:ifin>=d6then3392
3389print"{down}Non te ne sei accorto,ricevi "nm" ferite":rf=rf-nm:goto3394
3392print"{down}Te ne sei accorto ed entri in mischia":print"{down}con i "nm" Predoni!"
3394gosub60000:print"{clear}":fu=0:nm$="":im$="":gosub21000:iffu=0then3470
3395iffu=1thenprint"{clear}Hai abbandonato al ":q1=4
3396iffu=1thenprint"{down}saccheggio la carovana!":fa=fa-1:qq=99
3397iffu=1thenprint"{down}Questo ti fa perdere un punto di Fascino":gw=1
3398gosub60:print"{down}Senza guida ti sei perso!":gosub800:goto3480
3400fu=0:print"{down}Questa settimana sei mandato in avanti":print"{down}per esplorare il percorso.":fu=0:im$="":nm$="":gosub20000:im$="":ifi>3thengosub30000
3407iffu=0then3470
3408iffu=1thenprint"{down}Con questa opportuna fuga hai avvertito":print"{down}la carovana del pericolo e ricevi {92} 100":print"{down}di premio dal capo carovana .":dn=dn+100:print"{down}Possiedi ora {92} "dn" .":fu=0
3470print"{down}Terminata la "q1" settimana di scorta":gosub700:gosub800:nm$=""
3480im$="":print"{clear}":next:ifqq=99goto50000
3481ifqr=1goto3980
3490print"{down}Dopo un mese di viaggio"
3500print"sei giunto nella citta' di":printtab(15)"{down}{down}{yellow}MARRAKESCH{white}{up}{up}":gw=0:x1=0:forp=1to10:print"{up}";:next:x1=12:forp=1to10:print"{up}";:next:x1=21:x1=5:x2=27:forp=1to15:print"{up}";:next:x1=32:print"{up}{up}":forp=1to13
3516print"{up}";:next:printtab(12)"{brown}{167}{reverse on}{green} {reverse off}{162}  {brown}{167}{reverse on}{white} {reverse off}{162} {brown}{167}{white}{reverse on} {reverse off}{162}  {brown}{167}{reverse on}{red} {reverse off}{162}":printtab(12)"{brown}{167} {green}{184}{reverse on}{185}{reverse off} {brown}{167} {white}{184}{reverse on}{162}{reverse off}{brown}{167} {white}{184}{reverse on}{185}{reverse off} {brown}{167} {red}{184}{reverse on}{162}{reverse off}":printtab(12)"{brown}{167}    {170}   {170}    {170}":forp=1to9:print"{down}";:next:gosub60000
3520print"{clear}Ci sono 3 negozi:":print"{down}{reverse on}* 1 *{reverse off} l'armaiolo fatato":print"{down}{reverse on}* 2 *{reverse off} l'alchimista":print"{down}{reverse on}* 3 *{reverse off} il costruttore di cose magiche{down}":forgg=1to20:print"- ";:next:print"{down}{reverse on}{green}* 4 *{white}{reverse off} voglio rivedere il personaggio"
3552print"{down}{reverse on}{yellow}* 5 *{white}{reverse off} ritorno a casa "
3553gosub10500:ifn>5thenprint"{up}{up}":goto3553
3555onngoto3560,3620,3700,3790,3840
3560print"{clear}Il Negozio dell'ARMAIOLO fatato":print"{down}Sono disponibili 3 Spade Fatate :":print"{down}{down}{reverse on}ATTENZIONE{reverse off} Non e' permesso possedere":print"{down}piu di una spada fatata!{160}!{160}!{160}!{160}!":ifks>0thenprint"{down}Tu l'hai gia'!":goto3800
3576print"{down}{down}{reverse on}* 1 *{reverse off} Spada da +50 % = {92}  7500":print"{down}{reverse on}* 2 *{reverse off} Spada da +75 % = {92} 10000":print"{down}{reverse on}* 3 *{reverse off} Spada da + 100% = {92} 20000":gosub38000
3583gosub10500:ifn>4thenprint"{up}{up}":goto3583
3585print"{down}":onngoto3590,3595,3600,3610
3590ifdn<7500then39000
3592ks=1:dn=dn-7500:at=at+50:wx=wx+1:os$(wx)="Spada fatata +50":goto3605
3595ifdn<10000then39000
3596ks=1:dn=dn-10000:at=at+75:wx=wx+1:os$(wx)="Spada fatata +75":goto3605
3600ifdn<20000then39000
3602ks=1:dn=dn-20000:at=at+100:wx=wx+1:os$(wx)="Spada fatata +100":goto3605
3605print"{down}Hai acquistato la Spada Fatata":goto3800
3610print"{clear}":goto3520
3620print"{clear}L'ALCHIMISTA":print"{down}Sono disponibili 3 filtri magici:":print"{down}{reverse on}* 1 *{reverse off} +1 in Forza        {92} 2000":print"{down}{reverse on}* 2 *{reverse off} +1 in Destrezza    {92} 1000"
3630print"{down}{reverse on}* 3 *{reverse off} +1 in Intelligenza {92} 1000":gosub38000
3634gosub10500:ifn>4thenprint"{up}{up}":goto3634
3638print"{down}":onngoto3640,3650,3660,3610
3640ifdn<2000then39000
3642dn=dn-2000:fo=fo+1:at=at+5:print"{down}Hai +1 in forza":goto3800
3650ifdn<1000then39000
3652dn=dn-1000:de=de+1:print"{down}Hai +1 in Destrezza":goto3800
3660ifdn<1000then39000
3662dn=dn-1000:in=in+1:print"{down}Hai +1 in Intelligenza":goto3800
3700print"{clear}La Bottega degli OGGETTI Magici":print"{down}{reverse on}* 1 *{reverse off} Talismano (+1 in Fortuna) {92} 1000":print"{down}{reverse on}* 2 *{reverse off} Amuleto (+1 Intelligenza) {92} 1000":print"{down}{reverse on}* 3 *{reverse off} Filtro Magico             {92} 1000"
3707print"     (che cura le ferite)":gosub38000
3720gosub10500:ifn>4thenprint"{up}{up}":goto3720
3726qq$="{down}Hai acquistato un ":print"{down}":onngoto3730,3740,3750,3610
3730ifdn<1000then39000
3732dn=dn-1000:wx=wx+1:os$(wx)="Talismano":printqq$os$(wx):fr=fr+1:goto3800
3740ifdn<1000then39000
3742dn=dn-1000:wx=wx+1:os$(wx)="Amuleto":printqq$os$(wx):in=in+1:goto3800
3750ifdn<1000then39000
3752dn=dn-1000:wx=wx+1:os$(wx)="Filtro Magico":printqq$os$(wx):goto3800
3790su=1:gosub1200:su=0:print"{clear}":goto3520
3800gosub700:print"{down}Vuoi continuare gli acquisti  ( S/N )?"
3810gets$:ifs$=""then3810
3820ifs$="s"thenprint"{clear}":goto3520
3830ifs$="n"then3840
3835goto3810
3840print"{clear}Si riprende la via del ritorno!":gosub60:qr=1:ifqw=1thentk=tk+4:print"Dopo 4 settimane di viaggio,":q0=4:gosub50542
3971ifqw=1thenqw=0:goto3980
3972goto3240
3980print"sei ritornato nella tua citta'. La situazione e':":qr=0:su=0:goto1210
4000x=int(4*rnd(0))+1:onxgoto4001,4002,4003,4001
4001zq$=" Segretario privato":goto4010
4002zq$="l'Amministratore":goto4010
4003zq$=" Gran Khan":goto4010
4010print"{clear}Sei ricevuto dal"zq$:print"del "zc$" e ti":print"viene fornita una descrizione accurata":print"della "zb$". Viene":print"confermata la ricompensa pattuita :":print"'{yellow}"zd$"{white}'.":gosub60:print"{down}Da informazioni raccolte pare che "
4017ifleft$(zb$,2)=" D"thenzg$="nascosta":zh$=" con il suo Amante":goto4019
4018zg$="custodita":zh$=" da una banda di briganti"
4019print"la"zb$" sia ora":printzg$;zh$:zr=int(4*rnd(0)):onzrgoto4024,4025,4026,4027
4024zi$="rovine del Castello Stregato":goto4030
4025zi$="catacombe della Citta' Morta":goto4030
4026zi$="misteriose Caverne Nere":goto4030
4027zi$="montagne degli Spettri Urlanti":goto4030
4030print"a due settimane di viaggio , nelle":printzi$;" .":gosub60:print"{down}puoi :":print"{down}{reverse on} * 1 * {reverse off} Rinunciare all'incarico":print"{down}{reverse on} * 2 * {reverse off} Accettare la missione  "
4035gosub10500:ifn>2thenprint"{up}{up}":goto4035
4036onngoto1350,4050
4037print"{up}{up}":goto4035
4050la$="":forzp=1to2:tk=tk+1:print"{clear}"zp"{left}' settimana del viaggio d'andata":print"{down}Stai viaggiando da solo verso le ":print"{down}"zi$:gosub60:im$="":nm$="":gosub20000:fu=0:ifi<4then4070
4063ifi=4thenprint"{down}{down}Viaggio tranquillo questa settimana{down}":goto4070
4064ifi>4andi<8then4069
4066gosub12000:gosub11000:gosub6860:gw=1:print"{down}Stai passando attraverso un Bosco":fu=0:gosub33020:iffu=0thengosub5520:goto4070
4069ifi>4andi<8thengosub30000
4070print"{down}Terminata la"zp"{left}'settimana di viaggio":im$="":nm$="":gosub700:gosub800:next:print"{clear}Sei arrivato , all'alba , in vista":print"{down}delle "zi$" .":gosub60:gosub40000:ifzz=1then4130
4123print"{down}Hai evitato le sentinelle,":ifleft$(zb$,2)=" D"thenzm$=" l'Amante":goto4126
4125zm$=" il Capo"
4126print"{down}hai sorpreso"zm$" da solo":print"{down}e inizia un duello all'ultimo sangue!":gosub60000:goto4200
4130gosub60000:print"{clear}Sei stato scorto da qualcuno e vieni":zz=0:print"{down}circondato da una dozzina di loschi":print"{down}figuri. Il loro capo ti propone un":print"{down}duello all'ultimo sangue ; chi alla"
4170print"{down}fine sara' sopravissuto potra' prendersi":print"la "zb$" .":gosub60:print"{down}Puoi:":print"{down}{reverse on}* 1 *{reverse off} rinunciare e tornare indietro":print"{down}{reverse on}* 2 *{reverse off} accettare il combattimento"
4185gosub10500:ifn>2thenprint"{up}{up}":goto4185
4187onngoto4310,4200
4200gosub35000:print"{clear}Alla morte del loro capo gli altri si":print"{down}fuggono! Puoi recuperare la":print"{down}{left}"zb$" .":iffa>19thenfa=20:goto4290
4240print"{down}Questo ti aumenta un punto in fascino":fa=fa+1
4290gosub810:goto4351
4310print"{clear}Burlato e beffeggiato inizi il viaggio":zk=1:print"{down}di ritorno.":gosub60:print"{down}Questo ti fa perdere un punto di Fascino":fa=fa-1:gosub60
4351forzp=1to2:tk=tk+1:print"{clear}"zp"{left}' settimana del viaggio di ritorno":print"{down}dalle "zi$:gosub60:nm$="":im$="":gosub20000:ifi<4then4370
4363ifi=4thenprint"{down}{down}Viaggio tranquillo per questa settimana{down}":goto4370
4364ifi>4andi<8then4369
4366gosub12000:gosub11000:gosub6860:print"{down}Stai passando attraverso un Bosco":fu=0:gosub33020:iffu=0thengosub5500:goto4370
4369ifi>4andi<8thengosub30000
4370print"{down}Terminata la"zp"{left}'settimana di viaggio":im$="":nm$="":gosub700:gosub800:next:print"{clear}Sei ritornato in citta' .":ifzk=1then4900
4382print"{down}Ti rechi dal "zc$" e":print"{down}ricevi la ricompensa pattuita .":ifleft$(zd$,1)="O"then4400
4391ifleft$(zd$,4)="un F"then4500
4392ifleft$(zd$,4)="un A"then4600
4393ifleft$(zd$,5)="una P"then4700
4394ifleft$(zd$,1)="D"then4800
4400print"{down}{92} 1000 in oro!":dn=dn+1000:print"{down}Possiedi ora {92} "dn:goto4990
4500print"{down}Un Filtro magico che cura le ferite":wx=wx+1:os$(wx)="Filtro magico":goto4990
4600print"{down}Un Amuleto incantato che accresce":print"{down}un punto la tua Intelligenza!":wx=wx+1:os$(wx)="Amuleto incantato":in=in+1:goto4990
4700print"{down}Una Pozione miracolosa che":print"{down}aumenta di un punto la Destrezza":de=de+1:goto4990
4800print"{down}{92} 2000 in Diamanti!":dn=dn+2000:print"{down}Possiedi ora {92} "dn:goto4990
4900print"{down}Non hai potuto":print"{down}recuperare la "zb$:print"{down}del "zc$:print"{down}e quindi non ricevi ricompensa ."
4990print"{down}Terminata la missione torni in taverna":gw=0:ifleft$(zd$,4)="un F"thengosub700:gosub810:goto4993
4992gosub60000
4993goto1200
5000print"{clear}Sei ora al servizio del barone Burlund":dn=dn+1000:gd=1:k=1:gw=0:print"per 4 settimane ,hai ricevuto il tuo":print"premio;possiedi ora {92}"dn:gosub60:forzy=1to4:gosub700:tk=tk+1
5011print"{down}"k"' settimana di servizio":x=int(12*rnd(0))+1:onxgosub6800,6200,6300,6400,6200,6500,6600,6700,6800,6900,6800,6700:print"{down}Questa settimana  hai il compito di":printga$:printgb$:printgc$:printgd$
5087gosub60000:fu=0:print"{clear}"tab(10)"{reverse on}{yellow} INIZIA{160}LA{160}MISSIONE {reverse off}{white}":print"{down}Parti dalla Fortezza del Barone Burlund":print"per compiere da solo la tua"k"{left}' missione":gosub20000:im$="":gosub11000:d1=int(3*rnd(0))+1
5193fu=0:print"{down}Ti stai avvicinando al tuo obbiettivo e":ifleft$(gd$,1)="c"thengosub33000:goto5900
5240ond1goto5250,5300,5350
5250print"avvisti un gruppo di";nm:printnm$" che non{160}si sono ancora":print"accorti di te!":gosub60:print"{down}Puoi :":print"{down}{reverse on}* 1 *{reverse off} allontanarti al galoppo":print"{down}{reverse on}* 2 *{reverse off} avvicinarti deciso  "
5267print"{down}{reverse on}* 3 *{reverse off} tentare un' imboscata"
5268gosub10500:ifn>3thenprint"{up}{up}":goto5268
5270print"{clear}":onngoto5280,5400,5291
5280ifnm$<>"armigeri "thenfu=1
5288ifnm$="armigeri "thenfu=3
5290goto5900
5291gosub34010:gosub60000:print"{clear}":goto5420
5300print"incontri un gruppo di";nm:printnm$;" che ti si fanno incontro!":gosub60:print"{down}Puoi :":print"{down}{reverse on}* 1 *{reverse off} scappare  al galoppo":print"{down}{reverse on}* 2 *{reverse off} avvicinarti risoluto"
5326gosub10500:ifn>2thenprint"{up}{up}":goto5326
5330print"{clear}":onngoto5340,5400
5340ifnm$<>"armigeri "thenfu=1
5342ifnm$="armigeri "thenfu=3
5349goto5900
5350print"t'imbatti all'improvviso in un gruppo":print"di"nm;nm$"!":print"{down}La sorpresa e' reciproca e siete a":print"contatto d' armi!":gosub60:print"{down}Puoi:":print"{down}{reverse on}* 1 *{reverse off} tentare di fuggire":print"{down}{reverse on}* 2 *{reverse off} combattere"
5370gosub10500:ifn>2thenprint"{up}{up}":goto5370
5382print"{clear}":onngosub24000,21000:goto5900
5400::print"{clear}{down}Hai intercettato i"nm;nm$"!{down}"
5420gosub60:im$="":gosub21000:goto5900
5500rem
5520print"Frugando i cadaveri trovi:"
5530ift=0then5600
5540printt$" per {92} "t:dn=dn+t:t$="":t=0:print"Possiedi ora {92} "dn" .":return
5600ifrm=1then5630
5602ifrm=2then5640
5608print"Un "gf$:wx=wx+1:os$(wx)=left$(gf$,14):ft=0:return
5630printgf$:print"Essa t'infonde una grande forza!":ro=ro+1:ifro>19thenro=20
5634print"La tua Robustezza (Ro) e' ora "ro:rm=0:rf=ro:return
5640print"Un "gf$:wx=wx+1:os$(wx)=left$(gf$,9):print"che ti aumenta di uno la Fortuna!":fr=fr+1:iffr>19thenfr=20
5645return
5900iffu=3thenprint"Sei riuscito a scappare dai cattivi    "
5911iffu=3thenprint"armigeri di Movas con questa fuga e hai"
5912iffu=0thenprint"Con questo combattimento hai"
5914iffu=1thenprint"Con questa fuga non hai"
5916iffu=4thenprint"Dopo questo incontro rientri poiche'hai"
5920printfm$:iffu=1thenprint"Questo ti fa'perdere un punto di Fascino":fa=fa-1
5931iffu=0thengosub5500
5933print"{down}Terminata la"k"{left}' settimana ritorni":print"nella fortezza del Barone Burlund .{down}":t=0:ft=0:x1=12:forp=1to10:print"{up}";:next:x1=21:print"{up}{up}":x1=0:print"{white}{up}{up}":gosub700:gosub800:k=k+1
5991print"{clear}":nextzy
6010print"{down}{clear}Hai terminato il tuo ingaggio;puoi:":print"{down}{down}{reverse on} * 1 * {reverse off} Rinnovare l'ingaggio alle stesse":print"{down}condizioni":print"{down}{down}{reverse on} * 2 * {reverse off} Ritornare in citta per cercare":print"{down}nuove avventure"
6060print"{down}{down}{reverse on} * 3 * {reverse off} rivedere "np$" prima":print"{down}di scegliere!"
6100gosub10500:ifn>3thenprint"{up}{up}":goto6100
6110onngoto5000,1350,6120
6120su=1:gosub1200:su=0:goto6010
6200ga$="pattugliare i confini d'oriente e":gb$="respingere le incursioni":gc$="dei feroci mongoli delle steppe .":gd$="":nm$="mongoli":t$="monili e pelli":t=int(50*rnd(0))+101
6260fm$="respinto l'incursione dei mongoli":return
6300ga$="distruggere una banda di furfanti che":gb$="assale i viandanti e rapina   i mer-":gc$="canti e i contadini .":gd$="":nm$="briganti ":t$="oro e argento ":t=int(510*rnd(0))+101
6360fm$="sgominato la banda di furfanti ":return
6400ga$="intercettare gli schiavisti che hanno":gb$="fatto un'incursione nel vicino paese ,e":gc$="liberare i contadini fatti schiavi .":gd$="":nm$="schiavisti ":t$="denaro  "
6406t=int(1000*rnd(0))+101:fm$="liberato i contadini fatti schiavi":return
6500ga$="portare un messaggio alla fortezza che":gb$="protegge la regione dalle incursioni":gc$="degli armigeri del cattivo Conte Movas":gd$="":nm$="armigeri ":t$="borsa di monete"
6506t=int(190*rnd(0))+101:fm$="consegnato il messaggio alla fortezza":return
6600ga$="arrestare un Vassallo ribelle e sgomi-":gb$="nare una banda di mercenari che il":gc$="Ribelle ha assoldato.":gd$="":nm$="mercenari ":t$="borsa di monete":t=int(990*rnd(0))+101
6660fm$="arrestato il Ribelle e disperso i suoi  Mercenari .":return
6700ga$="stare di guarnigione in un villaggio":gb$="costiero e proteggerlo dalle incursioni":gc$="dei pirati delle Isole Nere":gd$="":nm$="pirati ":t$="dobloni d'oro ":t=int(590*rnd(0))+101
6760fm$="protetto il villaggio costiero .":return
6800ga$="pattugliare la strada che attraversa il":gb$="bosco di Orriwood che, dicono, sia":gc$="stregato ed abitato da mostri e strane":gd$="creature magiche .{down}"
6860gosub12000:gr=int(4*rnd(0))+1:ifgr=1thengf$="Filtro magico che cura le ferite":ft=1:t=0:t$="":rm=0
6880ifgr=2thent$="Polvere d'argento":t=int(50*rnd(0))+551:ft=0:gf$="":rm=0
6882ifgr=3thengf$="Una Radice di mandragora":t=0:t$="":ft=0:rm=1
6883ifgr=4thengf$="Talismano portafortuna":ft=0:t=0:t$="":rm=2
6890fm$="compiuto il pattugliamento di Orriwood":return
6900ga$="vigilare ai bordi della giungla di Khor":gb$="per impedire le scorrerie dei feroci":gc$="Boscipedi  che la abitano .":gd$="":nm$=" Boscipedi ":t$="monete di rame"
6906t=int(50*rnd(0))+24:fm$="ricacciato i Boscipedi nella giungla":return
9000ifee<>6andat<200then9900
9020print"{clear}{yellow}":forp=1to40:print"*";:next:printtab(10)"{down}{down}{white}   SEI{160}DIVENTATO{160}UN{160}EROE":print"{down}   e vieni chiamato nel Firmamento":print"{down}   dove  vivono  i Quasidei!!!":print"{down}{down}{yellow}":forp=1to40:print"*";:next:print"{down}{down}{down}{white}Per divenire EROE hai impiegato "tk
9080print"{down}settimane di avventura."
9900print"{down}{down}{down}VUOI RICOMINCIAREN (S/N)?"
9910getp$:ifp$<>"s"andp$<>"n"then9910
9920ifp$="s"thenrun
9930:
9935next:print"{clear}Ciaoooo!!!":end
10000np$="Swenha":fo=9:in=17:de=12:fr=13:ro=11:fa=16:at=fo*5:rf=ro:goto1200
10100np$="Thrulkh":fo=16:in=10:de=14:fr=9:ro=16:fa=9:at=fo*5:rf=ro:goto1200
10200np$="Colvor":fo=11:in=12:de=16:fr=15:ro=10:fa=11:at=fo*5:rf=ro:goto1200
10300d1=int(6*rnd(0))+1:d2=int(6*rnd(0))+1:d3=d1+d2+6:gosub60:return
10500print"{down}{reverse on}{purple}Batti il numero della tua scelta       {up}{reverse off}{white}"
10520getn$:n=val(n$):ifn=0then10520
10530return:data"Drago di sangue","Demone Rosso","Minotauro gigante","Golem di pietra":data"Pericoloso Brigante","Tirannosauro Atrox","Vampiro Maledetto":data"Licantropo nero","la Grande palude Viola","il Monte di Vetro"
10546data"la Foresta dei Fantasmi","la Collina Stregata","il Deserto Infuocato":data"il Lago di Lava melmosa","il Vulcano dei 3 Fuochi":data"la Grotta dell'impiccato","Si e'persa ":data"Hanno rubato ","E'scomparsa ","Non si trova ","Hanno rubato "
10610data"Si ricerca ","E'sparita ","E'sparita ":data" Nonna"," Ballerina"," Statua d'oro"," Moglie":data" Pergamena Sacra"," Perla Rossa"," Gemma Verde"," Pietra Arcana":data"Sultano di Kabir","Nobile locale","Prete-Mago di VETH"
10641data"Ricco Mercante":data"Cerusico di KHOR","Potente Ufficiale","Dignitario di Corte":data"Sacerdote di LYSS","Oro per {92} 1000","un Filtro magico":data"un Amuleto incantato","una Pozione miracolosa","Oro per {92} 1000"
10652data"un Filtro magico","una Pozione Miracolosa","Diamanti per {92} 2000"
11000x=0:sm=10:ifat<=100thenx=2:xy=1
11030ifat>100andat<150thenx=2:xy=1.2
11040ifat>150thenx=4:xy=2
11045ifat>200thenx=6:xy=3.5
11050nm=int(x*rnd(0))+3:am=int((int((41-nm)*rnd(0))+21)*xy):ifam>95thenam=95
11100return
12000a$="0":x=int(12*rnd(0))+1:onxgoto12100,12150,12200,12250,12300,12350,12400,12450,12500,12550,12600
12090nm$=" Zombi ":goto12990
12100nm$=" Elfi ":a$="1":goto12990
12150nm$=" Uomini Uccello ":a$="1":goto12990
12200nm$=" Droll ":goto12990
12250nm$=" Pentauri ":a$="1":goto12990
12300nm$=" Orchi cattivi ":goto12990
12350nm$=" Uomini Lupo ":a$="1":goto12990
12400nm$=" Serpenti alati ":goto12990
12450nm$=" Ragni pelosi ":goto12990
12500nm$=" Orchi ":goto12990
12550nm$=" Gnomi ":a$="1":goto12990
12600nm$=" Nani giganti ":a$="1"
12990return
20000i=int(10*rnd(0))+1:ifi>3then20999
20022gosub32000:gosub11000:am=am-10:sm=5:print"{down}Attenzione!  Stai per cadere in una ":printtab(12)"{down}{reverse on}{purple} * IMBOSCATA * {reverse off}{white}":print"{down}Per accorgerti per tempo dell'imboscata":print"devi tirare un dado a 21 e il risultato"
20070print"deve essere  inferiore  o  uguale  alla":print"tua Intelligenza ("in"){160}.":gosub20:gosub60:ifin>=d6then20500
20160print"{down} Sei caduto nell'imboscata tesa da"nm:printim$"e hai ricevuto 1 ferita":rf=rf-1:gosub60000:print"{clear}"
20210fu=0:ifam>90thenam=am-10
20213ifam<22thenam=am+9
20220gosub21000:fu=0:goto20999
20500print"{down} Ti sei accorto dell'imboscata tesa da":printnm;im$" ;puoi:":print"{down}* 1 * Evitare l'imboscata":print"* 2 * Attaccare di sorpresa"
20540gosub10500:ifn>2thenprint"{up}{up}":goto20540
20550onngoto20570,20600
20560print"{up}{up}":goto20540
20570print"Imboscata evitata,prosegui l'avventura{up}":gosub60:gosub60:forp=1to5:getp$:next:print"{clear}":goto20999
20600print"{clear}Hai attaccati di sorpresa":ifleft$(im$,2)<>" L"orks<>0then20610
20607gosub80:goto20210
20610print"hai ucciso uno dei"im$:nm=nm-1:print:goto20210
20999im$=" ":return
21000fu=0:y=1
21005print"{reverse on}    "y"{left}'  turno di mischia     {reverse off}":ifnm=1thenprint"{down}Sei in mischia con un solo avversario{down}":goto21030
21020print"{down}Sei in mischia con"nm"avversari{down}"
21030forj=1tonm:gosub60:ifnm>=4thenpa=int(at/4):cs=0:goto21050
21040pa=int(at/nm)+10:cs=0:xf=1
21050cm=int(100*rnd(0))+1:pp=int(100*rnd(0))+1:ifam<cmandnm=1thenprint"{yellow}*{white} l'avversario sbaglia il colpo":goto22000
21070ifam<cmthenprint"{yellow}*{white}"j"'avversario sbaglia il colpo":goto22000
21080ifam>=cmandpa<ppthencs=1
21090cc=int(am/20):ifcc>=cmthenxf=2
21120ifcs=1andxf=1thenprint"*"j"'avversario ti fa {reverse on}1 ferita{reverse off}":rf=rf-1:goto22000
21130ifcs=1andxf=2thenprint"*"j"'avversario ti fa {reverse on}2 ferite{reverse off}":rf=rf-2:goto22000
21149ifnm=1thenprint"{green}*{white} Parato il colpo dell'avversario":goto22000
21150print"{green}*{white} Parato colpo del"j"'avversario"
22000xf=1:next:cc=0:ifnm>1thencc=int(at/15):gosub60
22031ifks>0then22040
22035ifleft$(nm$,2)=" L"orleft$(im$,2)=" L"thengosub80:goto23000
22040ap=int(100*rnd(0))+1:ifat<apthenprint"{down}Hai mancato il colpo":goto23000
22055xs=int(100*rnd(0))+1:ifat>=apandsm>=xsthenprint"{down}L'avversario ha scansato il colpo":goto23000
22070ts=0:ifat>=apthents=1
22090ifts=1andcc>=apthenprint"{down}^^ Hai ucciso {reverse on}due{reverse off} avversari":nm=nm-2:goto23000
22099ifnm=1then22110
22100ifts=1andcc<apthenprint"{down}^ Hai ucciso un avversario":nm=nm-1:goto23000
22110ifts=1andcc<apthenprint"{down}^ Hai ucciso l'ultimo avversario":nm=nm-1
23000gosub60:ifrf<=0thenrf=0
23010print"{down}la tua robustezza e' ora "rf:gosub70:ifrf<=0thenprint"{down}Sei morto!!":goto9900
23020ifnm=0then29200
23021ifnm>1thenprint"{down}Gli avversari sono ora"nm
23022ifnm=1thenprint"{down}Hai di fronte un solo avversario"
23030gosub70:print"{down}Puoi fare la scelta di :":print"* 1 * Tentare la fuga":print"* 2 * Continuare il combattimento"
23060gosub10500:ifn>2thenprint"{up}{up}":goto23060
23070onngoto24000,29000
24000::print"{clear}"tab(7)"{reverse on} Tentativo di fuga {reverse off}":print"{down}Devi tirare un dado a 21":print"{down}e devi{right} fare{right} un risultato  uguale o":print"{down}inferiore alla tua Fortuna ("fr").":gosub20:gosub60:iffr>=d6then24200
24110print"{down}Il tentativo di fuga e' fallito!":ifnm=1thenprint"{down}Hai ricevuto una ferita!":goto24140
24130print"{down}Hai ricevuto "nm" ferite!"
24140rf=rf-nm:goto23000
24200print"{down}La fuga e' riuscita":fu=1:goto29220
29000y=y+1:ifnm>0thenprint"{clear}"
29100ifnm>0goto21005
29200print"{down}hai ucciso tutti i tuoi avversari":gosub60:print"{down}Sei cresciuto del 3% di capacita' di ":print"{down}usare le armi!":at=at+3
29220print"{down}Puoi riprendere la tua avventura":gosub810:print"{clear}":return
30000fu=0:gosub32000:gosub11000:gosub6860:nm$=im$:pl1=int(2*rnd(0))+1:ifpl1=1thenpl$="una palude melmosa"
30040ifpl1=2thenpl$="un villaggio "
30050gw=1:print"{down}Stai passando presso "pl$:print"{down}e ti accorgi che,in lontananza,"nm:print"{down}{left}"nm$"sono sulla tua ":print"{down}strada e stanno venendo verso di te":gosub60:gosub33030:iffu=0thengosub5520
30100return
32000a$="1":x=int(12*rnd(0))+1:onxgoto32100,32150,32200,32250,32300,32350,32400,32450,32500,32550,32600
32090im$=" Sauridi ":goto32990
32100im$=" Tigroidi ":goto32990
32150im$=" Coboldi ":goto32990
32200im$=" Droll ":goto32990
32250im$=" Centipedi ":goto32990
32300im$=" Grandi Giganti ":a$="1":goto32990
32350im$=" Grandi Serpenti ":goto32990
32400im$=" Demoni volanti ":goto32990
32450im$=" Lupi mannari ":a$="0":goto32990
32500im$=" Rospi Gracchianti ":goto32990
32550im$=" Grifoni alati ":goto32990
32600im$=" Folli Folletti ":a$="1"
32990return
33000print"{down}mentre stai pattugliando Orriwood"
33020print"{down}Vedi nel Bosco"nm;nm$:gosub70
33030print"{down}Puoi:":print"{down}{reverse on}* 1 *{reverse off} fuggire ed evitarli":print"{down}{reverse on}* 2 *{reverse off} avvicinarti amichevolmente":print"{down}{reverse on}* 3 *{reverse off} attaccarli":print"{down}{reverse on}* 4 *{reverse off} tentare un' imboscata"
33070gosub10500:ifn>4thenprint"{up}{up}":goto33070
33090print"{clear}":onngoto33100,33200,33300,33400
33100fu=1:return:ifgw=1thenreturn
33200ifleft$(nm$,2)=" L"orleft$(nm$,2)=" Z"then33210
33202ifval(a$)=1then33250
33210print"{clear}Loro non sono amichevoli e ti attaccano{down}{down}":gosub60:gosub21000:goto34000
33250gosub34500:ifkz=1thenprint"{clear}":goto33300
33272forp=1to200:next:print"{down}I "nm;" ";nm$:print"incantati,ti regalano:":gosub5530:gosub60000:print"{clear}":goto34000
33300gosub21000:goto34000
33400gosub34010:gosub60000:print"{clear}":gosub21000:goto34000
34000return
34010print"{clear}Per riuscire nell'imboscata devi":print"{down}essere abile e furtivo!":gosub40000:ifzz=0then34200
34140print"{down}i"nm;nm$" ti hanno visto,":print"e ti attaccano all'improvviso!":gosub70:print"{down}ricevi "nm" ferite!":rf=rf-nm:return
34200ifleft$(nm$,2)<>" L"orks<>0then34210
34207gosub80:goto34225
34210print"{down}Hai ucciso un avversario.":nm=nm-1
34225print"{down}Sei in mischia con";nm;nm$:return
34500kz=0:bt=0:print"{clear}Per convincerli devi":print"incantarli!":print"Tiri un dado a 21 e il risultato":print"non deve essere superiore al":print"tuo fascino ("fa") ."
34570gosub20:gosub60:iffa>=d6then34640
34620print"{down}Hai fallito! ":print"{down}I "nm;nm$"si sono arrabiati e":print"{down}ti attaccano!":kz=1:gosub60000:return
34640fu=4:print"{down}Ci sei riuscito!{down}":return
35000ha=at-(int(20*rnd(0))+1):pa=at:ifleft$(la$,1)="D"thenha=95
35030ifha>95thenha=95
35040hp=ha-15:hd=((int(6*rnd(0))+1)+(int(6*rnd(0))+1)+6):ifat>99thenhp=hp-(at-100)
35048ifhp<5thenhp=5
35050hr=((int(6*rnd(0))+1)+(int(6*rnd(0))+1)+6):hz=hr:ifpa>95thenpa=95
35052ifleft$(la$,1)="G"thenhr=hr+10:hd=hd-5:hp=5
35060print"{clear}La tua Destrezza e' "de:gosub60:print"{down}Quella del tuo avversario "hd:gosub60:ifhd>dethenprint"{down}Lui attacca per primo!":goto35200
35090print"{down}Attacchi per primo!":gosub60
35100aa=int(100*rnd(0))+1:ifaa>95oraa>atthenprint"{down}hai sbagliato il colpo":goto35200
35120print"{down}Hai colpito l'avversario":gosub70:hh=int(5*rnd(0))+3:d8=int(100*rnd(0))+1:ifd8>95orhp<=0then35160
35150ifd8<hpthenprint"{down}ma lui ha parato il tuo colpo":hp=hp-5:goto35200
35160ifaa<int(at/10)thenprint"{down}e gli hai fatto un colpo a fondo,":hu=hh+7
35162ifaa<int(at/10)thenprint"{down}con una ferita da "hu" punti":hr=hr-hu:goto35180
35170print"{down}e gli hai fatto una ferita da"hh" punti":hr=hr-hh:gosub60
35180ifhr<=0thenprint"{down}Con questo colpo lo hai ucciso":goto35320
35190ifhr<int(hz/3)thenprint"{down}L'avversario e' in difficolta'":hp=0
35200gosub60:hm=int(100*rnd(0))+1:ifhm>95orhm>hathenprint"{down}l'avversario ha sbagliato il colpo":goto35300
35230print"{down}l'avversario ti ha colpito":h8=int(100*rnd(0))+1:hy=int(4*rnd(0))+3:ifh8<=pathenprint"{down}ma lo hai parato":goto35300
35260ifhm<=int(ha/20)thenhy=hy+hy+1
35270print"{down}e ti ha fatto una ferita da"hy" punti":rf=rf-hy:gosub60:ifrf<=0thenprint"{down}{yellow}Sei morto!{white}":goto9900
35290print"{down}La tua robustezza e' ora "rf
35300ifleft$(la$,1)="V"thengosub35400
35302ifleft$(la$,1)="L"thengosub35450
35303gosub60000:print"{clear}":goto35100
35320print"{down}Sei cresciuto":print"{down}del 7% in attacco!":at=at+7:gosub60000:return
35400print"{down}Lo sguardo del "la$" ti":fo=fo-1:at=at-5:pa=pa-5:print"{down}debilita! Perdi un punto di Forza":print"{down}La tua Forza e' ora "fo"!":iffo<=0then9000
35440return
35450print"{down}L'urlo del "la$" ti paralizza":de=de-1:print"{down}perdi un punto in destrezza!":hp=hp-5:print"{down}La tua Destrezza e' ora "de"!":ifde<=0then9000
35490return
38000print"{down}{reverse on}* 4 *{reverse off} GRAZIE tornero' piu tardi!":return
39000print"{down}Non hai soldi!":goto3800
40000print"{down}Per non farti scorgere devi tirare un ":print"{down}dado a 21 e il risultato non deve essere":print"{down}inferiore alla tua destrezza("de"{left})":gosub20:gosub60:ifd6>dethenprint"{down}Hai fallito!":zz=1:return
40150print"{down}Ci sei riuscito!":zz=0:return
41000d9=int(8*rnd(0))+1:ond9goto41020,41030,41040,41050,41060,41070,41080,41090
41020np$="Reina":goto41100
41030np$="Decan Khan":goto41100
41040np$="Ulrik":goto41100
41050np$="Ghator":goto41100
41060np$="Futak":goto41100
41070np$="Beowolf":goto41100
41080np$="Vokhor":goto41100
41090np$="Zolak":goto41100
41100return
50000qq=0:print"{down}Vaghi nel Deserto":tt=tt+1:print"{down}se in una settimana non trovi":print"{down}un'oasi sei morto!":gosub60:print"{down}Per trovare un'oasi devi tirare un dado":print"{up}a 21 e il risultato deve essere uguale"
50060print"o inferiore alla tua Fortuna ("fr") .":gosub20:gosub60:iffr>=d6then50500
50120print"{down}Sei morto!":goto9900
50500print"{down}Oasi trovata!":gosub60000:print"{clear}Nell'oasi trovi una carovana di nomadi":print"{down}che si stanno dirigendo verso la tua":print"{down}citta' e ti prendono con loro ;{down}":gosub60:q0=int(2*rnd(0))+2
50507tk=tk+q0:qw=0
50542ifrf=rothen50550
50544qt=ro-rf:ifqt>=q0thenprint"nel viaggio recuperi"q0" di Ro,":rf=rf+q0
50546ifqt<q0thenprint"nel viaggio recuperi "qt" di Ro,":rf=rf+qt
50550ifq0=4thenreturn
50551print"dopo "q0" settimane sei tornato a casa":gosub810:su=0:goto1200
60000getb$:print"{down}{reverse on}{purple}Premi un tasto{reverse off}{up}{white}"
60010getp$:ifp$=""then60010
