\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Peace Divine!"
  subtitle    = "Sankey No. 666"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Josiah Booth."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. Griffith-Jones."
  meter       = \markup\smallCaps "6.6.6.6.8.8."
  piece       = \markup\smallCaps "Vita Beata."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*4
  \textMark \markup { \box \bold "C" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'4 | 4 4 g ees | 2. 4 | c'4 4 aes bes | g2. \bar "|" \break
  g4 | bes ees d4. c8 | bes4 g bes c | ees,2 f | ees2. 4 |
  c'4 4 bes ees, | aes4. 8 g4 ees | aes bes c ees | bes2. c4 | aes2.
}

alto = \relative {
  \autoBeamOff
  c'4 | des c des des | c2. 4 | ees e f d | ees2.
  ees4 | d ees4 4. 8 | 4 4 4 4 | 2 4(d) | ees2. 4 |
  aes4 4 g ees | 4 d ees ees | 4 4 4 4 | aes2 g | aes2.
}

tenor = \relative {
  \autoBeamOff
  ees4 | f ees f g | aes2. 4 | 4 bes c aes | bes2.
  bes4 | 4 4 a4. 8 | bes4 4 4 aes | g2 aes | g2. ees4 |
  ees'4 4 des des | c ces bes g | aes g aes aes | f'2 des | c2.
}

bass = \relative {
  \autoBeamOff
  aes,4 | 4 4 4 4 | 2. 4 | aes'4 g f f | ees2.
  ees4 | aes g fis4. 8 | g4 ees g, aes | bes2 2 | ees2. 4 |
  ees4 4 4 4 | 4 4 4 des | c bes aes c | des2 ees | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O peace Di -- vine and pure,
  In wild -- est storm se -- cure,
  That feels the sum -- mer's glow
  'Mid win -- try ice and snow;
  When may I rise to this dear prize,
  And fill my breast with in -- ward rest?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  My life is tem -- pest- tossed,
  With way -- ward cur -- rents crossed.
  Un -- hal -- lowed cares de -- face
  The soul's most ho -- ly plane;
  How may I bind these cares, and find
  All pas -- sion spent in calm con -- tent?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  And though through storm and stress
  I sail the vas -- ty seas
  Of troub -- led thought— in vain
  I toil the shore to gain;
  For yet with -- in I'd feel my sin,
  And still a -- far would shine Thy star.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lord, on -- ly from Thy face
  Beams forth this mys -- tic grace.
  And on -- ly in Thy love,
  Be -- neath, a -- round, a -- bove.
  May my weak soul grow great and whole,
  And peace Di -- vine be ful -- ly mine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "peace " Di "vine " "and " "pure, "
  "\nIn " wild "est " "storm " se "cure, "
  "\nThat " "feels " "the " sum "mer's " "glow "
  "\n'Mid " win "try " "ice " "and " "snow; "
  "\nWhen " "may " "I " "rise " "to " "this " "dear " "prize, "
  "\nAnd " "fill " "my " "breast " "with " in "ward " "rest?\n"

  \set stanza = "2."
  "\nMy " "life " "is " tem pest "tossed, "
  "\nWith " way "ward " cur "rents " "crossed. "
  "\nUn" hal "lowed " "cares " de "face "
  "\nThe " "soul's " "most " ho "ly " "plane; "
  "\nHow " "may " "I " "bind " "these " "cares, " "and " "find "
  "\nAll " pas "sion " "spent " "in " "calm " con "tent?\n"

  \set stanza = "3."
  "\nAnd " "though " "through " "storm " "and " "stress "
  "\nI " "sail " "the " vas "ty " "seas "
  "\nOf " troub "led " "thought— " "in " "vain "
  "\nI " "toil " "the " "shore " "to " "gain; "
  "\nFor " "yet " with "in " "I'd " "feel " "my " "sin, "
  "\nAnd " "still " a "far " "would " "shine " "Thy " "star.\n"

  \set stanza = "4."
  "\nLord, " on "ly " "from " "Thy " "face "
  "\nBeams " "forth " "this " mys "tic " "grace. "
  "\nAnd " on "ly " "in " "Thy " "love, "
  "\nBe" "neath, " a "round, " a "bove. "
  "\nMay " "my " "weak " "soul " "grow " "great " "and " "whole, "
  "\nAnd " "peace " Di "vine " "be " ful "ly " "mine. "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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

#(set-global-staff-size 20)

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
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
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
