\version "2.25.81"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oklahoma"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 2/4
}

TempoTrack = {
  \tempo 4=110
%  \set Score.tempoHideNote = ##t
  s2*102 s4
  \tempo 4=80 s s2*3 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2*4
  \textMark \markup { \box "1b" } s2*5
  \textMark \markup { \box "2a" } s2*4
  \textMark \markup { \box "2b" } s2*5
  \textMark \markup { \box "3a" } s2*6
  \textMark \markup { \box "3b" } s2*5
  \textMark \markup { \box "4a" } s2*5
  \textMark \markup { \box "4b" } s2*5
  \textMark \markup { \box "5a" } s2*5
  \textMark \markup { \box "5b" } s2*5
  \textMark \markup { \box "6a" } s2*5
  \textMark \markup { \box "6b" } s2*5
  \textMark \markup { \box "7a" } s2*5
  \textMark \markup { \box "7b" } s2*5
  \textMark \markup { \box "8a" } s2*5
  \textMark \markup { \box "8b" } s2*5
  \textMark \markup { \box "9a" } s2*5
  \textMark \markup { \box "9b" } s2*5
  \textMark \markup { \box "10" } s2*5
  \textMark \markup { \box "11a" } s2*5
  \textMark \markup { \box "11b" } s2*7
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  R2*4 \section |
  c''2~ | 2 | 8 r r g | f e d c | d4 g |
  g8 fis g a | g r g g | bes g g f | bes4 c | % 2a
  c8-^ r r bes | a4 a | aes8 r8 8 8 | g4 g | 8 a b cis |
  c2( | b) | c~ | c~ | 8 r r g | f e d c | % 3a
  d4 g | 8 fis g a | g4 8 8 | bes-> g g f | bes4 c |
  c8 r r bes | a4 a | aes8 r8 8 8 | g4\(a | b8 f' e d\) | % 4a
  r8 e,\f(g c | bes g e) r | R2*2 | r4 e'-> |
  c4-> 8-> 8-> | d-> 4-> 8-> | 4-> 8-> 8-> | 4. r8 | c4. r8 \section | % 5a
  cis4.-> r8 d4.-> r8 | dis4.-> r8 | e4.-> r8 | f2~ |
  f8 g, a b | c2~ | 2 | 8 r r g | f e d c | % 6a
  d'2~ | 2~ | 4. a8 | g fis e d | e'4 d8 c |
  b4 ais8 b | c2 | d8-^ r c d | e4 b | b b \section | % 7a
  c4. r8 | c,8 c r4 | 8 8 r4 | 8 8 r4 | e8 8 r4 |
  e8 8 r4 | g8 8 r4 | 8 8 r4 | bes8 8 r4 | 8 8 r4 | % 8a
  e8 8 r4 | 8 8 r4 | f8 8 r4 | 8 8 r4 | e8 8 r4 |
  ees8 8 r4 | d8 8 r4 | 8 8 8 8 | 2~ | 8 g, a b | % 9a
  c2~ | 2 | 8 r r g | f e d c | d'2~ |
  d2~ | 4. a8 | g fis e d | e'4 d8 c | b4 ais8 b | % 10
  c2 | d8 r c d | e4 b~ | b b | c b | % 11a
  c4 d e d | e2~ | 4 f8 fis | g2 | c,8 r r4 |
  \override NoteHead.style =  #'cross c8 r r4 |
}

wordsWomen = \lyricmode {
  O -- k -- la -- ho -- ma
  where the wind comes sweep -- in’ down the plain.
  Ok -- la -- ho -- ma!
  Where the wav -- in’ wheat can sure smell sweet,
  When the wind comes right be -- hind the rain.
  Ok -- la -- ho -- ma!
  Ev -- ’ry night my hon -- ey lamb and I,
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk
  mak -- in’ la -- zy cir -- cles in the sky
%  We know we be -- long to the land,
  Yo ho!
  And the land we be -- long to is grand.
  \*6{ Yi! }
  And when we say yeow!
  A yip -- i -- o -- ee -- ah!
  We’re on -- ly say -- ing
  You’re do -- in’ fine, Ok -- la -- ho -- ma!
  Ok -- la -- ho -- ma,
  You’re O -- kay.
  \*8{ Ok -- la -- ho -- ma }
  Ok -- la -- ho -- ma’s grand.
  And when we say Yeow!
  A yip -- i -- o -- ee -- ay!
  We’re on -- ly say -- ing
  You’re do -- in’ fine,
  Ok -- la -- ho -- ma,
  Ok -- la -- ho -- ma O K L A H O M A
  Ok -- la -- ho -- ma!
  Yeow!
}

wordsMen = \lyricmode {
  O -- k -- la -- ho -- ma
  where the wind comes sweep -- in’ down the plain.
  Ok -- la -- ho -- ma!
  Where the wav -- in’ wheat can sure smell sweet,
  When the wind comes right be -- hind the rain.
  Ok -- la -- ho -- ma!
  Ev -- ’ry night my hon -- ey lamb and I,
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk
  mak -- in’ la -- zy cir -- cles in the sky
%  We know we be -- long to the land,
  Yo ho!
  And the land we be -- long to is grand.
  \*6 { Yip -- py } Yi!
  And when we say yeow!
  A yip -- i -- o -- ee -- ah!
  We’re on -- ly say -- ing
  You’re do -- in’ fine, Ok -- la -- ho -- ma!
  Ok -- la -- ho -- ma,
  You’re O -- kay.
  \*8{ Ok -- la -- ho -- ma }
  Ok -- la -- ho -- ma’s grand.
  And when we say Yeow!
  A yip -- i -- o -- ee -- ay!
  We’re on -- ly say -- ing
  You’re do -- in’ fine,
  Ok -- la -- ho -- ma,
  Ok -- la -- ho -- ma O K L A H O M A
  Ok -- la -- ho -- ma!
  Yeow!
}

wordsWomenMidi = \lyricmode {
  "O" k la ho "ma "
  "\nwhere " "the " "wind " "comes " sweep "in’ " "down " "the " "plain. "
  "\nOk" la ho "ma! "
  "\nWhere " "the " wav "in’ " "wheat " "can " "sure " "smell " "sweet, "
  "\nWhen " "the " "wind " "comes " "right " be "hind " "the " "rain. "
  "\nOk" la ho "ma! "
  "\nEv" "’ry " "night " "my " hon "ey " "lamb " "and " "I, "
  "\nEv" "’ry " "night " "we " "sit " a "lone " "and " "talk "
  "\nand " "watch " "a " "hawk "
  "\nmak" "in’ " la "zy " cir "cles " "in " "the " "sky "
%  We know we be -- long to the land,
  "\nYo " "ho! "
  "\nAnd " "the " "land " "we " be "long " "to " "is " "grand. "
  \*6{ "Yi! " }
  "\nAnd " "when " "we " "say " "yeow! "
  "\nA " yip i o ee "ah! "
  "\nWe’re " on "ly " say "ing "
  "\nYou’re " do "in’ " "fine, " Ok la ho "ma! "
  "\nOk" la ho "ma, "
  "\nYou’re " O "kay. "
  \*8{ Ok la ho "ma " }
  "\nOk" la ho "ma’s " "grand. "
  "\nAnd " "when " "we " "say " "Yeow! "
  "\nA " yip i o ee "ay! "
  "\nWe’re " on "ly " say "ing "
  "\nYou’re " do "in’ " "fine, "
  "\nOk" la ho "ma, "
  "\nOk" la ho "ma " "O " "K " "L " "A " "H " "O " "M " "A "
  "\nOk" la ho "ma! "
  "\nYeow! "
}

wordsMenMidi = \lyricmode {
  O k la ho "ma "
  "\nwhere " "the " "wind " "comes " sweep "in’ " "down " "the " "plain. "
  "\nOk" la ho "ma! "
  "\nWhere " "the " wav "in’ " "wheat " "can " "sure " "smell " "sweet, "
  "\nWhen " "the " "wind " "comes " "right " be "hind " "the " "rain. "
  "\nOk" la ho "ma! "
  "\nEv" "’ry " "night " "my " hon "ey " "lamb " "and " "I, "
  "\nEv" "’ry " "night " "we " "sit " a "lone " "and " "talk "
  "\nand " "watch " "a " "hawk "
  "\nmak" "in’ " la "zy " cir "cles " "in " "the " "sky "
%  We know we be -- long to the land,
  "\nYo " "ho! "
  "\nAnd " "the " "land " "we " be "long " "to " "is " "grand. "
  \*6 { Yip "py " } "Yi! "
  "\nAnd " "when " "we " "say " "yeow! "
  "\nA " yip i o ee "ah! "
  "\nWe’re " on "ly " say "ing "
  "\nYou’re " do "in’ " "fine, " Ok la ho "ma! "
  "\nOk" la ho "ma, "
  "\nYou’re " O "kay. "
  \*8{ Ok la ho "ma " }
  "\nOk" la ho "ma’s " "grand. "
  "\nAnd " "when " "we " "say " "Yeow! "
  "\nA " yip i o ee "ay! "
  "\nWe’re " on "ly " say "ing "
  "\nYou’re " do "in’ " "fine, "
  "\nOk" la ho "ma, "
  "\nOk" la ho "ma " "O " "K " "L " "A " "H " "O " "M " "A "
  "\nOk" la ho "ma! "
  "\nYeow! "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R2*4 \section |
  a'2~ | 2 | 8 r r g | f e d c | d4 g |
  g8 fis g a | g r g g | bes g g f | e4 g | % 2a
  g8-^ r r e | d4 f | 8 r e d | e4 f | g8 a b cis |
  fis,2( | f) | c'2~ | c~ | 8 r r g | f e d c | % 3a
  d4 g | 8 fis g a | g4 8 8 | bes-> g g f | bes4 c |
  g8 r r e | d4 f | 8 r e f | g4 fis | f8 g a b | % 4a
  r8 e,\f(g c | bes g e) r | R2*2 | r4 e'-> |
  a,4-> 8-> 8-> | b-> 4-> 8-> | c4-> 8-> a-> | bes4. r8 | aes4. r8 \section | % 5a
  a4.-> r8 | bes4.-> r8 | b4.-> r8 | c4.-> r8 | d2~ |
  d8 g, a b | c2~ | 2 | 8 r r g | f e d c | % 6a
  c'2~ | 2~ | 4. a8 | g fis e d | c'4 b8 a |
  gis4 8 8 | a2 | 8-^ r a a | c4 a | g f \section | % 7a
  e4. r8 | c8 8 r4 | 8 8 r4 | 8 8 r4 | e8 8 r4 |
  \*3{e8 8 r4 |} g8 8 r4 | 8 8 r4 | % 8a
  bes8 8 r4 | 8 8 r4 | \*4{c8 8 r4 | }
  bes8 8 r4 | a8 8 8 8 | b2~ | 8 g a b | % 9a+
  c2~ | 2 | 8 r r g | f e d c | d'2~ |
  d2~ | 4. a8 | g fis e d | c'4 d8 c | b4 ais8 b | % 10
  a2 | 8 r a a | c4 a( | g) f | g g | % 11a
  g4 bes | c b | c2~ | 4 d8 dis | e2 | c8 r r4 |
  \override NoteHead.style = #'cross c8 r r4 |
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  R2*4 \section |
  g2~ | 2 | 8 r r g | f e d c | d4 g |
  g8 fis g a | g r g g | a g g f | g4 bes | % 2a
  bes8-^ r r g | f4 d | 8 r e d | e4 f | g8 fis8 8 e |
  d2~ | 2 | c'~ | c~ | 8 r r g | f e d c | % 3a
  d4 g | 8 fis g a | g r g g | a g g f | g4 bes |
  bes8 r r g | f4 e | 8 r e d | g4\(fis | g8 b c b\) | % 4a
  r8 e,\f(g c | bes g e) r | R2*2 | r4 a |
  g4-> 8-> 8-> | 8-> 4-> 8-> | fis4-> 8-> 8-> | g4 8 8~ | 8 r8 8 8~ \section | % 5a
  g8 r g g~ | g r g g~ | g r g g~ | g r g g b2~ |
  <g b>8 g a b | g2~ | 2 | 8 r r g | f e d c | % 6a
  a'2~ | 2~ | 4. 8 | g fis e d | g4 8 f |
  e4 8 8 | 2 | fis8-^ r fis fis | g4 f | e d \section | % 7a
  g4. r8 | c,8 8 r4 | 8 8 r4 | 8 8 r4 | \*4{8 8 r4 |}
  e8 8 r4 | 8 8 r4 | % 8a+3
  g8 8 r4 | 8 8 r4 | a8 8 r4 | 8 8 r4 | g8 8 r4 |
  g8 8 r4 | 8 8 r4 | fis8 8 8 8 | g2~ | 8 8 a b | % 9a
  c2~ | 2 | 8 r r g | f e d c | d'2~ |
  d2~ | 4. a8 | g fis e d | g4 8 8 | gis4 8 8 | % 10
  e2 | fis8 r8 8 8 | g4 f( | e) d | e e | % 11a
  e4 g | g g | 2~ | 4 bes8 b | c2 | c,8-^ r r4 |
  \override NoteHead.style = #'cross e8 r r4 |
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R2*4 \section |
  e2~ | 2 | 4 r8 g | f e d c | d4 g |
  g8 fis g a | g r g g | a g g f | c4 e | % 2a
  e8-^ r r c | 4 4 | 8 r c c | 4 d | e8 dis d a |
  a2(g) | c'~ | c~ | 8 r r g | f e d c | % 3a
  d4 g | 8 fis g a | g r g g | a g g f | e4 e |
  e8 r r c | 4 4 | 8 r c c | e4\(ees | d8 d g g\) | % 4a
  r8 e\f(g c | bes g e) r | R2*2 | r4 g-> |
  e4-> ees8-> 8-> | d-> 4-> 8-> | 4-> 8-> 8-> | g,4 8 8~ | 8 r8 8 8~ \section | % 5a
  g8 r g g~ | g r g g~ | g r g g~ | g r g g | g'2~ |
  g8 8 a b | e,2~ | 2 | 8 r r g | f e d c | % 6a
  fis2~ | 2~ | 8 r r a | g fis e d | c4 8 8 |
  e4 8 8 | a,2 | d8-^ r d d | g,4 g | g g \section | % 7a
  c4. r8 | \*11 {8 8 r4 |}
  f8 8 r4 | 8 8 r4 | c8 8 r4 | % 8b++
  c8 c r4 | d8 8 r4 | 8 8 8 8 | g,2~ | 8 g' a b | % 9a
  c2~ | 2 | 8 r r g | f e d c | d'2~ |
  d2~ | 4. a8 | g fis e d | c4 8 8 | e4 8 8 | % 10
  a,2 | d8 r d d | g,4 4~ | 4 4 | c e | % 11a
  c4 g | c e | c2~ | 4 g'8 8 | c2 | c,8 r r4 |
  \override NoteHead.style = #'cross e8 r r4 |
}

pianoRHone = \relative {
  \global
  a8 b c d-> | e f g a | b-. c-> d-> e-> | f-> g-> a-> b-> \section |
  r8 <e,, g> r q | \*6{r8 <c e g>} | r <d f> r <b d f> |
  r8 <ais cis e> r q | <g b d f> r g'-> g-> | <a bes>-> g-> g f | % 2a
  r8 <bes, c e> [ r <bes e g> ] |
  r8 <bes e g> r <bes c e> | r <a c d> r <a c f> | r <aes c f> r <aes c d> | % 2b
  r8 <g c e> r <g c f> | <c g'> <c fis a> <f g b> <e g cis> |
  r8 <c d fis a d> r q | <d f b d>-> g-> a-> b-> | % 3a
  r8 <c, e> [ r <d f> ] | r <b e g> [ r <c f a> ] |
  r8 <d g b> [ r <e a c> ] | r <f b d> [ r <g c e> ] |
  r8 <a, d f> [ r <b d f> ] | r <ais cis e> [ r q ] | % 3b
  <g b d f>8 r d''-> g,-> | <a bes>-> g g f | r <bes, c e> [ r <bes e g> ] |
  r8 q [ r <bes c e> ] | r <a c d> [ r <a c f> ] | % 4a
  r8 <aes c f> [ r q ] | r <g c g'> [ r <a c fis> ] |
  r <b f' g> <c e g a> <d f g b> |
  <e g c>2~ | 4. <e g bes c>8 | r <c f a c> [ r q ] | % 4b
  r8 q [ r q ] | r <g c e g> [ r q ] |
  r8 <g c e g> [ r <c ees g a> ] | r <b d g b> [ r q ] | % 5a
  r8 <c d fis a> [ r q ] | <b d g>2 | <c ees fis aes> \section |
  <cis e g a>2 | <d f aes bes>( | <dis fis a b>) | <e g bes c> | R | % 5b
  <f a b d>8 g-. a-. b-. | r <e, g> [ r q ] | \*3{r <c e g> [ r q ] |} % 6a
  r8 <fis a> [ r a ] | r <d, fis a> [ r q ] | r <d fes a> [ r q ] | % 6b
  r8 <d fis a> [ r q ] | r <e g c> [ <d g b> <c f a> ] |
  r8 <b d e gis> [ r q ] | r <a c e a> [ r q ] | % 7a
  <a d fis a>8-^ r <c f a c> <d f a d> |
  <e g c e>4 <<{\vo <b b'>4~ | q q} \new Voice {\vt f'4 | <e g> <d f>}>> \section |
  \*5 <c, c'>2 | % 7b
  <c f c'>2 | <c c'> | <c a' c> | <c c'> | q | % 8a
  q2 | 4. <c' c'>8 | <a a'> <c f a c>4 8 | % 8b
  <<{\vo <c c'>4 <a a'>8 <f f'> | <g g'>2} \new Voice
    {\vt r8 <f' a> [ r <a, c> ] | r <c e>( r q)}>> |
  <<{\vo <g g'>4 8 <a a'>} \new Voice {\vt r8 <c ees> r4}>> | % 9a
  \ov <b b'>8 <d g d'>4 <d g b d>8 |
  <<{\vo <d d'>4 <c c'>8 <a a'>} \new Voice {\vt r8 <fis' a> [ r <d fis> ]}>> |
  <<{\vo <b b'>2~ | 8} \new Voice {\vt r8 <d g> [ r q ] | s}>> \ov g8 a b |
  r8 <c, e> [ r q ] | r <c e g> [ r q ] | r q [ r <c e> ] | % 9b
  r8 <c e g> [ r q ] | r <fis a> [ r q ] |
  \*3 {r8 <d fis a> [ r q ] | } r8 <g, c g'> [ r <g c e g> ] | % 10
  r <gis d' e gis> [ r q ] |
  r8 <a c e a> [ r q ] | <a d fis a> r <c f a c> <d f a d > | % 11a
  <e g c e>4 r8 <b f' a> | r <b e g> [ r <b d f> ] | r <c e g> [ r b ] |
  r8 <c e g> [ r <bes d f bes> ] | r <c e g c> [ r <b d g b> ] | % 11b
  r8 <c e g c> r4 | r <d f bes d>8 <dis fis b dis> |
  <g c e>4(e) | c8-^ r r4 | R2 |
}

pianoRHtwo = \relative {
  \global
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  a,8-> b-> c d | e f g a-> \clef treble | b-> c-> d e-> |
  f-> g-> a-> b-> \clef bass \section |
  <c,, c'>4 <b b'> | <a a'> <g g'> | <f f'> <e e'> | % 1b
  <d d'> <c c'> | <b b'>8 [ r <g g'> ] r |
  <cis cis'>8 [ r <g g'> ] r | <d' d'> r g' g | % 2a
  <a b>8-> g-> g f | <c, c'> [ r c' ] r |
  q [ r q ] r | f, [ r c ] r | d [ r f ] r | % 2b
  g8 [ r g ] r | <e' g> <dis a'> <d g> <a g'> |
  <a, a'>8 [ r <d d'> ] r | <g, g'> g''-> a-> b-> | <c, c'>4 <b b'> | % 3a
  <a a'>4 <g g'> | <f f'> <e e'> | <d d'> <c c'> |
  <b b'>8 [ r g' ] r | <cis, cis'> [ r g' ] r | <d d'> r d''-> g,-> | % 3b
  <a bes>8-> g g f | <c, c'> [ r q ] r |
  q8 [ r q ] r | f [ r c ] r | d [ r f ] r | % 4a
  <e e'>4 ees'( | <d, d'>8) [ r g ] r |
  <c, c'>8(e' g c | b g e d) | \vo c2 | c | g | % 4b
  g8 r \ov <c, c'> r | <d d'> [ r q ] r | q [ r q ] r | r4 <g, g'> | r q | % 5a
  r4 q | r q | r q | r q~ | 8 8 8 8 |
  q8-. <g' g'>-. <a a'> <b b'>-. | <c c'>4 <b b'> | <a a'> <g g'> | % 6a
  <f f'>4 <e e'> | <d d'> <c c'> |
  <d' d'>4 <c c'> | <b b'> <a a'> | <g g'> <fis fis'> | % 6b
  <e e'>4 <d d'> | <c c'>8 [ r q ] r |
  <e e'>8 [ r q ] r | a [ r a ] r | d,-^ r d'4 | % 7a
  <g,, g'>4 <g' f' a>-> | <g e' g> <g d' f> \section |
  \*12 {<c, c'>8 <bes bes'> <a a'> <g g'> |} % 7b/8
  \*2 {<f' f'>8 <e e'> <d d'> <c c'>} | <c c'>8 <b b'> <a a'> <g g'> | % 8b++
  <c c'>8 <b b'> <a a'> <g g'> | <d' d'>4 4 | q q | % 9a
  <g g'>-> d'-> | <g,, g'>8 g'' [ a b ] |
  <c, c'>4 <b b'> | <a a'> <g g'> | <f f'> <e e'> | % 9b
  <d d'>4 <c c'> | <d' d'> <c c'> |
  <bes bes'>4 <a a'> | <g g'> <fis fis'> | <e e'> <d d'> | <c g'> q | e e | % 10
  a4 a | <d, a' fis'>8 r <d d'>4 | <g, g'> q | q <g' g'> | <c, c'> e | % 11a
  <c c'>4 <g g'> | <c c'> <e e'> | <c c'> r | r <g' g'> | % 11b
  <c g'>(c') | <c,, c'>8-^ r r4 | R2 |
}

pianoLHtwo = \relative {
  \global \vt
  s2*36 | \*2{f,8 [ r c ] r |} c( [ r g) ] r | % 4b
  c8 r s4 | s2*9 | % 5
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
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
            \addlyrics \wordsWomen
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
            \addlyrics \wordsWomen
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
            \addlyrics \wordsMen
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
            \addlyrics \wordsMen
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomen
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
%            \addlyrics {\tiny \wordsWomen}
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
             \new Voice \tenor
 %           \addlyrics {\tiny \wordsMen}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
%            \addlyrics {\tiny \wordsMen}
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
          \new Dynamics \dynamicsPiano
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
             \new Voice \alto
            \addlyrics \wordsWomen
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
            \new Voice \tenor
%            \addlyrics {\tiny \wordsMen}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
%            \addlyrics {\tiny \wordsMen}
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
          \new Dynamics \dynamicsPiano
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
%            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
%            \addlyrics {\tiny \wordsMen}
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
          \new Dynamics \dynamicsPiano
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
%            \addlyrics {\tiny \wordsWomen}
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
            \new Voice \tenor
%            \addlyrics {\tiny \wordsMen}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMen
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
          \new Dynamics \dynamicsPiano
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomen
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
%            \addlyrics {\tiny \wordsWomen}
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
            \new Voice \tenor
%            \addlyrics {\tiny \wordsMen}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
%            \addlyrics {\tiny \wordsMen}
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
          \new Dynamics \dynamicsPiano
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
            \addlyrics \wordsWomen
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
            \new Voice \tenor
%            \addlyrics {\tiny \wordsMen}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
%            \addlyrics {\tiny \wordsMen}
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
          \new Dynamics \dynamicsPiano
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
%            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
%            \addlyrics {\tiny \wordsMen}
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
          \new Dynamics \dynamicsPiano
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
%            \addlyrics {\tiny \wordsWomen}
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
            \new Voice \tenor
%            \addlyrics {\tiny \wordsMen}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMen
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
          \new Dynamics \dynamicsPiano
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-women
  }
  \score {
   \unfoldRepeats
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
            \addlyrics \wordsWomenMidi
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
%            \addlyrics \wordsMenMidi
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
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
  \paper {
    output-suffix = midi-men
  }
  \score {
   \unfoldRepeats
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
%            \addlyrics \wordsWomenMidi
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
            \addlyrics \wordsMenMidi
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
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
