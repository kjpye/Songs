\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Believe! I Belong!"
  subtitle    = "Sankey No. 594"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*4
  \textMark \markup { \box \bold "B" }    s2.*5
  \textMark \markup { \box \bold "C" }    s2.*4 s2
  \textMark \markup { \box \bold "D" } s4 s2.*4
  \textMark \markup { \box \bold "E" }    s2.*4
  \textMark \markup { \box \bold "F" }    s2.*5
  \textMark \markup { \box \bold "G" }    s2.*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  f'8.^\markup\italic Joyfully g16 | a2 8. bes16 | c2 bes8. a16 | g4 f g | a4 f\fermata 8. 16 |
  bes4 c d | c a f8. 16 | 4 g a | g2 f8. g16 | a2 8. bes16 |
  c2 bes8. a16 | g4 a bes |a4 f\fermata 8. 16 | d'4 bes d | c a\fermata \bar "|" \break
  f8. 16 | 2 g8. a16 | f2
  \section \sectionLabel \markup\smallCaps Chorus.
  a8. bes16 | c2 a8. bes16 | c2 bes8. a16 |
  g4 a bes | d c\fermata a8. bes16 | c2 a8. bes16 | c2 b8. a16 |
  g4 a b | c2 8. 16 | d4 4 4 | c4 c d | bes4 4 c |
  bes4 a4 8. 16 | bes4 a g | c4 4\fermata f,8. g16 | a4(c) g8. a16 | f2
}

alto = \relative {
  \autoBeamOff
  f'8. 16 | 2 8. 16 | f2 8. 16 | e4 c e | f c\fermata f8. 16 |
  f4 4 4 | 4 4 8. 16 | c4 e f | e2 f8. 16 | 2 8. g16 |
  a2 g8. f16 | e4 f g | f c\fermata f8. 16 | 4 4 4 | 4 c\fermata
  b8. 16 | c2 e8. 16 | f2 8. 16 | 2 8. g16 | a2 g8. f16 |
  e4 f g | b4 a\fermata f8. 16 | 2 8. 16 | g2 f8. 16 |
  f4 4 4 | e2 f8. 16 | 4 4 e | f f f | d d g |
  f4 4 8. 16 | 4 4 e | f f\fermata 8. 16 | 2 e8. 16 | f2
}

tenor = \relative {
  \autoBeamOff
  a8. bes16 | c2 8. 16 | 2 8. 16 | b4 a c | c a\fermata 8. 16 |
  bes4 a bes | a c4 8. 16 | c4 4 4 | 2 a8. bes16 | c2 8. 16 |
  f2 c8. 16 | 4 4 4 | c a\fermata 8. 16 | bes4 4 4 | a a\fermata
  fis8. 16 | a2 bes8. c16 | a2 c8. 16 | 2 8. 16 | f2 c8. 16 |
  c4 4 4 | f f\fermata c8. 16 | c2 8. 16 | 4(e) d8. c16 |
  b4 c d | c2 8. 16 | bes4 4 4 | c c a | bes4 4 g |
  d'4 c4 8. 16 | bes4 c c | c c\fermata b8. 16 | c4(a) bes8. c16 | a2
}

bass = \relative {
  \autoBeamOff
  f8. 16 | 2 8. g16 | a2 g8. f16 | c4 4 4 | f4 4\fermata 8. 16 |
  d4 c bes | f'4 4 a8. bes16 | a4 g f | c2 f8. 16 | 2 8. 16 |
  f2 8. 16 | c4 4 4 | f4 4\fermata 8. 16 | bes,4 d bes | f'4 4\fermata
  d8. 16 | c2 8. 16 | f2 8. g16 | a2 f8. 16 | 2 g8. a16 |
  bes4 a g | f4 4\fermata 8. g16 | a2 f8. 16 | e4(c) d8. 16 |
  g4 4 4 | c,2 a'8. 16 | bes4 4 g | a4 4 f | g4 4 e |
  f4 4 ees8. 16 | d4 c bes | a a\fermata d8. 16 | c2 8. 16 | g2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"I" be -- lieve! I be -- "long!\""
  Tell it out! tell it out!
  Christ the theme of my sto -- ry!
  Sing, ye moun -- tains and hills!
  breez -- es, waft it a -- long!
  Praise the Lord!
  He pro -- vid -- eth a per -- fect sal -- va -- tion;
  So we'll take as our watch -- word---
  "\"I" be -- lieve! I be -- "long!\""
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I am glad I have heard of the Sa -- viour's great mer -- cy!
  And that now I am sing -- ing
  His re -- demp -- tion's new song;
  And e'er since, by His grace,
  un -- to Him I sur -- ren -- dered,
  In my heart has been ring -- ing—
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Once the slave of my sin,
  then my soul lay in dark -- ness;
  Kept a pris -- 'ner by Sa -- tan
  in his dun -- geon so strong;
  But the Lord, by His power,
  set me free from my bon -- dage,
  And He gave me this watch -- word—
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I be -- lieve for a fall
  and a per -- fect sal -- va -- tion;
  I be -- long to my Sa -- viour
  with a love deep and strong:
  And tho' oft sore -- ly tempt -- ed
  to change my al -- leg -- iance,
  Still my faith gives the ans -- wer—
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  But I look for the time when
  my jour -- ney safe end -- ed,
  I shall join in the cho -- rus
  of the hea -- ven -- ly throng:
  Oh, what rap -- ture 'twill be
  on the throne to be -- hold Him,
  To e -- ter -- ni -- ty sing -- ing—
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "am " "glad " "I " "have " "heard " "of " "the " Sa "viour's " "great " mer "cy! "
  "\nAnd " "that " "now " "I " "am " sing "ing "
  "\nHis " re demp "tion's " "new " "song; "
  "\nAnd " "e'er " "since, " "by " "His " "grace, "
  "\nun" "to " "Him " "I " sur ren "dered, "
  "\nIn " "my " "heart " "has " "been " ring "ing— "
  "\n\"I " be "lieve! " "I " be "long!\" "
  "\nTell " "it " "out! " "tell " "it " "out! "
  "\nChrist " "the " "theme " "of " "my " sto "ry! "
  "\nSing, " "ye " moun "tains " "and " "hills! "
  "\nbreez" "es, " "waft " "it " a "long! "
  "\nPraise " "the " "Lord! "
  "\nHe " pro vid "eth " "a " per "fect " sal va "tion; "
  "\nSo " "we'll " "take " "as " "our " watch word-
  "\n\"I " be "lieve! " "I " be "long!\"\n"

  \set stanza = "2."
  "\nOnce " "the " "slave " "of " "my " "sin, "
  "\nthen " "my " "soul " "lay " "in " dark "ness; "
  "\nKept " "a " pris "'ner " "by " Sa "tan "
  "\nin " "his " dun "geon " "so " "strong; "
  "\nBut " "the " "Lord, " "by " "His " "power, "
  "\nset " "me " "free " "from " "my " bon "dage, "
  "\nAnd " "He " "gave " "me " "this " watch "word— "
  "\n\"I " be "lieve! " "I " be "long!\" "
  "\nTell " "it " "out! " "tell " "it " "out! "
  "\nChrist " "the " "theme " "of " "my " sto "ry! "
  "\nSing, " "ye " moun "tains " "and " "hills! "
  "\nbreez" "es, " "waft " "it " a "long! "
  "\nPraise " "the " "Lord! "
  "\nHe " pro vid "eth " "a " per "fect " sal va "tion; "
  "\nSo " "we'll " "take " "as " "our " watch word-
  "\n\"I " be "lieve! " "I " be "long!\"\n"

  \set stanza = "3."
  "\nI " be "lieve " "for " "a " "fall "
  "\nand " "a " per "fect " sal va "tion; "
  "\nI " be "long " "to " "my " Sa "viour "
  "\nwith " "a " "love " "deep " "and " "strong: "
  "\nAnd " "tho' " "oft " sore "ly " tempt "ed "
  "\nto " "change " "my " al leg "iance, "
  "\nStill " "my " "faith " "gives " "the " ans "wer— "
  "\n\"I " be "lieve! " "I " be "long!\" "
  "\nTell " "it " "out! " "tell " "it " "out! "
  "\nChrist " "the " "theme " "of " "my " sto "ry! "
  "\nSing, " "ye " moun "tains " "and " "hills! "
  "\nbreez" "es, " "waft " "it " a "long! "
  "\nPraise " "the " "Lord! "
  "\nHe " pro vid "eth " "a " per "fect " sal va "tion; "
  "\nSo " "we'll " "take " "as " "our " watch word-
  "\n\"I " be "lieve! " "I " be "long!\"\n"

  \set stanza = "4."
  "\nBut " "I " "look " "for " "the " "time " "when "
  "\nmy " jour "ney " "safe " end "ed, "
  "\nI " "shall " "join " "in " "the " cho "rus "
  "\nof " "the " hea ven "ly " "throng: "
  "\nOh, " "what " rap "ture " "'twill " "be "
  "\non " "the " "throne " "to " be "hold " "Him, "
  "\nTo " e ter ni "ty " sing "ing— "
  "\n\"I " be "lieve! " "I " be "long!\" "
  "\nTell " "it " "out! " "tell " "it " "out! "
  "\nChrist " "the " "theme " "of " "my " sto "ry! "
  "\nSing, " "ye " moun "tains " "and " "hills! "
  "\nbreez" "es, " "waft " "it " a "long! "
  "\nPraise " "the " "Lord! "
  "\nHe " pro vid "eth " "a " per "fect " sal va "tion; "
  "\nSo " "we'll " "take " "as " "our " watch word-
  "\n\"I " be "lieve! " "I " be "long!\" "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
