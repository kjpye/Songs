\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Love that wilt Not let me Go."
  subtitle    = "Sankey No. 633"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. A. L. Peace."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Geo. Matheson, D. D."
  meter       = \markup\smallCaps "8.8.8.8.6."
  piece       = \markup\smallCaps "St. Margaret's."

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
  \textMark \markup { \box \bold "A" } s4 s1*3
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 | 4. 8 8 f g aes | aes2(g4) 4 | 4. 8 8 aes bes c |
  es2(des4) 4 | c4. 8 8 bes aes g | bes2(aes4) aes |
  aes4. 8 8 8 g f | ees4. f8 g4 aes | c2. bes4 | aes2.
}

alto = \relative {
  \autoBeamOff
  c'4 | ees4. 8 8 8 d d | ees2(4) 4 | 4. 8 8 8 g aes |
  bes2(4) ees, | 4. 8 e e e e | f2(4) c |
  d4. 8 8 8 8 8 | ees4. 8 4 4 | aes2 g | aes2.
}

tenor = \relative {
  \autoBeamOff
  aes4 | c4. 8 8 8 aes aes | c2(bes4) 4 | des4. 8 8 ees8 8 8 |
  ees2(4) bes | c4. 8 8 8 8 8 | 2(4) aes |
  bes4. f8 8 8 g aes | <aes c>4. aes8 bes4 c | ees2 des | c2.
}

bass = \relative {
  \autoBeamOff
  aes,4 | aes'4. 8 8 8 f f | ees2(4) 4 | des'4. 8 8 c bes aes |
  g2(4) 4 | aes4. 8 g g c, c | f2(4) 4 |
  bes,4. 8 8 8 8 8 | ees4. 8 4 4 | 2 2 | aes,2.
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
  O Love that wilt not let me go, __
  I rest my wea -- ry soul in Thee; __
  I give Thee back the life I owe __
  That in Thine o -- cean- depths its flow
  May rich -- er, full -- er be.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O Light that foll -- owest all my way, __
  I yield my flick -- 'ring torch to Thee: __
  My heart re -- stores its bor -- row'd ray __
  That in Thy sun -- shine's blaze its day
  May bright -- er, fair -- er be.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O Joy that seek -- est me through pain, __
  I can -- not close my heart to Thee; __
  I trace the rain -- bow through the rain, __
  And feel the prom -- ise is not vain
  That morn shall tear -- less be.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Cross that lift -- est up my head, __
  I dare not ask to fly from Thee; __
  I lay in dust life's glo -- ry dead, __
  And from the ground there blos -- soms read
  Life that shall end -- less be.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "Love " "that " "wilt " "not " "let " "me " "go, " 
  "\nI " "rest " "my " wea "ry " "soul " "in " "Thee; " 
  "\nI " "give " "Thee " "back " "the " "life " "I " "owe " 
  "\nThat " "in " "Thine " o cean "depths " "its " "flow "
  "\nMay " rich "er, " full "er " "be.\n"

  \set stanza = "2."
  "\nO " "Light " "that " foll "owest " "all " "my " "way, " 
  "\nI " "yield " "my " flick "'ring " "torch " "to " "Thee: " 
  "\nMy " "heart " re "stores " "its " bor "row'd " "ray " 
  "\nThat " "in " "Thy " sun "shine's " "blaze " "its " "day "
  "\nMay " bright "er, " fair "er " "be.\n"

  \set stanza = "3."
  "\nO " "Joy " "that " seek "est " "me " "through " "pain, " 
  "\nI " can "not " "close " "my " "heart " "to " "Thee; " 
  "\nI " "trace " "the " rain "bow " "through " "the " "rain, " 
  "\nAnd " "feel " "the " prom "ise " "is " "not " "vain "
  "\nThat " "morn " "shall " tear "less " "be.\n"

  \set stanza = "4."
  "\nO " "Cross " "that " lift "est " "up " "my " "head, " 
  "\nI " "dare " "not " "ask " "to " "fly " "from " "Thee; " 
  "\nI " "lay " "in " "dust " "life's " glo "ry " "dead, " 
  "\nAnd " "from " "the " "ground " "there " blos "soms " "read "
  "\nLife " "that " "shall " end "less " "be. "
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
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
            \new NullVoice = "aligner" \alto
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
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
