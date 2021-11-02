\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Thou Joy of Loving Hearts."
  subtitle    = "Sankey No. 285"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Latin Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup {\smallCaps "Bernard of Clairvaux." "(Tr."
                         \smallCaps "Ray Palmer, D.D." ")" }
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "St. Luke."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4
  b'4(a) g
  c4(b) a
  g4(a) fis
  g2 fis4
  g2 a4
  b4(c) b % B
  b4(a) g
  a2 d,4
  b'4(a) g
  c4(b) a
  a4(b) a % C
  g2 4
  a2 b4
  c4(b) a
  g4(a) fis
  g2
}

alto = \relative {
  \autoBeamOff
  d'4
  g4(fis) g
  g2 e4
  d2 4
  d2 4
  d2 4
  g4(fis) g % B
  e2 4
  f2 d4
  d4(e8[fis]) g4
  g2 fis4
  fis2 4 % C
  e2 4
  e2 4
  e2 4
  d2 4
  d2
}

tenor = \relative {
  \autoBeamOff
  b4
  d4(c) b
  e4(d) c
  b4(c) a
  b2 c4
  b2 a4
  d2 4 % B
  c2 b4
  d2 c4
  b4(c) b
  e4(d) c
  c4(d) c % C
  b2 4
  a2 gis4
  a4(gis) a
  b4(c) a
  b2
}

bass = \relative {
  \autoBeamOff
  g4
  g2 4
  g2 c,4
  d2 4
  g2 a4
  g2 f4
  g4(a) g % B
  c,2 e4
  d2 f4
  g2 4
  g2 d4
  d2 dis4 % C
  e2 4
  c2 b4
  a4(b) c
  d2 4
  g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Thou joy of lov -- ing hearts,
  Thou fount of life, Thou light of men,
  From the best bliss that earth im -- parts,
  We turn un -- filled in Thee a -- gain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thy truth un -- changed hath ev -- er stood;
  Thou sa -- vest those that on Thee call;
  To them that seek Thee, Thou art good,
  To them that find Thee, all in all.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We taste Thee, O Thou Liv -- ing Bread,
  And long to feast up on Thee still;
  We drink of Thee, the Foun -- tain Head,
  And thirst our souls from Thee to fill.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Our rest -- less spi -- rits yearn for Thee
  Wher -- e'er our change -- ful lot is cast;
  Glad, when Thy gra -- cious smile we see;
  Blest, when our faith can hold Thee fast.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  O Je -- sus, ev -- er with us stay;
  Make all our mo -- ments calm and bright;
  Chase the dark night of sin a -- way:
  Shed o'er the world Thy ho -- ly light.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "Thou " "joy " "of " lov "ing " "hearts, "
  "\nThou " "fount " "of " "life, " "Thou " "light " "of " "men, "
  "\nFrom " "the " "best " "bliss " "that " "earth " im "parts, "
  "\nWe " "turn " un "filled " "in " "Thee " a "gain. "

  \set stanza = "2."
  "\nThy " "truth " un "changed " "hath " ev "er " "stood; "
  "\nThou " sa "vest " "those " "that " "on " "Thee " "call; "
  "\nTo " "them " "that " "seek " "Thee, " "Thou " "art " "good, "
  "\nTo " "them " "that " "find " "Thee, " "all " "in " "all. "

  \set stanza = "3."
  "\nWe " "taste " "Thee, " "O " "Thou " Liv "ing " "Bread, "
  "\nAnd " "long " "to " "feast " "up " "on " "Thee " "still; "
  "\nWe " "drink " "of " "Thee, " "the " Foun "tain " "Head, "
  "\nAnd " "thirst " "our " "souls " "from " "Thee " "to " "fill. "

  \set stanza = "4."
  "\nOur " rest "less " spi "rits " "yearn " "for " "Thee "
  "\nWher" "e'er " "our " change "ful " "lot " "is " "cast; "
  "\nGlad, " "when " "Thy " gra "cious " "smile " "we " "see; "
  "\nBlest, " "when " "our " "faith " "can " "hold " "Thee " "fast. "

  \set stanza = "5."
  "\nO " Je "sus, " ev "er " "with " "us " "stay; "
  "\nMake " "all " "our " mo "ments " "calm " "and " "bright; "
  "\nChase " "the " "dark " "night " "of " "sin " a "way: "
  "\nShed " "o'er " "the " "world " "Thy " ho "ly " "light. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
    paper-height = 2000\mm
    ragged-bottom = true
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
                                              \wordsFive  \chorus
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
