\version "2.25.33"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Be Not Afraid"
  subtitle    = \markup{from \italic Elijah}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Mendelssohn"
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
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo "Allegro maestoso, ma moderato" 4=112 s1*33
  \tempo "Più animato." 4=128 s1*49
  \set Score.tempoHideNote = ##t
  \tempo "ritard." 4=90 s1*3 s2
  \tempo "Tempo I." 4=112 s2 s1*32
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "114a" } s1*4
  \textMark \markup { \box "114b" } s1*4
  \textMark \markup { \box "114c" } s1*5
  \textMark \markup { \box "115a" } s1*5
  \textMark \markup { \box "115b" } s1*5
  \textMark \markup { \box "115c" } s1*5
  \textMark \markup { \box "116a" } s1*7
  \textMark \markup { \box "116b" } s1*5
  \textMark \markup { \box "116c" } s1*4
  \textMark \markup { \box "117a" } s1*4
  \textMark \markup { \box "117b" } s1*4
  \textMark \markup { \box "117c" } s1*4
  \textMark \markup { \box "118a" } s1*4
  \textMark \markup { \box "118b" } s1*4
  \textMark \markup { \box "118c" } s1*4
  \textMark \markup { \box "119a" } s1*5
  \textMark \markup { \box "119b" } s1*4
  \textMark \markup { \box "119c" } s1*5
  \textMark \markup { \box "120a" } s1*6
  \textMark \markup { \box "120b" } s1*5
  \textMark \markup { \box "120c" } s1*5
  \textMark \markup { \box "121a" } s1*4
  \textMark \markup { \box "121b" } s1*6
  \textMark \markup { \box "121c" } s1*10
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2 s\f | s1*12 |
  s1*8 | s2 s\f | s1*6 | % 115
  s1*11 | s4. s8\f s2 | s1*4 |
  s1*12 |
  s1*12 | % 118
  s1*10 | s2 s\f | s1*3 |
  s1*3 | s2 s\f | s1*12 |
  s1*8 | s2 s\ff | s1*11 | % 121
}

soprano = \relative {
  \global
  r2 d''4 b8. g16 | e4 g' fis e | d2 4 b8. g16 | e4 fis g a |
  a2 r | R1 | r2 g'4 e8. c16 | a2 c4 a8. fis16 |
  d'4 g, a c | b b c e | d d e g | fis2 r | r b,4 8. 16 |
  b4. d,8 e'4 d | c b a4. 8 | 4 r c4 8. 16 | 2 4 8. 16 | 2 b | % 115a
  b2 e | dis r | R1 | r2 d4 b8. g16 | e4 g' fis e |
  d2 4 c8. b16 | a4 a b4. 8 | c4 c cis4. 8 | d4 4 dis4. 8 | e2 g~ |
  g4 g fis4. e8 | d2. 4~ | 4 4 c4. b8 | a2 g~ | g fis4. g8 | 2 r | R1 | % 116a
  R1*4 | r4 r8 e e'4 4 |
  e4 d8. 16 cis4 b | ais4 8. 16 b4 cis | d ais8. 16 b4 cis | d2 4 g, |
  c2 2~ | 4 b8.(a16) g4 fis | b2 b | r4 e e b | % 117a
  g'4(fis) e2~ | 4 fis8.(e16) d4 cis | b(fis gis ais) | b4 r8 d, d'4 4 |
  d4 cis8. b16 a4 gis | a fis r2 | R1 | r4 r8 fis fis'4 4 |
  fis4 e8. d16 cis4 b | a gis8. 16 a4 b | cis gis8. 16 a4 b | cis a r2 | % 118a
  R1 | r4 r8 d, d'4 4 | d cis8. b16 ais4 4 | b2(e4 d) |
  cis4. 8 fis4 4 | 4 e8. dis16 e4 4 | 2 ais,4 g' | fis e8. d16 cis4 b |
  b2(ais | b4 a2 g4 | g) fis r r8 fis | fis'4 4 2~ | 4 e8. dis16 e4 4 | % 119a
  e2 dis4 r8 e, | e'4 4 4(fis8. e16 | dis2) 4 fis | b,4 8. 16 ais4 4 |
  b2 fis | r2 e'4 8. 16 | dis2 r | r ais4 8. 16 | b2 r |
  R1*3 | r2 d4 b8. g16 | e4 g' fis e | d1~ | % 120a
  d4 g, c4. 8 | b2 4 8. 16 | a4 a d4. 8 | c2 4 8. 16 | b4 b e4. 8 |
  d2 d | cis d4 8. 16 | 2. e4 | d2 d | d b4 8. 16 |
  a4 a d4. 8 | c2 4 8. 16 | b4 b e4. 8 | d2 4 8. 16 | % 121a
  cis2 d4 8. 16 | 2. e4 | d2 d | g, r | r b4 8. 16 | g'2. r4 |
  r2 b,4 8. 16 | g'2. r4 | r2 g | fis e | d c | b b | a g | g1 | fis | g\fermata |
  \bar "|."
}

Atotatp  = \lyricmode { And tens of thou -- sands a -- round thee per -- ish; }
atotatp  = \lyricmode { and tens of thou -- sands a -- round thee per -- ish; }
bna      = \lyricmode { be no a -- fraid, }
Bnae     = \lyricmode { Be not a -- fraid! }
Bnathin  = \lyricmode { Be not a -- fraid; thy help is near, }
bnathin  = \lyricmode { be not a -- fraid; thy help is near, }
bnathins = \lyricmode { be not a -- fraid; thy help is near; }
Ttl      = \lyricmode { Though thou -- sands lan -- guish, }
ttl      = \lyricmode { though thou -- sands lan -- guish, }
Ttlafbt  = \lyricmode { Though thou -- sands lan -- guish and fall be -- side thee, }
ttlafbt  = \lyricmode { though thou -- sands lan -- guish and fall be -- side thee, }
ttlafb_t = \lyricmode { though thou -- sands lan -- guish and fall be -- side __ thee, }
Ttlafb_t = \lyricmode { Though thou -- sands lan -- guish and fall be -- side __ thee, }
ttlafbts = \lyricmode { though thou -- sands lan -- guish and fall be -- side thee; }
ttlafb_ts = \lyricmode { though thou -- sands lan -- guish and fall be -- side __ thee; }

wordsSop = \lyricmode {
  Be not a -- fraid, saith God the Lord.
  Be not a -- fraid; thy help is near.
  Be not a -- fraid,
  be not a -- fraid; thy help is near,
  thy help is near,
  thy help is near.
  be not a -- fraid, thy help is near,
  thy help is near, % 115a
  be not a -- fraid,
  be not a -- fraid;
  thy help is near,
  Be not a -- fraid, saith God the Lord;
  Be not a -- fraid, saith God the Lord;
  thy help is near,
  thy help is near.
  God, __ the Lord thy God say -- eth un -- to thee,
  “Be __ not a -- fraid!” % 116a
  Though thou -- sands lan -- guish and fall be -- side thee,
  \Atotatp
  though thou -- sands, __ \ttl
  \ttl __ % 117a
  \ttl \ttlafbt \ttlafbt
  \atotatp % 18a
  \ttlafb_t \ttlafbts
  yet still it shall not come nigh __ thee;
  \Ttlafbt \Ttl
  yet still it shall not come nigh thee,
  \Bnae \Bnae
  \Bnathin for He is near; % 120a
  \bnathins \bna for He is near, is near,
  \bnathins \bnathin
  Be not a -- fraid, for He ios near; % 121a
  \bna be not a -- fraid the help is near.
  \Bnae \Bnae
  “Thy help is near; be not a -- fraid;” saith God the Lord.
}

MAtotatp  = \lyricmode { "And " "tens " "of " thou "sands " a "round " "thee " per "ish; " }
Matotatp  = \lyricmode { "and " "tens " "of " thou "sands " a "round " "thee " per "ish; " }
Mbna      = \lyricmode { "be " "no " a "fraid, " }
MBnae     = \lyricmode { "Be " "not " a "fraid! " }
MBnathin  = \lyricmode { "Be " "not " a "fraid; " "thy " "help " "is " "near, " }
Mbnathin  = \lyricmode { "be " "not " a "fraid; " "thy " "help " "is " "near, " }
Mbnathins = \lyricmode { "be " "not " a "fraid; " "thy " "help " "is " "near; " }
MTtl      = \lyricmode { "Though " thou "sands " lan "guish, " }
Mttl      = \lyricmode { "though " thou "sands " lan "guish, " }
MTtlafbt  = \lyricmode { "Though " thou "sands " lan "guish " "and " "fall " be "side " "thee, " }
Mttlafbt  = \lyricmode { "though " thou "sands " lan "guish " "and " "fall " be "side " "thee, " }
Mttlafb_t = \lyricmode { "though " thou "sands " lan "guish " "and " "fall " be "side "  "thee, " }
MTtlafb_t = \lyricmode { "Though " thou "sands " lan "guish " "and " "fall " be "side "  "thee, " }
Mttlafbts = \lyricmode { "though " thou "sands " lan "guish " "and " "fall " be "side " "thee; " }
Mttlafb_ts = \lyricmode { "though " thou "sands " lan "guish " "and " "fall " be "side "  "thee; " }

wordsSopMidi = \lyricmode {
  "Be " "not " a "fraid, " "saith " "God " "the " "Lord. "
  "\nBe " "not " a "fraid; " "thy " "help " "is " "near. "
  "\nBe " "not " a "fraid, "
  "\nbe " "not " a "fraid; " "thy " "help " "is " "near, "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nbe " "not " a "fraid, " "thy " "help " "is " "near, "
  "\nthy " "help " "is " "near, " % 115a
  "\nbe " "not " a "fraid, "
  "\nbe " "not " a "fraid; "
  "\nthy " "help " "is " "near, "
  "\nBe " "not " a "fraid, " "saith " "God " "the " "Lord; "
  "\nBe " "not " a "fraid, " "saith " "God " "the " "Lord; "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nGod, "  "the " "Lord " "thy " "God " say "eth " un "to " "thee, "
  "\n“Be "  "not " a "fraid!” " % 116a
  "\nThough " thou "sands " lan "guish " "and " "fall " be "side " "thee, "
  \MAtotatp
  "\nthough " thou "sands, "  \Mttl
  \Mttl __ % 117a
  \Mttl \Mttlafbt \Mttlafbt
  \Matotatp % 18a
  \Mttlafb_t \Mttlafbts
  "\nyet " "still " "it " "shall " "not " "come " "nigh "  "thee; "
  \MTtlafbt \MTtl
  "\nyet " "still " "it " "shall " "not " "come " "nigh " "thee, "
  \MBnae \MBnae
  \MBnathin for He is near; % 120a
  \Mbnathins \Mbna for He is near, is near,
  \Mbnathins \Mbnathin
  "\nBe " "not " a "fraid, " "for " "He " "ios " "near; " % 121a
  \Mbna be not a -- fraid the help is near.
  \MBnae \MBnae
  "\n“Thy " "help " "is " "near; " "be " "not " a "fraid;” " "saith " "God " "the " "Lord. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2 s\f | s1*12 |
  s1*8 | s2 s\f | s1*6 | % 115
  s1*16 |
  s1*12 |
  s1*12 | % 118
  s1*10 | s2 s\f | s1*3 |
  s1*3 | s2 s\f | s1*12 |
  s1*8 | s2 s\ff | s1*11 | % 121
}

alto = \relative {
  \global
  r2 d'4 8. 16 | e4 e a fis | g2 d4 8. 16 | 4 4 4 cis |
  d2 r | r d'4 b8. g16 | e4. 8 4 g | 2 fis4 a8. d,16 |
  d4 d e d | g g g a | b b bes bes | a2 r4 r8 d, | d'4 c b a |
  gis2 r | r e4 8. 16 | a4 g fis e | dis e dis g | fis2 2 | % 115a
  b2 2 | 2 r | R1 | r2 d,4 8. 16 | e4 e a fis |
  g4(fis) g4 8. 16 | 4 4 f4. 8 | e4 g4 4. e8 | a4 4 4. fis8 | b1 |
  c,4 c d4. 8 | fis4(a g fis) | g d fis4. g8 | e1 | d2 4. 8 | 2 r | R1 | % 116a
  r4 r8 b b'4 4 | 4 a8. g16 fis4 e | dis4 8. 16 e4 fis | g dis8. 16 e4 fis | g2 4 e |
  g2 g~ | 4 fis8.(e16) d4 cis | fis2 2 | r4 4 g d |
  e2(a4 g | fis2) b, | r4 b'8.(a16) g4 fis | b2 4 g8(e) | % 117a
  ais4 b g2~ | 4(fis) 2~ | 4 cis d e | fis4 8 8 eis4 fis |
  gis4 cis, r2 | r4 r8 a a'4 4 | a g8. fis16 e4 d | cis(a'2) 4 |
  gis2 2 | r4 eis fis gis | a eis8. 16 fis4 gis | a4 8. 16 b4 cis | % 118a
  d4 a8. 16 4 g | fis2 4 4 | g2 fis | r4 r8 e8 4 4 |
  g4 a8. g16 fis4 4 | a g8. fis16 e4 e | ais2 4 4 | b fis8. 16 4 4 |
  g2(fis) | 2 r | r4 r8 a, a'4 4 | 4 b8. c16 b4 a | g1 | % 119a
  fis4. b,8 b'4 4 | 4 a8. g16 fis4 a | 2 4 b8.(a16) | g4 8. fis16 g4 4 |
  fis2 2 | r ais4 8. 16 | b2 r | r g4 8. 16 | fis2 r |
  R1*3 | r2 g4 d8. b16 | e4 e a fis | g d g2~ | % 120a
  g4 e a2~ | 4 d, g2~ | 4(f2) 4 | e4 e a2~ | 4(g2) 4 |
  fis2 b4 8. 16 | 2(a)~ | 4 d, g2~ | 4 4 fis2 | d4 8. 16 g4. 8 |
  g4 f4 2 | e4 8. 16 a4. 8 | 4 g4 2 | fis4 8. 16 b2~ | % 121a
  b2(a)~ | 4 d, g2~ | g fis | g r | r g4 8. 16 | b2. r4 |
  r2 g4 8. 16 | b2. r4 | r2 b | a c | b a | g f | e e | d1 | d | d\fermata |
}

wordsAlto = \lyricmode {
  Be not a -- fraid, saith God the Lord.
  Be not a -- fraid; thy help is near.
  Be not a -- fraid; thy help is near,
  Be not a -- fraid; thy help is near,
  thy help is near,
  thy help is near.
  thy help, thy help is near;
  be not a -- fraid; % 115a
  thy help is near,
  thy help is near,
  thy help is near.
  Be not a -- fraid, saith God the Lord;
  Be not a -- fraid, saith God the Lord;
  thy help is near,
  thy help is near.
  God, the Lord thy God __ say -- eth un -- to thee, % 116a
  “Be not a -- fraid!”
  \Ttlafbt \Atotatp
  Tho’ thou -- sands, __ \ttlafb_t
  \ttlafb_t __ \atotatp % 117a
  though thou -- sands lan -- guish and fall,
  and fall __ be side thee,
  \atotatp % 118a
  and tens of thou -- sands a -- round thee per -- ish a -- round thee;
  \ttlafbt and fall be -- side thee;
  yet still it shall not come nigh __ thee;
  \Ttlafbt \Ttlafbt % 119a
  yet still iot shall not come nigh thee.
  \Bnae \Bnae
  Be not a -- fraid; thy help is near. __ % 120a
  for He is near, __ thy help __ is near,
  thy help __ is near;
  be not a -- fraid __ the help __ is near,
  Be not a -- fraid, for He is near;
  Be not a -- fraid, thy help is near, % 121a
  be not a -- fraid, __ thy help __ is near. \Bnae \Bnae
  “Thy help is near; be not a -- fraid;” saith God the Lord.
}

wordsAltoMidi = \lyricmode {
  "Be " "not " a "fraid, " "saith " "God " "the " "Lord. "
  "\nBe " "not " a "fraid; " "thy " "help " "is " "near. "
  "\nBe " "not " a "fraid; " "thy " "help " "is " "near, "
  "\nBe " "not " a "fraid; " "thy " "help " "is " "near, "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nthy " "help, " "thy " "help " "is " "near; "
  "\nbe " "not " a "fraid; " % 115a
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nBe " "not " a "fraid, " "saith " "God " "the " "Lord; "
  "\nBe " "not " a "fraid, " "saith " "God " "the " "Lord; "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nGod, " "the " "Lord " "thy " "God "  say "eth " un "to " "thee, " % 116a
  "\n“Be " "not " a "fraid!” "
  \MTtlafbt \MAtotatp
  "\nTho’ " thou "sands, "  \Mttlafb_t
  \Mttlafb_t __ \Matotatp % 117a
  "\nthough " thou "sands " lan "guish " "and " "fall, "
  "\nand " "fall "  "be " "side " "thee, "
  \Matotatp % 118a
  "\nand " "tens " "of " thou "sands " a "round " "thee " per "ish " a "round " "thee; "
  \Mttlafbt and fall be -- side thee;
  "\nyet " "still " "it " "shall " "not " "come " "nigh "  "thee; "
  \MTtlafbt \MTtlafbt % 119a
  "\nyet " "still " "iot " "shall " "not " "come " "nigh " "thee. "
  \MBnae \MBnae
  "\nBe " "not " a "fraid; " "thy " "help " "is " "near. "  % 120a
  "\nfor " "He " "is " "near, "  "thy " "help "  "is " "near, "
  "\nthy " "help "  "is " "near; "
  "\nbe " "not " a "fraid "  "the " "help "  "is " "near, "
  "\nBe " "not " a "fraid, " "for " "He " "is " "near; "
  "\nBe " "not " a "fraid, " "thy " "help " "is " "near, " % 121a
  "\nbe " "not " a "fraid, "  "thy " "help "  "is " "near. " \MBnae \MBnae
  "\n“Thy " "help " "is " "near; " "be " "not " a "fraid;” " "saith " "God " "the " "Lord. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2 s\f | s1*12 |
  s1*7 | s2 s\f | s1*7 | % 115
  s1*16 |
  s1*12 |
  s1*12 | % 118
  s1*10 | s2 s\f | s1*3 |
  s2 s\f | s1 | s2 s\f | s1*13 |
  s1*8 | s2 s\ff | s1*11 | % 121
}

tenor = \relative {
  \global
  r2 b4 8. 16 | c4 c c c | b2 4 8. 16 | b4 a g g' |
  fis2 a4 fis8. d16 | b4. 8 4 4 | c2 2~ | 4 4 a d |
  d2 r4 fis, | g g c c | b b cis cis | d2 r | r4 r8 d, d'4 4 |
  e2 r4 r8 e, | e'4 d c2 | e4(d) c b | a b a g | a2 a | % 115a
  g2 g' | fis r | r b,4 8. 16 | 1 | c2 4 4 |
  b4(c) d e8. 16 | a,4 d4 4. 8 | e4 4 4. 8 | d4 fis4 4. 8 | e1 |
  e4 e d4. c8 | 1 | b4 b c4. d8 | e1 | a,2 4. 8 | b2 r | R1 | % 116a
  R1*9 |
  R1*3 | r4 r8 e, e'4 4 | % 117a
  e4 d8. 16 cis4 b | ais4 8. 16 b4 cis | d ais8. 16 b4 cis | d2 b4 b |
  b4(cis2) b4 | a4 8 fis fis'4 4 | 4 e8. d16 cis4 b | a2 d~ |
  d4 cis8.(b16) eis4. 8 | fis4 cis8. d16 cis4 b | a(b) cis r | r cis d e | % 118a
  fis4 cis8. 16 d4 e | fis(d) b2 | r4 r8 cis fis4 4 | 4 e8. d16 cis4 b |
  e2.(fis8. e16) | dis4 r8 b g'4 4 | 4 fis8. e16 d4 cis | fis2 e4 d |
  cis1 | b2 r4 r8 c, | c'4 4 4 d8. c16 | a4 fis b2~ | 4 8. 16 ais4 4 | % 119a
  b1 | c2 r4 r8 fis, | fis'4 4 2~ | 4 e8. dis16 e4 4 |
  e2 dis | r gis4 8. 16 | fis2 r | r e4 8. 16 | dis2 r |
  r2 b4 8. 16 | 1~ | 4 r b4 8. 16 | 1 | c2 4 4 | b2 d4 b8. g16 | % 120a
  e4 g'fis e | d2 r | a4 8. 16 b2~ | 2(a) | b4 8. 16 cis2~ |
  cis2(b) | r d4 c8. 16 | b2. a4 | a(b c) c | b2 r |
  d4 8. 16 b4 4 | e4. 8 2 | 4 8. 16 cis4 4 | fis4. 8 2~ | % 121a
  fis4 r d c8. 16 | b2. a4 | a(b c) c | b2 r | r e4 8. 16 | 2. r4 |
  r2 e4 8. 16 | 2. r4 | r2 e | fis2 2 | g d | d d | c c | a1 | a | b\fermata |
}

wordsTenor = \lyricmode {
  Be not a -- fraid, saith God the Lord.
  Be not a -- fraid; thy help is near.
  Be not a -- fraid; thy help is near,
  help, __ thy help is near,
  thy help, thy help is near,
  thy help is near.
  thy help is near,
  thy help is near, % 115a
  thy __ help is near,
  thy help is near,
  thy help is near.
  Be not a -- fraid, saith God the Lord;
  Be not a -- fraid, saith God the Lord;
  thy help is near,
  thy help is near.
  God, the Lord thy God say -- eth un -- to thee, % 116a
  “Be not a -- fraid!”
  \Ttlafbt \atotatp % 117a
  a -- round thee per -- ish,
  \ttlafb_t __
  though thou -- sands lan -- guish and tens of thou -- sands, % 118a
  \atotatp 
  \ttlafb_t
  though thou -- sands lan -- guish and fall;
  It shall not come nigh __ thee;
  \Ttlafb_t % 119a
  and fall be -- side thee,
  \Ttlafbt \Bnae \Bnae
  Be not a -- fraid, __ % 120a
  be not a -- fraid; thy help is near.
  be not a -- fraid, for He is near,
  be not a -- fraid, __
  be not a -- fraid, __
  be not a -- fraid, thy help __ is near; 
  Be not a -- fraid, for He is near; % 121a
  be not a -- fraid, thy help is near. __
  be not a -- fraid, thy help __ is near.
  \Bnae \Bnae
  “Thy help is near; be not a -- fraid;” saith God the Lord.
}

wordsTenorMidi = \lyricmode {
  "Be " "not " a "fraid, " "saith " "God " "the " "Lord. "
  "\nBe " "not " a "fraid; " "thy " "help " "is " "near. "
  "\nBe " "not " a "fraid; " "thy " "help " "is " "near, "
  "\nhelp, "  "thy " "help " "is " "near, "
  "\nthy " "help, " "thy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near, " % 115a
  "\nthy "  "help " "is " "near, "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nBe " "not " a "fraid, " "saith " "God " "the " "Lord; "
  "\nBe " "not " a "fraid, " "saith " "God " "the " "Lord; "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nGod, " "the " "Lord " "thy " "God " say "eth " un "to " "thee, " % 116a
  "\n“Be " "not " a "fraid!” "
  \MTtlafbt \Matotatp % 117a
  "\na" "round " "thee " per "ish, "
  \Mttlafb_t __
  "\nthough " thou "sands " lan "guish " "and " "tens " "of " thou "sands, " % 118a
  \Matotatp 
  \Mttlafb_t
  "\nthough " thou "sands " lan "guish " "and " "fall; "
  "\nIt " "shall " "not " "come " "nigh "  "thee; "
  \MTtlafb_t % 119a
  "\nand " "fall " be "side " "thee, "
  \MTtlafbt \MBnae \MBnae
  "\nBe " "not " a "fraid, "  % 120a
  "\nbe " "not " a "fraid; " "thy " "help " "is " "near. "
  "\nbe " "not " a "fraid, " "for " "He " "is " "near, "
  "\nbe " "not " a "fraid, " 
  "\nbe " "not " a "fraid, " 
  "\nbe " "not " a "fraid, " "thy " "help "  "is " "near; " 
  "\nBe " "not " a "fraid, " "for " "He " "is " "near; " % 121a
  "\nbe " "not " a "fraid, " "thy " "help " "is " "near. " 
  "\nbe " "not " a "fraid, " "thy " "help "  "is " "near. "
  \MBnae \MBnae
  "\n“Thy " "help " "is " "near; " "be " "not " a "fraid;” " "saith " "God " "the " "Lord. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2 s\f | s1*12 |
  s1*7 | s2 s\f | s1*7 | % 115
  s1*15 | s4. s8\f s2 |
  s1*12 |
  s1*12 | % 118
  s1*9 | s2 s\f | s1 | s2 s\f | s1*2 |
  s2 s\f | s1 | s2 s\f | s1*13 |
  s1*8 | s2 s\ff | s1*11 | % 121
}

bass = \relative {
  \global
  r2 g4 8. 16 | 4 g, g g | 2 g'4 8. 16 | 4 fis e e |
  d1 | 4 8. 16 2~ | 1~ | 2 a'4 fis8. d16 |
  b4 b c d | e e e fis | g g g g | d4. 8 d'4 c | b a g f |
  e4 d c b | a r c'4 8. 16 | 4 b a g | fis g fis e | dis2 2 | % 115a
  e2 e | b r | r b'4 8. 16 | 2 g4 8. 16 | 4 g, g g |
  g4(a) b c8. 16 | d4 d g4. 8 | 4 bes a4. g8 | fis4 c' b4. a8 | g2 e4. 8 |
  a,2(b4.) c8 | d4(fis e d) | g g a4. b8 | c1 | d,2 4. 8 | g2 r | R1 | % 116a
  R1*5 |
  R1*3 | r4 r8 b, b'4 4 |
  b4 a8. g16 fis4 e | dis4 8. 16 e4 fis | g dis8. 16 e4 fis | g2 4 e | % 117a
  cis4(d e) cis | fis2 2 | r4 8.(e16) d4 cis | b(b'8. a16 gis4 fis |
  eis4) 8. cis16 dis4 e | fis4 4 r2 | r4 r8 g, g'4 4 | 4 fis8. e16 d4 cis |
  b2 cis~ | 4 cis'8.(b16) a4 gis | fis d'8. 16 cis4 b | a1~ | % 118a
  a4 8. g16 fis4 e | d2 2 | e fis4. 8 | g2 gis4. 8 |
  a2 ais | b(c) | cis r4 cis, | d4 8. 16 4 4 |
  e2(fis) dis4. b8 b'4 4 | 4 a8. g16 fis4 e | dis2 4 b | e4 8. 16 g4 e | % 119a
  b'2 b, | r4 r8 c c'4 4 | 4(b8. a16) b4 dis, | e4 8. 16 g4 e |
  b'4 b, b'4 8. 16 | 1~ | 4 r b4 8. 16 | 2. 4 | b,2 r |
  r2 b'4 8. 16 | 1~ | 4 r b4 8. 16 | 2 g~ | g2 4 4 | 2 b4 g8. 16 | % 120a
  g4 g g g | g,2 b | d gis, | a c | e ais, |
  b2 d | fis2 4 8. 16 | g2. c,4 | d2 d | g r |
  r2 gis4 8. 16 | a2 r | r ais4 8. 16 | b2 r | % 121a
  fis4 8. 16 2 | g2.(c,4) | d2 d | e r | r e4 8. 16 | d2. r4 |
  r2 d4 8. 16 | cis2. r4 | r2 cis' | d a | b fis | g g, | c a | d1 | d | g,\fermata |
}

wordsBass = \lyricmode {
  Be not a -- fraid, saith God the Lord.
  Be not a -- fraid; thy help is near.
  Be not a -- fraid, __
  be not a -- fraid; thy help is near,
  thy help is near,
  thy help is near,
  thy help is near,
  thy help is near;
  be not a -- fraid, % 115a
  be not a -- fraid;
  thy help is near,
  thy help is near,
  thy help is near.
  Be not a -- fraid,
  Be not a -- fraid, saith God the Lord;
  Be not a -- fraid, saith God the Lord;
  thy help is near,
  thy help is near.
  God, the Lord thy God say -- eth un -- to thee, 
  “Be not a -- fraid!” % 116a
  \Ttlafbt \atotatp
  \Ttlafb_t and fall be -- side thee, % 117a
  \ttlafbt __ 
  \atotatp a -- round thee per -- ish, % 118a
  \ttlafb_ts
  yet still it shall not come nigh __ thee;
  \Ttlafbt % 119a
  yet still it shall not come nigh thee;
  Though thou -- sands lan -- guish,
  yet still it shall not come nigh thee;
  \Bnae __ Be not a -- fraid, a -- fraid!
  Be not a -- fraid, __ % 120a
  be not a -- fraid; thy__  help is near.
  be not a -- fraid; for He is near,
  thy God, the Lord thy God saith un -- to thee;
  Be not a -- fraid, thy help is near; 
  Be not a -- fraid, Be not a -- fraid, % 121a
  be not a -- fraid, thy __ help is near.
  \Bnae \Bnae
  “Thy help is near; be not a -- fraid;” saith God the Lord.
}

wordsBassMidi = \lyricmode {
  "Be " "not " a "fraid, " "saith " "God " "the " "Lord. "
  "\nBe " "not " a "fraid; " "thy " "help " "is " "near. "
  "\nBe " "not " a "fraid, " 
  "\nbe " "not " a "fraid; " "thy " "help " "is " "near, "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near; "
  "\nbe " "not " a "fraid, " % 115a
  "\nbe " "not " a "fraid; "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nBe " "not " a "fraid, "
  "\nBe " "not " a "fraid, " "saith " "God " "the " "Lord; "
  "\nBe " "not " a "fraid, " "saith " "God " "the " "Lord; "
  "\nthy " "help " "is " "near, "
  "\nthy " "help " "is " "near. "
  "\nGod, " "the " "Lord " "thy " "God " say "eth " un "to " "thee, " 
  "\n“Be " "not " a "fraid!” " % 116a
  \MTtlafbt \Matotatp
  \MTtlafb_t and fall be -- side thee, % 117a
  \Mttlafbt __ 
  \Matotatp a -- round thee per -- ish, % 118a
  \Mttlafb_ts
  "\nyet " "still " "it " "shall " "not " "come " "nigh "  "thee; "
  \MTtlafbt % 119a
  "\nyet " "still " "it " "shall " "not " "come " "nigh " "thee; "
  "\nThough " thou "sands " lan "guish, "
  "\nyet " "still " "it " "shall " "not " "come " "nigh " "thee; "
  \MBnae __ Be not a -- fraid, a -- fraid!
  "\nBe " "not " a "fraid, "  % 120a
  "\nbe " "not " a "fraid; " "thy__ "  "help " "is " "near. "
  "\nbe " "not " a "fraid; " "for " "He " "is " "near, "
  "\nthy " "God, " "the " "Lord " "thy " "God " "saith " un "to " "thee; "
  "\nBe " "not " a "fraid, " "thy " "help " "is " "near; " 
  "\nBe " "not " a "fraid, " "Be " "not " a "fraid, " % 121a
  "\nbe " "not " a "fraid, " "thy "  "help " "is " "near. "
  \MBnae \MBnae
  "\n“Thy " "help " "is " "near; " "be " "not " a "fraid;” " "saith " "God " "the " "Lord. "
}

pianoRHone = \relative {
  \global
  <b b'>2 <d g b d>4 <b d g b>8. <b d g>16 |
  <c e>4 <g' c e g> <a c fis> <fis a c e> |
  <g b d>2 <d g b d>4 <b d g b>8. <b d g>16 |
  <b d e>4 <a d fis> <g d' g> <cis g' a> |
  <d fis a>2 <b d fis a>4 <a c fis>8. <fis a d>16 | % 114b
  <g b>2 <d' g b d>4 <d g b>8. <b d g>16 |
  <c e>2 <g' c e g>4 <e g c e>8. <e g c>16 |
  <c g' a>2 <c fis c'>4 a'8. fis16 |
  \ov <d g d'>4 <d g> <e a> <d c'> | % 114c
  <b' b'>4 <g b g'>8. e'16 <g, c>4 <a e'> |
  <d d'>4 <d b'>8. g16 <bes, e>4 <bes g'> |
  <a d f>4. r8 r4 r8 d, |
  d'4 c <d, g b> <f a b>8. 16 |
  <e gis b>4. e8 <e a e'>4 <e g d'> | % 115a
  <e a c>4 <d gis b> <e a e'>4 8. 16 |
  q4 \vo r c'4 8. 16 | 2 4 8. 16 |
  <fis, c'>2 <b, b'>4 8. 16 |
  <b g' b>2 <b b'>4 8. 16 | % 115b
  \ov <b dis fis b>2 <b b'>4 8. 16 |
  q1~ | 2 <d g b d>4 <b d g b>8. <b d g>16 |
  <c e>4 <g' c e g> <a c fis> <fis c' e> |
  \vo d'2 4 c8. b16 \ov | % 115c
  <a, g' a>4 <g' a> <g b>2*3/4\trill^(\tiny a16 b) \normalsize |
  <g c>4 4 <a cis>2*3/4\trill^(\tiny b16 cis) \normalsize |
  <a d>4 4 \vo dis2*3/4\trill^(\tiny cis16 dis) \normalsize |
  \ov <b e>2 g'~ |
  <a, c e g>4 <c e g> <d fis>4. <c e>8 | % 116a
  \vo <c d>2. 4 \ov | <g b d>4 <d b' d> <fis a c>4. <g b>8 |
  \vo a2 g~ | \ov <a, d g> <a d fis>4. <a d g>8 |
  <b d g>4 <b' d g b>\arpeggio <g b d g>\arpeggio <d g b d>\arpeggio |
  r4 <b' dis g b>\arpeggio <g b dis g>\arpeggio <dis g b dis>\arpeggio |
  r4 <b' e g b>\arpeggio <g b e g>\arpeggio <e g b e>\arpeggio | % 116b
  r4 <c' e a c> <a c a'> <a c e> |
  r4 <dis, fis b>8. c'16 \vo <e, g b>4 a |
  <e g>4(<fis, dis'>8. dis'16 \ov <g, b e>4) <a dis fis> |
  <b e g>4 <b' e g b> <g b e g> <e g b e> |
  r4 <g b d g> <e g cis e> <e g b> | % 116c
  r4 <e fis ais>8. ais16 \vo <d, b'>4 <cis cis'> |
  d'4 ais8. 16 b4 <ais cis> \ov |
  <fis b d>4 <b d fis b> <g d' g> <g d'> |
  r4 <e c' e> <c' e a> <c a' c> | % 117a
  r4 \vo b8. a16 <b, e g>4 <dis fis> | \ov
  <b e b'>4 <b' fis' b>8. a'16 <b, e g>4 <a dis fis> |
  <b e>4 <b e b'> <e, b' e> <g b e g>~ |
  <ais e' g>4 <b d fis> \vo e2~ | % 117b
  e4 \ov <fis, cis' fis>8. e'16 \vo <b d>4 <a c> |
  \ov <fis b>4 <a, cis fis>8. fis'16 <b, d gis>4 <c fis ais> |
  <d fis b>4 <fis b d fis> <eis b'> <fis b d> |
  r4 \vo cis' \ov <a c fis> <gis c gis'> | % 117c
  <cis fis a>4 <a cis fis a> <a cis fis> <fis a> |
  r4 <b e g b> <cis e> <b d g> | r4 <cis, a'> <fis a d fis> <fis a fis'> |
  <gis d' fis>4 <cis e>8. <b d>16 <eis, g c>4 <eis g b> | % 118a
  <fis a>4 <eis gis>8. <d eis gis>16 <cis fis a>4 <b g' b> |
  <a' cis>4 <b, eis gis>8. <eis gis>16 <cis fis a>4 <d gis b> |
  <cis a' cis>4 <cis e a>8. a'16 <d, fis b>4 <e g cis> |
  <fis a d>4 <a cis e>8. e'16 <a, d a'>4 <g' a cis> | % 118b
  <fis a d>4 <fis, a> <d fis b d> <b d fis> |
  r4 <e g cis> <ais cis fis> <cis, fis a> |
  r4 b' <b e b'> <e, b' d e> |
  r4 <cis' e> <cis fis cis'> <fis, cis' fis> | % 118c
  r4 <b b'> <g c e> <g c e g> |
  r4 <g ais e'> <e g ais> <ais e' g> |
  <b fis'>4 <fis b e>8. d'16 <e, fis cis'>4 <d fis b> |
  <cis g' b>2 <cis fis ais> | % 119a
  <fis b>4 <b fis' b>8. b16 \vo <b e b'>4 <g e'> |
  c,4 <e a> <a c> <fis a> | <fis a fis'> <fis a>8. 16 fis'4 <b, fis'>4~ |
  q4 <b e>8. dis16 \ov <g, ais e'>4 4 |
  <fis b e>4 <e' fis b> <b dis fis> <fis b d>8 e | % 119b
  <e b' e>4 \vo e' e fis8. e16 \ov |
  <fis, a dis>4 <fis a> <fis a dis> <fis a b fis'> |
  <fis g b>4 <e g b>8. dis16 <e g ais>4 4 |
  <e fis b>4 <e' b'> <b dis fis> <fis b d> | % 119c
  <dis fis b>4 r <g ais e'>4 8. 16 |
  <fis b dis>4 <fis' b dis> <d fis b> <b dis fis> |
  <fis b dis>4 r <cis e g ais>4 8. 16 |
  <dis fis b>2 <b b'>4 8. 16 |
  q1~ | 4 r q4 8. 16 | 1~ | 2 <d g b d>4 <b d g b>8. 16 | % 120a
  <g c e>4 <g' c e g> <a c fis> <fis c' e> | <g b d>2 <d g b d>4 <b d g b>8. 16 |
  <c e>4 <e g> \vo c'4. 8 | b2 4 8. 16 | a4 8. 16 d4 8. 16 | % 120b
  <b c>2 c4 8. 16 | b4 8. 16 e4 8. 16 |
  d2 4 8. 16 | cis2 \ov <d a' d>4 8. d'16 \vo | d2. <e, e'>4 \ov | % 120c
  <d g d'>2 <d fis d'> | <b, d>4 d8. 16 \vo b'4 8. 16 |
  \ov <d, g a>4 <d f a>8. a'16 \vo d4 8. 16 | <b c>2 c4 8. 16 | % 121a
  b4 8. 16 e4 8. 16 | | <cis d>2 d4 8. 16 |
  \ov <b cis>2 <d a' d>4 8. d'16 | \vo d2. <e, e'>4 | % 121b
  \ov <d g d'>2 <d fis d'> | <g, g'>2 <b, b'>4 8. 16 | q1~ | 2 4 8. 16 |
  q1~ | 2 4 8. 16 | 2 <g' b e g> | <fis a d fis> <fis c' e> | % 121c
  <g b d>2 <d a' c> | <d g b> <d f b> | <c e a> <c e g> | <a d g>1 |
  <a d fis> | <b d g>\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s1*7 | s2. d'4 | s1*5 |
  s1*2 | s4 <d g> fis e | dis e dis g | s2 fis | % 115a
  s2 <e g> | s1*4 |
  <d g b>4 <c fis> <d g> <e g>8. 16 | s1*2 | s2 b'4 s | s1 |
  s1 | fis4 a g fis | s1 | e1 | s1*3 | % 116a
  s1*2 | s2 b4 <b dis>8. b16 | b2 s | s1 |
  s1 | s2 fis'4 8. 16 | fis1 | s |
  s1 | s4 <b, fis'> s b8. 16 | s1*2 | % 117a
  s2 <g' cis>4 <g b> | <fis ais> s fis4 8. 16 | s1*2 |
  s4 gis8. b16 s2 | s1*3 |
  s1*12 | % 118
  s1 | s2 b | s4 c,8. 16 2 | s2 <fis a> | g4 g s2 | s1 | s4 a8. g16 <fis a>4 4 | s1*7 |
  s1*6 | % 120a
  s2 <fis a>4 <e a> | <d a'>4 8. 16 <d g>2 | 4 f8. 16 <f b>2 | e4 8. 16 <e a>2 | 4 g8. 16 <g cis>2 |
  <fis cis'>4 8. 16 <fis b>2 | 4 b8. 16 s2 | <d a'>4 d g2 | s1 | s2 g, |
  s2 <f b> | e4 8. 16 a2 | <e a>4 <e g> <g cis>2 | fis4 8. 16 b2 | % 121a
  s1 | <d a'>4 d g2 | s1*4 |
  s1*10 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\sf s2\ff | s1*12 |
  s1*6 | s2 s\ff | s1\sf | s2 s\sf | s1*2 | s2 s\fz | s1*3 | % 115
  s1*5 | s4 s2.\f | s4 s2.\sf | % 116a
  s4 s2.\sf | s4 s2.-\markup\italic simile | s1*3 |
  s1*4 |
  s1*12 | % 117
  s1*12 |
  s1*9 | s2 s\sf | s s\sf | s1*2 | s2 s\f |
  s1 | s2 s\ff | s1 | s2 s\ff | s1*3 | s2\sf s\sf | s\sf s\sf | s\sf s\sf | s\sf s\sf | s1 | s2 s\ff | s1*3 | % 120
  s1*7 | s2 s\ff | s1*12 |
}

pianoLHone = \relative {
  \global
  r2 <g,, g'>4 8. 16 | 4 4 4 4 | 2 <g' g'>4 8. 16 | 4 <fis fis'> <e e'> <d d'> |
  q4 8. 16 2 | 4 8. 16 2 | 4 8. 16 2 | 4 8. 16 a'4 fis8. d16 |
  <b b'>4 \vo b''8. g16 \ov <c, e>4 <d fis> | % 114c
  <e g b>4 4 <e c'> <fis c'> |
  <g b d g>4 <g b d> <g cis> q |
  <d d'>4. d8 \vo d'4 c |
  b4 a \ov <d,, d'>4 8. 16 |
  q4 q <c c'> <b b'> | <a a'>2 <c' c'>4 8. 16 | % 115a
  q4 b' <a c> <g b> | <fis a> <g b> <fis a> <e g> | <dis a'>2 2 |
  <e g>2 <e, e'> | <b b'> r | R1 | r2 <g g'>4 8. 16 | q4 4 4 4 | % 115b
  q4 <a a'> <b b'> <c c'>8. 16 | <d d'>4 <d' d'> <g d' f>2 | % 115c
  <g a c>4 \vo e'4 2 | d4 fis4 2 | e2 s |
  <a,,, a'>2 <b b'>4. <c c'>8 | <d d'>4 <fis fis'> <e e'> <d d'> | % 116a
  <g g'>4 4 <a a'>4. <b b'>8 | <c e a c>1 |
  <d, d'>2 4. 8 | <g, g'>2 r4 <g' g'>4 | <fis, fis'>2 r4 <fis' fis'> |
  <e, e'>2 r4 <e' e'> | <a, a'>2 r4 <a' a'> | % 116b
  <a, a'>4 <a' a'> <g g'> <fis fis'> |
  <e e'>4 a \vo b4 8. 16 | 1 |
  \ov <cis, cis'>2 r4 <e e'> | <fis, fis'> q <gis gis'> <ais ais'> | % 116c
  <b b'>4 cis' \vo fis4 8. 16 \ov | <b, fis'>4. <b, b'>8 <b' b'>4 4 |
  q4 <a a'>8. <g g'>16 <fis fis'>4 <e e'> | % 117a
  <dis dis'>4 8. 16 <e e'>4 <fis fis'> |
  <g g'>4 dis8. 16 \vo b'4 8. 16 | 2.~ <e, b' e>4 \ov |
  <cis cis'>4 <d d'> <e e'> <cis cis'> | % 117b
  <fis fis'>4 \vo ais'8. 16 b4 cis | d s fis,4 8. 16 |
  fis2 \ov <gis, gis'>4 <fis fis'> |
  <eis eis'>4 8. <cis cis'>16 <dis dis'>4 <eis eis'> | % 117c
  <fis fis'>4 <fis, fis'> r <fis' fis'> |
  <g g'>4 <g, g'> r q | <g' g'>4 <fis fis'>8. <e e'>16 <d d'>4 <cis cis'> |
  <b b'>2 <cis cis'>~ | 4 <cis' cis'>8. <b b'>16 <a a'>4 <gis gis'> | % 118a
  <fis fis'>4 d'8. 16 cis4 <b b'> | <a a'> <a, a'> r q |
  <a' a'>4 8. <g g'>16 <fis fis'>4 <e e'> | % 118b
  <d d'>4 d r q | <e e'> e r <fis fis'> | <g g'> <g, g'> r <gis' gis'> |
  <a a'>4 <a, a'> r <ais' ais'> | <b b'> <b, b'> r <c' c'> | % 118c
  <cis cis'>4 <cis, cis'> r <cis' cis'> | <d d'> <d, d'> r d' |
  e4 e, r <fis fis'> | <dis dis'>2 <e e'> | \vo r4 a'8. g16 fis4 e | % 119a
  \ov <b dis>4 <b, b'>8. 16 <dis dis'>4 <b b'> | <e e'>4 8. 16 <g g'>4 <e e'> |
  <b' b'>4 <b, b'> r b'' | c4. <c,, c'>8 <c' c'>4 4 | % 119b
  q4 <b b'>8. <a a'>16 <b b'>4 <dis, dis'> | <e e'>4 8. 16 <g g'>4 <e e'> |
  <b' b'>4 <b, b'> b''4 8. 16 | 2 <b, b'>4 8. 16 | % 119c
  q4 <b, b'> b''4 8. 16 | 2 q4 8. 16 | 2 r |
  R1 | r2 q | <a,, a'>1~ | 2 <g g'>4 8. 16 | 4 4 4 4 | 2 4 8. 16 | % 120a
  <g g'>4 4 4 4 | 2 <b b'> | <d d'> <gis, gis'> | <a a'> <c c'> | <e e'> <ais, ais'> |
  <b b'>2 <d d'> | <fis fis'> <fis' a d>4 <fis c' d> | % 120c
  <g b d>2. <c, a' c>4 | \vo a'4 b c2 \ov | <g,, g'>4 <a a'> <b b'> <c c'> |
  <d d'>4 <f f'> <gis gis'> <gis, gis'> | <a a'> <b b'> <c c'> <d d'> | % 121a
  <e e'>4 <g g'> <ais ais'> <ais, ais'> | <b b'> <cis cis'> <d d'> <e e'> |
  <fis fis'>4 <cis cis'> <fis, fis'> <fis'' a c d> | % 121b
  <g b d>2. <c, a' c>4 \vo | a'4 b c2 \ov | <e, g b>2 r |
  r2 <e, e'>4 8. 16 | <d d'>2. r4 |
  r2 q4 8. 16 | <cis cis'>2. r4 | r2 <cis' cis'> | <d d'> <a a'>  % 121c
  <b b'>2 <fis fis'> | <g g'> <g, g'> | <c c'> <a a'> |
  <d d'>1 | q | <g, g'>\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  s1*8 | s4 b, s2 | s1*2 | s2 d2~ | d2 s |
  s1*12 | s4 bes' a4. g8 | fis4 c' b4. a8 | <g b>2 e | % 115
  s1*10 | s2 g,4 fis | e r r <g g'> | s1*2 | s2 d'4 fis, | s1 |
  s1*2 | s2 e4 fis | g g r s | s1 | s4 fis' r fis | 4 8. e16 d4 cis | b <b b'>8. <a a'>16 s2 | s1*4 |
  s1*12 | % 118
  s1*2 | a2. 4 | s1*11 |
  s1*14 | d2 d | s1 |
}

#(set-global-staff-size 16)

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
  \paper {
    output-suffix = single-sop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
          \new Dynamics \teeny \dynamicsPiano
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \addlyrics \wordsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
          \new Dynamics \teeny \dynamicsPiano
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
          \new Dynamics \teeny \dynamicsPiano
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
          \new Dynamics \teeny \dynamicsPiano
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
          \new Dynamics \teeny \dynamicsPiano
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \addlyrics \wordsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
          \new Dynamics \teeny \dynamicsPiano
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
          \new Dynamics \teeny \dynamicsPiano
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
          \new Dynamics \teeny \dynamicsPiano
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
  \paper {
    output-suffix = midi-sop
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsTenorMidi
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
%            \addlyrics \wordsBassMidi
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
  \paper {
    output-suffix = midi-alto
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
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
%            \addlyrics \wordsTenorMidi
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
%            \addlyrics \wordsBassMidi
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
  \paper {
    output-suffix = midi-tenor
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsBassMidi
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
  \paper {
    output-suffix = midi-bass
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsTenorMidi
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
          \new Staff = piano \with {
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
