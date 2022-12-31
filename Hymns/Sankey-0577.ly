\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I need Thee every Hour."
  subtitle    = "Sankey No. 577"
  subsubtitle = "Sankey 880 No. 84"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. A. S. Hawkes."
%  meter       = \markup\smallCaps "meter"
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
  \textMark \markup { \box \bold "A" } s4 s2.*4
  \textMark \markup { \box \bold "B" }    s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*4
  \textMark \markup { \box \bold "D" }    s2.*3 s2
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
  aes'4 | c4. bes8 aes g | aes2 4 | 4.(bes8) aes[f] | ees2 4 |
  bes'4. c8 bes ees, | c'2 aes4 | g4.(aes8) g[ees] | ees2
  \section \sectionLabel \markup\smallCaps Refrain
  c'4 | 4. aes8 des c | 4 bes2 | 4. aes8 c bes | 4 aes4 4 |
  aes4. bes8 aes f | ees4 aes bes | c4.(aes8) bes4 | aes2
}

alto = \relative {
  \autoBeamOff
  c'4 | ees4. des8 c bes | c2 4 | des2 4 | c2 ees4 |
  ees4. 8 8 8 | 2 4 | 4.(f8) ees[des] | ees2 \section
  aes4 | 4. ees8 aes aes | 4 g2 | ees4. 8 8 8 | 4 4 4 |
  f4. 8 8 des | c4 ees f | ees4.(c8) des4 | c2
}

tenor = \relative {
  \autoBeamOff
  ees4 | aes4. f8 ees8 8 | 2 4 | g2 8[aes] | 2 g4 |
  g4. aes8 g g | aes2 c4 | bes2 8[aes] | g2
  ees'4 | 4. c8 f ees | 4 2 | des4. c8 ees des | 4 c aes |
  aes4. 8 8 8 | 4 4 4 | 2 g4 | aes2
}

bass = \relative {
  \autoBeamOff
  aes,4 | 4. des8 ees8 8 | aes,2 4 | des2 4 |aes2 ees'4 |
  ees4. 8 8 8 | aes2 aes,4 | bes2 4 | ees2
  aes4 | 4. 8 8 8 | ees4 2 | 4. 8 8 8 | aes,4 4 c |des4. 8 8 8 | aes4 c des | ees2 4 | aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I need Thee, oh, I need Thee!
  Ev -- 'ry hour I need Thee!
  Oh, bless me now, my Sa -- viour!
  I come to Thee.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I need Thee ev -- 'ry hour,
  Most gra -- cious Lord;
  No ten -- der voice like Thine
  Can peace af -- ford.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I need Thee ev -- 'ry hour,
  Stay Thou near by;
  Temp -- ta -- tions lose their power
  When Thou art nigh.
  
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I need Thee ev -- 'ry hour,
  In joy or pain;
  Come quick -- ly and a -- bide,
  Or life is vain.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I need Thee ev -- 'ry hour,
  Teach me Thy will;
  And Thy rich pro -- mis -- es
  In me ful -- fil.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I need Thee ev -- 'ry hour,
  Most Ho -- ly One;
  Oh, make me Thine in -- deed,
  Thou bles -- sed Son!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "need " "Thee " ev "'ry " "hour, "
  "\nMost " gra "cious " "Lord; "
  "\nNo " ten "der " "voice " "like " "Thine "
  "\nCan " "peace " af "ford. "
  "\nI " "need " "Thee, " "oh, " "I " "need " "Thee! "
  "\nEv" "'ry " "hour " "I " "need " "Thee! "
  "\nOh, " "bless " "me " "now, " "my " Sa "viour! "
  "\nI " "come " "to " "Thee.\n"

  \set stanza = "2."
  "\nI " "need " "Thee " ev "'ry " "hour, "
  "\nStay " "Thou " "near " "by; "
  "\nTemp" ta "tions " "lose " "their " "power "
  "\nWhen " "Thou " "art " "nigh. "
  "\nI " "need " "Thee, " "oh, " "I " "need " "Thee! "
  "\nEv" "'ry " "hour " "I " "need " "Thee! "
  "\nOh, " "bless " "me " "now, " "my " Sa "viour! "
  "\nI " "come " "to " "Thee.\n"
  

  \set stanza = "3."
  "\nI " "need " "Thee " ev "'ry " "hour, "
  "\nIn " "joy " "or " "pain; "
  "\nCome " quick "ly " "and " a "bide, "
  "\nOr " "life " "is " "vain. "
  "\nI " "need " "Thee, " "oh, " "I " "need " "Thee! "
  "\nEv" "'ry " "hour " "I " "need " "Thee! "
  "\nOh, " "bless " "me " "now, " "my " Sa "viour! "
  "\nI " "come " "to " "Thee.\n"

  \set stanza = "4."
  "\nI " "need " "Thee " ev "'ry " "hour, "
  "\nTeach " "me " "Thy " "will; "
  "\nAnd " "Thy " "rich " pro mis "es "
  "\nIn " "me " ful "fil. "
  "\nI " "need " "Thee, " "oh, " "I " "need " "Thee! "
  "\nEv" "'ry " "hour " "I " "need " "Thee! "
  "\nOh, " "bless " "me " "now, " "my " Sa "viour! "
  "\nI " "come " "to " "Thee.\n"

  \set stanza = "5."
  "\nI " "need " "Thee " ev "'ry " "hour, "
  "\nMost " Ho "ly " "One; "
  "\nOh, " "make " "me " "Thine " in "deed, "
  "\nThou " bles "séd " "Son! "
  "\nI " "need " "Thee, " "oh, " "I " "need " "Thee! "
  "\nEv" "'ry " "hour " "I " "need " "Thee! "
  "\nOh, " "bless " "me " "now, " "my " Sa "viour! "
  "\nI " "come " "to " "Thee. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
