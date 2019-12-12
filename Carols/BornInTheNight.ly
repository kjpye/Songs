\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Born in the Night, Mary's Child"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Geoffrey Ainger"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
  meter       = "Mary's Child 436D"
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
  \key g \major
  \time 4/4
  \tempo 4=75
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
  b4^\markup{\italic UNISON}~\times 2/3 {b8 a g} b2 \breathe
  b8 a4. g \breathe a8
  b4 d b4. g8
  b8(a4.~a2) \breathe
  b4~ \times 2/3 {8 a g} b2 \breathe
  b8 a4. g2 \breathe
  a4~ \times 2/3 {8 b a} g4 fis
  g1
  \bar "|."
}

dynamicsWomen = {
}

alto = \relative c' {
  \global
  <b d>4 q <b e> q
  <c e>4 q <c ees> q
  g'4 g e e
  <c e>4 q <c d> q
  <b d>4 q <b e> q
  <c e>4 q <c ees> q
  <c e>4 q d d
  <b d>4 <c e> <b d>2
  \bar "|."
}

tenor = \relative c {
  \global
%  \clef "treble_8"
  \bar "|."
}

dynamicsMen = {
}

bass= \relative c' {
  \global
  \clef bass
  a4 a <e a> q
  <a, g'>4 q <c g'> q
  <g' b>4 q <e g> q
  <a, g'>4 q <d fis> q
  g4 g <e g> q
  <a, g'>4 q <c g'> q
  <a g'>4 q <d a'> q
  <fis, g'>1
  \bar "|."
}

wordsOne = \lyricmode {
  Born in the night,
  Mar- y's child,
  a long way from your home;
  com- ing in need,
  Mar- y's child,
  born in a bor- rowed room.
}

wordsTwo = \lyricmode {
  Clear shin- ing light,
  Mar- y's child,
  your face lights up our way;
  light of the world,
  Mar- y's child,
  dawn on our dark- ened day.
}

wordsThree = \lyricmode {
  Truth of our life,
  Mar- y's child,
  you tell us God is good;
  prove it is true,
  Mar- y's child,
  go to your cross of wood.
}

wordsFour = \lyricmode {
  Hope of the world,
  Mar- y's child,
  you're com- ing soon to reign;
  King of the earth,
  Mar- y's child,
  walk in our streets a- gain.
}

\score {
  <<
    \new ChoirStaff <<
% Joint soprano/alto staff
      \new Dynamics \dynamicsWomen
      \new Staff <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto"    { \voiceTwo \alto    }
        \new Lyrics \lyricsto "soprano" \wordsOne
        \new Lyrics \lyricsto "soprano" \wordsTwo
        \new Lyrics \lyricsto "soprano" \wordsThree
        \new Lyrics \lyricsto "soprano" \wordsFour
      >>
% Joint tenor/bass staff
      \new Dynamics \dynamicsMen
      \new Staff <<
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
  \midi {}
}
