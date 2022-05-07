\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Take the Wings of the Morning."
  subtitle    = "Sankey No. 387"
  subsubtitle = "Sankey 880 No. 346"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "R. Lowey."
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
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*5
  \mark \markup { \box "D" }    s2.*5
  \mark \markup { \box "E" }    s2.*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8. aes16
  g4 4 f
  ees4 g bes
  ees4 d c
  ees2 8.[c16]
  bes4 aes aes8.[bes16] % B
  aes4 g g
  f4 bes c
  bes2 8.[aes16]
  g4 4 f
  ees4 g bes % C
  ees4 d c
  bes2 4
  ees4. d8 ees4
  c4 aes f
  ees4 g f % D
  ees2 \bar "||" bes'8.^\markup\smallCaps Chorus. ees16
  d2 c8. d16
  ees2 bes8. g16
  f4 g aes
  aes4 g bes8. ees16 % E
  d2 c8. d16
  ees2 bes8. g16
  f4 g f
  ees2
}

alto = \relative {
  \autoBeamOff
  ees'8. 16
  ees4 4 d
  ees4 4 4
  ees4 4 4
  ees2 4
  d4 4 f % B
  f4 ees ees
  f4 d ees
  d2 8.[f16]
  ees4 4 d
  ees4 4 4 % C
  ees4 4 4
  ees2 g4
  g4. aes8 bes4
  aes4 f c
  bes4 ees d % D
  ees2 8. g16
  f2 aes8. 16
  g2 ees8. 16
  d4 ees f
  f4 ees g8. 16 % E
  f2 aes8. 16
  g2 8. ees16
  d4 4 4
  ees2
}

tenor = \relative {
  \autoBeamOff
  g8. c16
  bes4 4 aes
  g4 bes g
  c4 bes aes
  g2 4
  f4 4 bes % B
  bes4 4 4
  bes4 4 a
  bes2 4
  bes4 4 4
  bes4 4 g % C
  c4 bes aes
  g2 bes4
  bes4. 8 ees4
  ees4 c aes
  g4 bes aes % D
  g2 bes8. 16
  bes2 8. 16
  bes2 g8. bes16
  bes4 4 4
  bes4 4 8. 16 % E
  bes2 8. 16
  bes2 ees8. bes16
  aes4 bes aes
  g2
}

bass = \relative {
  \autoBeamOff
  ees8. 16
  ees4 4 bes
  ees4 4 4
  ees4 4 4
  ees2 4
  bes4 4 d % B
  ees4 4 4
  d4 f f
  bes,2 8.[d16]
  ees4 bes' aes
  g4 ees ees % C
  aes,4 4 4
  ees'2 4
  ees4. f8 g4
  aes4 aes, aes
  bes4 4 4 % D
  ees2 g8. ees16
  bes'2 bes,8. 16
  ees2 8. 16
  bes4 4 4
  ees4 4 8. 16 % E
  bes'2 bes,8. 16
  ees2 8. 16
  bes4 4 4
  ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Fly a -- way, fly a -- way on the wings of the morn -- ing!
  Fly a -- way, fly a -- way to thy Sa -- viour and Friend!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Take the wings of the morn -- ing, speed quick -- ly thy flight
  To Je -- sus, thy Sa -- viour, thy hope, and thy light!
  The fount of His mer -- cy is o -- pen for thee,
  Go wash, and be cleansed in its wa -- ters so free!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Fly a -- way to thy Sa -- viour, He waits to for -- give;
  One look of His love, and thy spi -- rit shall live;
  Thy faith will se -- cure thee His bles -- sing Di -- vine;
  Go plead thou His mer -- it, and peace will be thine!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On the wings of the morn -- ing fly home to His breast—
  There on -- ;y thy re -- fuge, there on -- ly thy rest;
  The mo -- ments are pre -- cious, the noon -- tide is near;
  Fly home to thy Sa -- viour! oh, lin -- ger not here!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Take " "the " "wings " "of " "the " morn "ing, " "speed " quick "ly " "thy " "flight "
  "\nTo " Je "sus, " "thy " Sa "viour, " "thy " "hope, " "and " "thy " "light! "
  "\nThe " "fount " "of " "His " mer "cy " "is " o "pen " "for " "thee, "
  "\nGo " "wash, " "and " "be " "cleansed " "in " "its " wa "ters " "so " "free! "
  "\nFly " a "way, " "fly " a "way " "on " "the " "wings " "of " "the " morn "ing! "
  "\nFly " a "way, " "fly " a "way " "to " "thy " Sa "viour " "and " "Friend! "

  \set stanza = "2."
  "\nFly " a "way " "to " "thy " Sa "viour, " "He " "waits " "to " for "give; "
  "\nOne " "look " "of " "His " "love, " "and " "thy " spi "rit " "shall " "live; "
  "\nThy " "faith " "will " se "cure " "thee " "His " bles "sing " Di "vine; "
  "\nGo " "plead " "thou " "His " mer "it, " "and " "peace " "will " "be " "thine! "
  "\nFly " a "way, " "fly " a "way " "on " "the " "wings " "of " "the " morn "ing! "
  "\nFly " a "way, " "fly " a "way " "to " "thy " Sa "viour " "and " "Friend! "

  \set stanza = "3."
  "\nOn " "the " "wings " "of " "the " morn "ing " "fly " "home " "to " "His " "breast— "
  "\nThere " on ";y " "thy " re "fuge, " "there " on "ly " "thy " "rest; "
  "\nThe " mo "ments " "are " pre "cious, " "the " noon "tide " "is " "near; "
  "\nFly " "home " "to " "thy " Sa "viour! " "oh, " lin "ger " "not " "here! "
  "\nFly " a "way, " "fly " a "way " "on " "the " "wings " "of " "the " morn "ing! "
  "\nFly " a "way, " "fly " a "way " "to " "thy " Sa "viour " "and " "Friend! "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
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
