\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Could Have Danced All Night"
  subtitle    = "from My Fair Lady"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Alan Jay Lerner & Frederick Loewe"
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
  \time 2/2
}

TempoTrack = {
  \tempo Brightly 2=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2.*4
}

ChordTrack = \chordmode {
}

melody = \relative {
  \global
  R1*3                                 | r4 c' e g | % 106a
  c1~      | c2 b          | b1~       | b4 b, e g    | b1~         | % 106b
  b2 a     | a1~           | a2 g      | e1~          | e2 f        | % 106c
  g1~      |  g2 a         | d,1~      | d1~          | d1          | % 106d
  r4 d f a | d1~           | d2 cis    | cis1~        | cis4 c, f a | % 107a
  c1~      | c2 b          | b1~       | b2 a         |               % 107b
  f1~      | f2 g          | a1 ~      | a2 2         |               % 107c
  e1~      | e1~           | e1        | r4 e fis gis |               % 107d
  b1~      | b4 e, fis gis | a1 ~      | a2 b         |               % 108a
  gis1     | gis1 ~        | gis1 ~    | gis4 g a b   |               % 108b
  d1 ~     | d2 g,         | a1        | c1           |               % 108c
  b1 ~     | b1 ~          | b4 r c2   | c2 2         |               % 108d
  c1 ~     | c2 b  b1 ~    | b4 e, g b |                              % 109a
  d1 ~     | d2 c          | c1 ~      | c4 f, a c    |               % 109b
  e1       | d1            | f1        | R1           | R1          | % 109c
  b,1      | c1 ~          | c1 ~      | c1 ~         | c4^^ r r2   | % 109d
  \bar "|."
}

wordsOne = \lyricmode {
  I could have danced __ all night, __
  I could have danced __ all night __
  and still __ have begged __ for more. __
  I could have spread __ my wings __
  and done a thou -- sand things __
  I've nev -- er done __
  be -- fore. __
  I'll nev -- er know __ what made it so __ ex -- cit -- ing, __
  why all at once __ my heart took flight. __
  I on -- ly know __ when "(s)he" be -- gan to dance __ with me, __
  I could have danced, danced, danced all night. __
  
}

\book {
  \bookOutputSuffix "melody"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
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
