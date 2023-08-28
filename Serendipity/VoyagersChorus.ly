\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Voyagers' chorus"
  subtitle    = \markup {"(from" \italic Idomeneo ")"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. A. Mozart (1756—91)"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "G. Varesco"
  meter       = "Tr. John Rutter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 6/8
}

TempoTrack = {
  \tempo Andantino 4=90
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "167a" } s2.*4
  \textMark \markup { \box "167b" } s2.*4
  \textMark \markup { \box "168a" } s2.*4
  \textMark \markup { \box "168b" } s2.*4
  \textMark \markup { \box "168c" } s2.*4
  \textMark \markup { \box "169a" } s2.*4
  \textMark \markup { \box "169b" } s2.*4
  \textMark \markup { \box "169c" } s2.*3
  \textMark \markup { \box "169d" } s2.*3
  \textMark \markup { \box "170a" } s2.*3
  \textMark \markup { \box "170b" } s2.*3
  \textMark \markup { \box "170c" } s2.*3
  \textMark \markup { \box "170d" } s2.*3
  \textMark \markup { \box "171a" } s2.*4
  \textMark \markup { \box "171b" } s2.*4
  \textMark \markup { \box "171c" } s2.*4
  \textMark \markup { \box "172a" } s2.*3
  \textMark \markup { \box "172b" } s2.*4
  \textMark \markup { \box "172c" } s2.*4
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s | s | s | s\pp | s | s\f | s2 s8 s\p |
  s2. | s2 s8 s\f | s2. | s | s | s2 s8 s\p | s2. | s\f | s2 s8 s\p | s2. | s\f | s\p | % 168
  s2.\f | s\p | s2.*24 | % 169-170
  s2.\p | s2.*5 | s2.\f | s2 s8 s\p | s2. | s2 s8 s\f | s2. | s | % 171
  s2. | s2 s8 s\p | s2. | s\f | s2 s8 s\p | s2. | s\f | s\p | s\f | s\p | s |
}

soprano = \relative {
  \global
  b'8. a16 gis8 cis4 dis8 |
  dis4~(16 e) b8 r r |
  b8. a16 gis8 fis4 b8 | a4. gis8 r r |
  a8.(gis16) fis8 r4. | b8.(a16) gis8 r4. | e'8 dis cis b(a) gis | b4(gis8) fis r e' |
  dis4 e8 dis4 e8 | dis8(~16 e fis e) dis8 r dis | e(dis) cis cis(b) ais | b4. r8 r e, | % 168a
  cis'4 8 4 8 | b4. 8 r gis | fis r gis fis r gis | fis4 gis8 a4 b8 |
  cis4. r8 r cis | 8(b) a a(gis) fis | gis'(fis) e dis(cis) b | a4. fis |
  gis'8(fis) e dis(cis) b | a4. fis | e4 r8 r4^\markup "SOPRANO SOLO (Elettra)" b'8 | \oneVoice 4.~4 cis16(dis) | % 169a
  \tag #'it { dis4~16 e   b4 r8 |}
  \tag #'en { dis4~(16 e) b4 r8 |}
  b16(a') 4~8 r dis, | 4(~16 e) b4 r8 | gis'4. \appoggiatura fis8 e4 \appoggiatura dis8 cis |
  \tag #'it {b4~16 ais   ais4(b16 gis) |}
  \tag #'en {b4~(16 ais) ais4(b16 gis) |}
  fis4. fis'4 e8 | cisis4(dis8) dis r r |
  b4. \appoggiatura gis'8 fis4 e16(dis) | % 169d
  \tag #'it {dis4~16 cis   cis4. |}
  \tag #'en {dis4~(16 cis) cis4. |}
  dis4(a'8) \appoggiatura gis8 fis4 e16(dis) |
  fis4 e8 r4. | % 170a
  \tag #'it {e8.(\grace {fis32 e dis e} fis16 gis8) fis(e) dis16(cis) | }
  \tag #'en {e8.(\grace {fis32 e dis e} fis16) gis8 fis(e) dis16(cis) | }
  \tag #'it {dis8.(\grace {e32 dis cis dis} e16 fis8 e dis) cis16 b | }
  \tag #'en {dis8.(\grace {e32 dis cis dis} e16) fis8 e(dis) cis16(b) | }
  ais8(gis e'16 cis) b4 cis8 | cis4(cisis8 dis) r r | % 170b
  \tag #'it {e8.[(\grace {fis32 e dis e} fis16] gis8) fis([e]) dis16([cis]) | }
  \tag #'en {e8.(\grace {fis32 e dis e} fis16) gis8 fis(e) dis16(cis) | }
  b4.(~8. cis32 d e fis gis ais | b8 gis) e cis r cis | dis4(fis8~8. e16) dis(cis) | % 170c
  b4 r8 r4. | R2. | R | \voiceOne
  b8.^\markup TUTTI a16 gis8 cis4 dis8 | dis4(~16 e) b8 r r | 8. a16 gis8 fis4 b8 | a4. gis8 r r | % 171a
  a8.(gis16) fis8 r4. | b8.(a16) gis8 r4. | e'8 dis cis b(a) gis | b4(gis8) fis r e' |
  dis4 e8 dis4 e8 | d8(~16 e fis e) dis8 r dis | e(dis) cis cis(b) ais | b4. r8 r e, |
  cis'4 8 4 8 | b4. 8 r gis | fis r gis fis r gis | % 172a
  fis4 gis8 a4 b8 | cis4. r8 r cis | 8(b) a a(gis) fis | gis'(fis) e dis(cis) b |
  a4. fis | gis'8(fis) e dis(cis) b | a4. fis | e2.\fermata |
  \bar "|."
}

wordsSop_it = \lyricmode {
  \repeat unfold 38 _
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
  \repeat unfold 81 _
  \repeat unfold 38 _
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
}

wordsSopSep_it = \lyricmode {
  Pla -- ci -- "do é il" mar, an -- dia -- mo,
  tut -- to ci ras -- si -- su -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, __ par -- tia -- "mo or'" or,
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, par -- tia -- "mo or'" or,
  par -- tia -- "mo or'" or
  sù sù __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia __ "mo or'" or.
  So -- a -- vi __ zef -- fi -- ri so -- li __ spi -- ra -- te,
  del fred -- do bo -- re -- a __ l'i -- ra cal -- ma -- te.
  D'au -- ra pia -- ce -- vo -- le cor -- te -- si __ sia -- te,
  sw -- da -- voi -- spar -- ge -- si per tut -- "to a" -- mor, __
  se __ da __ voi __ spar -- ge -- si per tut -- "to a" -- mor.

  Pla -- ci -- "do è il" mar, a -- dia -- mo,
  tut -- to ci ras -- si -- cu -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, __ par -- tia -- "mo or'" or,
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
  ꜱù sù, par -- tia -- "mo or'" or, par -- tia -- "mo or'" or,
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or.
}

wordsSopMidi_it = \lyricmode {
  "Pla" ci "do é il " "mar, " an dia "mo, "
  "\ntut" "to " "ci " ras si su "ra, "
  "\ntut" "to, " tut "to, " tut "to " "ci " ras si cu "ra. "
  "\nFe" li "ce av" "rem " ven tu "ra, "
  "\nsù " "sù, "  par tia "mo or' " "or, "
  "\nfe" li "ce av" "rem " ven tu "ra, "
  "\nsù " "sù, " par tia "mo or' " "or, "
  "\npar" tia "mo or' " "or "
  "\nsù " "sù "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par "tia "  "mo or' " "or.\n"

  "\nSo" a "vi "  zef fi "ri " so "li "  spi ra "te, "
  "\ndel " fred "do " bo re "a "  l'i "ra " cal ma "te. "
  "\nD'au" "ra " pia ce vo "le " cor te "si "  sia "te, "
  "\nsw" da voi spar ge "si " "per " tut "to a" "mor, " 
  "\nse "  "da "  "voi "  spar ge "si " "per " tut "to a" "mor.\n"

  "\nPla" ci "do è il " "mar, " a dia "mo, "
  "\ntut" "to " "ci " ras si cu "ra, "
  "\ntut" "to, " tut "to, " tut "to " "ci " ras si cu "ra. "
  "\nFe" li "ce av" "rem " ven tu "ra, "
  "\nsù " "sù, "  par tia "mo or' " "or, "
  "\nfe" li "ce av" "rem " ven tu "ra, "
  "\nꜱù " "sù, " par tia "mo or' " "or, " par tia "mo or' " "or, "
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par tia "mo or' " "or. "
}

wordsSop_en = \lyricmode {
  \repeat unfold 38 _
  The fates fore -- tell good for -- tune;
  \repeat unfold 82 _
  \repeat unfold 38 _
  The fates fore -- tell good for -- tune;
}

wordsSopSep_en = \lyricmode {
  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail!
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail,
  make haste, set sail!
  quick, quick, make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail!

  May gen -- tle __ breez -- es soft -- ly __ ca -- ress __ you;
  No bit -- ter tem -- pest __ e -- ver dis -- tress __ you;
  Winds kind -- ly __ waft -- ing fol -- low and bless you,
  Spread __ a -- mong __ you far __ and wide __ the __ sweet __ breath of love, __
  spread __ a -- mong __ you __ far __ and wide the breath __ of __ love.

  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail!
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail,
  make haste, set sail!
  quick, quick, make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail!
}

wordsSopMidi_en = \lyricmode {
  "Calm " "are " "the " "winds " "and " wa "ters, "
  "\nbless" "ings " at "tend " "our " jour "ney, "
  "\nbless" "ings, " bless "ings, "
  "\nbless" "ings " at "tend " "our " jour "ney. "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail! "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail, "
  "\nmake " "haste, " "set " "sail! "
  "\nquick, " "quick, " "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail!\n"

  "\n[Solo]May " gen "tle "  breez "es " soft "ly "  ca "ress "  "you; "
  "\nNo " bit "ter " tem "pest "  e "ver " dis "tress "  "you; "
  "\nWinds " kind "ly "  waft "ing " fol "low " "and " "bless " "you, "
  "\nSpread "  a "mong "  "you " "far " "and " "wide "  "the "  "sweet "  "breath " "of " "love, " 
  "\nspread "  a "mong "  "you "  "far "  "and " "wide " "the " "breath "  "of "  "love.\n"

  "\n[Tutti]Calm " "are " "the " "winds " "and " wa "ters, "
  "\nbless" "ings " at "tend " "our " jour "ney, "
  "\nbless" "ings, " bless "ings, "
  "\nbless" "ings " at "tend " "our " jour "ney. "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail! "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail, "
  "\nmake " "haste, " "set " "sail! "
  "\nquick, " "quick, " "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail! "
}

words_it = \lyricmode {
  Pla -- ci -- "do é il" mar, an -- dia -- mo,
  tut -- to ci ras -- si -- su -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, __ par -- tia -- "mo or'" \set associatedVoice = alto or,
  fe -- li -- "ce av" -- rem ven -- tu -- \set associatedVoice = soprano ra,
  sù sù, par -- tia -- "mo or'" or,
  par -- tia -- "mo or'" or
  sù sù __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia __ "mo or'" or.
  So -- a -- vi __ zef -- fi -- ri so -- li __ spi -- ra -- te,
  del fred -- do bo -- re -- a __ l'i -- ra cal -- ma -- te.
  D'au -- ra pia -- ce -- vo -- le cor -- te -- si __ sia -- te,
  sw -- da -- voi -- spar -- ge -- si per tut -- "to a" -- mor, __
  se __ da __ voi __ spar -- ge -- si per tut -- "to a" -- mor.

  Pla -- ci -- "do è il" mar, a -- dia -- mo,
  tut -- to ci ras -- si -- cu -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, __ par -- tia -- "mo or'" \set associatedVoice = alto or,
  fe -- li -- "ce av" -- rem ven -- tu -- \set associatedVoice = soprano ra,
  ꜱù sù, par -- tia -- "mo or'" or, par -- tia -- "mo or'" or,
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or.
}

wordsAltoSep_it = \lyricmode {
  Pla -- ci -- "do é il" mar, an -- dia -- mo,
  tut -- to ci ras -- si -- su -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, __ par -- tia -- "mo or'" or,
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, par -- tia -- "mo or'" or,
  par -- tia -- "mo or'" or
  sù sù __ par -- tia -- "mo or'" or, __
  par -- tia -- "mo or'" or, __
  par -- tia __ "mo or'" or.

  Pla -- ci -- "do è il" mar, a -- dia -- mo,
  tut -- to ci ras -- si -- cu -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, __ par -- tia -- "mo or'" or,
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
  ꜱù sù, par -- tia -- "mo or'" or, par -- tia -- "mo or'" or,
  sù sù, __ par -- tia -- "mo or'" or, __
  par -- tia -- "mo or'" or, __
  par -- tia -- "mo or'" or.
}

wordsAltoMidi_it = \lyricmode {
  "Pla" ci "do é il " "mar, " an dia "mo, "
  "\ntut" "to " "ci " ras si su "ra, "
  "\ntut" "to, " tut "to, " tut "to " "ci " ras si cu "ra. "
  "\nFe" li "ce av" "rem " ven tu "ra, "
  "\nsù " "sù, "  par tia "mo or' " "or, "
  "\nfe" li "ce av" "rem " ven tu "ra, "
  "\nsù " "sù, " par tia "mo or' " "or, "
  "\npar" tia "mo or' " "or "
  "\nsù " "sù "  par tia "mo or' " "or, " 
  "\npar" tia "mo or' " "or, " 
  "\npar" "tia "  "mo or' " "or.\n"

  "\nPla" ci "do è il " "mar, " a dia "mo, "
  "\ntut" "to " "ci " ras si cu "ra, "
  "\ntut" "to, " tut "to, " tut "to " "ci " ras si cu "ra. "
  "\nFe" li "ce av" "rem " ven tu "ra, "
  "\nsù " "sù, "  par tia "mo or' " "or, "
  "\nfe" li "ce av" "rem " ven tu "ra, "
  "\nꜱù " "sù, " par tia "mo or' " "or, " par tia "mo or' " "or, "
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\npar" tia "mo or' " "or, " 
  "\npar" tia "mo or' " "or. "
}

words_en = \lyricmode {
  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set \set associatedVoice = alto sail!
  The fates fore -- tell good for -- \set associatedVoice = soprano tune;
  Quick, quick, make haste, set sail,
  make haste, set sail!
  quick, quick, make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail!

  May gen -- tle __ breez -- es soft -- ly __ ca -- ress __ you;
  No bit -- ter tem -- pest __ e -- ver dis -- tress __ you;
  Winds kind -- ly __ waft -- ing fol -- low and bless you,
  Spread __ a -- mong __ you far __ and wide __ the __ sweet __ breath of love, __
  spread __ a -- mong __ you __ far __ and wide the breath __ of __ love.

  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set \set associatedVoice = alto sail!
  The fates fore -- tell good for -- \set associatedVoice = soprano tune;
  Quick, quick, make haste, set sail,
  make haste, set sail!
  quick, quick, make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail!
}

wordsAltoSep_en = \lyricmode {
  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune; % 168a
  Quick, quick, make haste, set sail,
  The fates __ fore -- tell good for -- tune; % 168b
  Quick, quick, make haste, set sail,
  make haste, set sail,
  quick, quick, __ make haste, __ set sail, __
  make haste, set sail,
  make haste, set sail!

  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail!
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail,
  make haste, set sail!
  quick, quick, make haste, __ set sail, __
  make haste, __ set sail,
  make haste, set sail!
}

wordsAltoMidi_en = \lyricmode {
  "Calm " "are " "the " "winds " "and " wa "ters, "
  "\nbless" "ings " at "tend " "our " jour "ney, "
  "\nbless" "ings, " bless "ings, "
  "\nbless" "ings " at "tend " "our " jour "ney. "
  "\nThe " "fates " fore "tell " "good " for "tune; " % 168a
  "\nQuick, " "quick, " "make " "haste, " "set " "sail, "
  "\nThe " "fates "  fore "tell " "good " for "tune; " % 168b
  "\nQuick, " "quick, " "make " "haste, " "set " "sail, "
  "\nmake " "haste, " "set " "sail, "
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail, " 
  "\nmake " "haste, " "set " "sail, "
  "\nmake " "haste, " "set " "sail!\n"

  "\nCalm " "are " "the " "winds " "and " wa "ters, "
  "\nbless" "ings " at "tend " "our " jour "ney, "
  "\nbless" "ings, " bless "ings, "
  "\nbless" "ings " at "tend " "our " jour "ney. "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail! "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail, "
  "\nmake " "haste, " "set " "sail! "
  "\nquick, " "quick, " "make " "haste, "  "set " "sail, " 
  "\nmake " "haste, "  "set " "sail, "
  "\nmake " "haste, " "set " "sail! "
}

alto = \relative {
  \global
  gis'8. fis16 e8 4 a8 |
  a4. gis8 r r |
  gis8. fis16 e8 dis4 fis8 |
  fis4. e8 r r |
  fis8.(e16) dis8 r4. | gis8.(fis16) e8 r4. | cis'8 b a gis(fis) e | gis4(fis8) dis r gis |
  fis4 gis8 fis4 gis8 | fis8~(16 gis a gis) fis8 r fis | gis8(fis) e e(dis) cis | b4 8 b'4.~ | % 168a
  b4 8 a4 8 | 4. gis8 r e | dis r e dis r e | dis4 e8 fis4 gis8 |
  a4. r8 r a | a(gis) fis fis(e) dis | e4. r8 r e | fis4. dis |
  e4. r8 r e | fis4. dis | e4 r8 c4.\rest | s2. | % 169a
  s2.*22 |
  gis'8. fis16 e8 4 a8 | 4. gis8 r r | 8. fis16 e8 dis4 fis8 | 4. e8 r r | % 171a
  fis8.(e16) dis8 r4. | gis8.(fis16) e8 r4. | cis'8 b a gis(fis) e | gis4(e8) dis r gis |
  fis4 gis8 fis4 gis8 | fis8(~16 gis a gis) fis8 r fis | gis(fis) e e(dis) cis | b4 8 b'4.~ |
  b4 8 a4 8 | 4. gis8 r e | dis r e dis r e | % 172a
  dis4 e8 fis4 gis8 | a4. r8 r a | a(gis) fis fis(e) dis | e4. r8 r e |
  fis4. dis | e4. r8 r e | fis4. dis | e2.\fermata |
  \bar "|."
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s | s | s | s\pp | s | s\f | s2 s8 s\p |
  s2. | s | s2 s4\f | s2. | s | s2 s8 s\p | s2. | s\f | s2 s8 s\p | s2. | s\f | s\p | % 168
  s2.\f | s\p | s2.*24 | % 169-170
  s2.\p | s2.*5 | s2.\f | s2 s8 s\p | s2. | s | s2 s4\f | s2. | % 171
  s2. | s2 s8 s\p | s2. | s\f | s2 s8 s\p | s2. | s\f | s\p | s\f | s\p | s |
}

tenor = \relative {
  \global
  gis8. a16 b8 a4 fis8 |
  fis4. e8 r r |
  cis'8. 16 8 fis,4 8 |
  b4. 8 r r |
  b4 8 r4. | 4 8 r4. | cis8 dis e cis4 8 | b4. 8 r b |
  b4 8 4 8 | 4. 8 r r | R2. | r8 r b b(a) gis | % 168a
  e'4. fis | fis e8 r b | b r b b r b | b4 8 a4 gis8 |
  fis4. r8 r fis | gis4 cis8 b4 8 | e(dis) cis b(a) gis | cis4. b |
  e8(dis) cis b(a) gis | cis4. a | gis4 r8 r4. | R2. | % 169a
  R2.*22 |
  gis8. a16 b8 a4 fis8 | 4. e8 r r | cis'8. 16 8 fis,4 8 | b4. 8 r r | % 171a
  b4 8 r4. | 4 8 r4. | cis8 dis e cis4 8 | b4. 8 r b |
  b4 8 4 8 | 4. 8 r r | R2. | r8 r b b(a) gis |
  e'4. fis | 4. e8 r b | b r b b r b | % 172a
  b4 8 a4 gis8 | fis4. r8 r fis | gis4 cis8 b4 8 | e(dis) cis b(a) gis |
  cis4. b | e8(dis) cis b(a) gis | cis4. a | gis2.\fermata |
  \bar "|."
}

wordsTenor_it = \lyricmode {
  \repeat unfold 32 _
  fe -- li -- "ce av" -- rem, ven -- tu -- ra,
  \repeat unfold 28 _
  \repeat unfold 32 _
  fe -- li -- "ce av" -- rem, ven -- tu -- ra,
}

wordsTenorSep_it = \lyricmode {
  Pla -- ci -- "do é il" mar, an -- dia -- mo,
  tut -- to ci ras -- si -- su -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, par -- tia -- "mo or'" or,
  par -- tia -- "mo or'" or
  sù sù __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia __ "mo or'" or.

  Pla -- ci -- "do è il" mar, a -- dia -- mo,
  tut -- to ci ras -- si -- cu -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
  ꜱù sù, par -- tia -- "mo or'" or, par -- tia -- "mo or'" or,
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or.
}

wordsTenorMidi_it = \lyricmode {
  "Pla" ci "do é il " "mar, " an dia "mo, "
  "\ntut" "to " "ci " ras si su "ra, "
  "\ntut" "to, " tut "to, " tut "to " "ci " ras si cu "ra. "
  "\nFe" li "ce av" "rem " ven tu "ra, "
  "\nfe" li "ce av" "rem " ven tu "ra, "
  "\nsù " "sù, " par tia "mo or' " "or, "
  "\npar" tia "mo or' " "or "
  "\nsù " "sù "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par "tia "  "mo or' " "or.\n"

  "\nPla" ci "do è il " "mar, " a dia "mo, "
  "\ntut" "to " "ci " ras si cu "ra, "
  "\ntut" "to, " tut "to, " tut "to " "ci " ras si cu "ra. "
  "\nFe" li "ce av" "rem " ven tu "ra, "
  "\nfe" li "ce av" "rem " ven tu "ra, "
  "\nꜱù " "sù, " par tia "mo or' " "or, " par tia "mo or' " "or, "
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par tia "mo or' " "or. "
}

wordsTenor_en = \lyricmode {
  \repeat unfold 32 _
  The fates fore -- tell good for -- tune;
  \repeat unfold 28 _
  \repeat unfold 32 _
  The fates fore -- tell good for -- tune;
}

wordsTenorSep_en = \lyricmode {
  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune;
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail,
  make haste, set sail!
  quick, quick, make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail!

  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune;
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail,
  make haste, set sail!
  quick, quick, make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail!
}

wordsTenorMidi_en = \lyricmode {
  "Calm " "are " "the " "winds " "and " wa "ters, "
  "\nbless" "ings " at "tend " "our " jour "ney, "
  "\nbless" "ings, " bless "ings, "
  "\nbless" "ings " at "tend " "our " jour "ney. "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail, "
  "\nmake " "haste, " "set " "sail! "
  "\nquick, " "quick, " "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail!\n"

  "\nCalm " "are " "the " "winds " "and " wa "ters, "
  "\nbless" "ings " at "tend " "our " jour "ney, "
  "\nbless" "ings, " bless "ings, "
  "\nbless" "ings " at "tend " "our " jour "ney. "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail, "
  "\nmake " "haste, " "set " "sail! "
  "\nquick, " "quick, " "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail! "
}

wordsBass_it = \lyricmode {
  \repeat unfold 32 _
  fe -- li -- "ce av" -- rem,
  fe -- li -- "ce av" -- rem, ven -- tu -- ra,
  \repeat unfold 24 _
  \repeat unfold 32 _
  fe -- li -- "ce av" -- rem,
  fe -- li -- "ce av" -- rem, ven -- tu -- ra,
}

wordsBassSep_it = \lyricmode {
  Pla -- ci -- "do é il" mar, an -- dia -- mo,
  tut -- to ci ras -- si -- su -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
  sù sù, par -- tia -- "mo or'" or,
  par -- tia -- "mo or'" or
  sù sù __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia __ "mo or'" or.

  Pla -- ci -- "do è il" mar, a -- dia -- mo,
  tut -- to ci ras -- si -- cu -- ra,
  tut -- to, tut -- to, tut -- to ci ras -- si -- cu -- ra.
  Fe -- li -- "ce av" -- rem ven -- tu -- ra,
  fe -- li -- "ce av" -- rem ven -- tu -- ra,
  ꜱù sù, par -- tia -- "mo or'" or, par -- tia -- "mo or'" or,
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or, __
  sù sù, __ par -- tia -- "mo or'" or.
}

wordsBassMidi_it = \lyricmode {
  "Pla" ci "do é il " "mar, " an dia "mo, "
  "\ntut" "to " "ci " ras si su "ra, "
  "\ntut" "to, " tut "to, " tut "to " "ci " ras si cu "ra. "
  "\nFe" li "ce av" "rem " ven tu "ra, "
  "\nfe" li "ce av" "rem " ven tu "ra, "
  "\nsù " "sù, " par tia "mo or' " "or, "
  "\npar" tia "mo or' " "or "
  "\nsù " "sù "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par "tia "  "mo or' " "or.\n"

  "\nPla" ci "do è il " "mar, " a dia "mo, "
  "\ntut" "to " "ci " ras si cu "ra, "
  "\ntut" "to, " tut "to, " tut "to " "ci " ras si cu "ra. "
  "\nFe" li "ce av" "rem " ven tu "ra, "
  "\nfe" li "ce av" "rem " ven tu "ra, "
  "\nꜱù " "sù, " par tia "mo or' " "or, " par tia "mo or' " "or, "
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par tia "mo or' " "or, " 
  "\nsù " "sù, "  par tia "mo or' " "or. "
}

wordsBass_en = \lyricmode {
  \repeat unfold 32 _
  The fates fore -- tell,
  The fates fore -- tell good for -- tune;
  \repeat unfold 24 _
  \repeat unfold 32 _
  The fates fore -- tell,
  The fates fore -- tell good for -- tune;
}

wordsBassSep_en = \lyricmode {
  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune;
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail,
  make haste, set sail!
  quick, quick, make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail!

  Calm are the winds and wa -- ters,
  bless -- ings at -- tend our jour -- ney,
  bless -- ings, bless -- ings,
  bless -- ings at -- tend our jour -- ney.
  The fates fore -- tell good for -- tune;
  The fates fore -- tell good for -- tune;
  Quick, quick, make haste, set sail,
  make haste, set sail!
  quick, quick, make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail, __
  quick, quick, __ make haste, __ set sail!
}

wordsBassMidi_en = \lyricmode {
  "Calm " "are " "the " "winds " "and " wa "ters, "
  "\nbless" "ings " at "tend " "our " jour "ney, "
  "\nbless" "ings, " bless "ings, "
  "\nbless" "ings " at "tend " "our " jour "ney. "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail, "
  "\nmake " "haste, " "set " "sail! "
  "\nquick, " "quick, " "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail!\n"

  "\nCalm " "are " "the " "winds " "and " wa "ters, "
  "\nbless" "ings " at "tend " "our " jour "ney, "
  "\nbless" "ings, " bless "ings, "
  "\nbless" "ings " at "tend " "our " jour "ney. "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nThe " "fates " fore "tell " "good " for "tune; "
  "\nQuick, " "quick, " "make " "haste, " "set " "sail, "
  "\nmake " "haste, " "set " "sail! "
  "\nquick, " "quick, " "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail, " 
  "\nquick, " "quick, "  "make " "haste, "  "set " "sail! "
}

bass = \relative {
  \global
  e8. 16 8 a,4 b8 |
  e4. 8 r r |
  a8. 16 8 b4 dis,8 |
  e4. 8 r r |
  fis8.(gis16) a8 r4. | gis8.(a16) b8 r4. | a8. 16 8 4 8 | b4. b,8 r gis' |
  a4 gis8 a4 gis8 | a8~(16 gis fis gis) a8 r r | r4. r8 r fis | b(a) gis gis(fis) e | % 168a
  a4 8 fis4 8 | dis4. e8 r gis | a r gis a r gis | a4 gis8 fis4 e8 |
  dis4. r8 r dis | e4 a,8 b4 8 | e4. r8 r e | a,4. b |
  e4. r8 r e | a,4. b | e4 r8 r4. | R2. | % 169a
  R2.*22 |
  e8. 16 8 a,4 b8 | e4. 8 r r | a8. 16 8 b4 dis,8 | e4. 8 r r | % 171a
  fis8.(gis16) a8 r4. | gis8.(a16)b8 r4. | a8. 16 8 4 8 | b4. b,8 r gis' |
  a4 gis8 a4 gis8 | a8(~16 gis fis gis) a8 r r | r4. r8 r gis | b(a) gis gis(fis) e |
  a4 8 fis4 8 | dis4. 8 r gis | a r gis a r gis | % 172a
  a4 gis8 fis4 e8 | dis4. r8 r dis | e4 a,8 b4 8 | e4. r8 r e |
  a,4. b | e r8 r e | a,4. b | e2.\fermata |
  \bar "|."
}

pianoRHone = \relative {
  \global
  <gis' b>8. <fis a>16 <e gis>8 <a cis>4 <a dis>8 |
  \voiceOne dis4~(16 e) \oneVoice <gis, b>4. |
  <gis b>8. <fis a>16 <e gis>8 <dis fis>4(<fis b>8) |
  <fis a>4. <e gis>8. fis16 e8 |
  <fis' a>8. <e gis>16 <dis fis>8 \repeat unfold 3 { \appoggiatura <cisis, eis>16 <dis fis>8} % 167b
  <gis' b>8. <fis a>16 <e gis>8 \repeat unfold 3 {\appoggiatura <d, fisis>16 <e gis>8} |
  \voiceOne <c' e>8 <b dis> <a cis> <gis b>(<fis a>) <e gis> |
  s4. fis8 r e'( |
  dis8 b e dis b e) | % 168a
  dis8~(16 e fis e dis4) \oneVoice <fis, a dis>8 |
  <e gis e'>8(<fis dis'>) <e gis cis>-. <cis e cis'>(<dis b'>) <cis e ais>-. |
  \voiceOne b'4. b |
  cis8. dis16 cis8 4 8 | % 168b
  fis4(b,8) <b, gis' b>8(<dis fis a> <e gis>) |
  <dis fis>8-. b'(<e, gis>) <dis fis>-. b'(<e, gis>) \oneVoice |
  <b dis fis>8-. <dis fis>(<b e gis>) <a fis' a>-. <fis' a>(<gis b>) |
  <fis a cis>4. r8 r <a cis> | % 168c
  <a cis>8(<gis b>) <fis a>-. <fis a>(<e gis>) <dis fis>-. |
  gis'8(fis e dis cis b) |
  <cis, fis a>8 <cis' fis a>-. q-. <dis, fis> <a' dis fis>-. q-. |
  gis'16.(a32 fis16. gis32 e16. fis32 dis16. e32 cis16. dis32 b16. cis32) | % 169a
  <cis, fis a>8 <cis' fis a>-. q-. <dis, fis> <a' dis fis>-. q-. |
  <gis e'>8 gis(b) r e(gis) |
  r8 a(fis) r b(dis,) |
  \voiceOne \tiny b'2.~ | 2. | \oneVoice \normalsize r8 gis,(b) r b(e) | r e(gis) r cis,(e) | % 169b
  r8 e(cis') r e,,(cis') | r cis,(e) r cis'(e) | r cisis(dis) r ais'(b) |
  r8 b(fis) r dis(b) | r bis(cis) r bis'(cis) | r a(fis) r dis(b) |
  r8 dis,(e) r dis'(e) | r e(gis) r e(cis) | r \voiceOne dis(fis) r dis(b) | % 170a
  r8 e(cis) r fis(ais,) | r cis(cisis) r dis(b') | \oneVoice r e,(gis) r e(cis) |
  r8 b(dis) r gis(a) | \voiceOne r cis,(e) r gis(b) | r fis(b,) r e(ais,) |
  b4. \oneVoice r16 e'(cis a) a-. a-. | % 170d
  r16 dis(b gis) gis-. gis-. r cis(a fis) fis-. fis-. |
  r16 b(gis e) e-. e-. r a(fis dis) dis-. dis-. |
  \appoggiatura {e,32 gis} <gis b>8. <fis a>16 <e gis>8 <a cis>4 <a dis>8 | % 171a
  \voiceOne dis4~(16 e) <gis, b>4. |
  \oneVoice <gis b>8. <fis a>16 <e gis>8 <dis fis>4(<fis b>8) |
  <fis a>4. <e gis>8. fis16 e8 |
  <fis' a>8. <e gis>16 <dis fis>8 \repeat unfold 3 {\appoggiatura {<cisis, eis>16} <dis fis>8} | % 171b
  <gis' b>8. <fis a>16 <e gis>8 \repeat unfold 3 {\appoggiatura {<dis, fisis>16} <e gis>8} |
  \voiceOne <cis' e>8 <b dis> <a cis> <gis b>(<fis a>) <e gis>-. |
  \oneVoice <gis b>4^(<fis a>32 <e gis> <dis fis> <e gis> \voiceOne fis8) r e'( |
  dis8 b e dis b e) | % 171c
  dis8(~16 e fis e dis4) \oneVoice <fis, a dis>8 |
  <e gis e'>8(<fis dis'>) <e gis cis>-. <cis e cis'>(<dis b'>) <cis e ais>-. |
  \voiceOne b'4. b |
  cis8. dis16 cis8 4 8 | % 172a
  fis4(b,8) \oneVoice <b, gis' b>8(<dis fis a> <e gis>) |
  \voiceOne \repeat unfold 2 {<dis fis>8-. b'(<e, gis>)} |
  \oneVoice <b dis fis>8-. <dis fis>(<b e gis>) <a fis' a>-. <fis' a>(<gis b>) | % 172b
  <fis a cis>4. r8 r <a cis> |
  <a cis>8(<gis b>) <fis a>-. q(<e gis>) <dis fis>-. |
  gis'(fis e dis cis b) |
  <cis, fis a>8 <cis' fis a>-.[q-.] <dis, fis> <a' dis fis>-.[q-.] | % 172c
  gis'16.(a32 fis16. gis32 e16. fis32 dis16. e32 cis16. dis32 b16. cis32) |
  <cis, fis a>8 <cis' fis a>8-.[q-.] <dis, fis> <a' dis fis>-.[q-.] |
  <e gis b e>2.\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2. | a'4. s | s2. | s |
  s2. | s | e4. cis4 8 | \oneVoice <gis' b>4(<fis a>32 <e gis> <dis fis> <e gis> \voiceTwo dis16) b' b b b b | % 167b
  b16 b b b b b b b b b b b | 4. 4 s8 | s2. | dis,8(cis) b-. b(a) gis-. | % 168a
  <e' b'>4. <fis a>~ | <fis a b>4. s | b,16 b b b b b b b b b b b | s2. |
  s2.*4 |
  s2.*4 | % 169a
  b'8 gis(b) r e(gis) | r a(fis) r b(dis,) | s2. | s |
  s2.*3 |
  s2.*3 |
  s2.*12 | % 170
  s2. | a4. s | s2. | s | % 171a
  s2. | s | e4. cis4 8 | s4. dis16 b' b b b b |
  \repeat unfold 12 b16 | b4. 4 s8 | s2. | dis,8(cis) b-. b(a) <gis e'>-. |
  <e' b'>4. <fis a>~ | <fis a b> s | \repeat unfold 12 b,16 | % 172a
  s2.*4 |
  s2.*4 |
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s | s | s | s\pp | s | s\f | s4. s16 s\p s4 |
  s2. | s2 s8 s\f | s2. | s | s | s | s\p | s\f | s2 s8 s\p | s2. | s\f | s\p | % 168
  s2.\f | s\p | s2.*24 | % 169-170
  s2.*6 | s2.\f | s4. s16 s\p s4 | s2. | s2 s8 s\f | s2. | s | % 171
  s2. | s | s\p | s\f | s2 s8 s\p | s2. | s\f | s\p | s\f | s\p | s |
}

rh = { \change Staff = pianorh \voiceTwo }
lh = { \change Staff = pianolh \voiceOne }

pianoLHone = \relative {
  \global
  <e e'>4 e8 <a, a'>4 <b b'>8 |
  \voiceOne b'4. \oneVoice <gis b>8. <fis a>16 <e gis>8 |
  \voiceOne e8. fis16 gis8 \oneVoice <b, a'>4 <dis b'>8 |
  \voiceOne b'4 \showStaffSwitch \rh dis8 \hideStaffSwitch \lh e,4 8 |
  <b' dis>4. \oneVoice b | % 167b
  \voiceOne <b e>4. s | \oneVoice
  <a, a'>4 8 4 <ais ais'>8 |
  <b b'>4.~8 r <gis' gis'>( |
  \voiceOne fis'8 dis gis fis dis gis) | % 168a
  \oneVoice <a, fis'>8(~16 <gis e'> <fis dis'> <gis e'> <a fis'>4) r8 |
  <e, e'>8 r r <fis fis'> r q-. |
  <b b'>8(<a a'>) <gis gis'>-. q(<fis fis'>) <e e'>-. |
  <a a'>4. <fis fis'> | % 168b
  <dis dis'>4. <e e'>8(<fis fis'> <gis gis'>) |
  <a a'>8-. [ r <gis gis'> ] ( <a a'> ) [ r <gis gis'> ] ( |
  <a a'>8) q [ ( <gis gis'> ) ] <fis fis'>-. [ q ( <e e'> ) ] |
  <dis dis'>4. r8 r <dis' fis> | % 168c
  <e gis>4 <a cis>8 b4 <b, b'>8 |
  \voiceOne e'8(dis cis b a gis) |
  \oneVoice a,8 fis''-. [ fis-. ] b,, b'-. [ b-. ] |
  \voiceOne e16.(fis32 dis16. e32 cis16. dis32 b16. cis32 a16. b32 gis8) | % 169a
  \oneVoice a,8 dis'-.[dis-.] b, b'-.[b-.] |
  \voiceOne r16 b(e b) b-. b-. r e(gis e) e-. e-. |
  r16 dis(fis dis) dis-. dis-. r a(b a) a-. a-. |
  r16 gis(b gis) gis-. gis-. r e'(gis e) e-. e-. | % 169b
  r16 dis(fis dis) dis-. dis-. r a(b a) a-. a-. |
  r16 gis(b gis) gis-. gis-. r b(e b) b-. b-. |
  r16 cis(e cis) cis-. cis-. r gis(cis gis) gis-. gis-. |
  \repeat unfold 2 {r16 cis(e cis) cis-. cis-.} | % 169c
  r16 fis,(ais fis) fis-. fis-. r ais(cis ais) ais-. ais-. |
  r16 fis(b fis) fis-. fis-. r b(dis b) b-. b-. |
  \repeat unfold 2 {r16 b(dis b) b-. b-.} | % 169d
  r16 gis(cis b) b-. b-. r b(e cis) cis-. cis-. |
  r16 a(dis b) b-. b-. r dis(fis dis) dis-. dis-. |
  r16 b(e b) b-. b-. r e(gis e) e-. e-. | % 170a
  r16 cis(e cis) cis-. cis-. r e(fis e) e-. e-. |
  \repeat unfold 2 {r16 dis( \rh fis \lh dis) dis-. dis-.} |
  r16 b( \rh gis' \lh cis,) cis-. cis-. \rh r fis( \lh dis b e cis) | % 170b
  \rh r16 e( \lh cis ais) ais-. ais-. \rh r fis'( \lh dis b) b-. b-. |
  r16 gis'(e b) b-. b-. r fis'(e cis) cis-. cis-. |
  r16 fis(dis b) b-. b-. r gis'(dis b) b-. b-. | % 170c
  \rh r16 b'(gis \lh cis,) gis-. gis-. \rh r16 cis'(b \lh gis) gis-. gis-. |
  \rh r16 b(fis \lh dis) dis-. dis-. \rh r ais'(fis \lh e) e-. e-. |
  \rh r16 fis(dis \lh b) b-. b-. \clef treble b'8 a4~ | % 170d
  a8 gis4~8 fis4~ |
  8 e4~8 dis4 \clef bass |
  \oneVoice <e,, e'>4 e'8 <a, a'>4 <b b'>8 | % 171a
  \voiceOne b'4. \oneVoice <gis b>8. <fis a>16 <e gis>8 |
  \voiceOne e8. fis16 gis8 \oneVoice <b, a'>4 <dis b'>8 |
  \voiceOne b'4 \once \showStaffSwitch \rh dis8 \lh e,4 8 |
  <b' dis>4. \oneVoice b | % 171b
  \voiceOne <b e>4. s |
  \oneVoice <a, a'>4 8 4 <ais ais'>8 |
  <b b'>4.~8 r <gis' gis'>8( |
  \voiceOne fis'8 dis gis fis dis  gis) | % 171c
  \oneVoice <a, fis'>8~(16 <gis e'> <fis dis'> <gis e'> <a fis'>4) r8 |
  <e, e'>8 r r <fis fis'> r q-. |
  <b b'>8(<a a'>) <gis gis'>-. q(<fis fis'>) <e e'>-. |
  <a a'>4. <fis fis'> | % 172a
  <dis dis'> <e e'>8(<fis fis'> <gis gis'>) |
  <a a'>8-. [ r <gis gis'> ] ( <a a'> ) r <gis gis'> ] ( |
  <a a'>8 ) q ( [ <gis gis'> ] ) <fis fis'>-. q ( <e e'> ) | % 172b
  <dis dis'>4. r8 r <dis' fis> |
  <e gis>4 <a cis>8 b4 <b, b'>8 |
  \voiceOne e'8(dis cis b a gis) |
  \oneVoice a,8 fis''-. [ fis-. ] b,, b'-. [ b-. ] | % 172c
  \voiceOne e16.(fis32 dis16. e32 cis16. dis32 b16. cis32 a16. b32 gis8) |
  \oneVoice a,8 fis''-. [ fis-. ] b,, b'-. [ b-. ] |
  e,2.\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2. | e4 8 s4. | a,4. s | e'4(b8) e,4 r8 |
  fis'8. gis16 a8 s4. | gis8. a16 b8~4. | s2. | s |
  a4 gis8 a4 gis8 | s2. | s | s | % 168a
  s2.*4 |
  s2. | s | e | s |
  e2. | s | e8 r r gis r r | fis r r b, r r | % 169a
  e8 r r gis r r | fis r r b, r r | e r r e r r | e r r e r r |
  fis8 r r fis r r | ais, r r ais r r | b r r b r r |
  dis8 r r dis r r | e r r e r r | fis r r fis r r |
  gis8 r r gis r r | ais r r ais r r | b r r gis r r | % 170a
  e8 r r fis r r | b, r r b r r | gis' r r ais r r |
  b8 r r gis r r | e r r eis r r | fis r r <fis, fis'> r r |
  b8 r r \clef treble <cis' e>4. | <b dis> <a cis> | <gis b> <fis a> |
  s2. | e4 8 s4. | a,4. s | e'4(b8) e,4 r8 | % 171a
  fis'8. gis16 a8 s4. | gis8. a16 b8~4. | s2. | s |
  a4 gis8 a4 gis8 | s2. | s | s |
  s2.*3 | % 172a
  s2. | s | s | e |
  s2. | e | s | s |
%  \bar "|."
}

language       = #'en
words          = \words_en
wordsSop       = \wordsSop_en
wordsTenor     = \wordsTenor_en
wordsBass      = \wordsBass_en
wordsAltoSep   = \wordsAltoSep_en
wordsSopSep    = \wordsSopSep_en
wordsTenorSep  = \wordsTenorSep_en
wordsBassSep   = \wordsBassSep_en
wordsAltoMidi  = \wordsAltoMidi_en
wordsSopMidi   = \wordsSopMidi_en
wordsTenorMidi = \wordsTenorMidi_en
wordsBassMidi  = \wordsBassMidi_en

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "en-single"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice = soprano {\voiceOne \keepWithTag \language \soprano}
            \new Voice = alto {\voiceTwo \alto}
            \new NullVoice {\keepWithTag \language \soprano}
            \addlyrics \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSop
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignBelowContext = men} \dynamicsMen
            \clef "bass"
            \new Voice = tenor {\voiceOne \tenor}
            \new Voice = bass {\voiceTwo \bass}
            \addlyrics \wordsBass
            \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "en-single-sep"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoSep
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "en-singlepage-sep"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoSep
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "en-singlepage-sep-sop"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "en-singlepage-sep-alto"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoSep
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "en-singlepage-sep-tenor"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "en-singlepage-sep-bass"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "en-midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "en-midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoMidi
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "en-midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "en-midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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

% Now repeat the whole lot in italian!

language       = #'it
words          = \words_it
wordsSop       = \wordsSop_it
wordsTenor     = \wordsTenor_it
wordsBass      = \wordsBass_it
wordsAltoSep   = \wordsAltoSep_it
wordsSopSep    = \wordsSopSep_it
wordsTenorSep  = \wordsTenorSep_it
wordsBassSep   = \wordsBassSep_it
wordsAltoMidi  = \wordsAltoMidi_it
wordsSopMidi   = \wordsSopMidi_it
wordsTenorMidi = \wordsTenorMidi_it
wordsBassMidi  = \wordsBassMidi_it

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "it-single"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice = soprano {\voiceOne \keepWithTag \language \soprano}
            \new Voice = alto {\voiceTwo \alto}
            \new NullVoice {\keepWithTag \language \soprano}
            \addlyrics \words
            \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSop
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignBelowContext = men} \dynamicsMen
            \clef "bass"
            \new Voice = tenor {\voiceOne \tenor}
            \new Voice = bass {\voiceTwo \bass}
            \addlyrics \wordsBass
            \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "it-single-sep"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoSep
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "it-singlepage-sep"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoSep
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "it-singlepage-sep-sop"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "it-singlepage-sep-alto"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoSep
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "it-singlepage-sep-tenor"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "it-singlepage-sep-bass"
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "it-midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "it-midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoMidi
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "it-midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "it-midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice = soprano {\keepWithTag \language \soprano}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \clef "treble_8"
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
