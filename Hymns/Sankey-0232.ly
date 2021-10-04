\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Redeeming Grace."
  subtitle    = "Sankey No. 232"
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
  meter       = \markup\smallCaps "l.m."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key bes \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4. s2.*2
  \mark \markup { \box "B" }     s2.*3
  \mark \markup { \box "C" }     s2.*3
  \mark \markup { \box "D" }     s2.*4
  \mark \markup { \box "E" }     s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4.*29
  \tempo 4=110
  s4.*2
  \tempo 4=40 s4.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''8^\markup\smallCaps Duet. bes g
  f4. g8 bes8. g16
  a4. c8 8 g
  bes4.a8 g8. a16 % B
  f4. d'8 bes g
  f4. ees8 f d'
  c4. 8 d bes % C
  a4. g8 bes8. a16
  f4. \bar "||" 8^\markup\smallCaps Chorus. bes c
  d4. bes8 g bes % D
  f4. bes8 c d
  ees4. g,8 c8. bes16
  a4. c8 d ees
  f4. d8 ees8. d16 % E
  g,4. c8 d c
  f,4.^\markup\italic rit. bes8 8 c
  bes4.\fermata
}

alto = \relative {
  \autoBeamOff
  f'8 d ees
  d4. 8 8. 16
  ees4. 8 8 8
  ees4. 8 8. 16 % B
  d4. f8 d ees
  d4. cis8 d f
  a4. 8 f d % C
  c4. bes8 d8. c16
  a4. \bar "||" f'8 8 8
  f4. 8 ees8 8 % D
  d4. f8 8 8
  g4. ees8 e8. 16
  f4. 8 8 8
  bes4. f8 g8. f16 % E
  f4(ees8) g g ees
  d4. f8 8 8
  f4.\fermata
}

pianoLHone = \relative {
  \autoBeamOff
  r8 r4
  \once\partCombineApart r8 f  bes r8 r4
  \once\partCombineApart r8 f  a   r8 r4
  \once\partCombineApart r8 c, f   r8 r4
  \once\partCombineApart r8 g  bes r8 r4
  \once\partCombineApart r8 g  bes r8 r4
  \once\partCombineApart r8 g  a   r8 r4
  \once\partCombineApart r8 e  g   r8 r4
  \once\partCombineApart r8 c, f
}

tenor = \relative {
  f8 bes a
  bes4. 8 8 8 % C
  bes4. 8 a bes
  bes4. 8 8. c16
  c4. a8 bes a
  bes4. 8 b8. 16 % E
  b4(c8) 8 8 g
  bes4. d8 8 ees d4.\fermata
}

pianoLHtwo = \relative {
  \autoBeamOff
  r8 r4
  bes,4. r8 r4
  c4. r8 r4
  f,4. r8 r4 % B
  bes4. r8 r4
  bes4. r8 r4
  c4. r8 r4 % C
  c4. r8 r4
  f,4.
}

bass = \relative {
  f8 d c
  bes4. d8 ees g % D
  bes4. d,8 c bes
  ees4. 8 c8. 16
  f4. ees8 d c
  d4. bes8 g'8. 16 % E
  g4. ees8 8 8
  f4. 8 8 8
  bes4.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Re -- deem -- ing grace, re -- deem -- ing grace,
  That gives my soul a rest -- ing place;
  I'll sing, while time rolls on a -- pace,
  Re -- deem -- ing grace, re -- deem -- ing grace.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Wake Thou my harp, O migh -- ty Love,
  That fills the bound -- less realm a -- bove;
  Sweep Thou my strings, for I would sing
  Re -- deem -- ing grace through Christ my King.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou great First Cause of mor -- tal good,
  Whose throne through end -- less years has stood,
  In -- struct my fee -- ble voice to sing
  Re -- deem -- ing grace through Christ my King.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The spark has kind -- led to a flame:
  My soul, re -- joic -- ing in Thy name,
  Bids all with -- in me join and sing
  Re -- deem -- ing grace through Christ my King.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And when my spi -- rit flees a -- way
  From all that cheers life's fleet -- ing day,
  With saints a -- round Thy throne I'll sing
  Re -- deem -- ing grace through Christ my King.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "[Duet] Wake " "Thou " "my " "harp, " "O " migh "ty " "Love, "
  "\nThat " "fills " "the " bound "less " "realm " a "bove; "
  "\nSweep " "Thou " "my " "strings, " "for " "I " "would " "sing "
  "\nRe" deem "ing " "grace " "through " "Christ " "my " "King. "
  "\n[Tutti] Re" deem "ing " "grace, " re deem "ing " "grace, "
  "\nThat " "gives " "my " "soul " "a " rest "ing " "place; "
  "\nI'll " "sing, " "while " "time " "rolls " "on " a "pace, "
  "\nRe" deem "ing " "grace, " re deem "ing " "grace. "

  \set stanza = "2."
  "\n[Duet] Thou " "great " "First " "Cause " "of " mor "tal " "good, "
  "\nWhose " "throne " "through " end "less " "years " "has " "stood, "
  "\nIn" "struct " "my " fee "ble " "voice " "to " "sing "
  "\nRe" deem "ing " "grace " "through " "Christ " "my " "King. "
  "\n[Tutti] Re" deem "ing " "grace, " re deem "ing " "grace, "
  "\nThat " "gives " "my " "soul " "a " rest "ing " "place; "
  "\nI'll " "sing, " "while " "time " "rolls " "on " a "pace, "
  "\nRe" deem "ing " "grace, " re deem "ing " "grace. "

  \set stanza = "3."
  "\n[Duet] The " "spark " "has " kind "led " "to " "a " "flame: "
  "\nMy " "soul, " re joic "ing " "in " "Thy " "name, "
  "\nBids " "all " with "in " "me " "join " "and " "sing "
  "\nRe" deem "ing " "grace " "through " "Christ " "my " "King. "
  "\n[Tutti] Re" deem "ing " "grace, " re deem "ing " "grace, "
  "\nThat " "gives " "my " "soul " "a " rest "ing " "place; "
  "\nI'll " "sing, " "while " "time " "rolls " "on " a "pace, "
  "\nRe" deem "ing " "grace, " re deem "ing " "grace. "

  \set stanza = "4."
  "\n[Duet] And " "when " "my " spi "rit " "flees " a "way "
  "\nFrom " "all " "that " "cheers " "life's " fleet "ing " "day, "
  "\nWith " "saints " a "round " "Thy " "throne " "I'll " "sing "
  "\nRe" deem "ing " "grace " "through " "Christ " "my " "King. "
  "\n[Tutti] Re" deem "ing " "grace, " re deem "ing " "grace, "
  "\nThat " "gives " "my " "soul " "a " rest "ing " "place; "
  "\nI'll " "sing, " "while " "time " "rolls " "on " a "pace, "
  "\nRe" deem "ing " "grace, " re deem "ing " "grace. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \pianoLHone \tenor } { \global \pianoLHtwo \bass }
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold 4 { \pianoLHone \tenor } }
                                            { \global \repeat unfold 4 { \pianoLHtwo \bass } }
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold 4 { \pianoLHone \tenor } }
                                            { \global \repeat unfold 4 { \pianoLHtwo \bass } }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold 4 { \pianoLHone \tenor } }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold 4 { \pianoLHtwo \bass } }
          >>
        >>
    \midi {}
  }
}
