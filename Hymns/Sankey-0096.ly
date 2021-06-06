\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Wondrous Name!"
  subtitle    = "Sankey No. 96"
  subsubtitle = "Sankey 880 No. 496"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. L. Sterling."
  meter       = "C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  g'4
  g4. f8 e4 c'
  c4. b8 a4 4
  g4. a8 g4 e
  d2. \bar "|" \break \partial 4 g4
  g4. f8 e4 c' % B
  c4. b8 a4 4
  g4. 8 a4 b
  c2. \bar "|" \break \partial 4 g4^\markup\smallCaps Chorus.
  d'4. b8 g4 4 % C
  e'4. c8 f4 4
  f4 e d c
  c2(b4) \bar "|" \break \partial 4 g4
  a4. b8 c4 4 % D
  d4 f e d
  c4. 8 d4. c8
  c2.
}

alto = \relative {
  e'4
  e4. d8 c4 e
  f4. 8 4 4
  e4. f8 e4 c
  b2. f'4
  e4. d8 c4 g' % B
  a4. g8 f4 4
  e4. 8 f4 f
  e2. g4
  f4. 8 4 g % C
  g4. e8 4 g
  g4 4 a a
  g2. 4
  f4. 8 e4 e % D
  f4 a a a
  g4. e8 f4. e8
  e2.
}

tenor = \relative {
  c'4
  c4. g8 4 4
  a4. b8 c4 4
  c4. 8 4 g
  g2. 4
  c4. g8 4 c % B
  c4. 8 4 4
  c4. g8 b4 g
  g2. 4
  b4. d8 b4 g % C
  c4. g8 c4 g
  d'4 c d dis
  e2(d4) c
  c4. g8 4 c % D
  a4 d cis d
  e4. c8 b4. c8
  c2.
}

bass= \relative {
  c4
  c4. 8 4 4
  f4. 8 4 4
  e4. f8 e4 c
  b2. f'4
  e4. d8 c4 g' % B
  f4. 8 4 4
  g4. 8 g,4 4
  c2. g'4
  g4. 8 4 4 % C
  c,4. 8 4 g'
  b4 c f, fis
  g2. e4
  f4. d8 c4 c % D
  f4 d e f
  g4. 8 4. 8
  c,2.
}

chorus = \lyricmode {
  The Won -- der -- ful! The Coun -- sel -- lor!
  The Great and Migh -- ty Lord!
  The Ev -- er -- last -- ing Prince of Peace!
  The King, the Son of God!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, won -- drous Name, by pro -- phets heard,
  Long years be -- fore His birth;
  They saw His com -- ing from a -- far,
  The Prince of Peace on earth.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, glo -- rious Name, the an -- gels praise,
  And ran -- som'd saints a -- dore—
  The Name -- a -- bove all o -- ther names,
  Our Re -- fuge ev -- er -- more.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, pre -- cious Name, ex -- alt -- ed high,
  To whom all power is given;
  Thro' Him we tri -- umph o -- ver sin,
  By Him we en -- ter heaven.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " won "drous " "Name, " "by " pro "phets " "heard, "
  "\nLong " "years " be "fore " "His " "birth; "
  "\nThey " "saw " "His " com "ing " "from " a "far, "
  "\nThe " "Prince " "of " "Peace " "on " "earth. "
  "\nThe " Won der "ful! " "The " Coun sel "lor! "
  "\nThe " "Great " "and " Migh "ty " "Lord! "
  "\nThe " Ev er last "ing " "Prince " "of " "Peace! "
  "\nThe " "King, " "the " "Son " "of " "God! "

  \set stanza = "2."
  "\nOh, " glo "rious " "Name, " "the " an "gels " "praise, "
  "\nAnd " ran "som'd " "saints " a "dore— "
  "\nThe " Name a "bove " "all " o "ther " "names, "
  "\nOur " Re "fuge " ev er "more. "
  "\nThe " Won der "ful! " "The " Coun sel "lor! "
  "\nThe " "Great " "and " Migh "ty " "Lord! "
  "\nThe " Ev er last "ing " "Prince " "of " "Peace! "
  "\nThe " "King, " "the " "Son " "of " "God! "

  \set stanza = "3."
  "\nOh, " pre "cious " "Name, " ex alt "ed " "high, "
  "\nTo " "whom " "all " "power " "is " "given; "
  "\nThro' " "Him " "we " tri "umph " o "ver " "sin, "
  "\nBy " "Him " "we " en "ter " "heaven. "
  "\nThe " Won der "ful! " "The " Coun sel "lor! "
  "\nThe " "Great " "and " Migh "ty " "Lord! "
  "\nThe " Ev er last "ing " "Prince " "of " "Peace! "
  "\nThe " "King, " "the " "Son " "of " "God! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
