\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hide me, O my Saviour!"
  subtitle    = "Sankey No. 520"
  subsubtitle = "C. C. No. 121"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
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
  c''8. 16 8. bes16 aes4 ees | f2 aes | ees4 aes c bes | bes2. r4 |
  c8. 16 8. bes16 aes4 4 | 2 f | ees4 aes8. bes16 aes4 g | aes2. r4 |
  c2^\markup\smallCaps Refrain. aes | des f, | ees4 aes8. bes16 c4 ees | 2 bes |
  c2 bes4 aes | 2 f | ees4 aes8. bes16 aes4 g | aes2. r4 |
}

alto = \relative {
  \autoBeamOff
  ees'8. 16 8. des16 c4 ees | d2 2 | ees4 4 4 d | ees2. r4 |
  ees8. 16 8. 16 4 ges | f2 des | c4 ees8. 16 4 4 | 2. r4 |
  aes2 ges | f2 des | c4 ees8. 16 4 aes | g2 2 |
  ges2 4 4 | f2 des | c4 ees8. 16 4 4 | 2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 8. ees16 4 aes | 2 f | aes4 4 4 4 | g2. r4 |
  aes8. 16 8. d16 c4 aes | 2 2 | 4 c8. des16 c4 bes8[des] | c2. r4 |
  ees4 4 c aes | 4 4 4 4 | 4 8. g16 aes4 c | bes2 ees |
  ees4 4 des c | des4 4 aes2 | 4 c8. des16 c4 bes8[des] | c2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 8. 16 4 c | des2 2 | c4 4 aes bes | ees2. r4 |
  aes,8. 16 8. 16 4 c | des2 2 | ees4 8. 16 4 4 | aes,2. r4 |
  aes'4 4 4 c, | des4 4 4 4 | aes c8. ees16 aes4 4 | ees2 2 |
  aes4 4 4 4 | des,4 4 2 | ees4 8. 16 4 4 | aes,2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Hide me! hide me!
  O bles -- sed Sa -- viour, hide me!
  O Sa -- viour, keep me Safe -- ly,
  O Lord with Thee!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Hide me! hide me! safe -- ly hide me!
  _ _ _ _ _ _ _
  O my Sa -- viour, keep Thou me!
  _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Hide me, O my Sa -- viour, hide me
  In Thy ho -- ly place;
  Rest -- ing there be -- neath Thy glo -- ry,
  Oh, let me see Thy face!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hide me, when the storm is ra -- ging
  O'er life's trou -- bled sea;
  Like a dove on o -- cean's bil -- lows,
  Oh, let me fly to Thee!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hide me, when my heart is break -- ing
  With its weight of woe;
  When in tears I seek the com -- fort
  Thou canst a -- lone be -- stow.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hide " "me, " "O " "my " Sa "viour, " "hide " "me "
  "\nIn " "Thy " ho "ly " "place; "
  "\nRest" "ing " "there " be "neath " "Thy " glo "ry, "
  "\nOh, " "let " "me " "see " "Thy " "face! "
  "\nHide " "me! " "hide " "me! "
  "\nO " bles "sed " Sa "viour, " "hide " "me! "
  "\nO " Sa "viour, " "keep " "me " Safe "ly, "
  "\nO " "Lord " "with " "Thee!\n"

  \set stanza = "2."
  "\nHide " "me, " "when " "the " "storm " "is " ra "ging "
  "\nO'er " "life's " trou "bled " "sea; "
  "\nLike " "a " "dove " "on " o "cean's " bil "lows, "
  "\nOh, " "let " "me " "fly " "to " "Thee! "
  "\nHide " "me! " "hide " "me! "
  "\nO " bles "sed " Sa "viour, " "hide " "me! "
  "\nO " Sa "viour, " "keep " "me " Safe "ly, "
  "\nO " "Lord " "with " "Thee!\n"

  \set stanza = "3."
  "\nHide " "me, " "when " "my " "heart " "is " break "ing "
  "\nWith " "its " "weight " "of " "woe; "
  "\nWhen " "in " "tears " "I " "seek " "the " com "fort "
  "\nThou " "canst " a "lone " be "stow. "
  "\nHide " "me! " "hide " "me! "
  "\nO " bles "sed " Sa "viour, " "hide " "me! "
  "\nO " Sa "viour, " "keep " "me " Safe "ly, "
  "\nO " "Lord " "with " "Thee! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Hide " "me, " "O " "my " Sa "viour, " "hide " "me "
  "\nIn " "Thy " ho "ly " "place; "
  "\nRest" "ing " "there " be "neath " "Thy " glo "ry, "
  "\nOh, " "let " "me " "see " "Thy " "face! "
  "\nHide " "me! " "hide " "me! " safe "ly " "hide " "me! "
  "\nO " bles "sed " Sa "viour, " "hide " "me! "
  "\nO " "my " Sa "viour, " "keep " "Thou " "me! "
  "\nSafe" "ly, " "O " "Lord " "with " "Thee!\n"

  \set stanza = "2."
  "\nHide " "me, " "when " "the " "storm " "is " ra "ging "
  "\nO'er " "life's " trou "bled " "sea; "
  "\nLike " "a " "dove " "on " o "cean's " bil "lows, "
  "\nOh, " "let " "me " "fly " "to " "Thee! "
  "\nHide " "me! " "hide " "me! " safe "ly " "hide " "me! "
  "\nO " bles "sed " Sa "viour, " "hide " "me! "
  "\nO " "my " Sa "viour, " "keep " "Thou " "me! "
  "\nSafe" "ly, " "O " "Lord " "with " "Thee!\n"

  \set stanza = "3."
  "\nHide " "me, " "when " "my " "heart " "is " break "ing "
  "\nWith " "its " "weight " "of " "woe; "
  "\nWhen " "in " "tears " "I " "seek " "the " com "fort "
  "\nThou " "canst " a "lone " be "stow. "
  "\nHide " "me! " "hide " "me! " safe "ly " "hide " "me! "
  "\nO " bles "sed " Sa "viour, " "hide " "me! "
  "\nO " "my " Sa "viour, " "keep " "Thou " "me! "
  "\nSafe" "ly, " "O " "Lord " "with " "Thee! "
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
