\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Praise and Magnify our King!"
  subtitle    = "Sankey No. 229"
  subsubtitle = "C. C. No. 251"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. Edwards."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*3
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*3 s2
  \mark \markup { \box "D" } s2 s1*3
  \mark \markup { \box "E" }    s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 e8. f16 g4. 8
  a8 g a b c2
  d4 8. c16 b2
  e4 8. d16 c2 % B
  c,4 e8. f16 g4. 8
  a8 b c d e4. r8
  d4. c8 8 b a b % C
  c2. r4 \bar "||"
  g4^\markup\smallCaps Chorus. e8. f16 g8 e' c4
  g4 e8. f16 \bar "|" \break g8 e' c4
  d4. c8 8 b8 4 % D
  e4. d8 8 c8 4
  g4 e8. f16 g8 e' c4
  g4 e8. f16 g8 e' c4 % E
  d4. c8 8 b a b
  c2. r4
}

alto = \relative {
  \autoBeamOff
  c'4 e8. f16 g4. 8
  a8 g a b c2
  g4 8. 16 2
  g4 8. f16 e2 % B
  c4 e8. f16 g4. 8
  a8 b c d e4. r8
  a,4. aes8 g g f f % C
  e2. r4 \bar "||"
  e4 c8. d16 e8 g e4
  e4 c8. d16 e8 g e4
  g4. 8 8 8 4 % D
  g4. f8 8 e e4
  e4 c8. d16 e8 g e4
  e4 c8. d16 e8 g e4 % E
  f4. 8 e d f f
  e2. r4
}

tenor = \relative {
  \autoBeamOff
  c4 e8. f16 g4. 8
  a8 g a b c2
  b4 f'8. e16 d2
  c4 8. g16 2 % B
  c,4 e8. f16 g4. 8
  a8 b c d e4. r8
  f4. 8 e d c g % C
  g2. r4 \bar "||"
  c4 g8. 16 c8 8 g4
  c4 g8. 16 c8 8 g4
  f'4. e8 8 d8 4 % D
  c4. g8 8 8 4
  c4 g8. 16 c8 8 g4
  c4 g8. 16 c8 8 g4 % E
  a4. aes8 g8 8 8 8
  g2. r4
}

bass = \relative {
  \autoBeamOff
  c4 e8. f16 g4. 8
  a8 g a b c2
  g4 8. 16 g2
  c,4 8. 16 2 % B
  c4 e8. f16 g4. 8
  a8 b c d e4. r8
  f,4. 8 g g g, g % C
  c2. r4 \bar "||"
  c4 8. 16 8 8 4
  c4 8. 16 8 8 4
  g'4. 8 8 8 4 % D
  c,4. 8 8 8 4
  c4 8. 16 8 8 4
  c4 8. 16 8 8 4 % E
  f4. 8 g g g, g
  c2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O ye re -- deem'd a -- bove,
  Strike, strike your harps of love!
  Hail the bles -- sed One!
  Hail the Migh -- ty One!
  Sweet -- ly His won -- ders tell!
  Loud -- ly His glo -- ry swell—
  Praise and mag -- ni -- fy our King!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Great is the Lord, who rul -- eth o -- ver all:
  Wake, wake and sing! wake, wake and sing!
  Down at His feet in ad -- o -- ra -- tion fall—
  Praise and mag -- ni -- fy our King!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Great is the Lord, who spake and it was done:
  Wake, wake and sing! wake, wake and sing!
  Hon -- our and strength, do -- min -- ion He has won—
  Praise and mag -- ni -- fy our King!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Great is the Lord, oh, come with ho -- ly mirth:
  Wake, wake and sing! wake, wake and sing!
  Come and re -- joice, ye na -- tions of the earth—
  Praise and mag -- ni -- fy our King!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Great is the Lord, and ho -- ly is His name!
  Wake, wake and sing! wake, wake and sing!
  An -- gels and men, His won -- drous works pro -- claim—
  Praise and mag -- ni -- fy our King!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Great " "is " "the " "Lord, " "who " rul "eth " o "ver " "all: "
  "\nWake, " "wake " "and " "sing! " "wake, " "wake " "and " "sing! "
  "\nDown " "at " "His " "feet " "in " ad o ra "tion " "fall— "
  "\nPraise " "and " mag ni "fy " "our " "King! "
  "\nO " "ye " re "deem'd " a "bove, "
  "\nStrike, " "strike " "your " "harps " "of " "love! "
  "\nHail " "the " bles "sed " "One! "
  "\nHail " "the " Migh "ty " "One! "
  "\nSweet" "ly " "His " won "ders " "tell! "
  "\nLoud" "ly " "His " glo "ry " "swell— "
  "\nPraise " "and " mag ni "fy " "our " "King! "

  \set stanza = "2."
  "\nGreat " "is " "the " "Lord, " "who " "spake " "and " "it " "was " "done: "
  "\nWake, " "wake " "and " "sing! " "wake, " "wake " "and " "sing! "
  "\nHon" "our " "and " "strength, " do min "ion " "He " "has " "won— "
  "\nPraise " "and " mag ni "fy " "our " "King! "
  "\nO " "ye " re "deem'd " a "bove, "
  "\nStrike, " "strike " "your " "harps " "of " "love! "
  "\nHail " "the " bles "sed " "One! "
  "\nHail " "the " Migh "ty " "One! "
  "\nSweet" "ly " "His " won "ders " "tell! "
  "\nLoud" "ly " "His " glo "ry " "swell— "
  "\nPraise " "and " mag ni "fy " "our " "King! "

  \set stanza = "3."
  "\nGreat " "is " "the " "Lord, " "oh, " "come " "with " ho "ly " "mirth: "
  "\nWake, " "wake " "and " "sing! " "wake, " "wake " "and " "sing! "
  "\nCome " "and " re "joice, " "ye " na "tions " "of " "the " "earth— "
  "\nPraise " "and " mag ni "fy " "our " "King! "
  "\nO " "ye " re "deem'd " a "bove, "
  "\nStrike, " "strike " "your " "harps " "of " "love! "
  "\nHail " "the " bles "sed " "One! "
  "\nHail " "the " Migh "ty " "One! "
  "\nSweet" "ly " "His " won "ders " "tell! "
  "\nLoud" "ly " "His " glo "ry " "swell— "
  "\nPraise " "and " mag ni "fy " "our " "King! "

  \set stanza = "4."
  "\nGreat " "is " "the " "Lord, " "and " ho "ly " "is " "His " "name! "
  "\nWake, " "wake " "and " "sing! " "wake, " "wake " "and " "sing! "
  "\nAn" "gels " "and " "men, " "His " won "drous " "works " pro "claim— "
  "\nPraise " "and " mag ni "fy " "our " "King! "
  "\nO " "ye " re "deem'd " a "bove, "
  "\nStrike, " "strike " "your " "harps " "of " "love! "
  "\nHail " "the " bles "sed " "One! "
  "\nHail " "the " Migh "ty " "One! "
  "\nSweet" "ly " "His " won "ders " "tell! "
  "\nLoud" "ly " "His " glo "ry " "swell— "
  "\nPraise " "and " mag ni "fy " "our " "King! "
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
