\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gather the Sheaves."
  subtitle    = "Sankey No. 750"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Frank M. Davis."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "I. L. Mitchell."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2.*3
  \textMark \markup { \box \bold "D" }    s2.*3
  \textMark \markup { \box \bold "E" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 | f d f bes4 f8 | d'4. bes4 8 | a bes c ees4 a,8 |
  bes4.~4 g8 | 4 d8 g4 a8 | bes a g d'4 8 |
  c8 f, g a4 g8 | f4.~4
  \section \sectionLabel \markup\smallCaps Chorus.
  f8 | a4 bes8 c4 d8 |
  ees8 d c d4 8 | d c bes bes[a] bes | c4.~4 8 |
  d4 8 ees[d] c | bes a bes c[bes] g | f e f d'4 c8 | bes4.~4
}

alto = \relative {
  \autoBeamOff
  d'8 | d bes d d4 8 | f4. d4 8 | c d f g4 ees8 |
  d4.~4 g8 | 4 d8 g4 a8 | bes a g d'4 8 |
  c8 f, g a4 g8 | f4.~4 \section 8 | f4 8 4 8 |
  f8 8 8 4 8 | e e e e4 8 | f4.~4 8 |
  f4 8 g[f] ees | d8 e f e4 8 | d cis d f4 ees8 | d4.~4
}

tenor = \relative {
  \autoBeamOff
  bes8 | 8 f f f4 bes8 | 4. f4 8 | 8 8 a c4 f,8 |
  f4.~4 g8 | 4 d8 g4 a8 | bes a g a4 bes8 |
  a8 8 bes c4 bes8 | a4.~4 \section 8 | c4 d8 a4 bes8 |
  c8 bes a bes4 8 | g g g g4 8 | a4.~4 8 |
  bes4 8 4 f8 | 8 8 bes g4 bes8 | 8 8 8 4 f8 | 4.~4
}

bass = \relative {
  \autoBeamOff
  bes,8 | 8 8 8 4 8 | 4. 4 8 | f' f f f4 8 |
  bes,4.~4 g'8 | 4 d8 g4 a8 | bes a g d4 bes8 |
  c8 8 8 4 8 | f4.~4 \section 8 | 4 8 4 8 |
  f8 8 8 bes4 bes,8 | c c c c4 8 | f4.~4 8 |
  bes,4 8 4 8 | 8 c d ees4 8 | f g f f4 8| bes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Press on, press on, to ga -- ther the sheaves,
  The work is for you a -- lone:
  Than haste a -- way, no time for de -- lay;
  Go ga -- ther the har -- vest home.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- rise and a -- way, ye rea -- pers;
  The fields of the gold -- en corn
  Are ripe and ful -- ly rea -- dy for you:
  Go forth in the ear -- ly morn.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The glean -- ers are there be -- fore you,
  The gar -- ners are o -- pen wide;
  No time to lose. so has -- ten a -- way—
  All day in the field a -- bide.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Toil on till the day is o -- ver,
  Too soon will the dark -- ness come;
  The sun is sink -- ing now in the west:
  Then ga -- ther the har -- vest home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "rise " "and " a "way, " "ye " rea "pers; "
  "\nThe " "fields " "of " "the " gold "en " "corn "
  "\nAre " "ripe " "and " ful "ly " rea "dy " "for " "you: "
  "\nGo " "forth " "in " "the " ear "ly " "morn. "
  "\nPress " "on, " "press " "on, " "to " ga "ther " "the " "sheaves, "
  "\nThe " "work " "is " "for " "you " a "lone: "
  "\nThan " "haste " a "way, " "no " "time " "for " de "lay; "
  "\nGo " ga "ther " "the " har "vest " "home.\n"

  \set stanza = "2."
  "\nThe " glean "ers " "are " "there " be "fore " "you, "
  "\nThe " gar "ners " "are " o "pen " "wide; "
  "\nNo " "time " "to " "lose. " "so " has "ten " a "way— "
  "\nAll " "day " "in " "the " "field " a "bide. "
  "\nPress " "on, " "press " "on, " "to " ga "ther " "the " "sheaves, "
  "\nThe " "work " "is " "for " "you " a "lone: "
  "\nThan " "haste " a "way, " "no " "time " "for " de "lay; "
  "\nGo " ga "ther " "the " har "vest " "home.\n"

  \set stanza = "3."
  "\nToil " "on " "till " "the " "day " "is " o "ver, "
  "\nToo " "soon " "will " "the " dark "ness " "come; "
  "\nThe " "sun " "is " sink "ing " "now " "in " "the " "west: "
  "\nThen " ga "ther " "the " har "vest " "home. "
  "\nPress " "on, " "press " "on, " "to " ga "ther " "the " "sheaves, "
  "\nThe " "work " "is " "for " "you " a "lone: "
  "\nThan " "haste " a "way, " "no " "time " "for " de "lay; "
  "\nGo " ga "ther " "the " har "vest " "home. "
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
