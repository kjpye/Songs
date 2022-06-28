\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Light of the World."
  subtitle    = "Sankey No. 417"
  subsubtitle = "Sankey 880 No. 123"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*3
  \mark \markup { \box "C" }     s2.*3
  \mark \markup { \box "D" }     s2.*3
  \mark \markup { \box "E" }     s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8
  f8 g a a g f
  g8 f g a4 8
  c8 8 8 \bar "|" \break c4 a8
  a4. g4 c,8 % B
  f8 g a a g f
  g8 f g a4 8
  c8 8 8 4 a8 % C
  g4. f \bar "||"
  g8^\markup\smallCaps Chorus. 8 a g4 c8
  b8 a b c4. % D
  g8 8 a g4 c8
  b8 a b c4.\fermata
  c8 a bes c4 a8 % E
  bes8 a bes d4\fermata d8
  c8 8 8 4 a8
  g4. f4
}

alto = \relative {
  \autoBeamOff
  c'8
  c8 8 8 f f f
  e8 d e f4 8
  f8 8 8 a4 f8
  f4. e4 c8 % B
  c8 8 8 f f f
  e8 d e f4 8
  f8 8 8 a4 f8 % C
  e4. f
  e8 8 f e4 8
  f8 8 8 e4. % D
  e8 8 f e4 8
  f8 8 8 e4(g8\fermata)
  f8 8 8 4 ees8 % E
  d8 c d f4\fermata 8
  f8 8 8 a4 f8
  e4. f4
}

tenor = \relative {
  \autoBeamOff
  a8
  a8 bes c c bes a
  c8 8 8 4 f,8
  a8 8 8 c4 8
  c4. 4 a8 % B
  a8 bes c c bes a
  c8 8 8 4 f,8
  a8 8 8 c4 8 % C
  bes4. a
  c8 8 8 4 8
  d8 8 8 c4. % D
  c8 8 8 4 8
  d8 8 8 c4(bes8\fermata)
  a8 f g a4 c8 % E
  bes8 8 8 4\fermata 8
  a8 8 8 c4 8
  bes4. a4
}

bass = \relative {
  \autoBeamOff
  f8
  f8 8 8 8 8 8
  c8 8 8 f4 8
  f8 8 8 4 8
  c4. 4 f8 % B
  f8 8 8 8 8 8
  c8 8 8 f4 8
  f8 8 8 4 8 % C
  c4. f
  c8 8 8 4 8
  g'8 8 8 c,4. % D
  c8 8 8 4 8
  g'8 8 8 c,4.\fermata
  f8 8 8 4 8 % E
  bes,8 8 8 4\fermata 8
  f'8 8 8 4 8
  c4. f4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Come to the Light, 'tis shi -- ning for thee;
  Sweet -- ly the Light has dawned up -- on me;
  Once I was blind, but now I can see:
  The Light of the world is Je -- sus!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  The whole world was lost in the dark -- ness of sin,
  The Light of the world is Je -- sus!
  Like sun -- shine at noon -- day His glo -- ry shone in.
  The Light of the world is Je -- sus!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  No dark -- ness have we who in Je -- sus a -- bide,
  The Light of the world is Je -- sus!
  We walk in the Light when we fol -- low our Guide,
  The Light of the world is Je -- sus!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye dwell -- ers in dark -- ness, with sin -- blind -- ed eyes,
  The Light of the world is Je -- sus!
  Go, wash at His bid -- ding, and light will a -- rise,
  The Light of the world is Je -- sus!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  No need of the sun -- light in heav -- en, we're told,
  The Light of the world is Je -- sus!
  The Lamb is the Light in the Ci -- ty of Gold,
  The Light of the world is Je -- sus!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "whole " "world " "was " "lost " "in " "the " dark "ness " "of " "sin, "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "
  "\nLike " sun "shine " "at " noon- "day " "His " glo "ry " "shone " "in. "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "
  "\nCome " "to " "the " "Light, " "'tis " shi "ning " "for " "thee; "
  "\nSweet" "ly " "the " "Light " "has " "dawned " up "on " "me; "
  "\nOnce " "I " "was " "blind, " "but " "now " "I " "can " "see: "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "

  \set stanza = "2."
  "\nNo " dark "ness " "have " "we " "who " "in " Je "sus " a "bide, "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "
  "\nWe " "walk " "in " "the " "Light " "when " "we " fol "low " "our " "Guide, "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "
  "\nCome " "to " "the " "Light, " "'tis " shi "ning " "for " "thee; "
  "\nSweet" "ly " "the " "Light " "has " "dawned " up "on " "me; "
  "\nOnce " "I " "was " "blind, " "but " "now " "I " "can " "see: "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "

  \set stanza = "3."
  "\nYe " dwell "ers " "in " dark "ness, " "with " sin blind "ed " "eyes, "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "
  "\nGo, " "wash " "at " "His " bid "ding, " "and " "light " "will " a "rise, "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "
  "\nCome " "to " "the " "Light, " "'tis " shi "ning " "for " "thee; "
  "\nSweet" "ly " "the " "Light " "has " "dawned " up "on " "me; "
  "\nOnce " "I " "was " "blind, " "but " "now " "I " "can " "see: "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "

  \set stanza = "4."
  "\nNo " "need " "of " "the " sun "light " "in " heav "en, " "we're " "told, "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "
  "\nThe " "Lamb " "is " "the " "Light " "in " "the " Ci "ty " "of " "Gold, "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "
  "\nCome " "to " "the " "Light, " "'tis " shi "ning " "for " "thee; "
  "\nSweet" "ly " "the " "Light " "has " "dawned " up "on " "me; "
  "\nOnce " "I " "was " "blind, " "but " "now " "I " "can " "see: "
  "\nThe " "Light " "of " "the " "world " "is " Je "sus! "
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
