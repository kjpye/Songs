\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "WZlobie Lezy"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Old Polish Carol"
  arranger    = "Arr. Roger Ames"
%  opus        = "opus"

  poet        = "Tr. Radislaw Meterka"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ges \major
  \time 3/4
}

TempoTrack = {
  \tempo Moderato 4=96
  s2.
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s2.*5
  \textMark \markup { \box "3b" } s2.*6
  \textMark \markup { \box "4a" } s2.*5
  \textMark \markup { \box "4b" } s2.*4
  \textMark \markup { \box "5a" } s2.*4
  \textMark \markup { \box "5b" } s2.*4
  \textMark \markup { \box "6a" } s2. | s1 s4 | s2.*2 |
  \textMark \markup { \box "6b" } s2.*3 | s1 s4 |
  \textMark \markup { \box "7a" } s2.*4
  \textMark \markup { \box "7b" } s2.*4
  \textMark \markup { \box "8a" } s2.*4
  \textMark \markup { \box "8b" } s2.*4
  \textMark \markup { \box "9a" } s2.*4
  \textMark \markup { \box "9b" } s2.*4
  \textMark \markup { \box "10a" } s1 | s1 s4 | s2.
  \textMark \markup { \box "10b" } s1*3 |
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s2.*9 | s2.\mp
  s2.*7 | s2.\pp | s | % 4
  s4. s\< | s2 s4\! | s2.\mf | s | s\mp\< | s2.*3 |
  s2.\! | s1\> s4\! | s2.\pp | s | s\< | s\> | s\mp | s1 s4 | % 6
  s2.\p | s | s | s | s\mf | s | s | s |
  s2.*6 | s2.\mp | s | % 8
  s2.*3 | s2.\> | s4.\> s\! | s4\pp s2\< | s4\! s2\> | s2.\mp\< |
  s2\mf\> s\! | s1\omit\pp-\markup{\dynamic pp \italic "a tempo"} s4 | s2. | s1\> | s | s\! | % 10
}

musicSop = \relative {
  \global
  des''4(ces bes | aes ges f~ | 2.~ | 2. | ges) |
  R2.*5 | des8-- 8 ges4 4 |
  f8-- ges aes4 4 | bes8 ces des4-- ces-- | bes8 aes ges2--~ | 2 r4 | R2. % 4a
  bes8 ces des4 ces | bes8 aes ges4 r | des'4. ces8 bes8 8 | ees des ces--(bes) ces4 \breathe |
  ces4. bes8 aes8 8 | des ces bes(aes) bes-- r | ges f ees4 ces'4-- bes8-- aes ges4-- r | % 5a
  ges8 f ees4 4 | % 5b
  \tag #'pl {aes8  ges f(ees) des4 \breathe |}
  \tag #'en {aes'8 ges f ees  des4 \breathe |}
  bes'8-- aes ges4 4 |
  \tag #'pl {ces8-- bes aes4 4 \breathe |}
  \tag #'en {ces8-- bes aes2   \breathe |}
  bes8 ces des4-- ces \time 5/4 | bes8-- aes ges4~2 r4 \time 3/4 | aes4--^\markup\italic "two sopranos only with semi-chorus" bes2 | ces4-- des2 | % 6a
  ees4-- f2-- | ges4-- aes2--\fermata | bes,8^\markup\italic tutti ces des4 ces \time 5/4 | bes8 aes ges2. r4 \time 3/4 |
  des'4(ces bes | aes ges f~ | 2.~ | 4) r des8 8 | % 7a
  ges4 4 f8 ges | aes4 4 bes8 ces | des4 ces bes8 aes | ges2~8 r |
  R2.*4 | % 8a
  R2. | R | des4 ges2 | ees4 aes2 \breathe |
  f4 bes2 | ges4 ces2 \breathe | bes4 f2 | ges4 aes bes~ | % 9a
  bes4\fermata r r | ges2 f8(ees) |
  \tag #'pl {ees4(des2\fermata) \caesura |}
  \tag #'en {ees4 des2\fermata  \caesura |}
  bes'8-- aes-- ges4-- 4-- \time 4/4 |
  aes8^\markup\italic "molto rit." bes ces2\fermata r4 \time 5/4 | bes8 ces des2 ces \time 3/4 | bes4 aes2 \time 4/4 | % 10a
  ges1-> ~ | ges~ | 4 r r2 |
  \bar "|."
}

wordsSopPl = \lyricmode {
  Oo __
  W'zlo bie le -- zy Ktoz po -- bie -- zy
  ko -- le -- do -- wac ma -- le -- mu? __
  Dzis do nas ze -- sta -- ne -- mu.
  Pa -- stu --szko -- wie
  przy -- by -- waj -- cie
  Je -- mu wdzie -- cznie przy -- gry -- waj -- cie,
  ja -- ko Pa -- nu na -- sze -- mu.
  Pa -- stu -- szko -- we, przy -- by waj -- cie,
  je -- mu wdzie -- cznie przy -- gry -- waj -- cie,
  Ja -- ko Pa -- nu na -- sze -- mu. __
  Pa -- stu -- szko -- wie ja -- ko Pa -- nu,
  ja -- ko Pa -- nu na -- sze -- mu.
  Mmm __
  A -- tak Te -- go Ma -- len -- kie -- go
  Niech wszy -- scy, zo -- ba -- cay -- my. __
  Pa -- stu szko -- wie przy -- gry -- waj -- cie,
  Pa -- nu na -- sze -- mu. __
  Na -- sze -- mu, __ ja -- ki Pa -- nu na -- sze -- mu,
  ja -- ko Pa -- nu na -- sze -- mu. __Je -- mu wdziecznie przygry wajcie,
}

wordsSopPlMidi = \lyricmode {
  "Oo " 
  "\nW'zlo " "bie " le "zy " "Ktoz " po bie "zy "
  "\nko" le do "wac " ma le "mu? " 
  "\nDzis " "do " "nas " ze sta ne "mu. "
  "\nPa" stuszko "wie "
  "\nprzy" by waj "cie "
  "\nJe" "mu " wdzie "cznie " przy gry waj "cie, "
  "\nja" "ko " Pa "nu " na sze "mu. "
  "\nPa" stu szko "we, " przy "by " waj "cie, "
  "\nje" "mu " wdzie "cznie " przy gry waj "cie, "
  "\nJa" "ko " Pa "nu " na sze "mu. " 
  "\nPa" stu szko "wie " ja "ko " Pa "nu, "
  "\nja" "ko " Pa "nu " na sze "mu. "
  "\nMmm " 
  "\nA" "tak " Te "go " Ma len kie "go "
  "\nNiech " wszy "scy, " zo ba cay "my. " 
  "\nPa" "stu " szko "wie " przy gry waj "cie, "
  "\nPa" "nu " na sze "mu. " 
  "\nNa" sze "mu, "  ja "ki " Pa "nu " na sze "mu, "
  "\nja" "ko " Pa "nu " na sze "mu. " __Je "mu " "wdziecznie " "przygry " "wajcie, "
}

wordsSopEn = \lyricmode {
  Oo __
  He is ly -- ing in the crib now,
  who will come and sing for Him? __
  Who was sent to us this day.
  Come ye shep -- herds round a -- bout __ Him,
  Play your pipes pro -- found a -- bout __ Him,
  For this ba -- by is our Lord.
  Gen -- tle shep -- herds, come re -- joice for Him,
  Play your mu -- sic joy -- ful -- ly. __
  Play your pipes with grat -- i -- tude. __
  Play your mu -- sic
  Play your pipes now,
  Play your pipes with grat -- i -- tude.
  Mmm __
  All to -- geth -- er let us go now,
  let us see this ho -- ly child. __
  Gen -- tle shep -- herds, play your mu -- sic
  For He is our Lord. __
  Play your __ mu -- sic
  For this ba -- by is our Lord,
  For this ba -- by is our Lord. __
}

wordsSopEnMidi = \lyricmode {
  "Oo " 
  "\nHe " "is " ly "ing " "in " "the " "crib " "now, "
  "\nwho " "will " "come " "and " "sing " "for " "Him? " 
  "\nWho " "was " "sent " "to " "us " "this " "day. "
  "\nCome " "ye " shep "herds " "round " a "bout "  "Him, "
  "\nPlay " "your " "pipes " pro "found " a "bout "  "Him, "
  "\nFor " "this " ba "by " "is " "our " "Lord. "
  "\nGen" "tle " shep "herds, " "come " re "joice " "for " "Him, "
  "\nPlay " "your " mu "sic " joy ful "ly. " 
  "\nPlay " "your " "pipes " "with " grat i "tude. " 
  "\nPlay " "your " mu "sic "
  "\nPlay " "your " "pipes " "now, "
  "\nPlay " "your " "pipes " "with " grat i "tude. "
  "\nMmm " 
  "\nAll " to geth "er " "let " "us " "go " "now, "
  "\nlet " "us " "see " "this " ho "ly " "child. " 
  "\nGen" "tle " shep "herds, " "play " "your " mu "sic "
  "\nFor " "He " "is " "our " "Lord. " 
  "\nPlay " "your "  mu "sic "
  "\nFor " "this " ba "by " "is " "our " "Lord, "
  "\nFor " "this " ba "by " "is " "our " "Lord. " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 | s2.\p | s2.*6 |
  s2.*3 | s2.\mp | s2.*3 | s2.\pp | s | % 4
  s4. s\< | s2 s4\! | s2.\mf | s | s\pp | s2.*3 |
  s2. | s1 s4 | s2.\mp | s2.*3 | | s2.\mp | s1 s4\mf | % 6
  s2.*4 | s2.\p | s | s | s |
  s2.*6 | s4 s2\mf | s2. | % 8
  s2.*3 | s4 s2\> | s2\! s4\p | s4 s2\< | s4\! s2\> | s2.\mp\< |
  s2\mf\> s\! | s1\omit\pp-\markup{\dynamic p \italic "a tempo"} s4 | s2. | s1\> | s | s\! | % 10
}

musicAlto = \relative {
  \global
  R2.*4 | ges'4(f ees |
  des4 ces bes~ | 2.~ | 2.~ | 2.~ | 2.) | R |
  R2.*3 | des8-- 8 ges4 4 | f8-- ges aes4 4~ | % 4a
  aes2. | f8 8 ges4 r | f4. aes8 8 8 | g bes bes4-- 4 \breathe |
  aes4. bes8 ces aes | f aes bes(aes) ges-- r | ges f ees4 4-- | des8-- f ges4-- r | % 5a
  bes,4 ces2 | aes4 des2 \breathe | bes4 ees2 | ces4 fes2 \breathe |
  ees4 des2 \time 5/4 | ees4 f-- ges2 r4 \time 3/4 | ges8 f ees4 4 | % 6a
  \tag #'pl {aes8  ges f(ees) des4 |}
  \tag #'en {aes'8 ges f ees  des4 |}
  bes'8 aes ges4 4 | % 6b
  \tag #'pl {ces8 bes aes4 4\fermata |}
  \tag #'en {ces8 bes aes2\fermata   |}
  ges8 aes bes4 aes | ees8 ces des2 r4 des8 8 \time 3/4 |
  ges4-- 4 f8 ges | % 7a
  \tag #'pl {aes4 8 8 bes8 ces |}
  \tag #'en {aes4 4   bes8 ces |}
  des4 ces-- bes8(aes) | ges2~8 r | % 7a
  ges4(f ees | des ces bes | aes) \breathe ges'(f | ees des4.) r8 |
  R2.*4 | % 8a
  R2. | R | r4 ges8 f ees(des) | ces r aes' ges f(ees) |
  des8 r bes' aes ges(f) | ees4 ces'8 bes aes4 | ges4 \breathe bes8 ces bes aes | ges f ges2~ | % 9a
  ges4\fermata r ges8 f | f4 ees aes8 ges | f4 2\fermata \caesura | ges8-- f-- ees4-- 4-- \time 4/4 |
  aes8^\markup\italic "molto rit." ges8 4(fes\fermata) r \time 5/4 | ges8 aes f2 ges \time 3/4 | ees4 des2 \time 4/4 | % 10a
  des1->~ | des~ | 4 r r2 |
  \bar "|."
}

wordsAltoPl = \lyricmode {
  Oo __
  Je -- zu so -- wi Chry -- stu -- so -- wi __
  sla -- ne -- mu?
  Pa -- stu -- szko -- wie przy -- by -- waj -- cie,
  Je -- mu wdzie -- cznie przy -- gry -- waj -- cie,
  ja -- ko Pa -- nu na -- sze -- mu.
  Pa stu -- szko -- wie, ja -- ko Pa -- nu, % 5b
  Pa -- nu na -- sze -- mu. % 6a
  Pa -- stu -- szko -- wie, przy -- by waj -- cie,
  Je -- mu wdzie -- cznie przy -- gry -- waj -- cie,
  Ja -- ko Pa -- nu na -- sze -- mu.
  My zas sa -- mi zpio -- sne czka -- mi, % 7a
  Za wa -- mi po -- spie -- szy __ my. __
  Mmm __ mm __
  Pa -- stu szko -- wie, przy -- gry -- waj -- cie, % 8b
  Je -- mu wdzie __ cznie,
  przy -- gry waj -- cie, Ja -- ko pa -- nu na -- sze -- mu. __
  Pa stu -- szko -- wie, przy -- by -- waj -- cie,
  ja -- ko Pa -- nu na -- sze -- mu.
  ja -- ko Pa -- nu na -- sze -- mu.
}

wordsAltoPlMidi = \lyricmode {
  "Oo " 
  "\nJe" "zu " so "wi " Chry stu so "wi " 
  "\nsla" ne "mu? "
  "\nPa" stu szko "wie " przy by waj "cie, "
  "\nJe" "mu " wdzie "cznie " przy gry waj "cie, "
  "\nja" "ko " Pa "nu " na sze "mu. "
  "\nPa " stu szko "wie, " ja "ko " Pa "nu, " % 5b
  "\nPa" "nu " na sze "mu. " % 6a
  "\nPa" stu szko "wie, " przy "by " waj "cie, "
  "\nJe" "mu " wdzie "cznie " przy gry waj "cie, "
  "\nJa" "ko " Pa "nu " na sze "mu. "
  "\nMy " "zas " sa "mi " zpio "sne " czka "mi, " % 7a
  "\nZa " wa "mi " po spie "szy "  "my. " 
  "\nMmm "  "mm " 
  "\nPa" "stu " szko "wie, " przy gry waj "cie, " % 8b
  "\nJe" "mu " "wdzie "  "cznie, "
  "\nprzy" "gry " waj "cie, " Ja "ko " pa "nu " na sze "mu. " 
  "\nPa " stu szko "wie, " przy by waj "cie, "
  "\nja" "ko " Pa "nu " na sze "mu. "
  "\nja" "ko " Pa "nu " na sze "mu. "
}

wordsAltoEn = \lyricmode {
  Oo __
  Sing for lit -- tle Je -- sus Christ,
  for __ us this day?
  Come ye shep -- herds round a -- bout __ Him,
  Play your pipes pro -- found a -- bout __ Him,
  For this ba -- by is our Lord.
  Gen -- tle shep -- herds,
  Play your mu -- sic,
  Play with grat -- i -- tude.
  Gen -- tle shep -- herds, come re -- joice for Him,
  Play your mu -- sic joy -- ful -- ly.
  Play your pipes with grat -- i -- tude.
  When you play, then we will fol -- low
  with your songs re -- sound -- ing. __
  Mmm __ "" __
  Gen -- tle shep -- herds, play your mu -- sic,
  Play with gra -- ti -- tude and joy now,
  For this ba -- by is our Lord. __
  Play for Him now,  play your __ mu -- sic,
  For this ba -- by is our Lord,
  For this ba -- by is our Lord. __
}

wordsAltoEnMidi = \lyricmode {
  "Oo " 
  "\nSing " "for " lit "tle " Je "sus " "Christ, "
  "\nfor "  "us " "this " "day? "
  "\nCome " "ye " shep "herds " "round " a "bout "  "Him, "
  "\nPlay " "your " "pipes " pro "found " a "bout "  "Him, "
  "\nFor " "this " ba "by " "is " "our " "Lord. "
  "\nGen" "tle " shep "herds, "
  "\nPlay " "your " mu "sic, "
  "\nPlay " "with " grat i "tude. "
  "\nGen" "tle " shep "herds, " "come " re "joice " "for " "Him, "
  "\nPlay " "your " mu "sic " joy ful "ly. "
  "\nPlay " "your " "pipes " "with " grat i "tude. "
  "\nWhen " "you " "play, " "then " "we " "will " fol "low "
  "\nwith " "your " "songs " re sound "ing. " 
  "\nMmm "  " " 
  "\nGen" "tle " shep "herds, " "play " "your " mu "sic, "
  "\nPlay " "with " gra ti "tude " "and " "joy " "now, "
  "\nFor " "this " ba "by " "is " "our " "Lord. " 
  "\nPlay " "for " "Him " "now, "  "play " "your "  mu "sic, "
  "\nFor " "this " ba "by " "is " "our " "Lord, "
  "\nFor " "this " ba "by " "is " "our " "Lord. " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2. | s | s\p | s2.*4 | s4\< s2\> | s4\< s2\> | s4\< s2\> | s2.\! |
  s2.*9 | % 4
  s2.*4 | s2.\pp | s2.*3 |
  s2. | s1 s4 | s2.\pp | s2. | s\< | s\> | s2.\mp | s1 s4 | % 6
  s2.*2 | s2.\p | s2.*5 |
  s2.\mf\< | s2 s4\! | s2 s4\< | s2 s4\! | s2.\> | s2 s4\! | s2.\mf | s | % 8
  s2.*3 | s4 s2\> | s2\! s4\pp | s4 s2\< | s4\! s2\> | s2.\mp\< |
  s2\mf\> s\! | s1\omit\pp-\markup{\dynamic p \italic "a tempo"} s4 | s2. | s1\> | s | s\! | % 10
}

musicTenor = \relative {
  \global
  R2. | R | f'4(ees des | ces bes aes | ges2.~ |
  ges2. | 4) aes(ges | f-- ees2) \breathe | f4--(ees2) \breathe | f4-- (ees2) | R2. |
  R2.*5 | % 4a
  R2.*4 |
  R2.*4 | % 5a
  f4 ges2 | ees4 aes2 \breathe | f4 bes2 | ges4 ces2 \breathe |
  bes4 f2 \time 5/4 | ges4 aes-- bes2 r4 \time 3/4 | des4-- ees2 | 4-- f2 | % 6a % 6a
  ces4-- des2-- | ees4-- fes2--\fermata | ees8 fes ges4 fes \time 5/4 | ges,8 aes ges2. r4 \time 3/4 |
  R2. | R | f'4(ees des | ces bes aes | % 7a
  ges2.~ | 2.~ | 4) \breathe aes(bes | ces des4.) r8 |
  des4. ces8 bes bes | ees des ces(bes) ces r | 4. bes8 aes aes | des ces bes(aes) bes r | % 8a
  ges8 f ees4 ces' | bes8 aes ges4. r8 | 8 f ees4 4 | aes8 ges f(ees) des4 |
  bes'8 aes ges4 4 | % 9a
  \tag #'pl {ces8 bes aes4 4 |}
  \tag #'en {ces8 bes aes2   |}
  bes8 ces des4 ces | bes8 aes ges2~ | % 9a
  ges4\fermata r4 des' | ces2 des4 | bes2.\fermata \caesura | bes8-- ces-- des4-- ces-- \time 4/4 |
  ces8^\markup\italic "molto rit." bes8 4(aes\fermata) r \time 5/4 | des8 ees f2 ees \time 3/4 | ges,4 aes2 \time 4/4 | % 10a
  bes1-> ~ | bes~ | 4 r r2 |
  
  \bar "|."
}

wordsTenorPl = \lyricmode {
  Oo __ oo __ oo __ oo __
  Pa stu -- szko -- wie, Ja -- ko Pa -- nu, % 5b
  Pa -- nu na -- sze -- mu. % 6a
  Pa -- stu -- szko -- wie,
  Ja -- ku Pa -- nu, ja -- ko Pa -- nu na -- sze -- mu.
  Mmm __ mm __ % 7a
  Jak u -- bo -- go na -- ro -- dzo -- ny, % 8a
  pla -- cze wasta -- jni po -- lo -- zo -- ny,
  Wiec go dzis u -- cie szy my. % 8b
  Pa -- stu szko -- wie, przy -- gry -- waj -- cie,
  Je -- mu wdzie __ cznie, przy -- gry waj -- cie, % 9a
  Ja -- ko pa -- nu na -- sze -- mu. __
  Pa stu -- szko -- wie,
  ja -- ko Pa -- nu na -- sze -- mu. __
  ja -- ko Pa -- nu na -- sze -- mu.
}

wordsTenorPlMidi = \lyricmode {
  "Oo "  "oo "  "oo "  "oo " 
  "\nPa " stu szko "wie, " Ja "ko " Pa "nu, " % 5b
  "\nPa" "nu " na sze "mu. " % 6a
  "\nPa" stu szko "wie, "
  "\nJa" "ku " Pa "nu, " ja "ko " Pa "nu " na sze "mu. "
  "\nMmm "  "mm "  % 7a
  "\nJak " u bo "go " na ro dzo "ny, " % 8a
  "\npla" "cze " wasta "jni " po lo zo "ny, "
  "\nWiec " "go " "dzis " u "cie " "szy " "my. " % 8b
  "\nPa" "stu " szko "wie, " przy gry waj "cie, "
  "\nJe" "mu " "wdzie "  "cznie, " przy "gry " waj "cie, " % 9a
  "\nJa" "ko " pa "nu " na sze "mu. " 
  "\nPa " stu szko "wie, "
  "\nja" "ko " Pa "nu " na sze "mu. " 
  "\nja" "ko " Pa "nu " na sze "mu. "
}

wordsTenorEn = \lyricmode {
  Oo __ Oo __ oo __ oo __
  Gen -- tle shep -- herds,
  Play your mu -- sic,
  Play with grat -- i -- tude.
  Play your mu -- sic,
  Play your pipes now,
  Play your pipes with gra -- ti -- tude.
  Mmm __ mm __
  Sim -- ply born and gen -- tly cry -- ing
  in a man -- ger's crib He's ly -- ing,
  Wait -- ing for our lul -- la -- by.
  Gen -- tle shep -- herds, play your mu -- sic,
  Play with gra -- ti -- tude and joy.
  For this ba -- by is our Lord. __
  Play your __ mu -- sic,
  For this ba -- by is our Lord,
  For this ba -- by is our Lord. __
}

wordsTenorEnMidi = \lyricmode {
  "Oo "  "Oo "  "oo "  "oo " 
  "\nGen" "tle " shep "herds, "
  "\nPlay " "your " mu "sic, "
  "\nPlay " "with " grat i "tude. "
  "\nPlay " "your " mu "sic, "
  "\nPlay " "your " "pipes " "now, "
  "\nPlay " "your " "pipes " "with " gra ti "tude. "
  "\nMmm "  "mm " 
  "\nSim" "ply " "born " "and " gen "tly " cry "ing "
  "\nin " "a " man "ger's " "crib " "He's " ly "ing, "
  "\nWait" "ing " "for " "our " lul la "by. "
  "\nGen" "tle " shep "herds, " "play " "your " mu "sic, "
  "\nPlay " "with " gra ti "tude " "and " "joy. "
  "\nFor " "this " ba "by " "is " "our " "Lord. " 
  "\nPlay " "your "  mu "sic, "
  "\nFor " "this " ba "by " "is " "our " "Lord, "
  "\nFor " "this " ba "by " "is " "our " "Lord. " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*6 | s2.\p | s4\< s2\> | s4\< s2\> | s4\< s2\> | s2.\! |
  s2.*9 | % 4
  s2.*4 | s2.\pp | s2.*3 |
  s2. | s1 s4 | s2.\pp | s2. | s | s | s2.\mp | s1 s4 | % 6
  s2.*6 | s2.\p | s |
  s2.\mf\< | s2 s4\! | s2 s4\< | s2 s4\! | s2.\> | s2 s4\! | s2.\mp | s | % 8
  s2.*3 | s4 s2\> | s2\> s4\! | s2. | s | s2.\mp\< |
  s2\mf\> s\! | s1\omit\pp-\markup{\dynamic p \italic "a tempo"} s4 | s2. | s1\> | s | s\! | % 10
}

musicBass = \relative {
  \global
  s2.*5 |
  s2. ges4(f ees | des-- ces2) \breathe | des4(ces2) \breathe | des4(ces2) | R2. |
  s2.*9 | % 4
  s2.*4 | % 5a
  bes4 ces2 | aes4 des2 \breathe | bes4 ees2 | ces4 fes2 \breathe |
  ees4 bes2 \time 5/4 | ces4 des-- ees2 r4 \time 3/4 | f4-- ges2 | aes4-- bes2 | % 6a
  bes8 aes ges4 4 | % 6b
  \tag #'pl {ces8 bes aes4 4\fermata |}
  \tag #'en {ces8 bes aes2\fermata   |}
  bes8 ces des4 ces \time 5/4 | ces,8 des <ges, ges'>2. r4 \time 3/4 |
  R2.*4 | % 7a
  R2. | R | f'4(ees des | ces bes4.) r8 |
  f'4. aes8 8 8 | g bes8 4 8 r | aes4. bes8 ces aes | f aes bes(aes) ges r | % 8a
  ges8 f ees4 4 | des8 f ges4. r8 | bes,4 ces2 | aes4 des2 \breathe |
  bes4 ees2 | ces4 fes2 \breathe | ees4 bes2 | ces8 des ges2~ | % 9a
  ges4\fermata r r | R2. | R\fermata \caesura | bes8-- aes-- ges4-- 4-- \time 4/4 |
  ees8^\markup\italic "molto rit." des ces2\fermata r4 \time 5/4 | ges'8 aes bes2 des \time 3/4 | ces,4 des2 \time 4/4 | % 10a
  <ges, des'>1~ | q~ | 4 r r2 |
  \bar "|."
}

wordsBassPl = \lyricmode {
  Oo __ oo __ oo __
  Pa stu -- szko -- wie, Ja -- ko Pa -- nu, % 5b
  Pa -- nu na -- sze -- mu. % 6a
  Pa -- stu -- szko -- wie,
  je -- mu wdzie -- cznie przy -- gry -- waj -- cie,
  ja -- ko Pa -- nu na -- sze -- mu.
  Mmm __ % 7a
  Jak u -- bo -- go na -- ro -- dzo -- ny, % 8a
  pla -- cze wasta -- jni po -- lo -- zo -- ny,
  Wiec go dzis u -- cie szy my. % 8b
  Pa -- stu szko -- wie,
  przy -- gry -- waj -- cie, Pa -- nu na -- sze -- mu. __ % 9a
  ja -- ko Pa -- nu na -- sze -- mu. __
  ja -- ko Pa -- nu na -- sze -- mu.
}

wordsBassPlMidi = \lyricmode {
  "Oo "  "oo "  "oo " 
  "\nPa " stu szko "wie, " Ja "ko " Pa "nu, " % 5b
  "\nPa" "nu " na sze "mu. " % 6a
  "\nPa" stu szko "wie, "
  "\nje" "mu " wdzie "cznie " przy gry waj "cie, "
  "\nja" "ko " Pa "nu " na sze "mu. "
  "\nMmm "  % 7a
  "\nJak " u bo "go " na ro dzo "ny, " % 8a
  "\npla" "cze " wasta "jni " po lo zo "ny, "
  "\nWiec " "go " "dzis " u "cie " "szy " "my. " % 8b
  "\nPa" "stu " szko "wie, "
  "\nprzy" gry waj "cie, " Pa "nu " na sze "mu. "  % 9a
  "\nja" "ko " Pa "nu " na sze "mu. " 
  "\nja" "ko " Pa "nu " na sze "mu. "
}

wordsBassEn = \lyricmode {
  Oo __ Oo __ oo __
  Gen -- tle shep -- herds,
  Play your mu -- sic,
  Play with grat -- i -- tude.
  Play your mu -- sic,
  Play your mu -- sic joy -- ful -- ly.
  Play your pipes with gra -- ti -- tude.
  Mmm __
  Sim -- ply born and gen -- tly cry -- ing
  in a man -- ger's crib He's ly -- ing,
  Wait -- ing for our lul -- la -- by.
  Gen -- tle shep -- herds,
  Play your mu -- sic.
  For He is our Lord. __
  For this ba -- by is our Lord,
  For this ba -- by is our Lord. __
}

wordsBassEnMidi = \lyricmode {
  "Oo "  "Oo "  "oo " 
  "\nGen" "tle " shep "herds, "
  "\nPlay " "your " mu "sic, "
  "\nPlay " "with " grat i "tude. "
  "\nPlay " "your " mu "sic, "
  "\nPlay " "your " mu "sic " joy ful "ly. "
  "\nPlay " "your " "pipes " "with " gra ti "tude. "
  "\nMmm " 
  "\nSim" "ply " "born " "and " gen "tly " cry "ing "
  "\nin " "a " man "ger's " "crib " "He's " ly "ing, "
  "\nWait" "ing " "for " "our " lul la "by. "
  "\nGen" "tle " shep "herds, "
  "\nPlay " "your " mu "sic. "
  "\nFor " "He " "is " "our " "Lord. " 
  "\nFor " "this " ba "by " "is " "our " "Lord, "
  "\nFor " "this " ba "by " "is " "our " "Lord. " 
}

pianoRHone = \relative {
  \global
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s2.*9 | s2.\mp |
  s2.*7 | s2.\pp | s | % 4
  s4. s\< | s2 s4\! | s2.\mf | s | s\pp | s2.*3 |
  s2. | s1 s4 | s2. | s | s\< | s4\> s2\! | s2.\mp | s1 s4 | % 6
  s2.*8 |
  s2.\mf\< | s2 s4\! | s2 s4\< | s2 s4\! | s2.*4 | % 8
  s2.*4 | s2 s4\pp | s2. | s | s\mp |
  s1\omit\mf-\markup{\dynamic mf \italic "molto rit."} | s1\omit\pp-\markup{\dynamic pp \italic "a tempo"} s4 | s2.| s1*3 |
}

pianoLHone = \relative {
  \global
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  c4
  \bar "|."
}

soprano    = \keepWithTag #'pl \musicSop
alto       = \keepWithTag #'pl \musicAlto
tenor      = \keepWithTag #'pl \musicTenor
bass       = \keepWithTag #'pl \musicBass
wordsSop   = \wordsSopPl
wordsAlto  = \wordsAltoPl
wordsTenor = \wordsTenorPl
wordsBass  = \wordsBassPl
wordsSopMidi   = \wordsSopPlMidi
wordsAltoMidi  = \wordsAltoPlMidi
wordsTenorMidi = \wordsTenorPlMidi
wordsBassMidi  = \wordsBassPlMidi

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single-pl"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single-noacc-pl"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-pl"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-sop-pl"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-bass-pl"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-alto-pl"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics\wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-tenor-pl"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop-pl"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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

\book {
  \bookOutputSuffix "midi-alto-pl"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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

\book {
  \bookOutputSuffix "midi--tenor-pl"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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

\book {
  \bookOutputSuffix "midi-bass-pl"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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

% Now all the same again but in English

soprano    = \keepWithTag #'en \musicSop
alto       = \keepWithTag #'en \musicAlto
tenor      = \keepWithTag #'en \musicTenor
bass       = \keepWithTag #'en \musicBass
wordsSop   = \wordsSopEn
wordsAlto  = \wordsAltoEn
wordsTenor = \wordsTenorEn
wordsBass  = \wordsBassEn
wordsSopMidi   = \wordsSopEnMidi
wordsAltoMidi  = \wordsAltoEnMidi
wordsTenorMidi = \wordsTenorEnMidi
wordsBassMidi  = \wordsBassEnMidi

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single-en"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single-noacc-en"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-en"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-sop-en"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-bass-en"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-alto-en"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics\wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-noacc-tenor-en"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop-en"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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

\book {
  \bookOutputSuffix "midi-alto-en"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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

\book {
  \bookOutputSuffix "midi--tenor-en"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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

\book {
  \bookOutputSuffix "midi-bass-en"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \new Voice \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
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
