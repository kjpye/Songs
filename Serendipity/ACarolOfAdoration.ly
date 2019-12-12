\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Carol of Adoration"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Edgar Pettman, 1867-1943"
  arranger    = "adap. W.A. Pickard-Cambridge"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
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
  \key f \major
  \time 6/8
  \tempo 4=120
  \partial 8
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

soprano = \relative c'' {
  \global
  a8
  d4 c8 a4 a16(bes)
  c8(a) g f4 g8
  a8(f) g a4 f16(g)
  a8(c) a g4 c8
  d4 e16(d) c4 f,8
  bes4 c16(bes) a4 a8
  g8.(f16) g8 a4 f8
  f4 d8 f4
  \bar "|."
}

dynamicsSop = {
}

alto = \relative c' {
  \global
  f8
  a8(g16 f) e8 e(d) d
  c8.(d16) e8 e(d) d16(e)
  f4 e8 f4 f8
  f4 f8 f(e) f
  f16(a g f) e8 e16(g f e) d8
  d16(f e d) c8 c8(d16 e) f(e)
  d4 d16(e) f4 c8
  c8(bes) bes c4
  \bar "|."
}

dynamicsAlto = {
}

dynamicsWomen = {
}

dynamicsMen = {
}

tenor = \relative c' {
  \voiceOne
  \global
  \clef "treble_8"
  d16(c)
  bes8.(a16) g8 g(f) f
  f8(c') bes a4 bes8
  c4 c8 c4 d8
  c8(c16 a) a(c) c4 c8
  bes4 bes8 c4 d16(c)
  bes4 g8 bes4 c8
  bes8(a) bes8 c4 a8
  f4 f16(g) a4
  \bar "|."
}

dynamicsTenor = {
}

bass= \relative c {
  \voiceTwo
  \global
  \clef bass
  d8
  d4 d8 d4 bes8
  a8.(bes16) c8 d4 bes8
  f8(a) c f(a) bes
  a8(a16 f) f(a) c4 a8
  bes4 g8 a4 d,8
  g4 e8 f4 a,8
  bes8(d) g f4 a,8
  a8(d) bes f'4
  \bar "|."
}

dynamicsBass = {
}

dynamicsPiano = {
}

pianoRH = \relative c' {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  c4
  \bar "|."
}

pianoLH = \relative c' {
  \global
  \oneVoice
  c4
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \clef bass
  \voiceTwo
  c4
  \bar "|."
}

wordsOne = \lyricmode {
  O Babe Di- vine, now will I sing
  To Thee a song of love- long- ing:
  Make in my heart a quick well- spring,
  Thy- self to love a- bove all things.
}

wordsTwo = \lyricmode {
  O Hol- y Child, my dim heart's gleam,
  O bright- er than the sun- ny beam!
  As Thou wast born in Beth- le- hem,
  Be born in me and be my dream.
}

wordsThree = \lyricmode {
  O Prince of Peace, my dark soul's light!
  Thou art day with- out a night:
  O give me strength and give me might
  E- ver to love Thy- self a- right.
}

wordsFour = \lyricmode {
  O Son of God, Thou war- rior best!
  Thy love, Thou in mine heart make fast;
  When I go North, South, East or West
  In Thee a- lone may I find rest.
}

wordsFive = \lyricmode {
  Je- su, it well for him shall be
  That in Thy bliss Thy- self shall see:
  O then with love- chords draw Thou me,
  That I may come and dwell with Thee.
}

\score {
  <<
    \new ChoirStaff <<
% Joint soprano/alto staff
      \new Dynamics \dynamicsWomen
      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto"    { \voiceTwo \alto    }
        \new Lyrics \lyricsto "soprano" \wordsOne
        \new Lyrics \lyricsto "soprano" \wordsTwo
        \new Lyrics \lyricsto "soprano" \wordsThree
        \new Lyrics \lyricsto "soprano" \wordsFour
        \new Lyrics \lyricsto "soprano" \wordsFive
      >>
% Joint tenor/bass staff
      \new Dynamics \dynamicsMen
      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
        \new Voice = "tenor" \tenor
        \new Voice = "bass" \bass
      >>
    >>
  >>
  \layout {
    indent = 1.5\cm
    \context {
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {
  }
}
