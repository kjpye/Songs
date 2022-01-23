\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Out of Christ."
  subtitle    = "Sankey No. 342"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Victor H. Benke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3
  \mark \markup { \box "B" }    s2.*3
  \mark \markup { \box "C" }    s2.*3
  \mark \markup { \box "D" }    s2.*3
  \mark \markup { \box "E" }    s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s2.*14
  s4. \tempo 4=110 s4.
  \tempo 4=55 s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8. 16
  gis4. 8 a d
  c2 f,8 8
  a4. d,8 e f
  g2 a8. 16 % B
  gis4. 8 a d
  c2 b8 a
  c4. e,8 a8. g16 % C
  c,2 \bar "||" c'8.^\markup\smallCaps Chorus. 16
  c4. g8 fis g
  a2 8 8 % D
  d4. a8 c8. b16
  c2 a8 bes
  c4. a8 bes8. a16 % E
  g2 bes8 g
  f4. e8^\markup\italic rit. a8. g16
  f2\fermata
}

alto = \relative {
  \autoBeamOff
  f'8. 16
  f4. 8 8 8
  f2 c8 8
  c4. b8 8 8
  c2 f8. 16 % B
  f4. 8 8 8
  f2 ees8 8
  e4. c8 bis8. 16 % C
  c2 f8. 16
  e4. 8 dis e
  f2 8 8 % D
  f4. 8 8. 16
  e2 f8 e
  f4. 8 fis8. 16 % D
  d2 8 8
  bes4. 8 e8. 16
  f2\fermata
}

tenor = \relative {
  \autoBeamOff
  c'8. 16
  b4. 8 c bes
  a2 8 8
  f4. 8 e d
  e2 c'8. 16 % B
  b4. 8 c bes
  a2 c8 8
  c4. g8 f8. 16 % C
  e2 a8. 16
  bes4. 8 a bes
  c2 8 8 % D
  a4. d8 8. 16
  c2 8 8
  c4. 8 d8. c16 % E
  bes2 8 8
  g4. 8 c8. bes16
  a2\fermata
}

bass = \relative {
  \autoBeamOff
  f8. 16
  f4. 8 8 8
  f2 8 e
  d4. 8 a8 8
  c2 f8. 16 % B
  f4. 8 8 8
  f2 fis8 8
  g4. a,8 8. 16 % C
  c2 f8. 16
  c4. 8 8 8
  f2 8 e % D
  d4. 8 g8. 16
  c,2 f8 g
  a4. f8 d8. 16 % E
  g2 8 8
  c,4. 8 8. 16
  f2\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Out of Christ, a slave to sin—
  Rise, and let the Sa -- viour in!
  If Thou bid Him long -- er wait,
  Soon for thee 'twill be too late.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Out of Christ, and yet so near,
  That thy heart His voice can hear,
  Plead -- ing still— "\"Oh," come to Me!
  I have given my life for "thee.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Out of Christ, a wan -- d'rer yet—
  What if now thy sun should set?
  And in dark -- ness leave thy soul
  To the tempt -- er's dread con -- trol.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yield to Him thy bro -- ken heart,
  He will take thee as thou art;
  Now His of -- fered grace re -- ceive,
  And no more the Spi -- rit grieve.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Out " "of " "Christ, " "and " "yet " "so " "near, "
  "\nThat " "thy " "heart " "His " "voice " "can " "hear, "
  "\nPlead" "ing " "still— " "\"Oh, " "come " "to " "Me! "
  "\nI " "have " "given " "my " "life " "for " "thee.\" "
  "\nOut " "of " "Christ, " "a " "slave " "to " "sin— "
  "\nRise, " "and " "let " "the " Sa "viour " "in! "
  "\nIf " "Thou " "bid " "Him " long "er " "wait, "
  "\nSoon " "for " "thee " "'twill " "be " "too " "late. "

  \set stanza = "2."
  "\nOut " "of " "Christ, " "a " wan "d'rer " "yet— "
  "\nWhat " "if " "now " "thy " "sun " "should " "set? "
  "\nAnd " "in " dark "ness " "leave " "thy " "soul "
  "\nTo " "the " tempt "er's " "dread " con "trol. "
  "\nOut " "of " "Christ, " "a " "slave " "to " "sin— "
  "\nRise, " "and " "let " "the " Sa "viour " "in! "
  "\nIf " "Thou " "bid " "Him " long "er " "wait, "
  "\nSoon " "for " "thee " "'twill " "be " "too " "late. "

  \set stanza = "3."
  "\nYield " "to " "Him " "thy " bro "ken " "heart, "
  "\nHe " "will " "take " "thee " "as " "thou " "art; "
  "\nNow " "His " of "fered " "grace " re "ceive, "
  "\nAnd " "no " "more " "the " Spi "rit " "grieve. "
  "\nOut " "of " "Christ, " "a " "slave " "to " "sin— "
  "\nRise, " "and " "let " "the " Sa "viour " "in! "
  "\nIf " "Thou " "bid " "Him " long "er " "wait, "
  "\nSoon " "for " "thee " "'twill " "be " "too " "late. "
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
