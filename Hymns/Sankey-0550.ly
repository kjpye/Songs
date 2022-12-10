\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hold Thou my Hand!"
  subtitle    = "Sankey No. 550"
  subsubtitle = "Sankey 880 No. 572"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "pGrace J. Frances."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2*4
  \textMark \markup { \box \bold "B" } s2*4
  \textMark \markup { \box \bold "C" } s2*4
  \textMark \markup { \box \bold "D" } s2*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 d8 ees | f4. ees8 | 8 c' bes aes | aes4 g |
  bes4 g8 aes | bes4 c | ees,8 8 g8. 16 | ees2 |
  ees4 d8 ees | f4. ees8 | aes8 c ees des | c4 bes |
  ees4 des8 c | f,4 bes | aes8 g c8. bes16 | aes2 |
  
}

alto = \relative {
  \autoBeamOff
  c'4 b8 c | des4. c8 | 8 ees8 8 8 | 4 4 |
  ees4 8 8 | 4 4 | 8 8 d8. 16 | ees4(des) |
  c4 b8 c | des4. c8 | ees8 8 8 f | ees4 4 |
  ees4 8 8 | des4 f | ees8 8 g8. 16 | aes2 |
}

tenor = \relative {
  \autoBeamOff
  aes4 8 8 |  4. 8 | 8 8 8 8 | c4 bes |
  g4 bes8 c | g4 aes | g8 8 bes8. aes16 | g2 |
  aes4 8 8 | 4. 8 | 8 8 8 8 | 4 g |
  aes4 g8 aes | 4 des | c8 bes ees8. des16 | c2 |
}

bass = \relative {
  \autoBeamOff
  aes,4 8 8 | 4. 8 | 8 8 c c | ees4 4 |
  ees4 8 8 | 4 aes, | bes8 8 8. 16 | ees2 |
  aes,4 8 8 | 4. 8 | c aes c des | ees4 4 |
  c4 bes8 aes | des4 bes | ees8 8 8. 16 | aes,2 |
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
  Hold Thou my hand! so weak I am, and help -- less,
  I dare not take one step with -- out Thy aid;
  Hold Thou my hand! for then, O lov -- ing Sa -- viour,
  No dread of ill shall make my soul a -- fraid.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hold Thou my hand! and clo -- ser, clo -- ser draw me
  To Thy dear self— my hope, my joy, my all;
  Hold Thou my hand, lest hap -- ly I should wan -- der:
  And, miss -- ing Thee, my trem -- bling feet should fall.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hold Thou my hand! the way is dark be -- fore me
  With -- out the sun -- light of Thy face Di -- vine;
  But when by faith I catch its rad -- iant glo -- ry,
  What heights of joy, what rap -- turous songs are mine!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Hold Thou my hand! that when I reach the mar -- gin
  Of that lone ri -- ver Thou didst cross for me,
  A heaven -- ly light may flash a -- long its wat -- ers,
  And ev -- 'ry wave like cry -- stal bright shall be.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hold " "Thou " "my " "hand! " "so " "weak " "I " "am, " "and " help "less, "
  "\nI " "dare " "not " "take " "one " "step " with "out " "Thy " "aid; "
  "\nHold " "Thou " "my " "hand! " "for " "then, " "O " lov "ing " Sa "viour, "
  "\nNo " "dread " "of " "ill " "shall " "make " "my " "soul " a "fraid.\n"

  \set stanza = "2."
  "\nHold " "Thou " "my " "hand! " "and " clo "ser, " clo "ser " "draw " "me "
  "\nTo " "Thy " "dear " "self— " "my " "hope, " "my " "joy, " "my " "all; "
  "\nHold " "Thou " "my " "hand, " "lest " hap "ly " "I " "should " wan "der: "
  "\nAnd, " miss "ing " "Thee, " "my " trem "bling " "feet " "should " "fall.\n"

  \set stanza = "3."
  "\nHold " "Thou " "my " "hand! " "the " "way " "is " "dark " be "fore " "me "
  "\nWith" "out " "the " sun "light " "of " "Thy " "face " Di "vine; "
  "\nBut " "when " "by " "faith " "I " "catch " "its " rad "iant " glo "ry, "
  "\nWhat " "heights " "of " "joy, " "what " rap "turous " "songs " "are " "mine!\n"

  \set stanza = "4."
  "\nHold " "Thou " "my " "hand! " "that " "when " "I " "reach " "the " mar "gin "
  "\nOf " "that " "lone " ri "ver " "Thou " "didst " "cross " "for " "me, "
  "\nA " heaven "ly " "light " "may " "flash " a "long " "its " wat "ers, "
  "\nAnd " ev "'ry " "wave " "like " cry "stal " "bright " "shall " "be. "
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
