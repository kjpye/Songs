\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title    = "The Virgin Mary Had a Baby Boy"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "West Indian traditional"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 4/4
  \tempo 4=120
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

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" }
  s2 s2
}

unison = \relative c' {
  \global
  r1
  r2 r4 r8 c
  f4 f f8 f g f
  e8 g c,2 \breathe r8 c
  bes'4 bes bes8 bes c bes
  a8 c f,2 \breathe r8 a
  c4 c8 ees4 d8 ees c
  d4 d8 bes4. \breathe bes8 bes
  \times 2/3 {c4 a f} g4 c,
  f4 f2 r4
  \repeat volta 2 {
    r4 c8 c4 d8 e4
    f2 g
    r4 a8 a4 a g8
    f4 f g f
  }
  \repeat volta 2 {
    r2 d'^\markup{\italic Harmony}
    c4. bes8 a4 c
  }
  r4 c,8^\markup{\italic Unison} c4 d8 e4
  f2 g
  r4 a8 a4 a g8
  f4 f g f
  \bar "|."
}

pianoRH = \relative c' {
  \global
  r8 a <c d f> r a q r <a c d f>
  r8 a <c d f> r a q r <a c d f>
  r8 a <c d f> r a q r <a c d f>
  r8 bes <c e> r bes q r q
  r8 bes <c e> r bes q r q
  r8 a <c d f> r a q r <a c d f>
  r8 a <c ees f> r a <c f> r <c ees f>
  r8 g <bes d f> r g q r <g bes d f>
  \times 2/3 {r4 a <c f>} r4 <bes c e>
  r2 <a' c d f>4 q
  \repeat volta 2 {
    r4 s2 s4
    <a, f'>4 s2 s4
    <a f'>4 s2 s4
    <a f'>4 <c a' c> <c e bes'> <c f a>
  }
  \repeat volta 2 {
    r2 s
    s1
  }
  r4 s2 s4
  <a f'>4 s2 s4
  <a f'>4 s2 s4
  <a f'>4 <a c f> <bes c e> <a c f>
%  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  s1*10
  \repeat volta 2 {
    s4 c4~c8 d e4
    s4 c4~c8 d e4
    s4 c4~c8 d e4
    s1
  }
  \repeat volta 2 {
    s2 d'2
    c4. bes8 a4 c
  }
  s4 c,4~c8 d e4
  s4 c4~c8 d e4
  s4 c4~c8 d e4
  s1
%  \bar "|."
}

pianoRHtwo = \relative c'' {
  \global
  \voiceTwo
  s1*10
  \repeat volta 2 {
    s4 c8 bes~bes2
    s4 c8 bes~bes2
    s4 c8 bes~bes2
    s1
  }
  \repeat volta 2 {
    s2 f2
    f4. f8 f4 f
  }
  s4 c8 bes~bes2
  s4 c8 bes~bes2
  s4 c8 bes~bes2
  s1
%  \bar "|."
}

pianoLH = \relative c, {
  \global
  \oneVoice
  <f c'>4 r8 <a f'> r4 <f c'>8 r
  <f c'>4 r8 <a f'> r4 <f c'>8 r
  <f c'>4 r8 <a f'> r4 <f c'>8 r
  <g c>4 r8 <c e>8 r4 <g c>8 r
  <g c>4 r8 <c e>8 r4 <g c>8 r
  <f c'>4 r8 <a f'>8 r4 <f c'>8 r
  <f c'>4 r8 <a f'>8 r4 <f c'>8 r
  <bes f'>4 r8 <d f> r4 <bes f'>8 r
  \times 2/3 {<c f>4 r r} <c g'>4 r
  s2 r
  \repeat volta 2 {
    c4. c,8~c4 c'
    f,4. c'8~c4 c,4
    f4. c'8~c4 c,
    f4 f' c f
  }
  \repeat volta 2 {
    r2 s
    s1
  }
  c4. c,8~c4 c'
  f,4. c'8~c4 c,
  f4. c'8~c4 c,
  f4 f c f
%  \bar "|."
}

pianoLHone = \relative c {
  \global
  \clef bass
  \voiceOne
  s1*9
  c4 c s2
  \repeat volta 2 {
    s1*4
  }
  \repeat volta 2 {
    s2 bes'
    a4. g8 f4 a
  }
%  \bar "|."
}

pianoLHtwo = \relative c, {
  \global
  \clef bass
  \voiceTwo
  s1*9
  f2 s
  \repeat volta 2 {
    s1*4
  }
  \repeat volta 2 {
    s2 bes'
    a4. g8 f4 a
  }
%  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The vir- gin Ma- ry had a ba- by boy,
  the vir- gin Ma- ry had a ba- by boy,
  the vir- gin Ma- ry had a ba- by boy,
  and they say that his name was Je- sus.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  The an- gels sang _ when the ba- by born,
  the an- gels sang _ when the ba- by born,
  the an- gels sang _ when the ba- by born,
  and pro- claim him the ba- by Je- sus.

  He come from the glo- ry,
  he come from the glo- rious king- dom,

  O yes, be- liev- er,
  he come from the glo- ry,
  he come from the glo- rious king- dom,
}

wordsThree = \lyricmode {
  \set stanza = "3."
  The wise men saw _ where the ba- by born,
  the wise men saw _ where the ba- by born,
  the wise men saw _ where the ba- by born,
  and they say that his name was Je- sus.
}

wordsOYes = \lyricmode {
  _ _ _ _ _ _ _ _ _
  O yes, be- liev- er,
}
  
\score {
  <<
    \new ChoirStaff <<
% Single unison staff
      \new Staff \with { instrumentName = #"Tutti" } <<
%        \new Voice \RehearsalTrack
        \new Voice = "unison" \unison
        \new Lyrics \lyricsto "unison" \wordsOne
        \new Lyrics \lyricsto "unison" \wordsTwo
        \new Lyrics \lyricsto "unison" \wordsThree
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRH
        \new Voice = "rhone" \pianoRHone
        \new Voice \pianoRHtwo
      >>
      \new Lyrics \lyricsto "rhone" \wordsOYes
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
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {}
}
