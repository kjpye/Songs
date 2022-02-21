\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Behold the Wondrous Love!"
  subtitle    = "Sankey No. 361"
  subsubtitle = "N. H.No. 77"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 2.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2. s1*2 s2
  \mark \markup { \box "B" } s2  s1*3
  \mark \markup { \box "C" }     s1*3
  \mark \markup { \box "D" }     s1*3
  \mark \markup { \box "E" }     s1*3 s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 c4. 8
  e,4 f a g
  e4 g a4. 8
  g4 c \bar "|" \break c b
  c4 g c4. 8 % B
  e,4 f a g
  e4 c' b4. 8
  c4 a g fis % C
  g2 r8 \bar "||" 8^\markup\smallCaps Chorus. 8 8
  d'4 4. 8 c d
  e4 c4. g8 8 8 % D
  a4 c4. 8 b a
  a4 g4. 8 8 8
  d'4 4. 8 c8 d % E
  e4 c2 g8 8
  a4. c8 4 b
  c4\fermata
}

alto = \relative {
  \autoBeamOff
  e'4 4. 8
  c4 d f e
  c4 e f4. 8
  g4 e e d
  e4 4 4. 8 % B
  c4 d f e
  c4 e d4. 8
  d4 4 4 4 % C
  d2 r8 g8 8 8
  f4 4. 8 e f
  g4 e4. 8 8 8 % D
  f4 4. 8 8 8
  f4 e4. g8 8 8
  f4 4. 8 e f % E
  g4 e2 8 g
  f4. 8 e4 d
  e4\fermata
}

tenor = \relative {
  \autoBeamOff
  g4 4. 8
  g4 4 c c
  g4 c4 4. 8
  c4 g g g
  g4 4 4. 8 % B
  g4 4 c c
  g4 4 4. 8
  a4 c b a % C
  b2 r8 g8 8 8
  b4 4. 8 c b
  c4 g4. c8 8 8 % D
  c4 a4. 8 b c
  c4 4. g8 8 8
  b4 4. 8 c b % E
  c4 g2 c8 8
  c4. a8 g4 4
  g4\fermata
}

bass = \relative {
  \autoBeamOff
  c4 4. 8
  c4 4 4 4
  c4 4 f4. 8
  e4 c g' g,
  c4 4 4. 8 % B
  c4 4 4 4
  c4 4 d4. 8
  d4 4 4 4 % C
  g2 r8 g g g
  g4 4. 8 8 8
  c,4 4. 8 8 8 % D
  f4 4. 8 8 8
  c4 4. g'8 8 8
  g4 4. 8 8 8 % E
  c,4 2 8 e
  f4. f8 g4 g,
  c4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  All praise and glo -- ry be un -- to Je -- sus,
  For He hath pur -- chased a full sal -- va -- tion,
  Be -- hold how won -- drous the pro -- cla -- ma -- tion.
  "\"Who" -- so -- ev -- er will may "come!\""
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- hold, be -- hold the won -- drous love,
  That ev -- er flows from God a -- bove
  Thro' Christ, His on -- ly Son, who gave
  His pre -- cious blood our souls to save.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be -- hold a foun -- tain in His side,
  To all the world is o -- pened wide,
  Where all may come, by sin -- op -- prest,
  And find in Him sweet peace and rest.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Be -- hold Him now ex -- alt -- ed high
  A -- bove the bright and star -- ry sky;
  Yet through His Word He call -- eth still,
  "\"Come" un -- to "Me\"" who -- ev -- er will.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be -- hold in Him the Liv -- ing Way,
  That on -- ward leads to end -- less day;
  Where, saved by grace,
  The ran -- somed throng
  Lift up the ev -- er -- last -- ing song.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "hold, " be "hold " "the " won "drous " "love, "
  "\nThat " ev "er " "flows " "from " "God " a "bove "
  "\nThro' " "Christ, " "His " on "ly " "Son, " "who " "gave "
  "\nHis " pre "cious " "blood " "our " "souls " "to " "save. "
  "\nAll " "praise " "and " glo "ry " "be " un "to " Je "sus, "
  "\nFor " "He " "hath " pur "chased " "a " "full " sal va "tion, "
  "\nBe" "hold " "how " won "drous " "the " pro cla ma "tion. "
  "\n\"Who" so ev "er " "will " "may " "come!\" "

  \set stanza = "2."
  "\nBe" "hold " "a " foun "tain " "in " "His " "side, "
  "\nTo " "all " "the " "world " "is " o "pened " "wide, "
  "\nWhere " "all " "may " "come, " "by " sin op "prest, "
  "\nAnd " "find " "in " "Him " "sweet " "peace " "and " "rest. "
  "\nAll " "praise " "and " glo "ry " "be " un "to " Je "sus, "
  "\nFor " "He " "hath " pur "chased " "a " "full " sal va "tion, "
  "\nBe" "hold " "how " won "drous " "the " pro cla ma "tion. "
  "\n\"Who" so ev "er " "will " "may " "come!\" "

  \set stanza = "3."
  "\nBe" "hold " "Him " "now " ex alt "ed " "high "
  "\nA" "bove " "the " "bright " "and " star "ry " "sky; "
  "\nYet " "through " "His " "Word " "He " call "eth " "still, "
  "\n\"Come " un "to " "Me\" " who ev "er " "will. "
  "\nAll " "praise " "and " glo "ry " "be " un "to " Je "sus, "
  "\nFor " "He " "hath " pur "chased " "a " "full " sal va "tion, "
  "\nBe" "hold " "how " won "drous " "the " pro cla ma "tion. "
  "\n\"Who" so ev "er " "will " "may " "come!\" "

  \set stanza = "4."
  "\nBe" "hold " "in " "Him " "the " Liv "ing " "Way, "
  "\nThat " on "ward " "leads " "to " end "less " "day; "
  "\nWhere, " "saved " "by " "grace, "
  "\nThe " ran "somed " "throng "
  "\nLift " "up " "the " ev er last "ing " "song. "
  "\nAll " "praise " "and " glo "ry " "be " un "to " Je "sus, "
  "\nFor " "He " "hath " pur "chased " "a " "full " sal va "tion, "
  "\nBe" "hold " "how " won "drous " "the " pro cla ma "tion. "
  "\n\"Who" so ev "er " "will " "may " "come!\" "
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
                                              \wordsFour  \chorus
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
                                              \wordsFour  \chorus
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
