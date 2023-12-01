\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Carol of the Birds"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "William G. James"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John Wheeler"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
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
  \key ees \major
  \time 6/8
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

soprano = \relative c' {
  \global
  ees8^\markup{Full choir}  ees f g4 aes8
  bes8. c16 bes8 aes4 g8
  f8 f g aes4 bes8
  c8 d c bes4 aes8
  g8 g aes bes4 g8
  f8 f g aes4 f8
  ees8 ees f g(f) ees
  f8 g aes bes c \bar "||" d
  ees4. bes4 g8
  ees'4. c4 g8
  ees'8 c aes g4 f8
  ees4.~ees4^\fermata \oneVoice r8
  \bar "|."
}

dynamicsWomen = {
  s4^\mf s2\<
  s4 \! s2 \>
  s4 \! s2 \<
  s2. \!
  s2.
  s4 s2 \>
  s4^\mf \! s2 \<
  s4 s2 \!
  s8 s4^\f s4.
  s2.
  s2.
  s2.
}

alto = \relative c' {
  \global
  bes8 c d ees4 8
  ees8. ees16 8 d4 ees8
  ees8 ees ees ees4 ees8
  ees8 ees ees d(ees) f
  ees8 ees ees ees4 ees8
  ees8 ees ees ees4 d8
  ees8 c d ees(d) ees
  c8 ees ees d c d
  ees4. bes'4 g8
  g4. ees4 8
  aes8 aes f d4 8
  ees4.~4^\fermata s8
  \bar "|."
}

tenor = \relative c' {
  \global
  g8 g bes bes4 8
  bes8. aes16 bes8 4 8
  c8 c c c4 bes8
  aes8 aes aes bes4 8
  bes8 bes bes bes4 8
  c8 c c c4 bes8
  g8 g bes bes(aes) bes
  aes8 c c bes c d
  ees4. bes4 g8
  c4. g4 c8
  c8 c c bes4 aes8
  g4.~g4^\fermata \oneVoice r8

  \bar "|."
}

dynamicsTenor = {
}

bass= \relative c {
  \global
  ees8 c bes ees4 f8
  g8. aes16 g8 f4 ees8
  aes8 aes g f4 g8
  aes8 aes f bes,(c) d
  ees8 ees f g4 8
  aes8 aes g f4 bes,8
  c8 c bes ees(f) g
  aes8 aes f bes c d
  ees4. bes4 g8
  c,4. 4 8
  f8 f f bes,4 8
  ees4.~4 s8
  \bar "|."
}

dynamicsPiano = {
}

pianoRH = \relative c' {
  \global
}

pianoRHone = \relative c' {
  \global
  \clef bass
  \voiceOne
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
}

pianoLH = \relative c' {
  \global
  \oneVoice
}

pianoLHone = \relative c' {
  \global
  \clef bass
  \voiceOne
}

pianoLHtwo = \relative c' {
  \global
  \clef bass
  \voiceTwo
}

wordsOne = \lyricmode {
  Out on the plains the Brol- gas are danc- ing
  Lift- ing their feet like
  war- hor- ses pranc- ing:
  Up to the sun the wood- larks go wing- ing
  Faint in the dawn- light ech- oes their sing- ing
}

wordsTwo = \lyricmode {
  Down where the tree- ferns grow by the riv- er,
  There where the wat- ers spar- kle and qui- ver,
  Deep in the gul- lies Bell- birds are vhim- ing,
  Soft-ly and sweet- ly their lyr- ic notes rhym- ing--
  "\"O-" ra- na! O- ra- na! O- ra- na to Christ- mas "Day.\""
}

wordsThree = \lyricmode {
  Fri- ar birds sip the nec- tar of flow- ers,
  Cur- ra- wongs chant in wat- tle- tree bow- ers;
  In the blue ran- ges Lor- i- keets cal- ling‐
  Car- ols of bush- birds ris- ing and fal- ling-
}

\score {
  <<
    \new ChoirStaff <<
% Joint soprano/alto staff
      \new Dynamics \dynamicsWomen
      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto"    { \voiceTwo \alto    }
        \new Lyrics \lyricsto "soprano" \wordsOne
        \new Lyrics \lyricsto "soprano" \wordsTwo
        \new Lyrics \lyricsto "soprano" \wordsThree
      >>
% Joint tenor/bass staff
      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
        \new Voice = "tenor" { \clef bass \voiceOne \tenor }
        \new Voice = "bass"  { \clef bass \voiceTwo \bass }
      >>
    >>
%    \new PianoStaff <<
%      \new Staff <<
%        \new Voice \pianoRH
%        \new Voice \pianoRHone
%        \new Voice \pianoRHtwo
%      >>
%      \new Dynamics \dynamicsPiano
%      \new Staff <<
%        \new Voice \pianoLH
%        \new Voice \pianoLHone
%        \new Voice \pianoLHtwo
%      >>
%    >>
  >>
  \layout {
    indent = 1.5\cm
    \context {
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {}
}
