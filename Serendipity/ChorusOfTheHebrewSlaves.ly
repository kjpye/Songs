\version "2.25.16"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Chorus of the Hebrew slaves"
  subtitle    = \markup {(from \italic Nabucco )}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Guiseppe Verdi (1813-1901)"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "T. Solera"
  meter       = "tr. J. Rutter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key fis \major
  \time 4/4
  \partial 16 s16 \bar ""
}

TempoTrack = {
  s16
  \tempo Largo 4=60
  s1
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
  s16
%  \set Score.currentBarNumber = #1
  \textMark \markup { \box "253a" } s1*2
  \textMark \markup { \box "253b" } s1*3
  \textMark \markup { \box "253c" } s1*3
  \textMark \markup { \box "253d" } s1*2
  \textMark \markup { \box "253e" } s1
  \mark \markup \circle "A" s1
  \textMark \markup { \box "254a" } s1*2
  \textMark \markup { \box "254b" } s1*2
  \textMark \markup { \box "254c" } s1*2
  \textMark \markup { \box "254d" } s1*2
  \mark \markup \circle B
  \textMark \markup { \box "255a" } s1*2
  \textMark \markup { \box "255b" } s1*2
  \textMark \markup { \box "255c" } s1*2
  \textMark \markup { \box "255d" } s1*2
  \mark \markup\circle C
  \textMark \markup { \box "256a" } s1*2
  \textMark \markup { \box "256b" } s1*2
  \textMark \markup { \box "256c" } s1*2
  \textMark \markup { \box "257a" } s1*2
  \textMark \markup { \box "257b" } s1*2
  \textMark \markup { \box "257c" } s1*2
  \mark \markup\circle D
  \textMark \markup { \box "258a" } s1*2
  \textMark \markup { \box "258b" } s1*2
  \textMark \markup { \box "258c" } s1*2
  \textMark \markup { \box "259a" } s1*2
  \textMark \markup { \box "259b" } s1*3
}

dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s16
  s1*11 |
  s2. s4\omit\p-\markup\italic "sotto voce" |
  s2 s4\> s\! | s1 | s2\< s\! | s1 | s2\< s\> | s1\! | s4\< s\> s2\! | s1 | % 254
  s1 | s2. s4\< | s1\! | s4 s2\< s4\! | s2\< s\> | s1\! | s2\< s\> | s1\! |
  s1\ff | s2. s4\omit\pp-\markup{\dynamic pp \italic "sotto voce"} | % 256a
  s1*2 |
  s1\ff | s2. s4\omit\pp-\markup{\dynamic pp \italic "sotto voce"}
  s1 | s2. s4\omit\pp-\markup{\italic sempre \dynamic pp} | % 257a
  s1*2 |
  s1*2 |
  s2\<^\markup\italic unis. s\> | s1\! | % 258a
  s4\< s\> s2\! | s1\< |
  s1\> | s\< |
  s1\> | s4\! s2\pp s4\dim | % 259a
  s1\pp\> | s\! | s |
}

soprano-raw = \relative {
  \global
  R1*10
  R1\fermata % 253e
  r2^\markup\bold Cantabile r4 ais'8. gis16
  fis4\(cis8\) r16 cis' cis4\(ais8.\) fis16 % 254a
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tag #'it {cis4  \(fis8. ais16\) ais8.->(gis16) ais8.->\(gis16\) |} % 254b
  \tag #'en {cis,4 \(fis8. ais16\) ais8.-> gis16  ais8.->\(gis16\) |}
  fis4\(eis\) r ais8. gis16
  fis4\(cis8.\)cis'16 cis4 \( ais8. \) fis16 % 254c
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tuplet 3/2 {cis8(fis ais)} \tuplet 3/2 {cis (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} % 254d
  fis2 r4 ais8. 16
  gis4 \tuplet 3/2 {bis8^^(ais^^) gis^^} fis4 \tuplet 3/2 {ais8^^ (gis^^) fis^^} % 255a
  eis8.(fis16) gis4 r ais8. bis16
  \tag #'it {cis4-^  bis8. ais16 \tuplet 3/2 {ais8-.(gis-. fisis-.)} \tuplet 3/2 {ais8-. gis-. fis-.} |} % 255b
  \tag #'en {cis'4-^ bis8. ais16 \tuplet 3/2 {ais8-.(gis-.)fisis-. } \tuplet 3/2 {ais8-.(gis-.)fis-.} |} 
  eis8.(dis16) cis2\(ais'8.->\)gis16
  fis4\(cis8.\) cis'16cis4->\(ais8.\) fis16 % 255c
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tag #'it {\tuplet 3/2 {cis8 (fis ais)} \tuplet 3/2 {cis8-^ (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} |} % 255d
  \tag #'en {\tuplet 3/2 {cis,8(fis)ais } \tuplet 3/2 {cis8-^ (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} |}
  fis2 r4 cis'8. 16
  <cis eis>4-> q8.-> 16 4-> \tuplet 3/2 {8-> (<bis dis>->) <ais cis>->} % 256a
  \tag #'it {bis4( \tuplet 3/2 {ais8-> bis-> cis->)} gis4 \tuplet 3/2 {r8 <eis gis> q} |}
  \tag #'en {bis'4 \tuplet 3/2 {ais8->(bis-> cis->)} gis4 \tuplet 3/2 {r8 <eis gis> q} |}
  <dis fis>8 r q8 [r16 q] q8 r q8 [r16 q] % 256b
  <fis ais>4-> <eis gis> r gis8. 16
  <cis eis>4-> q8.-> 16 q4-> \tuplet 3/2 {q8-> (<bis dis>->) <ais cis>} % 256c
  \tag #'it {bis4 (\tuplet 3/2 {ais8-> bis cis}) gis4 \tuplet 3/2 {r8 <eis gis> q} }
  \tag #'en {bis'4 \tuplet 3/2 {ais8->(bis)cis}  gis4 \tuplet 3/2 {r8 <eis gis> q} }
  <dis fis>8 r q[r16 q16] 8 r \tuplet 3/2 {q8 (<fis ais>)<eis gis>} % 257a
  <cis eis>2 r4 cis8. 16
  \tag #'it {<eis b'>4 8. 16 <fis ais>4 8. 16 |} % 257b
  \tag #'en {<eis b'>4~8. 16 <fis ais>4 8. 16 |}
  <eis gis>2 cis8 r8 8. 16
  <eis b'>4 8. 16 <fis a>4 8. 16 % 257c
  <eis gis>4 cis2 ais'8.^^ gis16
  fis4^\markup\italic unis. cis8. cis'16 cis4 ais8. fis16 % 258a
  \tuplet 3/2 {fis8 (eis gis)} b4 r cis,8. 16
  \tuplet 3/2 {cis8 (fis ais)} \tuplet 3/2 {cis-^ (b)gis} fis4 \tuplet 3/2 {eis8 (ais) gis} % 258b
  fis8 r ais8. 16 4 8. 16
  dis2 ~ \tuplet 3/2 {dis8(b ais)} \tuplet 3/2 {ais8(b) gis} % 258c
  fis8 r ais8. 16 4 8. 16
  dis2 ~\tuplet 3/2 {dis8(cis b)} \tuplet 3/2 {ais8(b) gis} % 259a
  fis8 r <fis ais>8. 16 4 8. 16
  q1 ~ % 259b
  q4 r r2
  R1
  \bar "|."
}

words_it = \lyricmode {
  Va, pen -- sie -- ro, sul -- l’a -- li do -- ra -- te;
  Va, ti po -- sa sui cli -- vi, sui col -- li,
  O -- "ve o" -- lez -- za -- no te -- pi -- "de e" mol -- li
  L’au -- re dol -- ci __ del suo -- lo __ na -- tal!
  Del Gior -- da -- no __ le ri -- ve __ sa -- lu -- ta,
  Di Sï -- on -- ne le tor -- ri -- at -- ter -- ra -- te…
  Oh mia pa -- tria sì bel -- "la e" per -- du -- ta!
  Oh mem -- bran -- za __ sì ca -- "ra e" __ fa -- tal!
  Ar -- pa d’ôr dei fa -- ti -- da -- ci va -- ti,
  Per -- ché mu -- ta dal sa -- li -- ce pen -- di?
  Le me -- mo -- rie nel pet -- to __ rac -- cen -- di,
  Ci fa -- vel -- la del tem -- po __ che fu~
  O si -- mi -- le di So -- li -- "ma ai" fa -- ti
  Trag -- "gi un" suo -- no di cru -- do la -- men -- to,
  O t’i -- spi -- "ri il" Si -- gno -- "re un" con -- cen -- to
  "Che ne" in -- fon -- "da al" __ pa -- ti -- re __ vir -- tú,
  "Che ne" in -- fon -- "da al" __ pa -- ti -- re vir -- tú,
  "Che ne" in -- fon -- "da al" __ pa -- ti -- re vir -- tú,
  al __ pa -- ti -- re vir -- tú!
}

wordsMidi_it = \lyricmode {
  "Va, " pen sie "ro, " sul l’a "li " do ra "te; "
  "\nVa, " "ti " po "sa " "sui " cli "vi, " "sui " col "li, "
  "\nO" "ve o" lez za "no " te pi "de e " mol "li "
  "\nL’au" "re " dol "ci "  "del " suo "lo "  na "tal! "
  "\nDel " Gior da "no "  "le " ri "ve "  sa lu "ta, "
  "\nDi " Sï on "ne " "le " tor ri at ter ra "te… "
  "\nOh " "mia " pa "tria " "sì " bel "la e " per du "ta! "
  "\nOh " mem bran "za "  "sì " ca "ra e "  fa "tal! "
  "\nAr" "pa " "d’ôr " "dei " fa ti da "ci " va "ti, "
  "\nPer" "ché " mu "ta " "dal " sa li "ce " pen "di? "
  "\nLe " me mo "rie " "nel " pet "to "  rac cen "di, "
  "\nCi " fa vel "la " "del " tem "po "  "che " "fu~ "
  "\nO " si mi "le " "di " So li "ma ai " fa "ti "
  "\nTrag" "gi un " suo "no " "di " cru "do " la men "to, "
  "\nO " t’i spi "ri il " Si gno "re un " con cen "to "
  "\nChe ne " in fon "da al "  pa ti "re "  vir "tú, "
  "\nChe ne " in fon "da al "  pa ti "re " vir "tú, "
  "\nChe ne " in fon "da al "  pa ti "re " vir "tú, "
  "\nal "  pa ti "re " vir tú!
}

words_en = \lyricmode {
  Dear -- est home -- land, my thoughts fly to -- wards __ thee;
  Wings of gold bear them on to jour -- ney’s end -- ing,
  Where the sweet -- scent -- ed breez -- es are blend -- ing
  In the green __ hills __ and vales of __ our land.
  Ah! to stand by __ the banks of __ the Jor -- dan
  And to see Si -- on’s woe -- ful de -- so -- la -- tion!
  O dear land, once the joy of our na -- tion,
  Now for -- ev -- er lost __ by Fate’s cru -- el hand.
  Gold -- en harps of the pro -- phets __ and seers of __ old,
  Why so si -- lent -- ly hang on the wil -- lows?
  Lift your voice, stir our hearts, let __ the sto -- ry __ be told
  Of the times now so long gone __ and past.
  O Je -- ru -- sa -- lem, bless -- ed ci -- ty,
  When will grief and la -- ment -- ing be o -- ver?
  Let our song rise to thee, great Je -- ho -- vah;
  Hear the voice __ of __ thy peo -- ple __ at last,
  Hear the voice of thy peo -- ple __ at last,
  Hear the voice of thy peo -- ple __ at last,
  Hear thy peo -- ple __ at last! __
}

wordsMidi_en = \lyricmode {
  "Dear" "est " home "land, " "my " "thoughts " "fly " to "wards "  "thee; "
  "\nWings " "of " "gold " "bear " "them " "on " "to " jour "ney’s " end "ing, "
  "\nWhere " "the " sweet scent "ed " breez "es " "are " blend "ing "
  "\nIn " "the " "green "  "hills "  "and " "vales " "of "  "our " "land. "
  "\nAh! " "to " "stand " "by "  "the " "banks " "of "  "the " Jor "dan "
  "\nAnd " "to " "see " Si "on’s " woe "ful " de so la "tion! "
  "\nO " "dear " "land, " "once " "the " "joy " "of " "our " na "tion, "
  "\nNow " for ev "er " "lost "  "by " "Fate’s " cru "el " "hand. "
  "\nGold" "en " "harps " "of " "the " pro "phets "  "and " "seers " "of "  "old, "
  "\nWhy " "so " si lent "ly " "hang " "on " "the " wil "lows? "
  "\nLift " "your " "voice, " "stir " "our " "hearts, " "let "  "the " sto "ry "  "be " "told "
  "\nOf " "the " "times " "now " "so " "long " "gone "  "and " "past. "
  "\nO " Je ru sa "lem, " bless "ed " ci "ty, "
  "\nWhen " "will " "grief " "and " la ment "ing " "be " o "ver? "
  "\nLet " "our " "song " "rise " "to " "thee, " "great " Je ho "vah; "
  "\nHear " "the " "voice "  "of "  "thy " peo "ple "  "at " "last, "
  "\nHear " "the " "voice " "of " "thy " peo "ple "  "at " "last, "
  "\nHear " "the " "voice " "of " "thy " peo "ple "  "at " "last, "
  "\nHear " "thy " peo "ple "  "at " "last! " 
}

alto-raw = \relative {
  \global
  R1*10
  R1\fermata % 253e
  r2^\markup\bold Cantabile r4 ais'8. gis16
  fis4\(cis8\) r16 cis' cis4\(ais8.\) fis16 % 254a
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tag #'it {cis4  \(fis8. ais16\) ais8.->(gis16) ais8.->\(gis16\) |} % 254b
  \tag #'en {cis,4 \(fis8. ais16\) ais8.-> gis16  ais8.->\(gis16\) |}
  fis4\(eis\) r ais8. gis16
  fis4\(cis8.\)cis'16 cis4 \( ais8. \) fis16 % 254c
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tuplet 3/2 {cis8(fis ais)} \tuplet 3/2 {cis (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} % 254d
  fis2 r4 ais8. 16
  gis4 \tuplet 3/2 {bis8^^(ais^^) gis^^} fis4 \tuplet 3/2 {ais8^^ (gis^^) fis^^} % 255a
  eis8.(fis16) gis4 r ais8. bis16
  \tag #'it {cis4-^  bis8. ais16 \tuplet 3/2 {ais8-.(gis-. fisis-.)} \tuplet 3/2 {ais8-. gis-. fis-.} |} % 255b
  \tag #'en {cis'4-^ bis8. ais16 \tuplet 3/2 {ais8-.(gis-.)fisis-. } \tuplet 3/2 {ais8-.(gis-.)fis-.} |} 
  eis8.(dis16) cis2\(ais'8.->\)gis16
  fis4\(cis8.\) cis'16cis4->\(ais8.\) fis16 % 255c
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tag #'it {\tuplet 3/2 {cis8 (fis ais)} \tuplet 3/2 {cis8- (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} |} % 255d
  \tag #'en {\tuplet 3/2 {cis,8(fis)ais} \tuplet 3/2 {cis8- (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} |}
  fis2 r4 cis'8. 16
  gis4-> 8.-> 16-> 4-> 8.-> 16-> % 256a
  \tag #'it {gis4( \tuplet 3/2 {fis8-> gis-> ais->)} eis4 \tuplet 3/2 {s8 cis cis} |}
  \tag #'en {gis'4 \tuplet 3/2 {fis8->(gis-> ais->)} eis4 \tuplet 3/2 {s8 cis cis} |}
  bis8 s bis8[ s16 bis] bis8 s bis [s16 bis] % 256b
  cis4-> cis r gis'8. 16
  gis4-> 8.-> 16 4-> 8.-> 16-> % 256c
  \tag #'it {gis4  (\tuplet 3/2 {fis8-> gis-> ais->}) eis4 \tuplet 3/2 {s8 cis cis} |}
  \tag #'en {gis'4 \tuplet 3/2 {fis8->(gis->)ais->} eis4 \tuplet 3/2 {s8 cis cis} |}
  bis8 r bis8[r16 bis] 8 r bis[r16 bis] % 257a
  cis2 s4 cis8. 16
  \tag #'it {cis4 8. 16 4 8. 16 |} % 257b
  \tag #'en {cis4~8. 16 4 8. 16 |} % 257b
  cis2 8 s8 8. 16
  cis4 8. 16 4 8. 16 % 257c
  cis4 2\glissando ais'8.-^ gis16
  fis4 cis8. cis'16 cis4 ais8. fis16 % 258a
  \tuplet 3/2 {fis8 (eis gis)} b4 r cis,8. 16
  \tuplet 3/2 {cis8 (fis ais)} \tuplet 3/2 {cis- (b)gis} fis4 \tuplet 3/2 {eis8 (ais) gis} % 258b
  fis8 r ais8. 16 4 8. 16
  dis2 ~ \tuplet 3/2 {dis8(b ais)} \tuplet 3/2 {ais8(b) gis} % 258c
  fis8 r ais8. 16 4 8. 16
  dis2 ~\tuplet 3/2 {dis8(cis b)} \tuplet 3/2 {ais8(b) gis} % 259a
  fis8 s cis8. 16 4 8. 16
  cis1 ~ % 259b
  cis4 r r2
  R1
  \bar "|."
}

tenor-raw = \relative {
  \global
  R1*10
  R1\fermata % 253e
  r2^\markup\bold Cantabile r4 ais8. gis16
  fis4\(cis8\) r16 cis' cis4\(ais8.\) fis16 % 254a
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tag #'it {cis4  \(fis8. ais16\) ais8.->(gis16) ais8.->\(gis16\) |} % 254b
  \tag #'en {cis,4 \(fis8. ais16\) ais8.-> gis16  ais8.->\(gis16\) |}
  fis4\(eis\) r ais8. gis16
  fis4\(cis8.\)cis'16 cis4 \( ais8. \) fis16 % 254c
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tuplet 3/2 {cis8(fis ais)} \tuplet 3/2 {cis (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} % 254d
  fis2 r4 ais8. 16
  gis4 \tuplet 3/2 {bis8^^(ais^^) gis^^} fis4 \tuplet 3/2 {ais8^^ (gis^^) fis^^} % 255a
  eis8.(fis16) gis4 r ais8. bis16
  \tag #'it {cis4-^  bis8. ais16 \tuplet 3/2 {ais8-.(gis-. fisis-.)} \tuplet 3/2 {ais8-. gis-. fis-.} |} % 255b
  \tag #'en {cis'4-^ bis8. ais16 \tuplet 3/2 {ais8-.(gis-.)fisis-. } \tuplet 3/2 {ais8-.(gis-.)fis-.} |} 
  eis8.(dis16) cis2\(ais'8.->\)gis16
  fis4\(cis8.\) cis'16cis4->\(ais8.\) fis16 % 255c
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tag #'it {\tuplet 3/2 {cis8 (fis ais)} \tuplet 3/2 {cis8-^ (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} |} % 255d
  \tag #'en {\tuplet 3/2 {cis,8(fis)ais } \tuplet 3/2 {cis8-^ (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} |}
  fis2 r4 cis'8. 16
  <cis eis>4-> 8.-> 16 4-> \tuplet 3/2 {q8->(<bis dis>->) <ais cis>->} % 256a
  \tag #'it {<gis bis>4(\tuplet 3/2 {<fis ais>8-> <gis bis>-> <ais cis>->}) <eis gis>4 \tuplet 3/2 {r8 <eis gis> q} |}
  \tag #'en {<gis bis>4 \tuplet 3/2 {<fis ais>8->(<gis bis>-> <ais cis>->}) <eis gis>4 \tuplet 3/2 {r8 <eis gis> q} |}
  <dis fis>8 r q[r16 q] 8 r q8[r16 q] % 256b
  <fis ais>4-> <eis gis> r gis8. 16
  <cis eis>4-> 8.-> 16 4-> \tuplet 3/2 {8-> (<bis dis>->) <ais cis>->} % 256c
  \tag #'it {<gis bis>4(\tuplet 3/2 {<fis ais>8-> <gis bis>-> <ais cis>->)} <eis gis>4 \tuplet 3/2 {r8 q q} |}
  \tag #'en {<gis bis>4 \tuplet 3/2 {<fis ais>8->(<gis bis>->)<ais cis>-> } <eis gis>4 \tuplet 3/2 {r8 q q} |}
  <dis fis>8 r q[r16 q] 8 r \tuplet 3/2 {q8(<gis ais>) <eis gis>} % 257a
  <cis eis>2 r4 cis8. 16
  \tag #'it {<gis' b>4 8. 16 <fis a>4 8. 16 |} % 257b
  \tag #'en {<gis  b>4~8. 16 <fis a>4 8. 16 |} % 257b
  <eis gis>2 cis8 r8 8. 16
  <gis' b>4 8. 16 <fis a>4 8. 16 % 257c
  <eis gis>4 cis2\glissando ais'8.-^ gis16
  fis4 cis8. cis'16 cis4 ais8. fis16 % 258a
  \tuplet 3/2 {fis8 (eis gis)} b4 r cis,8. 16
  \tuplet 3/2 {cis8 (fis ais)} \tuplet 3/2 {cis-^ (b)gis} fis4 \tuplet 3/2 {eis8 (ais) gis} % 258b
  fis8 r ais8. 16 4 8. 16
  dis2 ~ \tuplet 3/2 {dis8(b ais)} \tuplet 3/2 {ais8(b) gis} % 258c
  fis8 r ais8. 16 4 8. 16
  dis2 ~\tuplet 3/2 {dis8(cis b)} \tuplet 3/2 {ais8(b) gis} % 259a
  fis8 r <ais cis>8. 16 4 8. 16
  q1 ~ % 259b
  q4 r r2
  R1
%  \bar "|."
}

bass-raw = \relative {
  \global
  R1*10
  R1\fermata % 253e
  r2^\markup\bold Cantabile r4 ais8. gis16
  fis4\(cis8\) r16 cis' cis4\(ais8.\) fis16 % 254a
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tag #'it {cis4  \(fis8. ais16\) ais8.->(gis16) ais8.->\(gis16\) |} % 254b
  \tag #'en {cis,4 \(fis8. ais16\) ais8.-> gis16  ais8.->\(gis16\) |}
  fis4\(eis\) r ais8. gis16
  fis4\(cis8.\)cis'16 cis4 \( ais8. \) fis16 % 254c
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tuplet 3/2 {cis8(fis ais)} \tuplet 3/2 {cis (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} % 254d
  fis2 r4 ais8. 16
  gis4 \tuplet 3/2 {bis8^^(ais^^) gis^^} fis4 \tuplet 3/2 {ais8^^ (gis^^) fis^^} % 255a
  eis8.(fis16) gis4 r ais8. bis16
  \tag #'it {cis4-^  bis8. ais16 \tuplet 3/2 {ais8-.(gis-. fisis-.)} \tuplet 3/2 {ais8-. gis-. fis-.} |} % 255b
  \tag #'en {cis'4-^ bis8. ais16 \tuplet 3/2 {ais8-.(gis-.)fisis-. } \tuplet 3/2 {ais8-.(gis-.)fis-.} |} 
  eis8.(dis16) cis2\(ais'8.->\)gis16
  fis4\(cis8.\) cis'16cis4->\(ais8.\) fis16 % 255c
  \tuplet 3/2 {fis8(eis gis)} b4 r cis,8. 16
  \tag #'it {\tuplet 3/2 {cis8 (fis ais)} \tuplet 3/2 {cis8- (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} |} % 255d
  \tag #'en {\tuplet 3/2 {cis,8(fis)ais } \tuplet 3/2 {cis8- (b) gis} fis4 \tuplet 3/2 {eis8(ais) gis} |}
  fis2 r4 cis'8. 16
  cis,4-> 8.-> 16 4-> 8.-> 16-> % 256a
  \tag #'it {gis2\(   cis4\) \tuplet 3/2 {s8 cis cis} |}
  \tag #'en {gis4\( 4 cis4\) \tuplet 3/2 {s8 cis cis} |}
  gis8 r gis8 s16 16 8 s8 8 s16 16 % 256b
  cis4-> 4 r gis'8. 16
  cis,4-> 8.-> 16 4-> 8.-> 16 % 256c
  \tag #'it {gis2\(                   cis4\) \tuplet 3/2 {s8 cis8 8} |}
  \tag #'en {gis4\( \tuplet 3/2 {4 8} cis4\) \tuplet 3/2 {s8 cis8 8} |}
  gis8 s [8 s16 gis] 8 r gis8[s16 16] % 257a
  cis2 s4 cis8. 16
  \tag #'it {cis4 8. 16 4 8. 16 |} % 257b
  \tag #'en {cis4~8. 16 4 8. 16 |}
  cis2 8 s8 8. 16
  cis4 8. 16 4 8. 16 % 257c
  cis4 2\glissando ais'8.-^ gis16
  fis4 cis8. cis'16 cis4 ais8. fis16 % 258a
  \tuplet 3/2 {fis8 (eis gis)} b4 r cis,8. 16
  \tuplet 3/2 {cis8 (fis ais)} \tuplet 3/2 {cis- (b)gis} fis4 \tuplet 3/2 {eis8 (ais) gis} % 258b
  fis8 r ais8. 16 4 8. 16
  dis2 ~ \tuplet 3/2 {dis8(b ais)} \tuplet 3/2 {ais8(b) gis} % 258c
  fis8 r ais8. 16 4 8. 16
  dis2 ~\tuplet 3/2 {dis8(cis b)} \tuplet 3/2 {ais8(b) gis} % 259a
  fis8 r8 8. 16 4 8. 16 
  fis1 ~ % 259b
  fis4 r r2
  R1
  \bar "|."
}

pianoRH = \relative {
  \global
  \appoggiatura {gis32 ais bis} cis4-> r \appoggiatura {gis32 ais bis} cis4-> \appoggiatura {gis32 ais bis} cis4->
  \appoggiatura {gis32 ais bis} \tuplet 3/2 {cis8 <cis' eis gis>-. q-.} q8-. r \tuplet 3/2 {<cis fis a>8-. q-. q-.} q8-. r % 253b
  \appoggiatura {gis,32 ais bis} cis4-> r \appoggiatura {gis32 ais bis} cis4-> \appoggiatura {gis32 ais bis} cis4->
  \appoggiatura {gis32 ais bis} \tuplet 6/4 {cis16 <cis' eis gis>-. q-. q-. q-. q-.} q8-. r \tuplet 6/4 {<cis fis a>16-. q-. q-. q-. q-. q-.} q8-. r
  cis'4\trill~(\tuplet 3/2 {cis8 bis cis)} d4(cis8) r
  \repeat tremolo 16 {<fis, a cis fis>32} q4-> r % 253c
  \repeat tremolo 16 {q32} q4-> r
  \repeat tremolo 16 {q32} q4-> r
  \repeat unfold 4 {\tuplet 6/4 \repeat unfold 3{cis'16-. bis-.}} % 253d
  \tuplet 6/4 {cis16-. bis-. cis-. dis-. eis-. fis-.} \tuplet 6/4 {gis-. fisis-. gis-. fis-.  eis-. dis-.} \tuplet 6/4 {b-. cis-. eis-. dis-. ais-. cis-.} \tuplet 6/4 {b-. gis-. dis-. fis-. eis-. fis-.}
  R1 \bar "||" % 253e
  \repeat unfold 4 \tuplet 3/2 {r8 <ais,, cis fis> q}
  \repeat unfold 4 \tuplet 3/2 {r8 <ais cis fis>8 q} % 254a
  \repeat unfold 4 \tuplet 3/2 {r8 <gis b cis eis> q}
  \repeat unfold 2 \tuplet 3/2 {r8 <ais cis eis> q} \tuplet 3/2 {r8 <gis b gis'>q} \tuplet 3/2 {r8 <gis bis gis'>q} % 254b
  \tuplet 3/2 {r8 q q} \repeat unfold 2 \tuplet 3/2 {r8 <gis cis eis> q} \tuplet 3/2 {r8 <gis b cis eis> q}
  \repeat unfold 4 \tuplet 3/2 {r8 <ais cis fis> q} % 254c
  \repeat unfold 4 \tuplet 3/2 {r8 <gis b cis eis> q}
  \tuplet 3/2 {r8 <ais cis fis> q} \tuplet 3/2 {r <b dis gis> q} \tuplet 3/2 {r <ais cis fis> q} \tuplet 3/2 {r <gis b cis eis>q } % 254d
  \repeat unfold 4 \tuplet 3/2 {r8 <ais cis fis> q}
  \repeat unfold 2 \tuplet 3/2 {r8 <gis cis gis'> q} \repeat unfold 2 \tuplet 3/2 {r <gis bis fis'> q} % 255a
  \repeat unfold 2 \tuplet 3/2 {r8 <gis cis eis> q} \repeat unfold 2 \tuplet 3/2 {r <ais cis fis> q}
  \repeat unfold 2 \tuplet 3/2 {r8 <gis cis eis> q} \repeat unfold 2 \tuplet 3/2 {r8 <gis bis dis> q} % 255b
  \repeat unfold 3 \tuplet 3/2 {r8 <gis cis eis> q} \tuplet 3/2 {r8 <b cis eis> q}
  \repeat unfold 4 \tuplet 3/2 {r8 <ais cis fis> q} % 255c
  \repeat unfold 4 \tuplet 3/2 {r8 <gis b cis eis> q}
  \tuplet 3/2 {r8 <ais cis fis>q } \tuplet 3/2 {r <b dis gis> q} \tuplet 3/2 {r <ais cis fis> q} \tuplet 3/2 {r <b cis eis> q} % 255d
  \repeat unfold 3 \tuplet 3/2 {r8 <ais cis fis> q} <cis' cis'>8. 16
  <eis gis cis eis>4-> 8.-> 16-> 4-> \tuplet 3/2 {<eis cis' eis>8-> <dis bis' dis>-> <cis ais' cis>->} % 256a
  <bis gis' bis>4-> \tuplet 3/2 {<ais fis' ais>8-> <bis gis' bis>-> <cis ais' cis>->} <gis eis' gis>4 r
  \repeat unfold 4 \tuplet 6/4 {r16 gis,(bis fis' bis, gis)} % 256b
  \tuplet 6/4 {r16 ais(cis fis cis ais)} \repeat unfold 2 \tuplet 6/4 {r16 gis(cis eis cis gis)} <gis' gis'>8. 16
  <eis' gis cis eis>4-> 8.-> <eis ais cis eis>16-> <eis gis cis eis>4-> \tuplet 3/2 {<eis cis' eis>8-> <dis bis' dis>-> <cis ais' cis>->} % 256c
  <bis gis' bis>4-> \tuplet 3/2 {<ais fis' ais>8-> <bis gis' bis>-> <cis ais' cis>->} <gis eis' gis>4 r
  \repeat unfold 4 \tuplet 6/4 {r16 gis, bis fis' bis, gis} % 257a
  \repeat unfold 2 \tuplet 6/4 {r16 gis cis eis cis gis} <cis eis>4 r
  << {\vo \teeny \tuplet 6/4 {
    r16 cis'-. eis-. gis-. cis-. eis-.} gis8-. r \tuplet 6/4 {r16 cis,,16-. fis-. a-. cis-. fis-.} a8-. r | % 257b
      \tuplet 6/4 {r16 gis-. eis-. cis-. gis-. eis-.} \tuplet 6/4 {cis'-. gis eis cis gis eis} cis8-. r r4 |
      \tuplet 6/4 {r16 cis'-. eis-. gis-. cis-. eis-.} gis8-. r \tuplet 6/4 {r16 cis,,-. fis-. a-. cis-. fis-.} a8-. r % 257c
    } 
     \new Voice {
       \vt \normalsize
       <eis,, b'>4~8[r16 16] <fis a>4~8[r16 16] | % 257b
       <eis gis>2~8 r r4
       <eis b'>4~8[r16 16] <fis a>4~8[r16 16] % 257c
     }
   >>
  \ov \normalsize \tuplet 6/4 {gis16-. fisis-. gis-. a-. ais-. b-.} \tuplet 6/4 {bis-. cis-. d-. dis-. e-. eis-.} \tuplet 6/4 {fis-. g-. gis-. a-. ais-. b-.} \tuplet 6/4 {bis-. cis-. d-. dis-. e-. eis-.}
  \tuplet 6/4 {fis16 cis(bis cis dis-^ cis)} \repeat unfold 3 \tuplet 6/4 {r16 cis(bis cis dis-^ cis)} % 258a
  \repeat unfold 4 \tuplet 6/4 {r16 cis(bis cis d-^ cis)}
  \tuplet 6/4 {r16 cis(b cis dis-^ cis)} \tuplet 6/4 {r16 dis(cisis dis eis-^ dis)} \tuplet 6/4 {r16 cis(bis cis dis-^ cis)} \tuplet 6/4 {r16 cis(bis cis d-^ cis)} % 258b
  \tuplet 6/4 {r16 cis(bis cis dis-^ cis)} \tuplet 6/4 {r16 cisis( bisis cisis dis-^ cisis)} \tuplet 6/4 {r16 dis(cisis dis e-^ dis)} \tuplet 6/4 {r16 e(dis e fis-^ e)}
  \tuplet 6/4 {r16 fis(eis fis gis-^ fis)} \tuplet 6/4 {r16 fis( eis fis gis-^ fis)} \tuplet 6/4 {r16 cis(bis cis dis-^ cis)} \tuplet 6/4 {r16 cis(bis cis d-^ cis)} % 258c
  \tuplet 6/4 {r16 cis(bis cis dis-^ cis)} \tuplet 6/4 {r16 cisis(bisis cisis dis-^ cisis)} \tuplet 6/4 {r16 dis(cisis dis e-^ dis)} \tuplet 6/4 {r16 e(dis e fis-^ e)}
  \repeat unfold 2 \tuplet 6/4 {r16 fis(eis fis gis-^ fis)} \tuplet 6/4 {r cis( bis cis dis-^ cis)} \tuplet 6/4 {r cis( bis cis d-^ cis)} % 259a
  \repeat unfold 4 \tuplet 6/4 {r16 cis(bis cis dis-^ cis)}
  fis,8 r \tuplet 3/2 {<ais,, fis'> q q} q r \tuplet 3/2 {q q q} % 259b
  q4 r q r
  q4 r r2
%  \bar "|."
}

dynamicsPiano = {
  s16
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1*4
  s1\ff % 253c
  s1*2
  s1\pp\< % 253d
  s1\>
  s1\! % 253e
  s1\p
  s1*16
  s1\ff % 256a
  s2. s4\pp
  s1*2
  s1\ff % 256c
  s2. s4\pp
  s1*5
  s1\< % 257c+
  s1\! % 258a
  s1
  s1 % 258b
  s1\<
  s1\> % 258c
  s1\<
  s1\> % 259a
  s4 s2.\dim
  s4 s2.\pp % 259b
  s1
  s1
}

pianoLH = \relative c {
  \global
  \appoggiatura {gis,32 ais bis} cis4-> r \appoggiatura {gis32 ais bis} cis4-> \appoggiatura {gis32 ais bis} cis4->
  \appoggiatura {gis32 ais bis} cis4-> \tuplet 3/2 {r8 \acciaccatura bis''8 cis8-. \acciaccatura b cis-.} cis,8 r \tuplet 3/2 {r8 \acciaccatura bis'8 cis8-. \acciaccatura b cis-.}
  \appoggiatura {gis,,32 ais bis} cis4-> r \appoggiatura {gis32 ais bis} cis4-> \appoggiatura {gis32 ais bis} cis4-> % 253b
  \appoggiatura {gis32 ais bis} cis4-> \tuplet 6/4 {r8 bis''16(cis) bis(cis)} cis,4 \tuplet 6/4 {r8 bis'16(cis) bis(cis)}
  cis,4 r r2
  \tuplet 3/2 {<fis,, fis'>8-> <a a'>-> <cis cis'>->} \tuplet 3/2 {<fis fis'>-> <cis cis'>-> <a a'>->} <fis fis'>4-> r % 253c
  \tuplet 3/2 {<d' d'>8-> <fis fis'>-> <a a'>->} \tuplet 3/2 {<d d'>-> <a a'>-> <fis fis'>->} <d d'>4-> r
  \tuplet 3/2 {<bis bis'>8-> <dis dis'>-> <fis fis'>->} \tuplet 3/2 {<a a'>-> <fis fis'>-> <dis dis'>->} <bis bis'>4-> r
  <cis' fis ais cis>1 % 253d
  <cis eis gis cis>1
  R1\fermata % 253e
  fis,8 r fis r fis r fis r
  fis8 r fis r fis r fis r % 254a
  gis8 r gis r gis r gis r
  ais8 r <ais, ais'> r <b b'> r <gis gis'> r % 254b
  cis8 r cis r cis r cis r
  fis8 r fis r fis r fis r % 254c
  gis8 r gis r gis r gis r
  ais8 r b r cis r cis, r % 254d
  fis8 r fis r fis r fis r
  eis8 r eis r dis r <gis, gis'> r % 255a
  cis8 r cis r fis r fis r
  gis8 r gis r <gis, gis'> r q r % 255b
  cis8 r cis r cis r cis r
  fis8 r fis r fis r fis r % 255c
  gis8 r gis r gis r gis r
  ais8 r b r cis r cis, r % 255d
  fis8 r fis r fis r \tuplet 3/2 {fis <ais' cis> q}
  \tuplet 6/4 {<cis,, cis'>16 eis' gis cis gis eis} \repeat unfold 3 \tuplet 6/4 {cis16 eis gis cis gis eis} % 256a
  \repeat unfold 2 \tuplet 6/4 {gis,16 dis' fis gis fis dis} \repeat unfold 2 \tuplet 6/4 {cis eis gis cis gis eis}
  <gis,, gis'>8 r q r q r q r % 256b
  <cis cis'>8 r q r q r \tuplet 6/4 {cis'16 eis gis cis gis eis}
  \tuplet 6/4 {<cis, cis'>16 eis' gis cis gis eis} \repeat unfold 3 \tuplet 6/4 {cis16 eis gis cis gis eis} % 256c
  \repeat unfold 2 \tuplet 6/4 {gis,16 dis' fis gis fis dis} \repeat unfold 2 \tuplet 6/4 {cis eis gis cis gis eis}
  <gis,, gis'>8 r q r q r q r % 257a
  <cis cis'>8 r q r q4 <cis' cis'>8. 16
  <<
    { \vo
      cis'4~8[r16 16] 4~8[r16 16] % 257b
      cis4 s <cis,, cis'>8 r s4
      cis''4~8[r16 16] 4~8[r16 16] % 257c
    }
    \new Voice
    { \vt
      cis,1~ % 257b
      cis4 <cis cis'>8. 16 s4 q8. 16
      cis1 % 257c
    }
  >>
  \ov <cis eis gis cis>2. <<{\vo cis'8. b16} \new Voice {\vt <cis, eis>4} >> \ov
  \tuplet 3/2 {<fis, ais'>8 <fis' ais cis> q} \repeat unfold 3 \tuplet 3/2 {fis, <fis' ais cis> q} % 258a
  \repeat unfold 4 \tuplet 3/2 {gis,8 <eis' gis b> q}
  \tuplet 3/2 {ais,8 <fis' cis'> q} \tuplet 3/2 {b, <gis' b> q} \tuplet 3/2 {cis, <fis ais> q} \tuplet 3/2 {cis, <eis' gis b> q} % 258b
  \tuplet 3/2 {fis,8 <cis' fis ais> q} \tuplet 3/2 {eis, <cisis' gis' ais> q} \tuplet 3/2 {dis, <dis' fis ais> q} \tuplet 3/2 {cis, <e' fis ais> q}
  \tuplet 3/2 {b,8 <dis' fis b> q} \tuplet 3/2 {bis, <dis' fis a> q} \tuplet 3/2 {cis, <cis' eis gis> q} \tuplet 3/2 {cis, <cis' eis b'> q} % 258c
  \tuplet 3/2 {fis,8 <cis' fis ais> q} \tuplet 3/2 {eis, <cisis' gis' ais> q} \tuplet 3/2 {dis, <dis' fis ais> q} \tuplet 3/2 {cis, <e' fis ais> q}
  \tuplet 3/2 {b,8 <dis' fis b> q} \tuplet 3/2 {bis, <dis' fis a> q} \tuplet 3/2 {cis, <cis' eis gis> q} \tuplet 3/2 {cis, <cis' eis b'> q} % 259a
  \repeat unfold 2 \tuplet 3/2 {fis,8 <cis' fis ais> q} \tuplet 3/2 {cis, <cis' fis ais> q} \tuplet 3/2 {ais, q q}
  <fis fis'>8 r \tuplet 3/2 {<fis' cis'> q q} q r \tuplet 3/2 {q q q} % 259b
  q4 r q r
  q4 r r2
}

words     = \words_it
wordsMidi = \wordsMidi_it
soprano   = \keepWithTag #'it \soprano-raw
alto      = \keepWithTag #'it \alto-raw
tenor     = \keepWithTag #'it \tenor-raw
bass      = \keepWithTag #'it \bass-raw

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = it-single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVocal
            \new Voice {\vo \soprano}
            \addlyrics \words
            \new Voice {\vt \alto}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsVocal
            \new Voice {\vo \tenor}
            \new Voice {\vt \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = it-singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVocal
            \new Voice {\vo \soprano}
            \addlyrics \words
            \new Voice {\vt \alto}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsVocal
            \new Voice {\vo \tenor}
            \new Voice {\vt \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = it-singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = it-singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = it-singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = it-singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = it-singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = it-midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

words     = \words_en
wordsMidi = \wordsMidi_en
soprano   = \keepWithTag #'en \soprano-raw
alto      = \keepWithTag #'en \alto-raw
tenor     = \keepWithTag #'en \tenor-raw
bass      = \keepWithTag #'en \bass-raw

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = en-single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVocal
            \new Voice {\vo \soprano}
            \addlyrics \words
            \new Voice {\vt \alto}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsVocal
            \new Voice {\vo \tenor}
            \new Voice {\vt \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = en-singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVocal
            \new Voice {\vo \soprano}
            \addlyrics \words
            \new Voice {\vt \alto}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsVocal
            \new Voice {\vo \tenor}
            \new Voice {\vt \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = en-singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = en-singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = en-singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = en-singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = en-singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = en-midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsVocal
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
