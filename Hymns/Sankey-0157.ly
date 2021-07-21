\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hallelujah, He is Risen!"
  subtitle    = "Sankey No. 157"
  subsubtitle = "Sankey 880 No. 173"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  meter       = \markup\smallCaps "8.7.4."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''8. 16
  d4. b8 a8. b16
  g4 d g8. 16
  a4. c8 b8. a16
  b2 \bar "|" \break d8. 16
  d4. b8 a8. b16 % B
  g4 d g8. 16
  a4. c8 b8. a16
  g2 \bar "|" \break g8. 16
  e'4. 8 8. 16 % C
  d4 b b8. d16
  c4. 8 b8. a16
  b2 \bar "|" \break g8. 16
  e'4. 8 8. 16 % D
  d4 b4 8. d16
  c4. 8 b8. a16
  g2
}

alto = \relative {
  \autoBeamOff
  g'8. 16
  g4. 8 f8. 16
  g4 b, d8. g16
  f4. a8 g8. fis16
  g2 8. 16
  g4. 8 fis8. 16 % B
  g4 b, d8. g16
  fis4. a8 g8. fis16
  g2 8. 16
  g4. 8 8. 16 % C
  g4 4 8. 16
  g4. e8 fis8. 16
  g2 8. 16
  g4. 8 8. 16 % D
  g4 4 8. 16
  g4. e8 fis8. 16
  g2
}

tenor = \relative {
  \autoBeamOff
  b8. 16
  b4. d8 c8. 16
  b4 g b8. 16
  d4. 8 8. 16
  d2 b8. 16
  b4. d8 c8. 16 % B
  b4 g b8. 16
  d4. 8 8. c16
  b2 8. 16
  c4. 8 8. 16 % C
  b4 d d8. b16
  a4. 8 d8. 16
  b2 8. 16
  c4. 8 8. 16 % D
  b4 d d8. 16
  a4. 8 d8. c16
  b2
}

bass = \relative {
  \autoBeamOff
  g8. 16
  g4. 8 d8. 16
  g4 g, g'8. 16
  d4. 8 8. 16
  g2 8. 16
  g4. 8 d8. 16 % B
  g4 g, g'8. 16
  d4. 8 8. 16
  g,2 g'8. 16
  c,4. d8 e8. fis16 % C
  g4 4 8. 16
  d4. 8 8. 16
  g2 8. 16
  c,4. d8 e8. fis16 % D
  g4 4 8. 16
  d4. 8 8. 16
  g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Hal -- le -- lu -- jah, He is ris -- en!
  Je -- sus is gone up on high!
  Burst the bars of death a -- sun -- der,
  An -- gels, shout, and men re -- ply:
  He is ris -- en, He is ris -- en,
  Liv -- ing now, no more to die;
  He is ris -- en, He is ris -- en,
  Liv -- ing now, no more to die.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hal -- le -- lu -- jah, He is ris -- en!
  Our ex -- alt -- ed Head to be;
  Sends the wit -- ness of the Spi -- rit,
  That our Ad -- vo -- cate is He:
  He is ris -- en, He is ris -- en,
  Jus -- ti -- fied in Him are we;
  He is ris -- en, He is ris -- en,
  Jus -- ti -- fied in Him are we.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hal -- le -- lu -- jah, He is ris -- en!
  Death for aye has lost his sting;
  Christ, Him -- self the Re -- sur -- rec -- tion,
  From the grave "\"His" "own\"" will bring:
  He is ris -- en, He is ris -- en,
  Liv -- ing Lord and com -- ing King;
  He is ris -- en, He is ris -- en,
  Liv -- ing Lord and com -- ing King.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hal" le lu "jah, " "He " "is " ris "en! "
  "\nJe" "sus " "is " "gone " "up " "on " "high! "
  "\nBurst " "the " "bars " "of " "death " a sun "der, "
  "\nAn" "gels, " "shout, " "and " "men " re "ply: "
  "\nHe " "is " ris "en, " "He " "is " ris "en, "
  "\nLiv" "ing " "now, " "no " "more " "to " "die; "
  "\nHe " "is " ris "en, " "He " "is " ris "en, "
  "\nLiv" "ing " "now, " "no " "more " "to " "die. "

  \set stanza = "2."
  "\nHal" le lu "jah, " "He " "is " ris "en! "
  "\nOur " ex alt "ed " "Head " "to " "be; "
  "\nSends " "the " wit "ness " "of " "the " Spi "rit, "
  "\nThat " "our " Ad vo "cate " "is " "He: "
  "\nHe " "is " ris "en, " "He " "is " ris "en, "
  "\nJus" ti "fied " "in " "Him " "are " "we; "
  "\nHe " "is " ris "en, " "He " "is " ris "en, "
  "\nJus" ti "fied " "in " "Him " "are " "we. "

  \set stanza = "3."
  "\nHal" le lu "jah, " "He " "is " ris "en! "
  "\nDeath " "for " "aye " "has " "lost " "his " "sting; "
  "\nChrist, " Him "self " "the " Re sur rec "tion, "
  "\nFrom " "the " "grave " "\"His " "own\" " "will " "bring: "
  "\nHe " "is " ris "en, " "He " "is " ris "en, "
  "\nLiv" "ing " "Lord " "and " com "ing " "King; "
  "\nHe " "is " ris "en, " "He " "is " ris "en, "
  "\nLiv" "ing " "Lord " "and " com "ing " "King. "
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
