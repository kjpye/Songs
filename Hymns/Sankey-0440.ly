\version "2.23.11"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Choose Ye To-Day"
  subtitle    = "Sankey No. 440"
  subsubtitle = "C. C. No. 226"
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
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*4
  \mark \markup { \box "B" }    s1*4 s2
  \mark \markup { \box "C" } s2 s1*3
  \mark \markup { \box "D" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4\omit\mf^\markup\italic Legato.
  bes4 aes8. g16 4 f8 ees
  g8 bes4. r2
  c2 d4 ees
  bes2 r4 4
  bes4 aes8. g16 4 aes8 g % B
  g8 c4. r2
  f,2 d'4. c8
  bes2 r
  bes4 f8. g16 \bar "|" \break aes4 d8. c16
  bes4 ees,8. f16 g4. r8 % C
  bes4 f8. g16 aes4 d8. c16
  c4 bes8. a16 bes4 r
  g4 8 8 8 aes4 g8 % D
  g4 c8 d ees4\fermata r
  bes4^\markup\italic rit. r bes4. 8
  bes2^\p r4
}

alto = \relative {
  \autoBeamOff
  ees'4\omit\mf
  ees4 8. 16 4 d8 ees
  ees8 g4. r2
  aes2 4 4
  g2 r4 g
  g4 f8. ees16 f4 8 8 % B
  ees8 4. r2
  f2 4. ees8
  d2 r
  d4 8. ees16 f4 bes8. aes16
  g4 ees8. d16 ees4. r8 % C
  d4 8. ees16 f4 8. 16
  fis4 g8. fis16 g4 r
  ees4 8 8 f8 4 8 % D
  ees4 g8 8 4\fermata r
  ees4 r d4. 8
  ees2^\p r4
}

tenor = \relative {
  \autoBeamOff
  g4
  g4 c8. bes16 4 aes8 g
  bes8 ees4. r2
  ees2 b4 c
  ees2 r4 4
  ees4 bes8. 16 b4 8 8 % B
  c8 g4. r2
  d'2 bes4. a8
  bes2 r
  bes4 8. 16 4 8. 16
  bes4 8. 16 4. r8 % C
  bes4 aes8. g16 f4 aes8. 16
  a4 bes8. c16 bes4 r
  bes4 8 8 b8 4 8 % D
  c4 8 b c4\fermata r
  g4 r aes4. 8
  g2 r4
}

bass = \relative {
  \autoBeamOff
  ees4
  ees4 8. 16 4 8 8
  ees8 4. r2
  aes2 4 4
  ees2 r4 4
  ees4 8. 16 d4 8 8 % B
  c8 4. r2
  f2 4. 8
  bes,2 r
  bes4 8. 16 4 8. 16
  ees4 g8. f16 ees4. r8 % C
  bes4 8. 16 4 8. 16
  ees4 8. 16 4 r
  ees4 8 8 d8 4 8 % D
  c4 ees8 g c,4\fermata r
  bes4 r4 4. 8
  ees2 r4
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
  A bless -- ing for you— will you take it?
  Choose ye to -- day:
  A word from the heart— will you speak it?
  Choose ye to -- day:
  Will you be -- lieve,
  or your Sa -- viour neg -- lect?
  Will you re -- ceive, or His mer -- cy re -- ject?
  Pause, ere you an -- swer,
  oh, pause and ref -- lect—
  Choose ye to -- day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  A death to be feared— will you fear it?
  Choose ye to -- day.
  A voice that in -- vites— will you hear it?
  Choose ye to -- day.
  Strait is the por -- tal and nar -- row the way;
  En -- ter, poor soul, and be saved while you may;
  Think what may hang on a mo -- ment's de -- lay—
  Choose ye to -- day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The cross of your Lord— will you hear it?
  Choose ye to -- day.
  There's life in that cross— will you share it?
  Choose ye to -- day.
  Soon will your time of pro -- ba -- tion be o'er,
  Then will the Spi -- rit en -- treat you no more;
  Je -- sus no lon -- ger will stand at the door—
  Choose ye to -- day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The bond -- age of sin— will you break it?
  Choose ye to -- day.
  The Wa -- ter of life— will you take it?
  Choose ye to -- day.
  Come to the arms that are o -- pen for you:
  Hide in the wounds that by faith you may view;
  Death ere the mor -- row your steps may pur -- sue—
  Choose ye to -- day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " bless "ing " "for " "you— " "will " "you " "take " "it? "
  "\nChoose " "ye " to "day: "
  "\nA " "word " "from " "the " "heart— " "will " "you " "speak " "it? "
  "\nChoose " "ye " to "day: "
  "\nWill " "you " be "lieve, "
  "\nor " "your " Sa "viour " neg "lect? "
  "\nWill " "you " re "ceive, " "or " "His " mer "cy " re "ject? "
  "\nPause, " "ere " "you " an "swer, "
  "\noh, " "pause " "and " ref "lect— "
  "\nChoose " "ye " to "day.\n"

  \set stanza = "2."
  "\nA " "death " "to " "be " "feared— " "will " "you " "fear " "it? "
  "\nChoose " "ye " to "day. "
  "\nA " "voice " "that " in "vites— " "will " "you " "hear " "it? "
  "\nChoose " "ye " to "day. "
  "\nStrait " "is " "the " por "tal " "and " nar "row " "the " "way; "
  "\nEn" "ter, " "poor " "soul, " "and " "be " "saved " "while " "you " "may; "
  "\nThink " "what " "may " "hang " "on " "a " mo "ment's " de "lay— "
  "\nChoose " "ye " to "day.\n"

  \set stanza = "3."
  "\nThe " "cross " "of " "your " "Lord— " "will " "you " "hear " "it? "
  "\nChoose " "ye " to "day. "
  "\nThere's " "life " "in " "that " "cross— " "will " "you " "share " "it? "
  "\nChoose " "ye " to "day. "
  "\nSoon " "will " "your " "time " "of " pro ba "tion " "be " "o'er, "
  "\nThen " "will " "the " Spi "rit " en "treat " "you " "no " "more; "
  "\nJe" "sus " "no " lon "ger " "will " "stand " "at " "the " "door— "
  "\nChoose " "ye " to "day.\n"

  \set stanza = "4."
  "\nThe " bond "age " "of " "sin— " "will " "you " "break " "it? "
  "\nChoose " "ye " to "day. "
  "\nThe " Wa "ter " "of " "life— " "will " "you " "take " "it? "
  "\nChoose " "ye " to "day. "
  "\nCome " "to " "the " "arms " "that " "are " o "pen " "for " "you: "
  "\nHide " "in " "the " "wounds " "that " "by " "faith " "you " "may " "view; "
  "\nDeath " "ere " "the " mor "row " "your " "steps " "may " pur "sue— "
  "\nChoose " "ye " to "day. "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
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
