\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Water of Life."
  subtitle    = "Sankey No. 354"
  subsubtitle = "Sankey 880 No. 70"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
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

#(set-global-staff-size 18)

global = {
  \key c \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s2.*4
  \mark \markup { \box "B" }    s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
  \mark \markup { \box "E" } s8 s2.*4
  \mark \markup { \box "F" }    s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=120
  s2.*21
  s4. \tempo 4.=22 s4 \tempo 4.=120 s8
  s2.*2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 8 8 8 8 8
  c4 a8 g4.
  e'4 d8 c4 e8
  d4. 4. \break
  g,8 8 8 8 8 8 % B
  c4 a8 g4. e'8 d c d[c] b
  c4. 4 \bar "|" \break d8^\markup\smallCaps Duet.
  d4 8 4 e8 % C
  d4 b8 d4.
  d4^\markup\smallCaps Chorus. a8 4 c8
  b4. d4 \bar "|" \break 8^\markup\smallCaps Duet.
  d8 8 8 4 e8 % D
  d4 b8 d4 8^\markup\smallCaps Chorus.
  d8 c b a b a
  g4.~4 \bar "|" \break 8
  c8 8 8 4 8 % E
  c4. e
  d4 a8 d4 c8
  b4. a4 \bar "|" \break g8
  c8 8 8 4 g8 % F
  a4. c4\fermata a8
  g8 c c b a b
  c4.~4.
}

alto = \relative {
  \autoBeamOff
  e'8 8 8 8 8 8
  e4 f8 e4.
  g4 8 4 8
  g4. 4.
  e8 8 8 8 8 8 % B
  e4 f8 e4.
  g8 f e f[e] d
  e4. 4 b'8
  b4 8 4 8 % C
  b4 g8 b4.
  fis4 8 4 a8
  g4. b4 8
  b8 8 8 4 c8 % D
  b4 g8 b4 8
  b8 a g fis g fis
  g4.~4 f8
  e8 8 8 4 8 % E
  e4. g
  f4 8 a4 8
  g4. f4 8
  e8 8 8 4 8 % F
  f4. a4\fermata f8
  e8 8 8 f f f
  e4.~4.
}

tenor = \relative {
  \autoBeamOff
  c'8 8 8 8 8 8
  c4 8 4.
  c4 b8 c4 8
  b4. 4.
  c8 8 8 8 8 8 % B
  c4 8 4.
  c8 g g g4 8
  g4. 4 \partCombineApart r8
  R2. % C
  R2. \partCombineAutomatic
  d'4 8 4 8
  d4. 4 \partCombineApart r8
  R2. % D
  r4 r8 r4 \partCombineAutomatic d8
  d8 8 8 c d c
  b4.~4 8
  c8 8 8 4 8 % E
  e4. c
  a4 d8 4 8
  d4. b4 8
  c8 g8 8 4 c8 % F
  c4. 4\fermata 8
  c8 g g d' d d
  c4.~4.
}

bass = \relative {
  \autoBeamOff
  c8 8 8 8 8 8
  c4 8 4.
  c'4 g8 e4 c8
  g'4. 4.
  c,8 8 8 8 8 8 % B
  c4 8 4.
  g'8 8 8 4 8
  c,4. 4 \teeny g'8
  g4 8 4 8
  g4 8 4. \normalsize
  d4 8 4 8
  g4. 4 \teeny 8
  g8 8 8 8 8 8 % D
  g4 8 4 \normalsize 8
  g8 8 8 d d d
  g4.~4 8
  c,8 8 8 4 8 % E
  c'4. 4.
  f,4 8 fis4 8
  g4. 4 8
  c,8 8 8 4 8 % F
  f4. 4\fermata 8
  g8 8 8 8 8 8
  c,4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  The Spi -- rit and the Bride say, Come; free -- ly, free -- ly, free -- ly;
  And he that is thirs -- ty, let him come, and drink of the wa -- ter of life.
  The foun -- tain of life is flow -- ing, flow -- ing, free -- ly flow -- ing;
  The foun -- tain of life is flow -- ing,
  Is flow -- ing for you and for me.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus the wa -- ter of life has given,
  Free -- ly, free -- ly, free -- ly;
  Come to that foun -- tain, oh, drink and live,
  Flow -- ing for ev -- 'ry sin -- ner.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus has prom -- ised a home in heaven,
  Free -- ly, free -- ly, free -- ly;
  Trea -- sures un -- fail -- ing will there be given
  Free -- ly to those that love Him.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus has prom -- ised a robe of white,
  Free -- ly, free -- ly, free -- ly;
  King -- doms of glo -- ry, abd crowns of light,
  Free -- ly to those that love Him.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus has prom -- ised e -- ter -- nal day,
  Free -- ly, free -- ly, free -- ly;
  Plea -- sures that nev -- er shall pass a -- way,
  Free -- ly to those that love Him.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "the " wa "ter " "of " "life " "has " "given, "
  "\nFree" "ly, " free "ly, " free "ly; "
  "\nCome " "to " "that " foun "tain, " "oh, " "drink " "and " "live, "
  "\nFlow" "ing " "for " ev "'ry " sin "ner. "
  "\nThe " Spi "rit " "and " "the " "Bride " "say, " "Come; " free "ly, " free "ly, " free "ly; "
  "\nAnd " "he " "that " "is " thirs "ty, " "let " "him " "come, " "and " "drink " "of " "the " wa "ter " "of " "life. "
  "\nThe " foun "tain " "of " "life " "is " flow "ing, " flow "ing, " free "ly " flow "ing; "
  "\nThe " foun "tain " "of " "life " "is " flow "ing, "
  "\nIs " flow "ing " "for " "you " "and " "for " "me. "

  \set stanza = "2."
  "\nJe" "sus " "has " prom "ised " "a " "home " "in " "heaven, "
  "\nFree" "ly, " free "ly, " free "ly; "
  "\nTrea" "sures " un fail "ing " "will " "there " "be " "given "
  "\nFree" "ly " "to " "those " "that " "love " "Him. "
  "\nThe " Spi "rit " "and " "the " "Bride " "say, " "Come; " free "ly, " free "ly, " free "ly; "
  "\nAnd " "he " "that " "is " thirs "ty, " "let " "him " "come, " "and " "drink " "of " "the " wa "ter " "of " "life. "
  "\nThe " foun "tain " "of " "life " "is " flow "ing, " flow "ing, " free "ly " flow "ing; "
  "\nThe " foun "tain " "of " "life " "is " flow "ing, "
  "\nIs " flow "ing " "for " "you " "and " "for " "me. "

  \set stanza = "3."
  "\nJe" "sus " "has " prom "ised " "a " "robe " "of " "white, "
  "\nFree" "ly, " free "ly, " free "ly; "
  "\nKing" "doms " "of " glo "ry, " "abd " "crowns " "of " "light, "
  "\nFree" "ly " "to " "those " "that " "love " "Him. "
  "\nThe " Spi "rit " "and " "the " "Bride " "say, " "Come; " free "ly, " free "ly, " free "ly; "
  "\nAnd " "he " "that " "is " thirs "ty, " "let " "him " "come, " "and " "drink " "of " "the " wa "ter " "of " "life. "
  "\nThe " foun "tain " "of " "life " "is " flow "ing, " flow "ing, " free "ly " flow "ing; "
  "\nThe " foun "tain " "of " "life " "is " flow "ing, "
  "\nIs " flow "ing " "for " "you " "and " "for " "me. "

  \set stanza = "4."
  "\nJe" "sus " "has " prom "ised " e ter "nal " "day, "
  "\nFree" "ly, " free "ly, " free "ly; "
  "\nPlea" "sures " "that " nev "er " "shall " "pass " a "way, "
  "\nFree" "ly " "to " "those " "that " "love " "Him. "
  "\nThe " Spi "rit " "and " "the " "Bride " "say, " "Come; " free "ly, " free "ly, " free "ly; "
  "\nAnd " "he " "that " "is " thirs "ty, " "let " "him " "come, " "and " "drink " "of " "the " wa "ter " "of " "life. "
  "\nThe " foun "tain " "of " "life " "is " flow "ing, " flow "ing, " free "ly " flow "ing; "
  "\nThe " foun "tain " "of " "life " "is " flow "ing, "
  "\nIs " flow "ing " "for " "you " "and " "for " "me. "
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
