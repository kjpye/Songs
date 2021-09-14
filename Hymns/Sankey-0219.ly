\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Praise our Creator."
  subtitle    = "Sankey No. 129"
  subsubtitle = "C. C. No. 15"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Theo. F. Seward."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

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
  \mark \markup { \box "A" } s1*3
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3
  \mark \markup { \box "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4 8. f16 a4 g8. c16
  e4 c8. a16 4 g
  f4 g8. f16 e4 c'8. b16
  a4 b8. a16 g4(f) % B
  e4 8. f16 a4 g8. c16
  e4 c8. a16 4 g
  a4 b8. 16 c4 e8. d16 %C
  c4 b8. 16 c2 \bar "||"
  a2^\markup\smallCaps Chorus. c
  c2 g % D
  g8. a16 b8. c16 d4 g,
  g8. b16 c8. d16 e4 c
  a2 c % E
  c2 g
  g8. a16 b8. c16 d4 g,
  c4 4 2
}

alto = \relative {
  \autoBeamOff
  c'4 8. d16 f4 e8. 16
  g4 f8. 16 4 e
  d4 8. 16 c4 e8. d16
  c4 d8. c16 b2 % B
  c4 8. d16 f4 e8. 16
  g4 f8. 16 4 e
  f4 gis8. 16 a4 g8. f16 % C
  e4 f8. 16 e2
  f4 4 4 4
  e4 4 4 4 % D
  f8. 16 8. 16 4 4
  e8. d16 e8. f16 g4 e
  f4 4 4 4 % E
  e4 4 4 4
  f8. 16 8. 16 4 4
  e4 f e2
}

tenor = \relative {
  \autoBeamOff
  c'4 8. 16 4 8. g16
  g4 a8. c16 4 4
  b4 8. 16 c4 g8. 16
  fis4 8. 16 g2 % B
  c4 8. 16 4 8. g16
  g4 a8. c16 4 4
  c4 e8. 16 4 c8. a16 % C
  g4 d'8. 16 c2
  c4 4 a a
  g4 4 c c % D
  b8. c16 d8. c16 b4 4
  c8. 16 8. 16 4 4
  c4 4 a a % E
  g4 4 c c
  b8. c16 d8. c16 b4 4
  c4 a g2
}

bass = \relative {
  \autoBeamOff
  c4 8. 16 4 8. 16
  c4 8. 16 4 4
  g'4 8. 16 c,4 8. 16
  d4 8. 16 g,2 % B
  c4 8. 16 4 8. 16
  c4 8. 16 4 4
  f4 e8. 16 a4 e8. f16 % C
  g4 8. 16 c,2
  f4 4 4 4
  c4 4 4 4 % D
  g'8. 16 8. 16 4 4
  c,8. 16 8. 16 4 4
  f4 4 4 4 % E
  c4 4 4 4
  g'8. 16 8. 16 4 4
  c,4 4 2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Praise Him! praise Him!
  Glo -- ry in the high -- est un -- to Him as -- crib -- ing;
  Praise Him! praise Him!
  Bless -- ed be His name, our Lord and King!
}

chorusAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  Praise Him! praise Him!
  Praise Him! praise Him!
  _ _ _ _ _ _ _ _ _ _ _ _
  Praise Him! praise Him!
  Praise Him! praise Him!
  _ _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Praise our cre -- a -- tor and Sa -- viour e -- ter -- nal!
  Him who re -- deem'd us from death and the grave;
  Sing of His great -- ness. oh, hail and a -- dore Him,
  Strong to de -- liv -- er and migh -- ty to save.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Praise our Cre -- a -- tor and gra -- cious De -- fen -- der!
  Rock where in safe -- ty we still may a -- bide;
  He is our Shep -- herd, how gen -- tly He leads us
  Where in the val -- ley the cool wa -- ters glide!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Praise our Cre -- a -- tor, the Foun -- tain of good -- ness!
  Now in His gran -- deur ex -- alt -- ed a -- bove;
  Rest in His mer -- cy and trust in His pro -- mise,
  Ev -- er to keep us, up -- hold by His love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Praise " "our " cre a "tor " "and " Sa "viour " e ter "nal! "
  "\nHim " "who " re "deem'd " "us " "from " "death " "and " "the " "grave; "
  "\nSing " "of " "His " great "ness. " "oh, " "hail " "and " a "dore " "Him, "
  "\nStrong " "to " de liv "er " "and " migh "ty " "to " "save. "
  "\nPraise " "Him! " "praise " "Him! "
  "\nGlo" "ry " "in " "the " high "est " un "to " "Him " as crib "ing; "
  "\nPraise " "Him! " "praise " "Him! "
  "\nBless" "ed " "be " "His " "name, " "our " "Lord " "and " "King! "

  \set stanza = "2."
  "\nPraise " "our " Cre a "tor " "and " gra "cious " De fen "der! "
  "\nRock " "where " "in " safe "ty " "we " "still " "may " a "bide; "
  "\nHe " "is " "our " Shep "herd, " "how " gen "tly " "He " "leads " "us "
  "\nWhere " "in " "the " val "ley " "the " "cool " wa "ters " "glide! "
  "\nPraise " "Him! " "praise " "Him! "
  "\nGlo" "ry " "in " "the " high "est " un "to " "Him " as crib "ing; "
  "\nPraise " "Him! " "praise " "Him! "
  "\nBless" "ed " "be " "His " "name, " "our " "Lord " "and " "King! "

  \set stanza = "3."
  "\nPraise " "our " Cre a "tor, " "the " Foun "tain " "of " good "ness! "
  "\nNow " "in " "His " gran "deur " ex alt "ed " a "bove; "
  "\nRest " "in " "His " mer "cy " "and " "trust " "in " "His " pro "mise, "
  "\nEv" "er " "to " "keep " "us, " up "hold " "by " "His " "love. "
  "\nPraise " "Him! " "praise " "Him! "
  "\nGlo" "ry " "in " "the " high "est " un "to " "Him " as crib "ing; "
  "\nPraise " "Him! " "praise " "Him! "
  "\nBless" "ed " "be " "His " "name, " "our " "Lord " "and " "King! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Praise " "our " cre a "tor " "and " Sa "viour " e ter "nal! "
  "\nHim " "who " re "deem'd " "us " "from " "death " "and " "the " "grave; "
  "\nSing " "of " "His " great "ness. " "oh, " "hail " "and " a "dore " "Him, "
  "\nStrong " "to " de liv "er " "and " migh "ty " "to " "save. "
  "\nPraise " "Him! " "praise " "Him! "
  "\nPraise " "Him! " "praise " "Him! "
  "\nGlo" "ry " "in " "the " high "est " un "to " "Him " as crib "ing; "
  "\nPraise " "Him! " "praise " "Him! "
  "\nPraise " "Him! " "praise " "Him! "
  "\nBless" "ed " "be " "His " "name, " "our " "Lord " "and " "King! "

  \set stanza = "2."
  "\nPraise " "our " Cre a "tor " "and " gra "cious " De fen "der! "
  "\nRock " "where " "in " safe "ty " "we " "still " "may " a "bide; "
  "\nHe " "is " "our " Shep "herd, " "how " gen "tly " "He " "leads " "us "
  "\nWhere " "in " "the " val "ley " "the " "cool " wa "ters " "glide! "
  "\nPraise " "Him! " "praise " "Him! "
  "\nPraise " "Him! " "praise " "Him! "
  "\nGlo" "ry " "in " "the " high "est " un "to " "Him " as crib "ing; "
  "\nPraise " "Him! " "praise " "Him! "
  "\nPraise " "Him! " "praise " "Him! "
  "\nBless" "ed " "be " "His " "name, " "our " "Lord " "and " "King! "

  \set stanza = "3."
  "\nPraise " "our " Cre a "tor, " "the " Foun "tain " "of " good "ness! "
  "\nNow " "in " "His " gran "deur " ex alt "ed " a "bove; "
  "\nRest " "in " "His " mer "cy " "and " "trust " "in " "His " pro "mise, "
  "\nEv" "er " "to " "keep " "us, " up "hold " "by " "His " "love. "
  "\nPraise " "Him! " "praise " "Him! "
  "\nPraise " "Him! " "praise " "Him! "
  "\nGlo" "ry " "in " "the " high "est " un "to " "Him " as crib "ing; "
  "\nPraise " "Him! " "praise " "Him! "
  "\nPraise " "Him! " "praise " "Him! "
  "\nBless" "ed " "be " "His " "name, " "our " "Lord " "and " "King! "
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
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "alignerA"  \chorusAlto
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
            \new NullVoice = "alignerA" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
            \new Lyrics \lyricsto "alignerA" { \chorusAlto \chorusAlto \chorusAlto }
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
    system-system-spacing.basic-distance = #15
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
            \new NullVoice = "alignerA" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
            \new Lyrics \lyricsto "alignerA" { \chorusAlto \chorusAlto \chorusAlto }
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
            \addlyrics \wordsMidiAlto
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
