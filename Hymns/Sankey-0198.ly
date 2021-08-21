\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Comforter has Come!"
  subtitle    = "Sankey No. 198"
  subsubtitle = "C.C. No. 261"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "F. Bottome, D.D."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key c \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*5 s2
  \mark \markup { \box "D" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

sopA = \relative {
  g'4 % A
  g4. a8 g e
  g2 c4
  c4. d8 c a
  c2 a4
}

sopB = \relative {
  g'4. a8 g e % B
  g2 e4
  e4. 8 d c
  d2 g4
  g4. a8 g e
  g2 c4 % C
  c4. d8 c a
  c2 a4
  g2 c4
  e2 d4
  c2\fermata
}

sopC = \relative {
  c''4^\markup\smallCaps Chorus. % D
  e4. d8 c d
  e2 c4
  c4. d8 c a
  c2 a4
}

soprano = \relative {
  \autoBeamOff
  \sopA
  \sopB \bar "||"
  \sopC
  \sopB
}

altoA = \relative {
  e'4 % A
  e4. f8 e c
  e2 4
  f4. 8 8 8
  f2 4
}

altoB = \relative {
  e'4. f8 e c % B
  e2 c4
  c4. 8 8 8
  b2 f'4
  e4. 8 e c
  e2 g4 % C
  f4. 8 8 8
  f2 4
  e2 4
  g2 f4
  e2\fermata
}

altoC = \relative {
  e'4 % D
  g4. f8 e f
  g2 e4
  f4. 8 8 8
  f2 4
}

alto = \relative {
  \autoBeamOff
  \altoA
  \altoB
  \altoC
  \altoB
}

tenorA = \relative {
  c'4 % A
  c4. 8 8 g
  c2 g4
  a4. 8 8 c
  a2 c4
}

tenorB = \relative {
  c'4. 8 8 g % B
  c2 g4
  a4. 8 fis fis
  g2 b4
  c4. 8 8 g
  c2 bes4 % C
  a4. 8 8 c
  a2 c4
  c2 4
  c2 4
  <g c>2\fermata
}

tenorC = \relative {
  g4 % D
  c4. g8 8 8
  c2 g4
  a4. 8 8 c
  a2 c4
}

tenor = \relative {
  \autoBeamOff
  \tenorA
  \tenorB
  \tenorC
  \tenorB
}

bassA = \relative {
  c4 % A
  c4. 8 8 8
  c2 4
  f4. 8 8 8
  f2 4
}

bassB = \relative {
  c4. 8 8 8 % B
  c2 4
  a4. 8 d d
  g,2 4
  c4. 8 8 8
  c2 e4 % C
  f4. 8 8 8
  f2 4
  g2 4
  g2 4
  c,2\fermata
}

bassC = \relative {
  c4 % D
  c4. 8 8 8
  c2 4
  f4. 8 8 8
  f2 4
}

bass = \relative {
  \autoBeamOff
  \bassA
  \bassB
  \bassC
  \bassB
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  The com -- fort -- er has come, the Com -- fort -- er has come!
  The Ho -- ly Ghost from heav'n, the Fa -- ther's prom -- ise giv'n;
  Oh, spread the ti -- dings round, where -- ev -- er man is found:
  The Com -- fort -- er has come!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, spread the tid -- ings round, wher -- ev -- er man is found,
  Wher -- ev -- er hu -- man hearts and hu -- man woes a -- bound;
  Let ev -- 'ry Chris -- tian tongue pro -- claim the joy -- ful sound:
  The Com -- fort -- er has come!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The long, long night is past, the morn -- ing breaks at last;
  And hushed the dread -- ful wail and fu -- ry of the bl;ast,
  As o'er the gol -- den hills the day ad -- van -- ces fast:
  The Com -- fort -- er has come!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The migh -- ty King of kings, with heal -- ing in His wings,
  To ev -- 'ry cap -- tive soul a full de -- liv -- 'rance brings;
  And thro' the va -- cant cells the song of tri -- umph rings
  The Com -- fort -- er has come!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, bound -- less love Di -- vine! how shall this tongu of mine
  To won -- 'dring mopr -- tals tell the match -- less grace Di -- vine—
  That I may with Him dwell, and in His im -- age shine?—
  The Com -- fort -- er has come!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, let the e -- choes fly a -- bove the vault -- ed sky,
  And all the saints a -- bove to all be -- low re -- ply
  In strains of end -- less love, the song that ne'er will die:
  The Com -- fort -- er has come!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "spread " "the " tid "ings " "round, " wher ev "er " "man " "is " "found, "
  "\nWher" ev "er " hu "man " "hearts " "and " hu "man " "woes " a "bound; "
  "\nLet " ev "'ry " Chris "tian " "tongue " pro "claim " "the " joy "ful " "sound: "
  "\nThe " Com fort "er " "has " "come! "
  "\nThe " com fort "er " "has " "come, " "the " Com fort "er " "has " "come! "
  "\nThe " Ho "ly " "Ghost " "from " "heav'n, " "the " Fa "ther's " prom "ise " "giv'n; "
  "\nOh, " "spread " "the " ti "dings " "round, " where ev "er " "man " "is " "found: "
  "\nThe " Com fort "er " "has " "come! "

  \set stanza = "2."
  "\nThe " "long, " "long " "night " "is " "past, " "the " morn "ing " "breaks " "at " "last; "
  "\nAnd " "hushed " "the " dread "ful " "wail " "and " fu "ry " "of " "the " "bl;ast, "
  "\nAs " "o'er " "the " gol "den " "hills " "the " "day " ad van "ces " "fast: "
  "\nThe " Com fort "er " "has " "come! "
  "\nThe " com fort "er " "has " "come, " "the " Com fort "er " "has " "come! "
  "\nThe " Ho "ly " "Ghost " "from " "heav'n, " "the " Fa "ther's " prom "ise " "giv'n; "
  "\nOh, " "spread " "the " ti "dings " "round, " where ev "er " "man " "is " "found: "
  "\nThe " Com fort "er " "has " "come! "

  \set stanza = "3."
  "\nThe " migh "ty " "King " "of " "kings, " "with " heal "ing " "in " "His " "wings, "
  "\nTo " ev "'ry " cap "tive " "soul " "a " "full " de liv "'rance " "brings; "
  "\nAnd " "thro' " "the " va "cant " "cells " "the " "song " "of " tri "umph " "rings "
  "\nThe " Com fort "er " "has " "come! "
  "\nThe " com fort "er " "has " "come, " "the " Com fort "er " "has " "come! "
  "\nThe " Ho "ly " "Ghost " "from " "heav'n, " "the " Fa "ther's " prom "ise " "giv'n; "
  "\nOh, " "spread " "the " ti "dings " "round, " where ev "er " "man " "is " "found: "
  "\nThe " Com fort "er " "has " "come! "

  \set stanza = "4."
  "\nOh, " bound "less " "love " Di "vine! " "how " "shall " "this " "tongu " "of " "mine "
  "\nTo " won "'dring " mopr "tals " "tell " "the " match "less " "grace " Di "vine— "
  "\nThat " "I " "may " "with " "Him " "dwell, " "and " "in " "His " im "age " "shine?— "
  "\nThe " Com fort "er " "has " "come! "
  "\nThe " com fort "er " "has " "come, " "the " Com fort "er " "has " "come! "
  "\nThe " Ho "ly " "Ghost " "from " "heav'n, " "the " Fa "ther's " prom "ise " "giv'n; "
  "\nOh, " "spread " "the " ti "dings " "round, " where ev "er " "man " "is " "found: "
  "\nThe " Com fort "er " "has " "come! "

  \set stanza = "5."
  "\nOh, " "let " "the " e "choes " "fly " a "bove " "the " vault "ed " "sky, "
  "\nAnd " "all " "the " "saints " a "bove " "to " "all " be "low " re "ply "
  "\nIn " "strains " "of " end "less " "love, " "the " "song " "that " "ne'er " "will " "die: "
  "\nThe " Com fort "er " "has " "come! "
  "\nThe " com fort "er " "has " "come, " "the " Com fort "er " "has " "come! "
  "\nThe " Ho "ly " "Ghost " "from " "heav'n, " "the " Fa "ther's " prom "ise " "giv'n; "
  "\nOh, " "spread " "the " ti "dings " "round, " where ev "er " "man " "is " "found: "
  "\nThe " Com fort "er " "has " "come! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive

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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
