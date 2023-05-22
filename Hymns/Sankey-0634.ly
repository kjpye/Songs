\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All for Jesus."
  subtitle    = "Sankey No. 634"
  subsubtitle = "Sankey 880 No. 119"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. D. Phelps."
  meter       = \markup\smallCaps "6.4.6.4.6.6.6.4."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'2 c4 b | a4. e8 a2 |g4(fis) e fis | g2(d) | b'2 c4 b |
  a4. e8 a2 | g4(fis) b4. a8 | g1 | a2 4 b | c4. b8 a2 |
  b2 4 c d4. c8 b2 | d c4 b | a4. b8 c2 | g4(fis) b4. a8 | g1 |
}

alto = \relative {
  \autoBeamOff
  d'2 e4 d | e4. 8 2 | d2 c4 4 | b1 | g'2 4 4 |
  e4. 8 2 | d2 g4. fis8 | g1 | fis2 4 g | a4. g8 fis2 |
  d2 4 4 | g4. d8 2 | g d4 d | e4. 8 2 | d2 g4. fis8 | g1 |
}

tenor = \relative {
  \autoBeamOff
  g2 4 4 | c4. 8 2 | b4(a) g a | g1 | d'2 e4 d |
  c4. 8 2 | b4(a) d4. c8 | b1 | d2 4 4 | 4. 8 2 |
  g,2 4 a | b4. a8 g2 | b2 a4 g | a4. gis8 a2 | b4(a) d4. c8 | b1 |
}

bass = \relative {
  \autoBeamOff
  g2 4 4 | c,4. 8 2 | d2 4 4 | g,1 | g'2 4 4 |
  c, 4. 8 2 | d2 4. 8 | g1 | d2 4 4 | 4. 8 2 |
  g2 4 4 | 4. 8 2 | 2 fis4 g | c,4. b8 a2 | d2 4. 8 | g,1 |
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
  Sa -- viour! Thy dy -- ing love
  Thou gav -- est me,
  Nor should I aught with -- hold.
  My Lord, from Thee;
  In love my soul would bow,
  My heart ful -- fil its vow,
  Some off -- ;ring bring Thee now,
  Some -- thing for Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  At the blest mer -- cy seat,
  Plead -- ing for me.
  My fee -- ble faith looks up,
  Je -- sus to Thee:
  Help me the cross to bear,
  Thy won -- drous love de -- clare,
  Some song to raise, or prayer,
  Some -- thing for me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Give me a faith -- ful heart—
  Like -- ness to Thee—
  That each de -- part -- ing day
  Hence -- forth may see
  Some work of love be -- gun,
  Some deed of kind -- ness done,
  Some wand -- 'rer sought and won,
  Some -- thing for Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  All that I am and love—
  Thy gifts so free—
  In joy, in grief, through life,
  O Lord, for Thee!
  And when Thy face I see,
  My ran -- somed soul shall be,
  Through all e -- ter -- ni -- ty,
  Some -- thing for Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sa" "viour! " "Thy " dy "ing " "love "
  "\nThou " gav "est " "me, "
  "\nNor " "should " "I " "aught " with "hold. "
  "\nMy " "Lord, " "from " "Thee; "
  "\nIn " "love " "my " "soul " "would " "bow, "
  "\nMy " "heart " ful "fil " "its " "vow, "
  "\nSome " off ";ring " "bring " "Thee " "now, "
  "\nSome" "thing " "for " "Thee.\n"

  \set stanza = "2."
  "\nAt " "the " "blest " mer "cy " "seat, "
  "\nPlead" "ing " "for " "me. "
  "\nMy " fee "ble " "faith " "looks " "up, "
  "\nJe" "sus " "to " "Thee: "
  "\nHelp " "me " "the " "cross " "to " "bear, "
  "\nThy " won "drous " "love " de "clare, "
  "\nSome " "song " "to " "raise, " "or " "prayer, "
  "\nSome" "thing " "for " "me.\n"

  \set stanza = "3."
  "\nGive " "me " "a " faith "ful " "heart— "
  "\nLike" "ness " "to " "Thee— "
  "\nThat " "each " de part "ing " "day "
  "\nHence" "forth " "may " "see "
  "\nSome " "work " "of " "love " be "gun, "
  "\nSome " "deed " "of " kind "ness " "done, "
  "\nSome " wand "'rer " "sought " "and " "won, "
  "\nSome" "thing " "for " "Thee.\n"

  \set stanza = "4."
  "\nAll " "that " "I " "am " "and " "love— "
  "\nThy " "gifts " "so " "free— "
  "\nIn " "joy, " "in " "grief, " "through " "life, "
  "\nO " "Lord, " "for " "Thee! "
  "\nAnd " "when " "Thy " "face " "I " "see, "
  "\nMy " ran "somed " "soul " "shall " "be, "
  "\nThrough " "all " e ter ni "ty, "
  "\nSome" "thing " "for " "Thee. "
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
