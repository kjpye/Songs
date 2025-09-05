\version "2.25.28"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Consider Yourself at Home"
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

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
  \partial 4.
}


TempoTrack = {
  \tempo 4.=120
  \set Score.tempoHideNote = ##t
  s4.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2.*4
}

melody = \relative {
  \global
  g'4. | e8 f fis g4. | r e' | c2. | r4. g | e8 f fis g4. |
  r4. g8 a g | f4 e8 d4. | r g | e8 f fis g4. | r e' | c2. | r4. e |
  d4 r8 r4. | d4 r8 r4. | c8 d c b4 a8 | g4 r8 g4. | e8 f fis g4. | r e' |
  c2. | r4. g | e8 f fis g4. | r g8 a g |
  f4 e8 d4. | r g | e8 f fis g4. | r e' | c2. |
  r4. e | d4 r8 r4. | d4 r8 r4. | c8 d c b4 a8 | g4 r8 g gis a |
  bes4 a8 bes4. | bes4 a8 bes4 a8 | bes4 a8 bes4. | r c4 bes8 | a4 gis8 a4. |
  r4. gis | a2. | r4. a8 ais b | c4 b8 c4. | c4 b8 c4 b8 | % 2a
  c4 b8 c4. | r d4 c8 | b4. b | c cis |
  d2. | r4. g, | e8 f fis g4. | r e' | c8 r r r4. |
  r4. a | f8 g gis a4. | r <d f> | <b d>8 r r r4. | r <b dis> |
  <c e>4 <b d>8 <c e>4 <b d>8 | <c e>4 <b dis>8 <c e>4 <b dis>8 | <c e>4. <bes d> | <a cis> <e e'> |
  f'8 8 8 4. | r4. d4 e8 | c4. r |
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  Con -- si -- der your -- self at home
  con -- si -- der your -- self one of the fam -- i -- ly
  We’ve tak -- en to you so strong
  it’s clear we’re go -- ing to get a -- long
  Con -- si -- der your -- self well in
  con -- si -- der your -- self part of the fur -- ni -- ture
  There is -- n’t a lot to spare
  who cares what ev -- er we’ve got we share
  If it should chance to be we should see some hard -- er days
  Emp -- ty lard -- er daysWhy grouse?
  Al -- ways a chance we’ll meet some -- bod -- y to foot the bill,
  Then the drinks are on the house
  con -- si --der your -- self our mate
  we don’t want to have no fuss
  for af - -ter some con -- si -- de -- ra -- tion we can state
  con -- si -- der your -- self one of us!
}

\book {
  \paper {
    output-suffix = melody
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsOne
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
    \midi {}
  }
}
