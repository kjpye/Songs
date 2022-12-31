\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Near to Thee."
  subtitle    = "Sankey No. 579"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Sterling."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1.*4
  \textMark \markup { \box \bold "B" } s1.*4
  \textMark \markup { \box \bold "C" } s1.*4
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
  d'2 g4 c2 b4 | a(e) fis e2 d4 | g2 a4 b2 g4 | c2 b4 a2. |
  d,2 g4 c2 b4 | a(e) fis e2 d4 | g(b) d d(g,) c | b2 a4 g2. |
  \section \sectionLabel \markup\smallCaps Refrain.
  a2 b4 c2 a4 | b2 c4 d2. | e2 4 d2 b4 | 2 a4 g2. |
}

alto = \relative {
  \autoBeamOff
  d'2 4 e2 d4 | c2 4 b2 4 | d2 4 2 g4 | fis2 g4 fis2. |
  d2 4 g2 4 | c,2 4 b2 4 | b(d) fis e2 g4 | 2 fis4 g2. |
  fis2 g4 a2 fis4 | g2 4 2. | 2 4 2 4 | 2 fis4 g2. |  
}

tenor = \relative {
  \autoBeamOff
  b2 4 g2 4 | fis(a) a g2 4 | 2 fis4 g2 d'4 | 2 4 2. |
  b2 4 e2 d4 | fis,(a) a g2 4 | 2 4 4(c) e | d2 c4 b2. |
  d2 4 2 4 | 2 a4 b2. | c2 4 b2 d4 | 2 c4 b2. |
}

bass = \relative {
  \autoBeamOff
  g2 4 2 4 | d2 4 g,2 4 | b2 d4 g2 b4 | a2 g4 d2. |
  g2 4 2 4 | d2 4 g,2 4 | 2 b4 c2 a4 | d2 4 g2. |
  d2 4 2 4 | g2 4 2. | c,2 e4 g2 4 | d2 4 g,2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Near to Thee, O Lord, to Thee—
  Draw me ev -- er near to Thee.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou whose hand thus far hath led me,
  Where -- so -- e'er my path may be;
  Lord, I pray that thou wilt ev -- er
  Draw, and keep me near to Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When the way is dark and cheer -- less,
  When no ray of light I see,
  May Thine arms of love and mer -- cy
  Draw me ev -- er near to Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou in whom my soul is trust -- ing,
  Hope of life and joy to me;
  While on earth a pil -- grim stran -- ger,
  Draw me ev -- er near to Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "whose " "hand " "thus " "far " "hath " "led " "me, "
  "\nWhere" so "e'er " "my " "path " "may " "be; "
  "\nLord, " "I " "pray " "that " "thou " "wilt " ev "er "
  "\nDraw, " "and " "keep " "me " "near " "to " "Thee. "
  "\nNear " "to " "Thee, " "O " "Lord, " "to " "Thee— "
  "\nDraw " "me " ev "er " "near " "to " "Thee.\n"

  \set stanza = "2."
  "\nWhen " "the " "way " "is " "dark " "and " cheer "less, "
  "\nWhen " "no " "ray " "of " "light " "I " "see, "
  "\nMay " "Thine " "arms " "of " "love " "and " mer "cy "
  "\nDraw " "me " ev "er " "near " "to " "Thee. "
  "\nNear " "to " "Thee, " "O " "Lord, " "to " "Thee— "
  "\nDraw " "me " ev "er " "near " "to " "Thee.\n"

  \set stanza = "3."
  "\nThou " "in " "whom " "my " "soul " "is " trust "ing, "
  "\nHope " "of " "life " "and " "joy " "to " "me; "
  "\nWhile " "on " "earth " "a " pil "grim " stran "ger, "
  "\nDraw " "me " ev "er " "near " "to " "Thee. "
  "\nNear " "to " "Thee, " "O " "Lord, " "to " "Thee— "
  "\nDraw " "me " ev "er " "near " "to " "Thee. "
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
