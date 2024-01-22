\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dismiss me not Thy Service, Lord."
  subtitle    = "Sankey No. 785"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{From \smallCaps "Spohr"}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. T. Lynch."
  meter       = \markup\smallCaps "8.5."
  piece       = \markup\smallCaps "Spohr."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*6 s2
  \textMark \markup { \box \bold "C" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | b'2 4 | d2 g,4 |  b2 a4 | g2 d'4 | e(d) b | c2 d4 | b2 \bar "|" \break
  b4 | a2 gis4 | a2 b4 | c2 e4 | d2 c4 | b(ais) b | d2 cis4 | b2 \bar "|" \break
  d,4 | b'2 4 | d2 g,4 | b2 a4 | g2 d'4 | e(d) b | c2 fis,4 | g2
}

alto = \relative {
  \autoBeamOff
  d'4 | g2 4 | 2 4 | 2 fis4 | g2 4 | 2 4 | 2 fis4 | g2
  g4 | fis2 eis4 | fis2 gis4 | a2 bes4 | a2 4 | g2 eis4 | fis2 e4 | d2
  d4 | g2 4 | 2 4 | 2 fis4 | g2 4 | 2 4 | 2 d4 | 2
}

tenor = \relative {
  \autoBeamOff
  d'4 | 2 4 | 2 b4 | d2 c4 | b2 4 | c(d) e | 2 d4 | 2
  d4 | 2 4 | 2 4 | e2 cis4 | d2 4 | d(cis) d | b2 ais4 | b2
  b4 | 2 4 | 2 b4 | d2 c4 | b2 4 | c(d) e | 2 c4 | b2
}

bass = \relative {
  \autoBeamOff
  d4 | g2 4 | b2 g4 | d2 4 | g2 4 | c(b) e, | a2 d,4 | g2
  g4 | d2 4 | d'(c) b | a2 g4 | fis2 4 | g2 4 | fis2 4 | b,2
  d4 | g2 4 | b2 g4 | d2 4 | g2 g,4 | c'4(b) e, | a2 d,4 | g,2
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Dis -- miss me not Thy ser -- vice, Lord,
  But train me for Thy will;
  For e -- ven I, in fields so broad,
  Some du -- ties may ful -- fil;
  And I will ask for no re -- ward,
  Ex -- cept to serve Thee still.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  How ma -- ny serve, how ma -- ny more
  May to the ser -- vice come:
  To tend the vines, the grapes to store,
  Thou dost ap -- point for some:
  Thou hast Thy young men at the war,
  Thy lit -- tle ones at home.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  All works are good, and each is best
  As most it pleas -- es Thee;
  Each wor -- ker pleas -- es when the rest
  He serves in cha -- ri -- ty;
  And neith -- er man nor work un -- blest
  Wilt Thou per -- mit to be.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Our Mas -- ter all the work hath done
  He awsks of us to -- day;
  Shar -- ing His ser -- vice, ev -- 'ry one
  Share too His Son -- ship may:
  Lord, I would serve and be a son;
  Dis -- miss me not, I pray.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Dis" "miss " "me " "not " "Thy " ser "vice, " "Lord, "
  "\nBut " "train " "me " "for " "Thy " "will; "
  "\nFor " e "ven " "I, " "in " "fields " "so " "broad, "
  "\nSome " du "ties " "may " ful "fil; "
  "\nAnd " "I " "will " "ask " "for " "no " re "ward, "
  "\nEx" "cept " "to " "serve " "Thee " "still.\n"

  \set stanza = "2."
  "\nHow " ma "ny " "serve, " "how " ma "ny " "more "
  "\nMay " "to " "the " ser "vice " "come: "
  "\nTo " "tend " "the " "vines, " "the " "grapes " "to " "store, "
  "\nThou " "dost " ap "point " "for " "some: "
  "\nThou " "hast " "Thy " "young " "men " "at " "the " "war, "
  "\nThy " lit "tle " "ones " "at " "home.\n"

  \set stanza = "3."
  "\nAll " "works " "are " "good, " "and " "each " "is " "best "
  "\nAs " "most " "it " pleas "es " "Thee; "
  "\nEach " wor "ker " pleas "es " "when " "the " "rest "
  "\nHe " "serves " "in " cha ri "ty; "
  "\nAnd " neith "er " "man " "nor " "work " un "blest "
  "\nWilt " "Thou " per "mit " "to " "be.\n"

  \set stanza = "4."
  "\nOur " Mas "ter " "all " "the " "work " "hath " "done "
  "\nHe " "awsks " "of " "us " to "day; "
  "\nShar" "ing " "His " ser "vice, " ev "'ry " "one "
  "\nShare " "too " "His " Son "ship " "may: "
  "\nLord, " "I " "would " "serve " "and " "be " "a " "son; "
  "\nDis" "miss " "me " "not, " "I " "pray. "
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

#(set-global-staff-size 20)

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
