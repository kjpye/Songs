\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Gloaming"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Lady Arthur Hill"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key g \major
  \time 2/4
  \tempo 4=80
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

sopranoA = \relative c'' {
  \global
  \voiceOne
  s2*8 % instrumental
  d4.^\p e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 \< b \!
  d4. \> c8
  b2 \!
  d4. e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 fis
  b4. a8
  g2
  g4. a8
  a4 g(
  g4) a8(b)
  a4 g
  a4. a8
  b4 d
  e4 d
  a2
  d4. e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 fis
  b4. a8 g2
  s2*8  % instrumental
  s2*16 % tenor solo
  g4. a8
  a4 g
  g4 a8(b)
  a4 g
  a4. a8
  b4 d
  e4^^ d^^
  a2
  d4. e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 fis
  b4. a8
  g2
  s2*8 % split
  \bar "|."
}

sopranoB = \relative c'' {
  \global
  s2*8  % instrumental
  s2*32 % joined
  s2*8  % instrumental
  s2*16 % tenor solo
  s2*16 % joined
  g2
  a4(ais)
  b8 d, g b
  d4^\fermata d,8 d
  e4 g
  b4.^\fermata a8
  g2~
  g2^\fermata
  \bar "|."
}
  
dynamicsSop = {
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2^\p
  s2
  s2
  s2
  s2
  s4 \< s \!
  s4. \> s8 \!
  s2
}

altoA = \relative c'' {
  \global
  \voiceTwo
  s2*8 % instrumental
  g4. g8
  g4 g
  g4 fis
  g4 g
  e4 e
  d4 g
  fis4. fis8
  g2
  g4. g8 g4 g
  g4 fis
  g4 g
  e4 e
  d4 d
  g4. f8
  g2
  r8 f4 f8
  e4 e~
  e8 f4 f8
  e4 e
  g4. g8
  g4 g
  g4 g
  fis2
  g4. g8
  g4 g
  g4 fis
  g4 g
  e4 e
  d4 d
  fis4. fis8
  g2
  s2*8  % instrumental
  s2*16 % tenor solo
  fis4. fis8
  e4 e
  f4. f8
  e4 e
  g4. g8
  g4 g
  g4 g
  fis2
  g4. g8
  g4 g
  fis4 fis
  e4 d
  cis4 e
  e4 d
  fis4. fis8
  e2
  s2*8 % split
  \bar "|."
}

altoB = \relative c' {
  \global
  s2*8  % instrumental
  s2*32 % joined
  s2*8  % instrumental
  s2*16 % tenor solo
  s2*16 % joined
  cis2
  cis2
  d8 b d g
  <g b>4^\fermata d8 d
  e4 e
  g4 fis^\fermata
  d2~
  d2^\fermata
  \bar "|."
}

dynamicsAlto = {
}

tenorA = \relative c' {
  \voiceOne
  \global
  \clef "treble_8"
  s2*8 % instrumental
  b4.^\p c8
  d4 d
  b4 a
  g4 fis
  a4 c
  b4 d
  a4. d8
  d2
  d4. c8
  d4 d
  b4 a
  g4 g
  a4 c
  c4 a
  d4. c8
  b2
  r8 d4 d8
  c4 c4~
  c8 d4 d8
  c4 c
  cis4. cis8
  d4 b
  c4 d
  c2
  b4. c8
  d4 d
  b4 a
  g4 g
  a4 c
  c4 a
  d4. c8
  a2 \bar "||" \break
  s2*8 % instrumental
  s2*16 % tenor solo
  d4. d8
  c4 c
  d4. d8
  c4 c
  cis4. c8
  d4 d
  c4 d
  c2
  b4. c8
  b4 d
  b4 a
  g4 gis
  a4 cis
  c4 a
  d4. c8
  b2 \bar "||" \break
  s2*8 \bar "||" \break
  \bar "|."
}

tenorB = \relative c' {
  \global
  \clef "treble_8"
  s2*8 % instrumental
  s2*32 % tutti
  s2*8 % instrumental
  d4.^\markup{\italic{con espress.}}^\markup{(Tenor SOLO \italic {ad lib.})} e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 b
  d4. c8
  b2
  d4. e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 fis
  b4. a8
  g2 \bar "||" \break
  s2*16 \bar "||" \break % tutti
  g4. fis8
  a8-> g-> dis-> g->
  d2-> ~
  d4^\fermata \breathe d8 d
  cis4 cis
  c4 c^\fermata
  b2~
  b2^\fermata
  \bar "|."
}

dynamicsTenor = {
}

bassA = \relative c' {
  \voiceTwo
  \global
  \clef bass
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  g4. c8
  b4 g
  d4 dis
  e4 e
  c4 a
  d4 d
  d4. d8
  g2
  b4. c8
  b4 g
  d4 dis
  e4 e
  c4 a
  d4 d
  d4. d8
  g2
  r8 b4 b8
  c4 c~
  c8 b4 b8
  c4 c
  a4. a8
  d,4 d
  c4 b
  d2
  d4. c8
  b4 g
  d'4 d
  e4 e
  c4 a
  d4 d
  d4. d8
  g2
  s2*8 % instrumental
  s2*16 % tenor solo
  b,4. b'8
  c4 c,
  b4. b'8
  c4 c,
  a4. e'8
  d4 b4
  c4 b4
  d,2
  d4. d8
  d4 d
  d4 d
  e4 e
  a,4 a
  d4 d
  d4. d8
  e2
  s2*8 % split
  \bar "|."
}

bassB = \relative c' {
  \global
  \clef bass
  s2*8 % instrumental
  s2*32
  s2*8 % instrumental
  s2*16 % tenor solo
  s2*16 % combined
  e,2
  e2
  d2~
  d4^\fermata \breathe r
  d4 d
  d4 d^\fermata
  g,2~
  g2^\fermata
  \bar "|."
}

dynamicsBass = {
}

dynamicsPiano = {
  s2^\p
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2^\p
}

pianoRH = \relative c' {
  \global
  s2^\markup{Andante.}
  s2
  s2
  s2
  s2
  s2
  s2
  <b g'>8 d g b
  s2
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  d4. e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 fis
  b4. a8
  s2
  d4. e8
  d4 b
  d4. c8
  c4 b
  a4 e
  s2
  s2
  s2
  d'4. e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 fis
  b4. a8
  g2
  g4. a8
  a4 g
  g4 a8 b
  a4 g
  a4. a8
  b4 d
  e4 d
  s2
  d4. e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 fis
  b4. a8
  s2
  d4. e8
  d4 b
  d4. c8
  c4 b
  a4 e
  g4 b
  a4. g8
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  r8 g g a
  a4 g
  r8 g a b
  a4^> g
  r8 a a a
  b8 b d d
  e8 e d d
  a2
  r8 d d e
  d8 d b b
  r8 d d c
  c8 c b b
  a8 a e e
  g8 g fis fis
  b8 b b a
  g2
  g2
  a4 ais
  b8 d, g b
  e4^\fermata d8 d
  e4 g
  b4. a8^\fermata
  g2
  <d g>2^\fermata
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  r8 <d g b> q <e g>
  d'8 <d, g> b' <d, g>
  r8 <g b> <fis a> r
  c'8 <e, g> b' <e, g>
  a8 <a, c> e' <a, c>
  g'8 <a, c> fis' <a, c>
  r8 <d fis> q <c fis>
  s2
  r8 <d g b> q <e g>
  s2
  s2
  s2
  s2
  b8 d <g b> d
  c8 d <fis a> d
  b8 d g b
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  <b, g'>8 d g b
  s2*8
  r16 d( g b d b e c)
  d16( b g d b' g d b)
  r16 d( fis b d b c a)
  c16(a e c b' g e d)
  r16 c e a c a e c
  r16 b d g b g d b
  r16 e g b d b c a
  r16 d, g b d b g d
  r16 d g b d b e c
  d16 b g d b' g d b
  r16 d fis b d b d a
  c16 a e c b' gis e d
  r16 cis e g a f e cis
  r16 c e b' a fis e d
  r16 e g c b fis d c
  r16 b d b' g4
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  \bar "|."
}

pianoLH = \relative c {
  \global
  \clef bass
  <g b'>4.-\arpeggio c'8
  b4 g
  <d, d'>4 <dis dis'>
  <e e'>2
  c'4 a
  <d, d'>2
  q2
  <g g'>2
  <g b'>4.-\arpeggio c'8
  
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \voiceTwo
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  \bar "|."
}

wordsSopA = \lyricmode {
}

wordsAltoA = \lyricmode {
}

wordsTenA = \lyricmode {
  In the gloam- ing, oh, my dar- ling,
  when the lights are dim and low,
  And the qui- et sha- dows fall- ing
  soft- ly come and soft- ly go
  When the winds are sob- bing faint- ly
  with a gen- tle un- known woo
  Will you think of me and love me, as you did once long a- go?

  For my heart was crush'd with long- ing,
  what had been could nev- er be!
  It was best to leave you thus, dear,
  best for you and best for me;
}

wordsTenB = \lyricmode {
  In the gloam- ing oh! my dar- ling
  think not bit- ter- ly of me,
  Tho' I passed by you in si- lence,
  left you lone- ly set you free

  It was best to leave you thus,
  best for you and best for me.
}

wordsBassA = \lyricmode {
  words
}

\score {
  <<
    \new ChoirStaff <<
      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
        \new Voice = "womenSoprano" \sopranoA
        \new Lyrics \lyricsto "womenSoprano" \wordsTenA
%      >>
%      \new Dynamics \dynamicsAlto
%      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "womenAlto" \altoA
%        \new Lyrics \lyricsto "alto" \wordsAltoA
      >>
      \new Staff \with { shortInstrumentName = #"S" }  <<
        \new Voice = "soprano" \sopranoB
      >>
      \new Staff \with { shortInstrumentName = #"A" } <<
        \new Voice = "alto" \altoB
      >>
      \new Dynamics \dynamicsTenor
      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
        \new Voice = "menTenor" \tenorA
        \new Lyrics \lyricsto "menTenor" \wordsTenA
%      >>
%      \new Dynamics \dynamicsBass
%      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "menBass" \bassA
%        \new Lyrics \lyricsto "menBass" \wordsBassA
      >>
      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
        \clef "treble_8"
        \new Voice = "tenor" \tenorB
      >>
      \new Lyrics \lyricsto "tenor" \wordsTenB
      \new Staff \with { shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bassB
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRH
        \new Voice \pianoRHone
        \new Voice \pianoRHtwo
      >>
      \new Dynamics \dynamicsPiano
      \new Staff <<
        \new Voice \pianoLH
        \new Voice \pianoLHone
        \new Voice \pianoLHtwo
      >>
    >>
  >>
  \layout {
  indent = 1.5\cm
    \context {
      \Score
      \RemoveAllEmptyStaves
    }
  }
  \midi {
    \context {
      \Score
%      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
