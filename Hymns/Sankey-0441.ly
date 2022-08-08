\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Silent Midnight Watches."
  subtitle    = "Sankey No. 441"
  subsubtitle = "Sankey 880 No. 217"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dr. A. C. Coxe."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4.\omit\mf 8 4-! 4-!
  g4-! g-! aes-! g-!
  f4. 8 g4 f
  ees2. r4
  g4. 8 4 4 % B
  g4 g aes g
  f4. 8 g4 a
  bes2. r4
  aes4. 8 4 4 % C
  aes4^\> g\! g^\> f\! c'4^\cresc bes aes g
  f2. r4
  g4.^\p 8 4 4 % D
  g4 4 aes g
  f4. 8 g4 f
  ees2. r4
}

alto = \relative {
  \autoBeamOff
  ees'4.\omit\mf 8 4-! 4-!
  ees4-! 4-! 4-! 4-!
  d4. 8 4 4
  ees2. r4
  ees4. 8 4 4 % B
  ees4 4 4 4
  d4. 8 ees4 4
  d2. r4
  f4. 8 4 4 % C
  f4^\> ees\! ees^\> d\!
  aes'4^\cresc g f ees
  d2. r4
  ees4.^\p 8 4 4 % D
  ees4 4 4 4
  d4. 8 4 4
  ees2. r4
}

tenor = \relative {
  \autoBeamOff
  bes4.\omit\mf 8 4-! 4-!
  bes4-! 4-! c-! bes-!
  aes4. 8 bes4 aes
  g2. r4
  bes4. 8 4 4 % B
  bes4 4 c bes
  bes4. 8 4 c
  bes2. r4
  bes4. 8 4 4 % C
  bes4\omit\> 4\! 4\omit\> 4\!
  bes4 4 4 4
  bes2. r4
  bes4. 8 4 4 % D
  ees4 des c bes
  aes4. 8 bes4 aes
  g2.\omit\p r4
}

bass = \relative {
  \autoBeamOff
  ees4.\omit\mf 8 4-! 4-!
  ees4-! 4-! 4-! 4-!
  bes4. 8 4 4
  ees2. r4
  ees4. 8 4 4 % B
  ees4 4 4 4
  f4. 8 4 4
  bes,2. r4
  bes4. 8 4 4 % C
  bes4\omit\> 4\! 4\omit\> 4\!
  bes4 c d ees
  bes2. r4
  ees4.\omit\p 8 4 4 % D
  ees4 4 4 4
  bes4. 8 4 4
  ees2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In the si -- lent mid -- night wat -- ches,
  List— thy bo -- som's door!
  How it knock -- eth, knock -- eth, knock -- eth,
  Knock -- eth ev -- er -- more!
  Say not 'tis thy pulse is beat -- ing,
  'Tis thy heart of sin;
  'Tis thy Sa -- viour knocks, and cri -- eth,
  "\"Rise," and let Me "in!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Death comes down with reck -- less foot -- steps
  To the hall and hut;
  Think you death will tar -- ry knock -- ing
  When the door is shut?
  Je -- sus wait -- eth, wait -- eth, wait -- eth;
  But the door is fast:
  Grieved, a -- way thy Sa -- viour go -- eth.
  Death breaks in at last.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Then 'tis time to stand en -- treat -- ing
  Christ to let thee in;
  At the gate of hea -- ven beat -- ing,
  Wail -- ing for thy sin!
  Bay! a -- las, thou guil -- ty crea -- ture!
  Hast thou then for -- got?
  Je -- sus wait -- ed long to know thee;
  Now He knows thee not!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " si "lent " mid "night " wat "ches, "
  "\nList— " "thy " bo "som's " "door! "
  "\nHow " "it " knock "eth, " knock "eth, " knock "eth, "
  "\nKnock" "eth " ev er "more! "
  "\nSay " "not " "'tis " "thy " "pulse " "is " beat "ing, "
  "\n'Tis " "thy " "heart " "of " "sin; "
  "\n'Tis " "thy " Sa "viour " "knocks, " "and " cri "eth, "
  "\n\"Rise, " "and " "let " "Me " "in!\"\n"

  \set stanza = "2."
  "Death " "comes " "down " "with " reck "less " foot "steps "
  "\nTo " "the " "hall " "and " "hut; "
  "\nThink " "you " "death " "will " tar "ry " knock "ing "
  "\nWhen " "the " "door " "is " "shut? "
  "\nJe" "sus " wait "eth, " wait "eth, " wait "eth; "
  "\nBut " "the " "door " "is " "fast: "
  "\nGrieved, " a "way " "thy " Sa "viour " go "eth. "
  "\nDeath " "breaks " "in " "at " "last.\n"

  \set stanza = "3."
  "Then " "'tis " "time " "to " "stand " en treat "ing "
  "\nChrist " "to " "let " "thee " "in; "
  "\nAt " "the " "gate " "of " hea "ven " beat "ing, "
  "\nWail" "ing " "for " "thy " "sin! "
  "\nBay! " a "las, " "thou " guil "ty " crea "ture! "
  "\nHast " "thou " "then " for "got? "
  "\nJe" "sus " wait "ed " "long " "to " "know " "thee; "
  "\nNow " "He " "knows " "thee " "not!"
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

singlescore = {
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
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
