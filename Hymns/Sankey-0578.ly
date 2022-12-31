\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Saviour with me."
  subtitle    = "Sankey No. 578"
  subsubtitle = "C. C. No. 234"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. Edwards."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } \partial 4 s4 s1*2
  \textMark \markup { \box \bold "D" } s1*2
  \textMark \markup { \box \bold "E" } s1*3 s2.
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
  \global
  \autoBeamOff \sectionLabel \markup\smallCaps Duet.
  g'8. aes16 | bes4. g8 ees'8. c16 | bes4 g c8. bes16 | f4. g8 bes8. aes16 | g2 \bar "|" \break
  g8. aes16 | bes4. g8 ees'8. c16 | bes4 g | ees'8. 16 | d4. c8 bes8. a16 | bes2 \break
  \section \sectionLabel \markup\smallCaps Chorus \time 4/4 \partial 4
  bes8. 16 | bes2~8. aes16 g8. f16 | g2. ees'8. d16 |
  c2~8. ees16 d8. c16 | bes2. 8. 16
  ees2~8. g,16 aes8. bes16 | d4 c2 aes8. f16 | ees4 g g4. f8 | ees2 r4
}

alto = \relative {
  \autoBeamOff
  ees'8. f16 | g4. ees8 g8. aes16 | g4 ees aes8. g16 | d4. ees8 g8. f16 | ees2
  ees8. f16 | f4. ees8 f8. aes16 | f4 ees g8. 16 | f4. ees8 d8. c16 | d2
  \partCombineApart r4 | r \partCombineAutomatic aes'8. f16 d8. f16 ees8. d16 | ees4 8. 16 4 g8. 16
  aes2~8. c16 bes8. aes16 | g2. r4 |
  r4 g8. 16 8. ees16 d8. ees16 | 4 2 8. c16 | bes4 ees d4. bes8 | 2 r4
}

tenor = \relative {
  \autoBeamOff \oneVoice
  r4 | <ees, ees'> <ees' g bes> r | <ees, ees'> <ees' bes'> r | <bes, bes'> <bes' f' bes> r | <ees, ees'> <ees' g aes>
  r4 | <ees, ees'> <ees' g bes> r | <ees, ees'> <ees' bes'> r | <f, f'>4-! q-! q-! | <bes f'>2 \section
  r4 | r \voiceOne d8. f16 bes8. 16 8. 16 | 4 8. 16 4 r |
  r4 ees8. 16 8. 16 8. 16 | 4 8. 16 4 r |
  r4 bes8. 16 8. 16 8. 16 | aes4 2 c8. aes16 | g4 bes4 4. aes8 | g2 r4
  }

bass = \relative {
  \autoBeamOff
  s4 | s2.*3 s2
  s4 s2.*3 s2
  s4 s bes,8. 16 8. 16 8. 16 | ees4 8. 16 4 r |
  r4 aes8. 16 8. 16 8. 16 | ees4 8. 16 4 r |
  r4 ees8. 16 8. 16 f8. g16 | aes4 2 aes,8. 16 | bes4 4 4. 8 | ees2 r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Then my soul __ shall fear no ill __
  While He leads __ me where He will; __
  I will go __ with -- out a mur -- mur.
  And His foot -- steps fol -- low still.
}

chorusMen = \lyricmode {
  Then my soul shall fear no ill,
  fear no ill,
  While He leads me where He will,
  where He will;
  I will go _ _ _ _ _
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I would have the Sa -- viour with me,
  For I dare not walk a -- lone;
  I would feel His pre -- sence near me,
  And His arm a -- round me thrown.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I would have the Sa -- viour with me,
  For my faith, at best, is weak;
  He can whis -- per words of com -- fort
  That no o -- ther voice can speak.
  
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I would have the Sa -- viour with me,
  In the on -- ward march of life,
  Through the tem -- pest and the sun -- shine,
  Through the bat -- tle and the strife,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I would have the Sa -- viour with me,
  That His eye the way may guide,
  Till I reach the vale of Jor -- dan,
  Till I cross the roll -- ing tide.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "I " "would " "have " "the " Sa "viour " "with " "me, "
  "\nFor " "I " "dare " "not " "walk " a "lone; "
  "\nI " "would " "feel " "His " pre "sence " "near " "me, "
  "\nAnd " "His " "arm " a "round " "me " "thrown. "
  "\nThen " "my " "soul "  "shall " "fear " "no " "ill " 
  "\nWhile " "He " "leads "  "me " "where " "He " "will; " 
  "\nI " "will " "go "  with "out " "a " mur "mur. "
  "\nAnd " "His " foot "steps " fol "low " "still.\n"

  \set stanza = "2."
  "\nI " "would " "have " "the " Sa "viour " "with " "me, "
  "\nFor " "my " "faith, " "at " "best, " "is " "weak; "
  "\nHe " "can " whis "per " "words " "of " com "fort "
  "\nThat " "no " o "ther " "voice " "can " "speak. "
  "\nThen " "my " "soul "  "shall " "fear " "no " "ill " 
  "\nWhile " "He " "leads "  "me " "where " "He " "will; " 
  "\nI " "will " "go "  with "out " "a " mur "mur. "
  "\nAnd " "His " foot "steps " fol "low " "still.\n"

  \set stanza = "3."
  "\nI " "would " "have " "the " Sa "viour " "with " "me, "
  "\nIn " "the " on "ward " "march " "of " "life, "
  "\nThrough " "the " tem "pest " "and " "the " sun "shine, "
  "\nThrough " "the " bat "tle " "and " "the " "strife, "
  "\nThen " "my " "soul "  "shall " "fear " "no " "ill " 
  "\nWhile " "He " "leads "  "me " "where " "He " "will; " 
  "\nI " "will " "go "  with "out " "a " mur "mur. "
  "\nAnd " "His " foot "steps " fol "low " "still.\n"

  \set stanza = "4."
  "\nI " "would " "have " "the " Sa "viour " "with " "me, "
  "\nThat " "His " "eye " "the " "way " "may " "guide, "
  "\nTill " "I " "reach " "the " "vale " "of " Jor "dan, "
  "\nTill " "I " "cross " "the " roll "ing " "tide. "
  "\nThen " "my " "soul "  "shall " "fear " "no " "ill " 
  "\nWhile " "He " "leads "  "me " "where " "He " "will; " 
  "\nI " "will " "go "  with "out " "a " mur "mur. "
  "\nAnd " "His " foot "steps " fol "low " "still. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "I " "would " "have " "the " Sa "viour " "with " "me, "
  "\nFor " "I " "dare " "not " "walk " a "lone; "
  "\nI " "would " "feel " "His " pre "sence " "near " "me, "
  "\nAnd " "His " "arm " a "round " "me " "thrown. "
  "\nThen " "my " "soul " "shall " "fear " "no " "ill, "
  "\nfear " "no " "ill, "
  "\nWhile " "He " "leads " "me " "where " "He " "will; "
  "\nI " "will " "go " with "out " "a " mur "mur, "
  "\nAnd " "His " foot "steps " fol "low " "still.\n"

  \set stanza = "2."
  "\nI " "would " "have " "the " Sa "viour " "with " "me, "
  "\nFor " "my " "faith, " "at " "best, " "is " "weak; "
  "\nHe " "can " whis "per " "words " "of " com "fort "
  "\nThat " "no " o "ther " "voice " "can " "speak. "
  "\nThen " "my " "soul " "shall " "fear " "no " "ill, "
  "\nfear " "no " "ill, "
  "\nWhile " "He " "leads " "me " "where " "He " "will; "
  "\nI " "will " "go " with "out " "a " mur "mur, "
  "\nAnd " "His " foot "steps " fol "low " "still.\n"

  \set stanza = "3."
  "\nI " "would " "have " "the " Sa "viour " "with " "me, "
  "\nIn " "the " on "ward " "march " "of " "life, "
  "\nThrough " "the " tem "pest " "and " "the " sun "shine, "
  "\nThrough " "the " bat "tle " "and " "the " "strife, "
  "\nThen " "my " "soul " "shall " "fear " "no " "ill, "
  "\nfear " "no " "ill, "
  "\nWhile " "He " "leads " "me " "where " "He " "will; "
  "\nI " "will " "go " with "out " "a " mur "mur, "
  "\nAnd " "His " foot "steps " fol "low " "still.\n"

  \set stanza = "4."
  "\nI " "would " "have " "the " Sa "viour " "with " "me, "
  "\nThat " "His " "eye " "the " "way " "may " "guide, "
  "\nTill " "I " "reach " "the " "vale " "of " Jor "dan, "
  "\nTill " "I " "cross " "the " roll "ing " "tide. "
  "\nThen " "my " "soul " "shall " "fear " "no " "ill; "
  "\nWhile " "He " "leads " "me " "where " "He " "will, "
  "\nwhere " "He " "will; "
  "\nI " "will " "go " with "out " "a " mur "mur, "
  "\nAnd " "His " foot "steps " fol "low " "still. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Then " "my " "soul " "shall " "fear " "no " "ill, "
  "\nfear " "no " "ill, "
  "\nWhile " "He " "leads " "me " "where " "He " "will, "
  "\nwhere " "He " "will; "
  "\nI " "will " "go " with "out " "a " mur "mur, "
  "\nAnd " "His " foot "steps " fol "low " "still.\n"

  \set stanza = "2."
  "\nThen " "my " "soul " "shall " "fear " "no " "ill, "
  "\nfear " "no " "ill, "
  "\nWhile " "He " "leads " "me " "where " "He " "will, "
  "\nwhere " "He " "will; "
  "\nI " "will " "go " with "out " "a " mur "mur, "
  "\nAnd " "His " foot "steps " fol "low " "still.\n"

  \set stanza = "3."
  "\nThen " "my " "soul " "shall " "fear " "no " "ill, "
  "\nfear " "no " "ill, "
  "\nWhile " "He " "leads " "me " "where " "He " "will, "
  "\nwhere " "He " "will; "
  "\nI " "will " "go " with "out " "a " mur "mur, "
  "\nAnd " "His " foot "steps " fol "low " "still.\n"

  \set stanza = "4."
  "\nThen " "my " "soul " "shall " "fear " "no " "ill, "
  "\nfear " "no " "ill, "
  "\nWhile " "He " "leads " "me " "where " "He " "will, "
  "\nwhere " "He " "will; "
  "\nI " "will " "go " with "out " "a " mur "mur, "
  "\nAnd " "His " foot "steps " fol "low " "still. "
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
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiMen
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
            \new NullVoice = alignerB { \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB \chorusMen
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
            \new NullVoice = alignerB { \repeat unfold \verses \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB { \repeat unfold \verses \chorusMen }
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
