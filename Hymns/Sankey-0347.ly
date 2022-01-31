\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lay it Down!"
  subtitle    = "Sankey No. 347"
  subsubtitle = "Sankey 880 No. 326"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*7
  s2. \tempo 4=40 s4 \tempo 4=120
  s1*7
  s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4
  g4 8. a16 b4 g
  a4 d b2
  g4 b b a
  g2. \bar "|" \break d4
  g4 8. a16 b4 g % B
  a4 d b2
  g4 b b a
  g2. \bar "|" \break d'4\fermata ^\markup\smallCaps Refrain.
  d4 b d2 % C
  g,4 b a2
  c4 b c4. b8
  b4 a a \bar "|" \break c
  b4 g d'2 % D
  b4 g c2
  b4 g b a
  g2.
}

alto = \relative {
  \autoBeamOff
  d'4
  d4 8. 16 g4 d
  fis4 4 g2
  d4 g g fis
  g2. d4
  d4 8. 16 g4 d % B
  fis4 4 g2
  d4 g g fis
  g2. 4\fermata
  g4 4 2 % C
  g4 4 fis2
  a4 gis a4. g8
  g4 fis fis a
  g4 4 2 % D
  g4 f e2
  g4 d g d
  d2.
}

tenor = \relative {
  \autoBeamOff
  b4
  b4 8. c16 d4 b
  d4 4 2
  d4 4 4 c
  b2. 4
  b4 8. c16 d4 b % B
  d4 4 2
  d4 4 4 c
  b2. 4\fermata
  b4 d b2 % C
  d4 4 2
  d4 4 4. 8
  d4 4 4 4
  d4 b4 2 % D
  d4 b g2
  d'4 b d c
  b2.
}

bass = \relative {
  \autoBeamOff
  g4
  g4 8. 16 4 4
  s4 4 g2
  b4 g d d
  <g, g'>2. g'4
  g4 8. 16 4 4 % B
  d4 4 g2
  b4 g d d
  <g, g'>2. g'4\fermata
  g4 4 2 % C
  b4 g d2
  d4 4 4. 8
  d4 4 4 fis
  g4 4 2 % D
  g4 4 c,2
  d4 4 4 4
  <g, g'>2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, lay it down! lay it down!
  Lay thy wea -- ry bur -- den down!
  Oh, lay it down, lay it down,
  Down at Je -- sus' feet!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh come, sin -- ner, come! 'tis mer -- cy's call;
  Here at Je -- sus feet!
  Oh come, and, re -- pent -- ing, lay thy all
  Down at Je -- sus' feet!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh come, and, be -- liev -- ing, seek thy rest
  Here at Je -- sus' feet!
  Thy heart, with its hea -- vy weight op -- pressed,
  Lay at Je -- sus' feet!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh come, where thy faith can make thee whole,
  Here at Je -- sus' feet!
  Oh come, and thy wea -- ry, trou -- bled soul
  Lay at Je -- sus' feet!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh come! bless the Lord, there's room for thee,
  Here at Je -- sus' feet!
  Thy bur -- den of guilt, what -- e'er it be,
  Lay at Je -- sus' feet!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh " "come, " sin "ner, " "come! " "'tis " mer "cy's " "call; "
  "\nHere " "at " Je "sus " "feet! "
  "\nOh " "come, " "and, " re pent "ing, " "lay " "thy " "all "
  "\nDown " "at " Je "sus' " "feet! "
  "\nOh, " "lay " "it " "down! " "lay " "it " "down! "
  "\nLay " "thy " wea "ry " bur "den " "down! "
  "\nOh, " "lay " "it " "down, " "lay " "it " "down, "
  "\nDown " "at " Je "sus' " "feet! "

  \set stanza = "2."
  "\nOh " "come, " "and, " be liev "ing, " "seek " "thy " "rest "
  "\nHere " "at " Je "sus' " "feet! "
  "\nThy " "heart, " "with " "its " hea "vy " "weight " op "pressed, "
  "\nLay " "at " Je "sus' " "feet! "
  "\nOh, " "lay " "it " "down! " "lay " "it " "down! "
  "\nLay " "thy " wea "ry " bur "den " "down! "
  "\nOh, " "lay " "it " "down, " "lay " "it " "down, "
  "\nDown " "at " Je "sus' " "feet! "

  \set stanza = "3."
  "\nOh " "come, " "where " "thy " "faith " "can " "make " "thee " "whole, "
  "\nHere " "at " Je "sus' " "feet! "
  "\nOh " "come, " "and " "thy " wea "ry, " trou "bled " "soul "
  "\nLay " "at " Je "sus' " "feet! "
  "\nOh, " "lay " "it " "down! " "lay " "it " "down! "
  "\nLay " "thy " wea "ry " bur "den " "down! "
  "\nOh, " "lay " "it " "down, " "lay " "it " "down, "
  "\nDown " "at " Je "sus' " "feet! "

  \set stanza = "4."
  "\nOh " "come! " "bless " "the " "Lord, " "there's " "room " "for " "thee, "
  "\nHere " "at " Je "sus' " "feet! "
  "\nThy " bur "den " "of " "guilt, " what "e'er " "it " "be, "
  "\nLay " "at " Je "sus' " "feet! "
  "\nOh, " "lay " "it " "down! " "lay " "it " "down! "
  "\nLay " "thy " wea "ry " bur "den " "down! "
  "\nOh, " "lay " "it " "down, " "lay " "it " "down, "
  "\nDown " "at " Je "sus' " "feet! "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
