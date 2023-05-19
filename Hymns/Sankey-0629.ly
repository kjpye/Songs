\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Precious Saviour."
  subtitle    = "Sankey No. 629"
  subsubtitle = "C. C. 121"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dora Boole."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. M. Rouse."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 aes | c4. 8 des c | 4 aes4 8 c | bes4. g8 f g | bes4(aes) \bar "|" \break
  ees8 aes | c4. 8 des c | 4 aes4 8 c | bes4. f8 g8. bes16 | a2 \section \break
  \sectionLabel \markup\smallCaps Chorus. ees8 8 | des'4. bes8 g ees | c'4 aes c8 8 | 4. bes8 aes8. f16 | ees4. r8 \bar "|" \break
  ees8 aes | c4. 8 des c | 4 aes4 8 c | bes4. f8 g8. bes16 | aes2
}

alto = \relative {
  \autoBeamOff
  c'8 8 | ees4. 8 f ees | 4 c4 8 ees | 4. des8 8 8 | 4(c)
  c8 8 | ees4. 8 f ees | 4 c4 8 ees | des4. 8 8. 16 | c2 \section
  ees8 8 | 4. 8 8 8 | 4 c ees8 8 | d4. 8 8. 16 | ees4. r8
  c8 8 | ees4. 8 f ees | 4 c4 8 ees | des4. 8 8. 16 | c2
}

tenor = \relative {
  \autoBeamOff
  aes8 8 | 4. 8 8 8 | 4 4 8 8 | g4. bes8 aes bes | g4(aes)
  aes8 8 | 4. 8 8 8 | 4 4 8 8 | f4. bes8 8. g16 | aes2 \section
  g8 8 | bes4. g8 bes g | aes4 ees aes8 8 | f4. 8 bes8. aes16 | g4. r8
  aes8 8 | 4. 8 8 8 | 4 4 8 8 | f4. bes8 8. g16 | aes2
}

bass = \relative {
  \autoBeamOff
  aes,8 8 | 4. 8 8 8 | 4 4 8 8 | ees'4. 8 8 8 | 4(aes,)
  aes8 8 | 4. 8 8 8 | 4 4 8 8 | des4. bes8 ees8. 16 | aes,2 \section
  ees'8 8 | 4. 8 8 8 | aes4 aes,4 8 8 | bes4. 8 8. 16 | ees4. r8
  aes,8 8 | 4. 8 8 8 | 4 4 8 8 | des4. bes8 ees8. 16 | aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Glo -- ry, glo -- ry, Je -- sus saves me!
  Bless -- ed be His ho -- ly name;
  For the cleans -- ing blood has reached me,
  Hal -- le -- lu -- jah to the Lamb!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Pre -- cious Sa -- viour, I will praise Thee,
  Thine, and on -- ly Thine, I am;
  For the cleans -- ing blood has reached me:
  Glo -- ry, glo -- ry to the Lamb!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Long my yearn -- ing heart was try -- ing
  To en -- joy this per -- fect rest;
  But when I gave o -- ver \markup\italic "\"try" -- \markup\italic "ing,\""
  Sim -- ply trust -- ing, I was blest.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I am trust -- ing ev -- 'ry mo -- ment
  In the pre -- cious blood app -- lied;
  Calm -- ly rest -- ing at the foun -- tain,
  Dwell -- ing at my Sa -- viour's side.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Con -- se -- crat -- ed to Thy ser -- vice,
  I would live and die for Thee,
  Glad -- ly tell the won -- drous sto -- ry
  Of sal -- va -- tion full and free.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Pre" "cious " Sa "viour, " "I " "will " "praise " "Thee, "
  "\nThine, " "and " on "ly " "Thine, " "I " "am; "
  "\nFor " "the " cleans "ing " "blood " "has " "reached " "me: "
  "\nGlo" "ry, " glo "ry " "to " "the " "Lamb! "
  "\nGlo" "ry, " glo "ry, " Je "sus " "saves " "me! "
  "\nBless" "ed " "be " "His " ho "ly " "name; "
  "\nFor " "the " cleans "ing " "blood " "has " "reached " "me, "
  "\nHal" le lu "jah " "to " "the " "Lamb!\n"

  \set stanza = "2."
  "\nLong " "my " yearn "ing " "heart " "was " try "ing "
  "\nTo " en "joy " "this " per "fect " "rest; "
  "\nBut " "when " "I " "gave " o "ver " "\"try" "ing,\" "
  "\nSim" "ply " trust "ing, " "I " "was " "blest. "
  "\nGlo" "ry, " glo "ry, " Je "sus " "saves " "me! "
  "\nBless" "ed " "be " "His " ho "ly " "name; "
  "\nFor " "the " cleans "ing " "blood " "has " "reached " "me, "
  "\nHal" le lu "jah " "to " "the " "Lamb!\n"

  \set stanza = "3."
  "\nI " "am " trust "ing " ev "'ry " mo "ment "
  "\nIn " "the " pre "cious " "blood " app "lied; "
  "\nCalm" "ly " rest "ing " "at " "the " foun "tain, "
  "\nDwell" "ing " "at " "my " Sa "viour's " "side. "
  "\nGlo" "ry, " glo "ry, " Je "sus " "saves " "me! "
  "\nBless" "ed " "be " "His " ho "ly " "name; "
  "\nFor " "the " cleans "ing " "blood " "has " "reached " "me, "
  "\nHal" le lu "jah " "to " "the " "Lamb!\n"

  \set stanza = "4."
  "\nCon" se crat "ed " "to " "Thy " ser "vice, "
  "\nI " "would " "live " "and " "die " "for " "Thee, "
  "\nGlad" "ly " "tell " "the " won "drous " sto "ry "
  "\nOf " sal va "tion " "full " "and " "free. "
  "\nGlo" "ry, " glo "ry, " Je "sus " "saves " "me! "
  "\nBless" "ed " "be " "His " ho "ly " "name; "
  "\nFor " "the " cleans "ing " "blood " "has " "reached " "me, "
  "\nHal" le lu "jah " "to " "the " "Lamb! "
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
      #(layout-set-staff-size 18)
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
