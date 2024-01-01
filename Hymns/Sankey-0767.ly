\version "2.25.11"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Arise and Shine."
  subtitle    = "Sankey No. 767"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "D. B. Towner."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. C. E. Breck."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2..
  \textMark \markup { \box \bold "C" } s8 s1*4
  \textMark \markup { \box \bold "D" }    s1*3 s2..
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 | 4. 8 aes4. 8 | bes8[aes] g[f] ees4. aes8 | des4. 8 4 4 | c2. \bar "|" \break
  c4 | 4. 8 4 g | aes4 bes c4. 8 | bes4 4 4. d,8 | ees2. r8 \break
  \section \sectionLabel \markup\smallCaps Chorus.
  ees8 | aes4. 8 c4. 8 | ees4 bes c4. 8 | 4. 8 d4 4 | ees2. r8 ees |
  ees4 8. des16 8 c4 8 | 4 8. bes16 8 aes4 8 | f'4. 8 ees4 g, | aes2. r8
}

alto = \relative {
  \autoBeamOff
  ees'8 c4. 8 ees4. 8 | f4 ees8[d] c4. ees8 | g4. aes8 bes4 g | aes2.
  ees4 | f4. 8 e4 4 | f f e4. f8 | 4 ees d4. bes8 | 2. r8 \section
  des8 | c4. 8 ees4. 8 | 4 4 4. e8 | f4. 8 4 aes | g2. r8 g |
  aes4 8. 16 8 4 ees8 | e4 8. 16 f8 4 8 | aes4. 8 g4 ees | 2. r8
}

tenor = \relative {
  \autoBeamOff
  ees8 | aes4. 8 4. 8 | 4 4 4. c8 | ees4. 8 4 4 | 2.
  aes,4 | 4. 8 g4 bes | aes f g4. aes8 | bes4 g f4. aes8 | g2. r8 \section
  g8 | aes4. 8 4. 8 | bes4 g aes4. bes8 | aes4. 8 bes4 4 | 2. r8 des |
  c4 8. f16 8 ees4 aes,8 | g4 8. c16 8 4 8 | des4. 8 bes4 des | c2. r8
}

bass = \relative {
  \autoBeamOff
  ees8 | aes,4. 8 c4. 8 | des4 4 aes'4. 8 | ees4. f8 g4 ees | aes2.
  aes4 | f4. 8 c4 4 |  f4 des c4. f8 | d4 ees bes4. 8 | ees2. r8 \section
  ees8 | aes,4. ees'8 aes4. 8 | g4 ees aes4. g8 | f4. 8 bes4 bes, | ees2. r8 ees |
  aes4 8. 16 8 4 8 | c,4 8. 16 f8 4 8 | des4. 8 ees4 4 | aes,2. r8
}

chorus = \lyricmode {
  “A -- rise and shine! thy light is come!”
  A -- rise, a -- rise and shine!
  With love's bright a -- dorn -- ing shine forth as the morn -- ing—
  A -- rise, a -- rise and shine!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  “A -- rise and shine! thy light is come!”
  The Lord hath made thee free!
  The chains of dark -- ness bind no more:
  Go forth in lib -- er -- ty!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  “A -- rise and shine! thy light is come!”
  Let sin and sor -- row hide;
  Go forth and show to all the world
  That Light and Life a -- bide!
  
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  “A -- rise and shine! thy light is come!”
  Thy God thy glo -- ry is;
  Show forth the won -- ders of His love,
  And let all praise be His.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  “A -- rise and shine! thy light is come!”
  And night shall be no more!
  Shine till the glo -- ry of the Lord
  Is known from shore to shore.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "“A" "rise " "and " "shine! " "thy " "light " "is " "come!” "
  "\nThe " "Lord " "hath " "made " "thee " "free! "
  "\nThe " "chains " "of " dark "ness " "bind " "no " "more: "
  "\nGo " "forth " "in " lib er "ty! "
  "\n“A" "rise " "and " "shine! " "thy " "light " "is " "come!” "
  "\nA" "rise, " a "rise " "and " "shine! "
  "\nWith " "love's " "bright " a dorn "ing " "shine " "forth " "as " "the " morn "ing— "
  "\nA" "rise, " a "rise " "and " "shine!\n"

  \set stanza = "2."
  "\n“A" "rise " "and " "shine! " "thy " "light " "is " "come!” "
  "\nLet " "sin " "and " sor "row " "hide; "
  "\nGo " "forth " "and " "show " "to " "all " "the " "world "
  "\nThat " "Light " "and " "Life " a "bide! "
  "\n“A" "rise " "and " "shine! " "thy " "light " "is " "come!” "
  "\nA" "rise, " a "rise " "and " "shine! "
  "\nWith " "love's " "bright " a dorn "ing " "shine " "forth " "as " "the " morn "ing— "
  "\nA" "rise, " a "rise " "and " "shine!\n"

  \set stanza = "3."
  "\n“A" "rise " "and " "shine! " "thy " "light " "is " "come!” "
  "\nThy " "God " "thy " glo "ry " "is; "
  "\nShow " "forth " "the " won "ders " "of " "His " "love, "
  "\nAnd " "let " "all " "praise " "be " "His. "
  "\n“A" "rise " "and " "shine! " "thy " "light " "is " "come!” "
  "\nA" "rise, " a "rise " "and " "shine! "
  "\nWith " "love's " "bright " a dorn "ing " "shine " "forth " "as " "the " morn "ing— "
  "\nA" "rise, " a "rise " "and " "shine!\n"

  \set stanza = "4."
  "\n“A" "rise " "and " "shine! " "thy " "light " "is " "come!” "
  "\nAnd " "night " "shall " "be " "no " "more! "
  "\nShine " "till " "the " glo "ry " "of " "the " "Lord "
  "\nIs " "known " "from " "shore " "to " "shore. "
  "\n“A" "rise " "and " "shine! " "thy " "light " "is " "come!” "
  "\nA" "rise, " a "rise " "and " "shine! "
  "\nWith " "love's " "bright " a dorn "ing " "shine " "forth " "as " "the " morn "ing— "
  "\nA" "rise, " a "rise " "and " "shine! "
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
