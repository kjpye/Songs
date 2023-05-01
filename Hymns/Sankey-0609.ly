\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Heart is Resting, O my God."
  subtitle    = "Sankey No. 609"
  subsubtitle = "C. C. No. 105"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Swiss Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Anna L. Waring."
  meter       = \markup\smallCaps "C. M."
  piece       = \markup\smallCaps "Berne."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
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

soprano = \relative {
  \autoBeamOff
  f'4^\p^\markup\italic Smoothly. | f4(g) f | f(g) f | 2 bes4 | f2 d4 | 2 4 | f(ees) d | c2\fermata \bar "|" \break
  f4 | f(g) f | f(g) f | f2 bes4 | d2 c4 | bes2 4 | a(g) a | bes2
}

alto = \relative {
  \autoBeamOff
  d'4 | d(ees) ees | d(ees) c | d2 4 | d2 bes4 | 2 4 | c(bes) bes | a2\fermata
  ees'4 | d(ees) c | d(ees) ees | d2 4 | f2 g4 | 2 g4 | ees2 4 | d2
}

tenor = \relative {
  \autoBeamOff
  bes4 | 2 a4 | bes2 a4 | bes2 4 | bes2 f4 | 2 4 | a(g) f | 2\fermata
  a4 | bes2 a4 | bes2 a4 | bes2 4 | 2 ees4 | d2 ees4 | c(bes) c | bes2
}

bass = \relative {
  \autoBeamOff
  bes,4 | 2 4 | 2 4 | 2 4 | 2 4 | 2 4 | 2 4 | f2\fermata
  f'4 | bes,2 4 | 2 4 | 2 4 | bes'2 ees,4 | f2 4 | 2 4 | bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  My heart is rest -- ing, O my God:
  I will give thanks and sing.
  My heart is at the se -- cret source
  Of ev -- 'ry pre -- cious thing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Now the frail ves -- sel Thou hast made.
  No hand but Thine shall fill—
  The wa -- ters of the earth have failed,
  And I am thirs -- ty still.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I thirst for springs of heaven -- ly life,
  And here all day they rise;
  I seek the trea -- sure of Thy love,
  And close at hand it lies.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And a "\"new" "song\"" is in my mouth,
  To long- -- loved mu -- sic set—
  Glo -- ry to Thee for all the grace
  I have not tas -- ted yet!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  A prayer re -- pos -- ing on His truth,
  Who hath made all things mine,
  That draws my cap -- tive will to Him,
  And makes it one with Thine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " "heart " "is " rest "ing, " "O " "my " "God: "
  "\nI " "will " "give " "thanks " "and " "sing. "
  "\nMy " "heart " "is " "at " "the " se "cret " "source "
  "\nOf " ev "'ry " pre "cious " "thing.\n"

  \set stanza = "2."
  "\nNow " "the " "frail " ves "sel " "Thou " "hast " "made. "
  "\nNo " "hand " "but " "Thine " "shall " "fill— "
  "\nThe " wa "ters " "of " "the " "earth " "have " "failed, "
  "\nAnd " "I " "am " thirs "ty " "still.\n"

  \set stanza = "3."
  "\nI " "thirst " "for " "springs " "of " heaven "ly " "life, "
  "\nAnd " "here " "all " "day " "they " "rise; "
  "\nI " "seek " "the " trea "sure " "of " "Thy " "love, "
  "\nAnd " "close " "at " "hand " "it " "lies.\n"

  \set stanza = "4."
  "\nAnd " "a " "\"new " "song\" " "is " "in " "my " "mouth, "
  "\nTo " long- "loved " mu "sic " "set— "
  "\nGlo" "ry " "to " "Thee " "for " "all " "the " "grace "
  "\nI " "have " "not " tas "ted " "yet!\n"

  \set stanza = "5."
  "\nA " "prayer " re pos "ing " "on " "His " "truth, "
  "\nWho " "hath " "made " "all " "things " "mine, "
  "\nThat " "draws " "my " cap "tive " "will " "to " "Him, "
  "\nAnd " "makes " "it " "one " "with " "Thine.\n"
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
      #(layout-set-staff-size 19)
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
                                              \wordsFive  \chorus
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
