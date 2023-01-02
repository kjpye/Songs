\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Give me Rest from Self"
  subtitle    = "Sankey No. 589"
  subsubtitle = "C. C. No. 43"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. H. C. G. Moule."
  arranger    = "(Rt. Rev. Bishop of Durham)"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. H. H."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*6 s2
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
  a'4 | 2 4 | 2 gis4 | g2 4 | fis2\fermata a4 | d2 4 | 2 e4 | cis2\fermata \bar "|" \break
  cis4 | d2 4 | cis2 b4 | a2 gis4 | g2\fermata fis4 | 2 e4 | b'2 cis,4 | d2\fermata
}

alto = \relative {
  \autoBeamOff
  d'4 | 2 4 | 2 4 | d2 cis4 | d2\fermata 4 | fis2 4 | gis2 4 | a2\fermata
  a4 | 2 4 | d,2 4 | 2 4 | cis2\fermata 4 | b2 4 | e2 a,4 | 2\fermata
}

tenor = \relative {
  \autoBeamOff
  a4 | 2 4 | b2 4 | a2 4 | 2\fermata 4 | d2 4 | 2 4 | e2\fermata
  e4 | d2 4 | g,2 4 | a2 b4 | a2\fermata 4 | g2 4 | b2 e,4 | fis2\fermata
}

bass = \relative {
  \autoBeamOff
  fis4 | 2 4 | e2 4 | a,2 4 | d2\fermata fis4 | b,2 b'4 | 2 4 | a2\fermata
  g4 | fis2 4 | g2 4 | dis2 e4 | a,2\fermata d4 | g2 4 | 2 a,4 | d2\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  My Sa -- viour, Thou hast of -- fered rest:
  Oh, give it, then, to me!—
  The rest of ceas -- ing from my -- self,
  To find my all in Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  This cru -- el self, oh, how it strives
  And works with -- in my breast,
  To come be -- tween Thee and my soul,
  And keep me back from rest!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  How ma -- ny sub -- tle forms it takes
  Of seem -- ing ver -- i -- ty
  As if it were not \markup\italic safe to rest,
  And ven -- ture all on Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Lord, I seek a ho -- ly rest,
  A vic -- t'ry o -- ver sin!
  I seek that Thou a -- lone shouldst reign
  O'er all with -- out, with -- in.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  In Thy strong hand I lay me down—
  So shall the work be done:
  For who can work so won -- drous -- ly
  As the Al -- migh -- ty one?
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Work on, then, Lord, till on my soul
  E -- ter -- nal light shall break;
  And, in Thy like -- ness pre -- fec -- ted,
  I "\"sat" -- is -- "fied\"" shall wake.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " Sa "viour, " "Thou " "hast " of "fered " "rest: "
  "\nOh, " "give " "it, " "then, " "to " "me!— "
  "\nThe " "rest " "of " ceas "ing " "from " my "self, "
  "\nTo " "find " "my " "all " "in " "Thee.\n"

  \set stanza = "2."
  "\nThis " cru "el " "self, " "oh, " "how " "it " "strives "
  "\nAnd " "works " with "in " "my " "breast, "
  "\nTo " "come " be "tween " "Thee " "and " "my " "soul, "
  "\nAnd " "keep " "me " "back " "from " "rest!\n"

  \set stanza = "3."
  "\nHow " ma "ny " sub "tle " "forms " "it " "takes "
  "\nOf " seem "ing " ver i "ty "
  "\nAs " "if " "it " "were " "not " \markup\italic "safe " "to " "rest, "
  "\nAnd " ven "ture " "all " "on " "Thee.\n"

  \set stanza = "4."
  "\nO " "Lord, " "I " "seek " "a " ho "ly " "rest, "
  "\nA " vic "t'ry " o "ver " "sin! "
  "\nI " "seek " "that " "Thou " a "lone " "shouldst " "reign "
  "\nO'er " "all " with "out, " with "in.\n"

  \set stanza = "5."
  "\nIn " "Thy " "strong " "hand " "I " "lay " "me " "down— "
  "\nSo " "shall " "the " "work " "be " "done: "
  "\nFor " "who " "can " "work " "so " won drous "ly "
  "\nAs " "the " Al migh "ty " "one?\n"

  \set stanza = "6."
  "\nWork " "on, " "then, " "Lord, " "till " "on " "my " "soul "
  "\nE" ter "nal " "light " "shall " "break; "
  "\nAnd, " "in " "Thy " like "ness " pre fec "ted, "
  "\nI " "\"sat" is "fied\" " "shall " "wake. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsSix   \chorus
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
