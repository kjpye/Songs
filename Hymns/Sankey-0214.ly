\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We are Coming."
  subtitle    = "Sankey No. 214"
  subsubtitle = "C. C. No. 191"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Grace J. Frances."
  meter       = \markup\smallCaps "8.7.d"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 4 e8[fis] g4
  a4 d b8[a] g4
  c4 b a g
  fis4 e d2
  d4 4 e8[fis] g4 % B
  a4 d b8[a] g4
  b4 cis d e
  d4 cis d2
  d4 fis, g8[a] b4 % C
  c4 b b a
  a4 d b g
  fis4 e d2
  d4 4 e8[fis] g4 % D
  a4 d b8[a] g4
  e'4 a, d g,8[c]
  b4 a g2
}

alto = \relative {
  \autoBeamOff
  b4 d c b8[cis]
  d4 fis g8[d] d4
  fis4 g d cis
  d4 cis d2
  b4 d c b8[cis] % B
  d4 fis g8[d] 4
  d4 g a g
  fis4 e fis2
  fis4 d d d % C
  d4 4 g fis
  fis4 a g e
  d4 cis d2
  b4 d c b8[cis] % D
  d4 fis g8[d] 4
  g4 fis g g8[a]
  g4 fis g2
}

tenor = \relative {
  \autoBeamOff
  g4 4 4 4
  d'4 4 8[c] b4
  d4 4 4 a
  a4 8[g] fis2
  g4 4 4 4 % B
  d'4 4 8[c] b4
  g4 a d b
  a4 4 2
  a4 c b8[a] g4 % C
  a4 g8[b] d4 4
  d4 4 4 b
  a4 8[g] fis2
  g4 4 4 4 % D
  d'4 4 8[c] b4
  c4 d d b8[e] d4 c b2
}

bass = \relative {
  \autoBeamOff
  g,4 b c e
  fis4 d g g
  a4 g fis e
  d4 a d2
  g,4 b c e % B
  fis4 d g g
  g4 e fis g
  a4 a, d2
  d4 4 e8[fis] g4
  fis4 g d d
  d4 fis g g
  a4 a, d2
  g,4 b c e % D
  fis4 d g g
  c,4 4 b e8[c]
  d4 4 g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Com -- ing, com -- ing, we are com -- ing
  To Thy tem -- ple, gra -- cious Lord,
  To re -- ceive the bless -- ed teach -- ing
  Of Thy pure and per -- fect Word:
  Meek -- ly would we learn our du -- ty,
  Learn it kneel -- ing at Thy feet,
  While a ra -- diance from Thy glo -- ry
  Cov -- ers all the  mer -- cy- -- seat.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sing -- ing, sing -- ing, we are sing -- ing
  Of Thy won -- drous love so free,
  How it flow -- eth ev -- er on -- ward
  Like a vast and migh -- ty sea:
  And our souls mount up with glad -- ness,
  While we swell  the lof -- ty strain,
  "\"Glo" -- ry, glo -- ry, hal -- le -- lu -- jah,
  To the Lamb for sin -- ners "slain!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Pray -- ing, pray -- ing, we are pray -- ing
  That Thy Spi -- rit, like a dove,
  May de -- scend with gifts of mer -- cy
  From Thy gra -- cious hand a -- bove.
  Lord, we ask that, by Thy watch- -- care,
  We may all pro -- tect -- ed be,
  Ev -- 'ry hand be quick to la -- bour,
  And our hearts be stayed on Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Com" "ing, " com "ing, " "we " "are " com "ing "
  "\nTo " "Thy " tem "ple, " gra "cious " "Lord, "
  "\nTo " re "ceive " "the " bless "ed " teach "ing "
  "\nOf " "Thy " "pure " "and " per "fect " "Word: "
  "\nMeek" "ly " "would " "we " "learn " "our " du "ty, "
  "\nLearn " "it " kneel "ing " "at " "Thy " "feet, "
  "\nWhile " "a " ra "diance " "from " "Thy " glo "ry "
  "\nCov" "ers " "all " "the "  mer cy- "seat. "

  \set stanza = "2."
  "\nSing" "ing, " sing "ing, " "we " "are " sing "ing "
  "\nOf " "Thy " won "drous " "love " "so " "free, "
  "\nHow " "it " flow "eth " ev "er " on "ward "
  "\nLike " "a " "vast " "and " migh "ty " "sea: "
  "\nAnd " "our " "souls " "mount " "up " "with " glad "ness, "
  "\nWhile " "we " "swell "  "the " lof "ty " "strain, "
  "\n"\"Glo"" "ry, " glo "ry, " hal le lu "jah, "
  "\nTo " "the " "Lamb " "for " sin "ners " "slain!\" "

  \set stanza = "3."
  "\nPray" "ing, " pray "ing, " "we " "are " pray "ing "
  "\nThat " "Thy " Spi "rit, " "like " "a " "dove, "
  "\nMay " de "scend " "with " "gifts " "of " mer "cy "
  "\nFrom " "Thy " gra "cious " "hand " a "bove. "
  "\nLord, " "we " "ask " "that, " "by " "Thy " watch- "care, "
  "\nWe " "may " "all " pro tect "ed " "be, "
  "\nEv" "'ry " "hand " "be " "quick " "to " la "bour, "
  "\nAnd " "our " "hearts " "be " "stayed " "on " "Thee. "
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
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    paper-height = 2000\mm
%    ragged-bottom = true
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%    \articulate
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
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
%    \midi {}
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
