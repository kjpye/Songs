\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Glorious Victor."
  subtitle    = "Sankey No. 591"
  subsubtitle = "C. C. No. 112"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. Baker."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dr. H. C. G. Moule"
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Whitburn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*8
  \textMark \markup { \box \bold "B" } s2.*8
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
  gis'4 4 4 | b2 e,4 | fis2 4 | gis2. | b4 4 4 | a2 b4 | gis2 a4 | fis2. |
  fis4 4 4 | 2 4 | ais2 4 | b2. | gis4 4 4 | gis(fis) e | e2 dis4 | e2. |
}

alto = \relative {
  \autoBeamOff
  e'4 4 4 | 2 4 | 2 dis4 | e2. | 4 4 4 | 2 dis4 | e2 fis4 | dis2. |
  dis4 4 4 | cis2 dis4 | e2 4 | dis2. | e4 4 d | cis2 4 | b2 4 | 2. |
}

tenor = \relative {
  \autoBeamOff
  b4 4 4 | 2 gis4 | cis2 b4 | 2. | 4 4 e | cis2 b4 | 2 cis4 | b2. |
  b4 4 4 | ais2 b4 | cis2 4 | b2. | 4 4 4 | b(a4.) gis8 | fis4(gis) a | gis2. |
}

bass = \relative {
  \autoBeamOff
  e4 4 4 | gis,2 cis4 | a2 b4 | e2. | gis4 4 4 | fis2 b,4 | e2 a,4 | b2. |
  b4 4 4 | fis'2 4 | 2 4 | b,2. e4 4 4 | a,2 4 | b2 4 | e2. |
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
  My glo -- rious Vic -- tor, Prince Di -- vine,
  Clasp these sur -- ren -- der'd hands in Thine;
  At length my will is all Thine own,
  Glad vas -- sal of a Sa -- viour's throne.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  My Mas -- ter, lead me to Thy door;
  Pierce this now will -- ing ear once more;
  Thy bonds are free -- dom; let me stay
  With Thee to toil, en -- dure, o -- bey.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yes, ear and hand, and thought and will,
  Use all in Thy dear sla -- v'ry still!
  Self's wea -- ry lib -- er -- ties I cast
  Be -- neath Thy feet; there keep them fast.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Tread them still down; and them, I know,
  These hands shall with Thy gifts o'er -- flow;
  And pier -- ced ears shall hear the tone
  Which tells me Thou and I are one.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " glo "rious " Vic "tor, " "Prince " Di "vine, "
  "\nClasp " "these " sur ren "der'd " "hands " "in " "Thine; "
  "\nAt " "length " "my " "will " "is " "all " "Thine " "own, "
  "\nGlad " vas "sal " "of " "a " Sa "viour's " "throne.\n"

  \set stanza = "2."
  "\nMy " Mas "ter, " "lead " "me " "to " "Thy " "door; "
  "\nPierce " "this " "now " will "ing " "ear " "once " "more; "
  "\nThy " "bonds " "are " free "dom; " "let " "me " "stay "
  "\nWith " "Thee " "to " "toil, " en "dure, " o "bey.\n"

  \set stanza = "3."
  "\nYes, " "ear " "and " "hand, " "and " "thought " "and " "will, "
  "\nUse " "all " "in " "Thy " "dear " sla "v'ry " "still! "
  "\nSelf's " wea "ry " lib er "ties " "I " "cast "
  "\nBe" "neath " "Thy " "feet; " "there " "keep " "them " "fast.\n"

  \set stanza = "4."
  "\nTread " "them " "still " "down; " "and " "them, " "I " "know, "
  "\nThese " "hands " "shall " "with " "Thy " "gifts " o'er "flow; "
  "\nAnd " pier "ced " "ears " "shall " "hear " "the " "tone "
  "\nWhich " "tells " "me " "Thou " "and " "I " "are " "one.\n"
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
