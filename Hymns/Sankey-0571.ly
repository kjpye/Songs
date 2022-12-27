\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "More about Jesus."
  subtitle    = "Sankey No. 571"
  subsubtitle = "C. C. No. 93"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Hewitt."
  meter       = \markup\smallCaps "L. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*4
  \textMark \markup { \box \bold "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8. 16 8 4 f8 |aes4 8 4. | bes8. 16 8 4 des8 | c4 8 4. | \break
  ees8. 16 8 4 des8 | c4 8 4. | bes8. c16 des8 c4 bes8 | aes4 g8 aes4. | \break
  \section \sectionLabel \markup\smallCaps Refrain.
  c4. ees,8. f16 ees8 | aes4. 4. | bes4. 8. c16 des8 | c4. 4. | \break
  ees8. 16 8 4 des8 | c4 8 4. | bes8. c16 des8 c4 bes8 | aes4 g8 aes4. |
}

alto = \relative {
  \autoBeamOff
  c'8. 16 8 4 des8 | c4 8 4. | ees8. 16 8 4 8 | 4 8 4. |
  ees8. 16 8 4 8 | 4 8 4. | des8. ees16 8 4 f8 | ees4 des8 c4. |
  ees4. c8. des16 c8 | 4. 4. | ees4. 8. 16 8 | 4. 4. |
  ees8. 16 8 4 8 | 4 8 4. | des8. ees16 8 4 f8 | ees4 des8 c4. |
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 8 4 8 | ees4 8 4. | g8. 16 8 4 bes8 | aes4 8 4. |
  c8. 16 8 4 bes8 | aes4 8 4. | f8. aes16 g8 aes4 des8 | c4 bes8 aes4. | \section
  aes4. 8. 16 8 | ees4. 4. | g4. 8. aes16 bes8 | aes4. 4. |
  c8. 16 8 4 bes8 | aes4 8 4. | f8. aes16 g8 aes4 des8 | c4 bes8 aes4.
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 8 4 8 | 4 8 4. | ees'8. 16 8 4 8 | aes4 8 4. |
  aes8. 16 8 4 8 | 4 8 4. | des,8. c16 bes8 d4 des8 | ees4 8 aes,4. |
  aes4. 8. 16 8 | 4. 4. | ees'4. 8. 16 8 | aes,4. 4. |
  aes'8. 16 8 4 8 | 4 8 4. | des,8. c16 bes8 c4 des8 |c4 bes8 aes4. |  
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  More, more a -- bout Je -- sus;
  More, more a -- bout Je -- sus;
  More of His sav -- ing ful -- ness see,
  More of His love who died for me.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  More a -- bout Je -- sus would I know,
  More of His grace to oth -- ers show;
  More of His sav -- ing ful -- ness see,
  More of His love— who died for me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  More a -- bout Je -- sus let me learn,
  More of His ho -- ly will dis -- cern;
  Spi -- rit of God, my teach -- er be,
  Show -- ing the things of Christ to me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  More a -- bout Je -- sus: in His Word
  Hold -- ing com -- mu -- nion with my Lord;
  Hear -- ing His voice in ev -- 'ry line,
  Mak -- ing each faith -- ful say -- ing mine.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  More a -- bout Je -- sus; on His throne,
  Rich -- es in glo -- ry all His own;
  More of His king -- dom's sure in -- crease;
  More of His com -- ing— Prince of Peace.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "More " a "bout " Je "sus " "would " "I " "know, "
  "\nMore " "of " "His " "grace " "to " oth "ers " "show; "
  "\nMore " "of " "His " sav "ing " ful "ness " "see, "
  "\nMore " "of " "His " "love— " "who " "died " "for " "me. "
  "\nMore, " "more " a "bout " Je "sus; "
  "\nMore, " "more " a "bout " Je "sus; "
  "\nMore " "of " "His " sav "ing " ful "ness " "see, "
  "\nMore " "of " "His " "love " "who " "died " "for " "me.\n"

  \set stanza = "2."
  "\nMore " a "bout " Je "sus " "let " "me " "learn, "
  "\nMore " "of " "His " ho "ly " "will " dis "cern; "
  "\nSpi" "rit " "of " "God, " "my " teach "er " "be, "
  "\nShow" "ing " "the " "things " "of " "Christ " "to " "me. "
  "\nMore, " "more " a "bout " Je "sus; "
  "\nMore, " "more " a "bout " Je "sus; "
  "\nMore " "of " "His " sav "ing " ful "ness " "see, "
  "\nMore " "of " "His " "love " "who " "died " "for " "me.\n"

  \set stanza = "3."
  "\nMore " a "bout " Je "sus: " "in " "His " "Word "
  "\nHold" "ing " com mu "nion " "with " "my " "Lord; "
  "\nHear" "ing " "His " "voice " "in " ev "'ry " "line, "
  "\nMak" "ing " "each " faith "ful " say "ing " "mine. "
  "\nMore, " "more " a "bout " Je "sus; "
  "\nMore, " "more " a "bout " Je "sus; "
  "\nMore " "of " "His " sav "ing " ful "ness " "see, "
  "\nMore " "of " "His " "love " "who " "died " "for " "me.\n"

  \set stanza = "4."
  "\nMore " a "bout " Je "sus; " "on " "His " "throne, "
  "\nRich" "es " "in " glo "ry " "all " "His " "own; "
  "\nMore " "of " "His " king "dom's " "sure " in "crease; "
  "\nMore " "of " "His " com "ing— " "Prince " "of " "Peace. "
  "\nMore, " "more " a "bout " Je "sus; "
  "\nMore, " "more " a "bout " Je "sus; "
  "\nMore " "of " "His " sav "ing " ful "ness " "see, "
  "\nMore " "of " "His " "love " "who " "died " "for " "me. "
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
