\version "2.25.9"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Panis Angelicus"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "César Frank"
  arranger    = "Arr. Arthur Mayship"
%  opus        = "opus"

  poet        = "English words by Arthur Mayship"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key a \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
  s1*10
  \tempo 4=95 % 1c++
  s1*2 \tempo 4=100
  s1*42
  s2 \tempo 4=90 s2 % 5a+++
  \tempo 4=100 s1*5 % 5b
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "1a" } s1*4
  \mark \markup { \circle "1b" } s1*4
  \mark \markup { \circle "1c" } s1*4
  \mark \markup { \circle "1d" } s1*4
  \mark \markup { \circle "2a" } s1*4
  \mark \markup { \circle "2b" } s1*5
  \mark \markup { \circle "2c" } s1*6
  \mark \markup { \circle "2d" } s1*5
  \mark \markup { \circle "3a" } s1*4
  \mark \markup { \circle "3b" } s1*4
  \mark \markup { \circle "4a" } s1*4
  \mark \markup { \circle "4b" } s1*4
  \mark \markup { \circle "5a" } s1*4
  \mark \markup { \circle "5b" } s1*5
}

solo = \relative {
  \override DynamicTextSpanner.style = #'none
  \global
  R1*12
  cis''2\omit\mp^\markup\italic\bold { \dynamic mp dolce }^\markup "SOPRANO or TENOR SOLO" cis4 b
  b8. a16 a4 r2
  cis2 4 b
  b8. a16 a4 r2
  fis'2 4 e % 2a
  d4. 8 4 cis
  b4. 8 4 a
  \tag #'en { e'2 e }
  \tag #'ln { e1    }
  cis2 4 b % 2b
  \tag #'en {b8.(a16) 4 r2}
  \tag #'ln {b8. a16  4 r2}
  \tag #'en {e'4. 8  4 dis}
  \tag #'ln {e2      4 dis}
  \tag #'en {dis8.(cis16) 4 r2}
  \tag #'ln {dis8. cis16  4 r2}
  cis2^\p b4 r
  e2^\cresc b4 r % 2c
  fis'4 a,8 b cis4. a8
  gis2 r
  cis2^\p gis4 r
  d'4.^\cresc(b8) a4 r
  dis4 e8 fis cis4. dis8
  e2\omit\f r % 2d
  R1*4 \bar "||" \break
  cis2^\mp^\markup SOLO 4 b % 3a
  b8. a16 4 r2
  cis2^\markup\italic "poco cresc." 4 b
  b8. a16 4 r2
  fis'2^\markup\italic "più cresc." 4 e % 3b
  d4. 8 4 cis
  b4.^\dim 8 4 a
  e'2 r
  e2^\<d4 cis\! % 4a
  cis8.^\>b16 4\! r2
  e2 fis4^\<d\!
  cis8.^\>b16 4\! r2
  \tag #'en {e2 ^\f 8(cis) b(a)} % 4b
  \tag #'ln {e'2^\f~8(cis) b(a)}
  \tag #'en {d4. b8  cis4 cis^>~}
  \tag #'ln {d4.(b8) cis4 cis^>~}
  cis4 b8 a b4.^\>cis8
  a2\! r
  \tag #'en {fis'2^\f~8 d  cis8 b } % 5a
  \tag #'ln {fis'2^\f~8(d) cis8(b)}
  \tag #'en {e4. cis8  d4 d4^>~}
  \tag #'ln {e4.(cis8) d4 d4^>~}
  \tag #'en {d4 b8 d  cis4 b8 a}
  \tag #'ln {d4 b8(d) cis4 b8 a}
  b2^\<^\markup\italic rall. ~ 4.^\> a8\!
  a2 r
  R1*4
  \bar "|."
}

wordsSoloLatin = \lyricmode {
  \markup\italic Pa -- \markup\italic nis \markup\italic an -- \markup\italic ge -- \markup\italic li -- \markup\italic cus
  \markup\italic fit \markup\italic pa -- \markup\italic nis \markup\italic ho -- \markup\italic mi -- \markup\italic num,
  \markup\italic Dat \markup\italic pa -- \markup\italic nis \markup\italic coe -- \markup\italic li -- \markup\italic cus \markup\italic fi -- \markup\italic gu -- \markup\italic ris \markup\italic ter -- \markup\italic mi -- \markup\italic num. __
  \markup\italic O \markup\italic res \markup\italic mi -- \markup\italic ra -- \markup\italic bi -- \markup\italic lis,
  \markup\italic man -- \markup\italic du -- \markup\italic cat \markup\italic Do -- \markup\italic mi -- \markup\italic num,
  \markup\italic Pau -- \markup\italic per, \markup\italic pau -- \markup\italic per, \markup\italic ser -- \markup\italic vus \markup\italic et \markup\italic hu -- \markup\italic mi -- \markup\italic lis,
  \markup\italic Pau -- \markup\italic per, \markup\italic pau -- \markup\italic per, \markup\italic ser -- \markup\italic vus \markup\italic et \markup\italic hu -- \markup\italic mi -- \markup\italic lis,

  \markup\italic Pan -- \markup\italic is \markup\italic an -- \markup\italic ge -- \markup\italic li -- \markup\italic cus
  \markup\italic fit \markup\italic pa -- \markup\italic nis \markup\italic ho -- \markup\italic mi -- \markup\italic num,
  \markup\italic Dat \markup\italic pa -- \markup\italic nis \markup\italic cœ -- \markup\italic li -- \markup\italic cus \markup\italic fi -- \markup\italic gu -- \markup\italic ris \markup\italic ter -- \markup\italic mi -- \markup\italic num.
  \markup\italic O \markup\italic res \markup\italic mi -- \markup\italic ra -- \markup\italic bi -- \markup\italic lis,
  \markup\italic man -- \markup\italic du -- \markup\italic cat \markup\italic Do -- \markup\italic mi -- \markup\italic num
  \markup\italic Pau -- \markup\italic per, \markup\italic pau -- \markup\italic per, \markup\italic ser -- \markup\italic vus \markup\italic et \markup\italic hu -- \markup\italic mi -- \markup\italic lis,
  \markup\italic Pau -- \markup\italic per, \markup\italic pau -- \markup\italic per, \markup\italic ser -- \markup\italic vus, \markup\italic ser -- \markup\italic vus \markup\italic et \markup\italic hu -- \markup\italic mi -- \markup\italic lis.
}

wordsSoloEnglish = \lyricmode {
  Cleanse us of sin -- ful thoughts, O Thou most Ho -- ly One! 
  Thee, lov -- ing Fa -- ther, we would praise for all Thy boun -- ty;
  Grant to is wis -- dom
  Thee to know and wor -- ship!
  Hear us, hear us, hear when we cry to Thee!
  Fa -- ther, Fa -- ther, take us in -- to Thy care!

  Cleanse us of sin -- ful thoughts, O Thou most Ho -- ly One!
  Com -- fort our faint -- ing hearts when sor -- rows us dis -- may!
  Strength -- en our weak -- ness -- es,
  stayed by Thy migh -- ty hand;
  Hear us, O __ hear us, Lord,
  when un -- to Thee we cry!
  Hear __ us when to Thee we cry,
  And __ ev -- er -- more we shall wor -- ship Thee!
}

wordsSoloLatinMidi = \lyricmode {
  "Pa" "nis " an ge li "cus "
  "\nfit " pa "nis " ho mi "num, "
  "\nDat " pa "nis " coe li "cus " fi gu "ris " ter mi "num. " 
  \set ignoreMelismata = ##t "\nO " "res " mi ra bi "lis, " \unset ignoreMelismata
  "\nman" du "cat " \set ignoreMelismata = ##t Do mi "num, " \unset ignoreMelismata
  "\nPau" "per, " pau "per, " ser "vus " "et " hu mi "lis, "
  "\nPau" "per, " pau "per, " ser "vus " "et " hu mi "lis, "

  "\nPan" "is " an ge li "cus "
  "\nfit " pa "nis " ho mi "num, "
  "\nDat " pa "nis " cœ li "cus " fi gu "ris " ter mi "num. "
  "\nO " "res " mi ra bi "lis, "
  "\nman" du "cat " Do mi "num "
  "\nPau" "per, " pau "per, " ser "vus " "et " hu mi "lis, "
  "\nPau" "per, " pau "per, " ser "vus, " ser "vus " "et " hu mi "lis. "
}

wordsSoloEnglishMidi = \lyricmode {
 "Cleanse " "us " "of " sin "ful " "thoughts, " "O " "Thou " "most " Ho "ly " "One! " 
 "\nThee, " lov "ing " Fa "ther, " "we " "would " "praise " "for " "all " "Thy " \set ignoreMelismata = ##t boun "ty; " \unset ignoreMelismata
  "\nGrant " "to " "is " wis "dom "
  \set ignoreMelismata = ##t "Thee " "to " "know " "and " \unset ignoreMelismata wor ship!
  "\nHear " "us, " "hear " "us, " "hear " "when " "we " "cry " "to " "Thee! "
  "\nFa" "ther, " Fa "ther, " "take " "us " in "to " "Thy " "care! "

  "\nCleanse " "us " "of " sin "ful " "thoughts, " "O " "Thou " "most " Ho "ly " "One! "
  "\nCom" "fort " "our " faint "ing " "hearts " "when " sor "rows " "us " dis "may! "
  "\nStrength" "en " "our " weak ness "es, "
  "\nstayed " "by " "Thy " migh "ty " "hand; "
  \set ignoreMelismata = ##t "Hear " "us, " \unset ignoreMelismata "O " \set ignoreMelismata = ##t "hear " "us, " "Lord, " \unset ignoreMelismata
  "\nwhen " un "to " "Thee " "we " "cry! "
  \set ignoreMelismata = ##t "Hear " _ "us " "when " "to " "Thee " "we " "cry, " \unset ignoreMelismata
  "\nAnd "  \set ignoreMelismata = ##t ev "er " "more " \unset ignoreMelismata "we " "shall " wor "ship " "Thee! "
}

soprano = \relative {
  \global
  R1*36
  R1 % 3a
  cis''2^\pp^\markup SOPRANOS 4 b
  b8. a16 4 r2
  cis2^\markup\italic "poco cresc" 4 b
  b8. 16 4 r2 % 3b
  fis'2^\markup\italic "più cresc." 4 e
  d4. 8 4 cis
  b4^\dim 4 4 a
  e'2 r % 4a
  e2 d4^\< cis\!
  cis8.^\> b16 4 r2
  e2 fis4 d
  cis8. b16 4 r2 % 4b
  \tag #'en {e2 ^\mf 8 (cis) b(a)}
  \tag #'ln {e'2^\mf(~8 cis) b(a)}
  fis2 gis^\>
  a2 r\!
  R1 % 5a
  \tag #'en {fis'2^\f  8(d) cis(b)}
  \tag #'ln {fis'2^\f(~8 d) cis(b)}
  \tag #'en {gis4. 8 a4 fis4  }
  \tag #'ln {gis4. 8 a4 fis8 8}
  gis2~^\<^\markup\italic rall. 4.^\> a8\!
  a2 r % 5b
  R1*4
  \bar "|."
}

wordsSopLatin = \lyricmode {
  \markup\italic Pa -- \markup\italic nis \markup\italic an -- \markup\italic ge -- \markup\italic li -- \markup\italic cus
  \markup\italic fit \markup\italic pa -- \markup\italic nis \markup\italic ho -- \markup\italic mi -- \markup\italic num
  \markup\italic Dat \markup\italic pa -- \markup\italic nis \markup\italic coe -- \markup\italic li -- \markup\italic cus
  \markup\italic fi -- \markup\italic gu -- \markup\italic ris \markup\italic ter -- \markup\italic mi -- \markup\italic num.
  \markup\italic O \markup\italic res \markup\italic mi -- \markup\italic ra -- \markup\italic bi -- \markup\italic lis,
  \markup\italic man -- \markup\italic du -- \markup\italic cat \markup\italic Do -- \markup\italic mi -- \markup\italic num.
  \markup\italic Pau -- \markup\italic per, \markup\italic hu -- \markup\italic mi -- \markup\italic lis,
  \markup\italic Pau -- \markup\italic per, \markup\italic pau -- \markup\italic per, \markup\italic ser -- \markup\italic vus \markup\italic et \markup\italic hu -- \markup\italic mi -- \markup\italic lis.
}

wordsSopEnglish = \lyricmode {
 Cleanse us of sin -- ful thoughts, O Thou most Ho -- ly One! 
 Com -- fort our faint -- ing hearts when sor -- rows us dis -- may!
 Strength -- en our weak -- ness -- es,
 stayed by Thy might -- y hand;
 \set ignoreMelismata = ##t Hear, Lord. _ \unset ignoreMelismata O hear our cry!
 Hear us, and we shall ev -- er wor -- ship Thee.
}

wordsSopLatinMidi = \lyricmode {
  "Pa" "nis " an ge li "cus "
  "\nfit " pa "nis " ho mi "num "
  "\nDat " pa "nis " coe li "cus "
  "\nfi" gu "ris " ter mi "num. "
  "\nO " "res " mi ra bi "lis, "
  "\nman" du "cat " Do mi "num. "
  "\nPau" "per, " hu mi "lis, "
  "\nPau" "per, " pau "per, " ser "vus " "et " hu mi "lis. "
}

wordsSopEnglishMidi = \lyricmode {
 "\nCleanse " "us " "of " sin "ful " "thoughts, " "O " "Thou " "most " Ho "ly " "One! " 
 "\nCom" "fort " "our " faint "ing " "hearts " "when " sor "rows " "us " dis "may! "
 "\nStrength" "en " "our " weak ness "es, "
 "\nstayed " "by " "Thy " might "y " "hand; "
 \set ignoreMelismata = ##t "\nHear, " "Lord. " _ \unset ignoreMelismata "O " "hear " "our " "cry! "
 "\nHear " "us, " "and " "we " "shall " ev "er " wor "ship " "Thee. "
}

alto = \relative {
  \global
  R1*36
  R1 % 3a
  cis'2^\pp^\markup ALTOS d4 4
  cis4. 8 d2
  cis4^\markup\italic "poco cresc" (a') g g
  fis4. 8 2 % 3b
  fis2^\markup\italic "più cresc." 4 a
  fis4. 8 4 4
  d4^\dim d cis e8(a)
  gis2 fis->( % 4a
  e2) fis4^\< fis\!
  gis4.^\> 8 fis2\!
  gis2 fis4 fis
  gis4. 8 a2 % 4b
  \tag #'en {e2^\mf e4 e}
  \tag #'ln {e2^\mf~e4 e}
  d2~4. e8
  cis2 r
  R1 % 5a
  \tag #'en {fis2^\mp^\< fis4 fis\!}
  \tag #'ln {fis2^\mp^\<~fis4 fis\!}
  e4.^\f 8 4 4
  e2^\<^\markup\italic rall. e^\>
  e2\! r % 5b
  R1*4
  \bar "|."
}

wordsAltoLatin = \lyricmode {
  \markup\italic Pa -- \markup\italic nis \markup\italic an -- \markup\italic ge -- \markup\italic li -- \markup\italic cus
  \markup\italic fit __ \markup\italic pa -- \markup\italic nis \markup\italic ho -- \markup\italic mi -- \markup\italic num
  \markup\italic Dat \markup\italic pa -- \markup\italic nis \markup\italic cœ -- \markup\italic li -- \markup\italic cus \markup\italic fi -- \markup\italic gu -- \markup\italic ris \markup\italic ter -- \markup\italic mi -- \markup\italic num.
  \markup\italic O __ \markup\italic res \markup\italic mi -- \markup\italic ra -- \markup\italic bi -- \markup\italic lis,
  \markup\italic man -- \markup\italic du -- \markup\italic cat \markup\italic Do -- \markup\italic mi -- \markup\italic num
  \markup\italic Pau -- \markup\italic per, \markup\italic hu -- \markup\italic mi -- \markup\italic lis,
  \markup\italic Pau -- \markup\italic per, \markup\italic pau -- \markup\italic per, \markup\italic ser -- \markup\italic vus \markup\italic hu -- \markup\italic mi -- \markup\italic lis.
}

wordsAltoEnglish = \lyricmode {
  Cleanse us of sin -- ful thoughts,
  O __ Thou most Ho -- ly One!
  Com -- fort our faint -- ing hearts when sor -- rows us dis -- may!
  Strength -- en our weak -- ness -- es,
  stayed by Thy might -- y hand;
  \set ignoreMelismata = ##t Hear, Lord, \unset ignoreMelismata O hear our cry!
  \set ignoreMelismata = ##t Hear us, \unset ignoreMelismata and we shall ev -- er wor -- ship Thee!
}

wordsAltoLatinMidi = \lyricmode {
  "Pa" "nis " an ge li "cus "
  "\nfit "  pa "nis " ho mi "num "
  "\nDat " pa "nis " cœ li "cus " fi gu "ris " ter mi "num. "
  "\nO "  "res " mi ra bi "lis, "
  "\nman" du "cat " Do mi "num "
  "\nPau" "per, " hu mi "lis, "
  "\nPau" "per, " pau "per, " ser "vus " hu mi "lis. "
}

wordsAltoEnglishMidi = \lyricmode {
  "Cleanse " "us " "of " sin "ful " "thoughts, "
  "\nO "  "Thou " "most " Ho "ly " "One! "
  "\nCom" "fort " "our " faint "ing " "hearts " "when " sor "rows " "us " dis "may! "
  "\nStrength" "en " "our " weak ness "es, "
  "\nstayed " "by " "Thy " might "y " "hand; "
  \set ignoreMelismata = ##t "Hear, " "Lord, " \unset ignoreMelismata "O " "hear " "our " "cry! "
  \set ignoreMelismata = ##t "Hear " "us, " \unset ignoreMelismata "and " "we " "shall " ev "er " wor "ship " "Thee! "
}

tenor = \relative {
  \global
  R1*36
  R1 % 3a
  e2^\pp^\markup TENORS gis4 gis
  a4. 8 gis2
  e4^\markup\italic "poco cresc." (cis') cis cis
  fis4. cis8 2 % 3b
  b2^\markup\italic "più cresc." 4 4
  a4. 8 4 4
  gis4^\dim 4 a cis
  b2 a->( % 4a
  gis2) a4^\<a\!
  b4.^\> 8 a2\!
  gis4(b) a a
  b4.^> 8 a2 % 4b
  \tag #'en {b2 ^\mf a4  e}
  \tag #'ln {b'2^\mf(a4) e}
  e2 e
  e2 r
  R1 % 5a
  \tag #'en {cis'2^\mp^\< b4  b\!}
  \tag #'ln {cis2 ^\mp^\<(b4) b\!}
  b4.^\f 8 a4 cis
  e2^\<^\markup\italic rall. (d4.^\>) cis8\!
  cis2 r
  R1*4
  \bar "|."
}

wordsTenorLatin = \lyricmode {
  \markup\italic Pa -- \markup\italic nis \markup\italic an -- \markup\italic ge -- \markup\italic li -- \markup\italic cus
  \markup\italic fit __ \markup\italic pa -- \markup\italic nis \markup\italic ho -- \markup\italic mi -- \markup\italic num
  \markup\italic Dat \markup\italic pa -- \markup\italic nis \markup\italic cœ -- \markup\italic li -- \markup\italic cus \markup\italic fi -- \markup\italic gu -- \markup\italic ris \markup\italic ter -- \markup\italic mi -- \markup\italic num.
  \markup\italic O __ \markup\italic res \markup\italic mi -- \markup\italic ra -- \markup\italic bi -- \markup\italic lis,
  \markup\italic man -- \markup\italic du -- \markup\italic cat \markup\italic Do -- \markup\italic mi -- \markup\italic num
  \markup\italic Pau -- \markup\italic per, \markup\italic hu -- \markup\italic mi -- \markup\italic lis,
  \markup\italic Pau -- \markup\italic per, \markup\italic pau -- \markup\italic per, \markup\italic ser -- \markup\italic vus \markup\italic hu -- \markup\italic mi -- \markup\italic lis.
}

wordsTenorEnglish = \lyricmode {
  Cleanse us of sin -- ful thoughts,
  O __ Thou most Ho -- ly One!
  Com -- fort our faint -- ing hearts when sor -- rows us dis -- may!
  Strength -- en our weak -- ness -- es,
  stayed by Thy might -- y hand;
  \set ignoreMelismata = ##t Hear, Lord, O hear our cry!
  Hear us, \unset ignoreMelismata and we shall ev -- er wor -- ship Thee!
}

wordsTenorLatinMidi = \lyricmode {
  "Pa" "nis " an ge li "cus "
  "\nfit "  pa "nis " ho mi "num "
  "\nDat " pa "nis " cœ li "cus " fi gu "ris " ter mi "num. "
  "\nO "  "res " mi ra bi "lis, "
  "\nman" du "cat " Do mi "num "
  "\nPau" "per, " hu mi "lis, "
  "\nPau" "per, " pau "per, " ser "vus " hu mi "lis. "
}

wordsTenorEnglishMidi = \lyricmode {
  "Cleanse " "us " "of " sin "ful " "thoughts, "
  "\nO "  "Thou " "most " Ho "ly " "One! "
  "\nCom" "fort " "our " faint "ing " "hearts " "when " sor "rows " "us " dis "may! "
  "\nStrength" "en " "our " weak ness "es, "
  "\nstayed " "by " "Thy " might "y " "hand; "
  \set ignoreMelismata = ##t "Hear, " "Lord, " "O " "hear " "our " "cry! "
  "\nHear " "us, " \unset ignoreMelismata "and " "we " "shall " ev "er " wor "ship " "Thee! "
}

bass = \relative {
  \global
  R1*36
  R1 % 3a
  <a, e'>2^\pp^\markup BASSES e'4 e
  q4. 8 e2
  q2^\markup\italic "poco cresc." <a, a'>4 q
  d4. 8 4(cis) % 3b
  b2^\markup\italic "più cresc." b4 cis
  d4. 8 4 dis
  e4^\dim 4 4 4
  e2 e->~ % 4a
  e2 e4^\< e\!e4.^\> 8 2\!
  e2 4 4
  d4.^> 8 cis2 % 4b
  \tag #'en {gis2^\mf a4  a}
  \tag #'ln {gis2^\mf(a4) a}
  e'2 e
  a,2 r
  \tag #'en {r2 b'^>^\mf^\markup\italic ten.   | ais2 b4  b} % 5a
  \tag #'ln {r2 b ^>^\mf^\markup\italic ten. ( | ais2 b4) b}
  e,4.^\f 8 4 4
  e2^\<^\markup\italic rall. e^\>
  <a, a'>2\!\omit\p r
  R1*4
  \bar "|."
}

wordsBassLatin = \lyricmode {
  \markup\italic Pa -- \markup\italic nis \markup\italic an -- \markup\italic ge -- \markup\italic li -- \markup\italic cus
  \markup\italic fit __ \markup\italic pa -- \markup\italic nis \markup\italic ho -- \markup\italic mi -- \markup\italic num
  \markup\italic Dat \markup\italic pa -- \markup\italic nis \markup\italic cœ -- \markup\italic li -- \markup\italic cus \markup\italic fi -- \markup\italic gu -- \markup\italic ris \markup\italic ter -- \markup\italic mi -- \markup\italic num.
  \markup\italic O __ \markup\italic res \markup\italic mi -- \markup\italic ra -- \markup\italic bi -- \markup\italic lis,
  \markup\italic man -- \markup\italic du -- \markup\italic cat \markup\italic Do -- \markup\italic mi -- \markup\italic num
  \markup\italic Pau -- \markup\italic per, \markup\italic hu -- \markup\italic mi -- \markup\italic lis,
  \markup\italic Pau -- __ \markup\italic per, \markup\italic pau -- \markup\italic per, \markup\italic ser -- \markup\italic vus \markup\italic hu -- \markup\italic mi -- \markup\italic lis.
}

wordsBassEnglish = \lyricmode {
  Cleanse us of sin -- ful thoughts,
  O __ Thou most Ho -- ly One!
  Com -- fort our faint -- ing hearts when sor -- rows us dis -- may!
  Strength -- en our weak -- ness -- es,
  stayed by Thy might -- y hand;
  \set ignoreMelismata = ##t Hear, Lord, O hear our cry!
  Lord, Hear us, and we shall ev -- er wor -- ship Thee!
}

wordsBassLatinMidi = \lyricmode {
  "Pa" "nis " an ge li "cus "
  "\nfit "  pa "nis " ho mi "num "
  "\nDat " pa "nis " cœ li "cus " fi gu "ris " ter mi "num. "
  "\nO "  "res " mi ra bi "lis, "
  "\nman" du "cat " Do mi "num "
  "\nPau" "per, " hu mi "lis, "
  "\nPau"  "per, " pau "per, " ser "vus " hu mi "lis. "
}

wordsBassEnglishMidi = \lyricmode {
  "Cleanse " "us " "of " sin "ful " "thoughts, "
  "\nO "  "Thou " "most " Ho "ly " "One! "
  "\nCom" "fort " "our " faint "ing " "hearts " "when " sor "rows " "us " dis "may! "
  "\nStrength" "en " "our " weak ness "es, "
  "\nstayed " "by " "Thy " might "y " "hand; "
  \set ignoreMelismata = ##t "Hear, " "Lord, " "O " "hear " "our " "cry! "
  "\nLord, " "Hear " "us, " "and " "we " "shall " ev "er " wor "ship " "Thee! "
}

pianoRHone = \relative {
  \global
%  \voiceOne
  a'2\omit\p^\markup "Poco lento e molto cantabile" 4 gis
  gis8. fis16 fis2(fis'4)
  e4 d8 cis b4 cis
  a2(gis8) cis d b
  a4 gis8 fis e4 a % 1b
  b2~8 cis d b
  a4 gis8 fis e4 a8 cis
  b2~8\omit\cresc e fis d
  cis2~8 8 e cis % 1c
  b2\omit\dim~8\omit\dim cis d fis,
  <cis a'>4 <e gis>8 <d fis> <cis e>4~<cis a'>8 <e cis'>
  b'4.(a8) 4 r \bar "||" \break
  r4\omit\p a2 gis4 % 1d
  a4 e2.
  r4 a gis2
  a2 e
  fis4 a fis e % 2a
  d4 a' d, cis
  b4 e b a
  gis4 b a b
  \once\partCombineApart r4 a'2 gis4 % 2b
  <cis, a'>4 e cis'2~
  cis2 bis2(
  cis4) \once\partCombineApart r \once\partCombineApart r2
  dis,4\omit\p a' b, b'
  e,4\omit\cresc gis b, b' % 2c
  dis,4 a' b, b'
  fis4 gis dis gis
  cis,4\omit\p gis' cis e,
  d4\omit\cresc gis cis, fis
  dis4 a' cis,\omit\> dis
  gis2\! r8\omit\< gis b e % 2d
  dis4\omit\mf e8 fis cis4 dis
  e4 fis8 gis dis4 e
  fis4\omit\< gis8 a gis4\omit\> fis
  e2.\! d4
  cis2.\omit\p b4 % 3a
  a2 gis
  \once\partCombineApart r4 a gis2
  a4\omit\cresc g cis, g'
  fis4 a fis <e a> % 3b
  fis4\omit\cresc a fis q
  fis4 a fis cis'
  b2.\omit\dim a4
  gis4 d fis d % 4a
  b'4 d,\omit\< a' d,
  gis4\omit\> d fis d\!
  b'4 d, a' d,
  gis4\omit\< e a e % 4b
  e'2\omit\mf~8 cis b a
  cis4 b8\omit\dim a b4. cis8
  a4\omit\cresc cis e eis
  fis2.\omit\f 4~ % 5a
  fis2~8 d cis b
  e1~\omit\dim
  e2 d4.(cis8)
  cis4\omit\p a e' d~ % 5b
  d4 b8 d <a cis>4 b8 a
  <a b>2~<gis b>4. a8
  a1\omit\>~
  a8\! r r4 r2
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  cis'1\omit\p~
  cis4 fis2 4~
  fis1
  e1~
  e1~ % 1b
  e1~
  e1
  <e gis>4 <fis a> <gis b>2\omit\cresc
  q2 <fis a>~ % 1c
  q2 d\omit\dim
  s1
  d2 cis4 r \bar "||"
  cis2\omit\p d % 1d
  cis2. cis4~
  cis2 d4 e
  cis2. cis4
  \once\partCombineApart r4 a'2. % 2a
  \once\partCombineApart r4 a2.
  \once\partCombineApart r4 e2.
  \once\partCombineApart r4 e2.
  cis2 d % 2b
  r2 cis'4 gis
  \once\partCombineApart r4 gis fis gis
  e4 ais cis, cis'
  r1\omit\p
  r1\omit\cresc % 2c
  r1
  r1
  r2\omit\p cis
  b2\omit\cresc a~
  a4 2\omit\> r4
  e2\! r\omit\< % 2d
  b'1\omit\mf~
  b4 gis a gis
  a4\omit\< b8 cis\omit\> b4 a
  gis4\! a ais b
  \once\partCombineApart r4\omit\p e, d2 % 3a
  cis4 e2 d4
  cis2 d4 e
  cis4\omit\cresc \once\partCombineApart r \once\partCombineApart r2
  r1 % 3b
  r1\omit\cresc
  r2 fis
  d4\omit\dim e cis e
  r1 % 4a
  r1
  r1
  r1
  r1 % 4b
  b'4\omit\mf e, a e
  r1
  r1
  \once\partCombineApart r4\omit\f << fis2 \new Voice {fis4 b} >> fis4~ % 5a
  fis2~4 e8 d
  r1
  r1
  r1\omit\p % 5b
  r2 e
  fis2 e4 d
  cis1~\omit\>
  cis8\! r r4 r2
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s1
  s1
  s1 % 1b
  s1
  s1
  s2 s\cresc
  s1 % 1c
  s2 s\dim
  s1-\markup\italic "poco rall."
  s1
  s1\p % 1d
  s1
  s1
  s1
  s1 % 2a
  s1
  s1
  s1
  s1 % 2b
  s1
  s1
  s1
  s1\p
  s1\cresc % 2c
  s1
  s1
  s1\p
  s1\cresc
  s2 s\>
  s2\! s\< % 2d
  s1\mf
  s1
  s2\< s\>
  s1\!
  s1\p % 3a
  s1
  s1
  s1-\markup\italic "poco cresc/"
  s1 % 3b
  s1-\markup\italic "più cresc."
  s1
  s1\dim
  s1 % 4a
  s4 s2.\<
  s1\>
  s1\!
  s1\< % 4b
  s1\mf
  s4 s2.\dim
  s1-\markup\italic "molto cresc."
  s1\f % 5a
  s2 s-\markup\italic "colla voce"
  s1-\markup\italic "poco dim."
  s2 s-\markup\italic rall.
  s1-\markup\bold\italic {\dynamic p a tempo} % 5b
  s4 s2.-\markup\italic rall.
  s1
  s1\>
  s8\! s s2.
}

pianoLHone = \relative {
  \global
  \voiceOne
  e2\omit\p eis
  fis1
  fis2. a8 b
  cis2(b8) a b d
  <a cis>4 <b d> <cis e> <a cis> % 1b
  <gis b>4 <e gis> <f a> <gis b>
  <a cis>4 <b d> <cis e> <a cis>
  d1\omit\cresc
  cis1 % 1c
  b2 fis\omit\dim
  a1
  gis2 a4 r \bar "||"
  e1\omit\p~ % 1d
  e1~
  e1~
  e1
  d'2. cis4 % 2a
  fis,2. e4
  gis2. e4~
  e1
  e1~ % 2b
  e1
  r1
  ais1
  a1\omit\p
  gis1\omit\cresc % 2c
  fis1~
  fis1
  e1\omit\p
  eis2\omit\cresc fis~
  fis2 e4\omit\> fis
  \once\partCombineApart r4\! gis b\omit\< r % 2d
  fis'2\omit\mf e4 fis
  e4 b2.
  \once\partCombineApart r4\omit\< dis cis\omit\> dis
  d4\! cis2 e4
  e,1\omit\p~ % 3a
  e1~
  e1~
  e2\omit\cresc a~
  a1~ % 3b
  a1\omit\cresc
  <d, b'>2. <dis a'>4
  gis2\omit\dim a
  b2 a % 4a
  gis2 fis\omit\<
  b2\omit\> a
  gis2\! fis
  b2\omit\< a % 4b
  b2\omit\mf cis
  d2.\omit\dim e4
  <a, cis>2\omit\cresc~q~
  <ais cis>2\omit\f b % 5a
  cis4 e d r
  <gis, d'>2\omit\dim <a cis>
  <gis b>2 r
  r4\omit\p a e' d~ % 5b
  <gis, d'>2 a
  d,2 e~
  e1~\omit\>
  e8\! r r4 r2
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  a,1\omit\p
  a2 ais
  g4. cis8 d4 dis
  e1~
  e1~ % 1b
  e1~
  e1~
  e1\omit\cresc
  eis2(fis4) cis % 1c
  d2 b\omit\dim
  e1
  e2 a,4 r
  a2\omit\p e' % 1d
  a,2 e'
  a,2 e'
  a,2 a'~
  a1~ % 2a
  a1
  d,2. cis4 b4 gis fis gis
  a2 e' % 2b
  a,1
  gis2 gis'
  g1
  fis1\omit\p
  e1\omit\cresc % 2c
  b1
  bis1
  cis1\omit\p~
  cis1\omit\cresc
  b1
  e2~4 r % 2d
  b'2.\omit\mf a4
  gis2 fis4 e
  b'1~
  b4 a fisis gis
  a,2\omit\p e' % 3a
  a,2 e'
  a,2 e'
  a,2\omit\cresc r
  d2. cis4 % 3b
  b2.\omit\cresc cis4
  r1
  e1\omit\dim~
  e1~ % 4a
  e1~
  e1~
  e1
  d2\omit\< cis % 4b
  gis'2\omit\mf a
  <<e1\omit\dim \new Voice {\voiceTwo fis2\omit\dim gis\omit\p}>>
  r2\omit\cresc e~
  e2\omit\f d % 5a
  ais'2 b4 r
  e,1\omit\dim~
  e2 r
  r4\omit\p r gis fis
  f4(e) a, cis
  r1
  a1~\omit\>
  a8\! r r4 r2
  \bar "|."
}

%%% Latin versions

wordsSolo  = \wordsSoloLatin
wordsSop   = \wordsSopLatin
wordsAlto  = \wordsAltoLatin
wordsTenor = \wordsTenorLatin
wordsBass  = \wordsBassLatin
wordsSoloMidi  = \wordsSoloLatinMidi
wordsSopMidi   = \wordsSopLatinMidi
wordsAltoMidi  = \wordsAltoLatinMidi
wordsTenorMidi = \wordsTenorLatinMidi
wordsBassMidi  = \wordsBassLatinMidi

language = #'ln

#(set-global-staff-size 16)

\book {
  \bookOutputSuffix "single-ln"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \keepWithTag \language \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \keepWithTag \language \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-ln"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \keepWithTag \language \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \keepWithTag \language \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-ln-solo"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-ln-sop"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \keepWithTag \language \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-ln-alto"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \keepWithTag \language \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-ln-tenor"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-ln-bass"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-ln-solo"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
            \new Lyrics \lyricsto "solo" \wordsSoloMidi
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-ln-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-ln-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-ln-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-ln-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

%%% English versions

wordsSolo  = \wordsSoloEnglish
wordsSop   = \wordsSopEnglish
wordsAlto  = \wordsAltoEnglish
wordsTenor = \wordsTenorEnglish
wordsBass  = \wordsBassEnglish
wordsSoloMidi  = \wordsSoloEnglishMidi
wordsSopMidi   = \wordsSopEnglishMidi
wordsAltoMidi  = \wordsAltoEnglishMidi
wordsTenorMidi = \wordsTenorEnglishMidi
wordsBassMidi  = \wordsBassEnglishMidi

language = #'en

#(set-global-staff-size 16)

\book {
  \bookOutputSuffix "single-en"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \keepWithTag \language \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \keepWithTag \language \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-en"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \keepWithTag \language \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \keepWithTag \language \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-en-solo"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics \wordsSolo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-en-sop"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \keepWithTag \language \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-en-alto"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \keepWithTag \language \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-en-tenor"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-en-bass"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag \language \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \keepWithTag \language \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \keepWithTag \language \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \keepWithTag \language \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-en-solo"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
            \new Lyrics \lyricsto "solo" \wordsSoloMidi
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-en-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-en-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-en-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-en-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff \with {
            instrumentName = #"Solo"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice = "solo" \keepWithTag \language \solo
          >>
                                % Single soprano staff
          \new Staff \with {
            shortInstrumentName = #"S"
          }
          <<
            \new Voice = "soprano" \keepWithTag \language \soprano
          >>
                                % Single alto staff
          \new Staff \with {
            shortInstrumentName = #"A"
          }
          <<
            \new Voice = "alto" \keepWithTag \language \alto
          >>
                                % Single tenor staff
          \new Staff \with {
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \keepWithTag \language \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \keepWithTag \language \bass
            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
