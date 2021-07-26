\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Better Day is Dawning."
  subtitle    = "Sankey No. 169"
  subsubtitle = "C.C. No. 138"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key g \major
  \time 2/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2*4
  \mark \markup { \box "B" } s2*5
  \mark \markup { \box "C" } s2*5
  \mark \markup { \box "D" } s2*6
  \mark \markup { \box "E" } s2*6
  \mark \markup { \box "F" } s2*5 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8
  d8 g g8. a16
  b8 4 8
  b8 d g,8. a16
  b4. 8
  b8 a a a % B
  a8 g g g
  g8 fis fis g
  a4. d,8
  d8 g8 8. a16
  b8 4 8 % C
  b8 d g,8. a16
  b4. 8
  d8 c b a
  b8 g g e
  d8 g8 8. fis16 % D
  g2 \bar "||"
  d8^\markup\smallCaps Refrain. b'8 8. a16
  g2
  e8 g8 8. e16
  d4. 8
  d8 g8 8. a16 % E
  b8 4 8
  d8 b b g
  a2
  d,8 b'8 8. a16
  g2
  e8 g8 8. e16 % F
  d4. 8
  d8 g8 8. a16
  b8 d e\fermata e
  d8 b a8. b16
  g4.
}

alto = \relative {
  \autoBeamOff
  d'8
  d8 8 8. 16
  g8 4 8
  g8 8 d8. 16
  g4. 8
  g8 fis8 8 8 % B
  d8 8 8 8
  d8 8 8 8
  fis4. d8
  d8 8 8. 16
  g8 4 8 % C
  g8 8 d8. 16
  g4. 8
  b8 a g fis
  g8 d e c
  b8 d8 8. 16 % D
  d2
  d8 g8 8. d16
  d2
  e8 8 8. c16
  b4. 8
  d8 8 8. 16 % E
  g8 4 8
  b8 g g d
  fis2
  d8 g8 8. d16
  d2
  e8 8 8. c16% F
  b4. 8
  d8 8 8. 16
  g8 8 8\fermata 8
  g8 8 fis8. 16
  g4.
}

tenor = \relative {
  \autoBeamOff
  b8
  b8 8 8. c16
  d8 4 8
  d8 b8 8. c16
  d4. 8
  d8 c c c % B
  c8 b b b
  b8 a a b
  d4. c8
  b8 8 8. c16
  d8 4 8 % C
  d8 b8 8. c16
  d4. 8
  d8 8 8 8
  d8 b c g
  g8 b8 8. a16 % D
  b2
  b8 d8 8. c16
  b2
  c8 8 8. g16
  g4. 8
  b8 8 8. c16 % E
  d8 4 8
  d8 8 8 b
  d2
  b8 d8 8. c16
  b2
  c8 8 8. 16 % F
  g4. 8
  b8 8 8. c16
  d8 b c\fermata c
  b8 d c8. d16
  b4.
}

bass = \relative {
  \autoBeamOff
  g8
  g8 8 8. 16
  g8 4 8
  g8 8 8. 16
  g4. 8
  d8 8 8 8 % B
  d8 8 8 8
  d8 8 8 8
  d4. 8
  g8 8 8. 16
  g8 4 8 % C
  g8 8 8. 16
  g4. 8
  d8 8 8 8
  g8 8 c, c
  d8 8 8. 16 % D
  g,2
  g'8 8 8. 16
  g2
  c,8 8 8. 16
  g4. g'8
  g8 8 8. 16 % E
  g8 4 8
  g8 8 8 8
  d2
  g8 8 8. 16
  g2
  c,8 8 8. 16 % F
  g4. g'8
  g8 8 8. 16
  g8 8 c,\fermata c
  d8 8 8. 16
  g,4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Com -- ing by- -- and- -- by,
  Com -- ing by- -- and- -- by!
  The bet -- ter day is com -- ing,
  The morn -- ing draw -- eth nigh;
  Com -- ing by- -- and- -- by,
  Com -- ing by- -- and- -- by!
  The wel -- come dawn will hast -- en on;
  'Tis com -- ing by- -- and- -- by.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  A bet -- ter day is com -- ing,
  A morn -- ing prom -- ised long.
  When gird -- ed right, with ho -- ly might,
  Will ov -- er -- throw the wrong;
  When God the Lord will lis -- ten
  To ev -- 'ry plain -- tive sigh,
  And stretch His hand o'er ev -- 'ry land
  With jus -- tice by- -- and- -- by.
  
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  The boast of haugh -- ty er -- ror
  No more will fill the air,
  But age and youth will love the truth,
  and spread it ev -- 'ry -- where;
  No more from want and sor -- row
  Will come the hope -- less cry;
  For strife will cease, and per -- fect peace
  Will flour -- isg by- and- by.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, for that ho -- ly dawn -- ing
  We watch, and wait, and pray,
  Till o'er the height the morn -- ing light
  Shall drive the gloom a -- way;
  And when the heav'n -- ly glo -- ry
  Shall flood the earth and sky,
  We'll bless the Lord for all His word,
  And praise Him by- and- by.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " bet "ter " "day " "is " com "ing, "
  "\nA " morn "ing " prom "ised " "long. "
  "\nWhen " gird "ed " "right, " "with " ho "ly " "might, "
  "\nWill " ov er "throw " "the " "wrong; "
  "\nWhen " "God " "the " "Lord " "will " lis "ten "
  "\nTo " ev "'ry " plain "tive " "sigh, "
  "\nAnd " "stretch " "His " "hand " "o'er " ev "'ry " "land "
  "\nWith " jus "tice " by- and- "by. "
  "\nCom" "ing " by- and- "by, "
  "\nCom" "ing " by- and- "by! "
  "\nThe " bet "ter " "day " "is " com "ing, "
  "\nThe " morn "ing " draw "eth " "nigh; "
  "\nCom" "ing " by- and- "by, "
  "\nCom" "ing " by- and- "by! "
  "\nThe " wel "come " "dawn " "will " hast "en " "on; "
  "\n'Tis " com "ing " by- and- "by. "

  \set stanza = "2."
  "\nThe " "boast " "of " haugh "ty " er "ror "
  "\nNo " "more " "will " "fill " "the " "air, "
  "\nBut " "age " "and " "youth " "will " "love " "the " "truth, "
  "\nand " "spread " "it " ev 'ry "where; "
  "\nNo " "more " "from " "want " "and " sor "row "
  "\nWill " "come " "the " hope "less " "cry; "
  "\nFor " "strife " "will " "cease, " "and " per "fect " "peace "
  "\nWill " flour "isg " by and "by. "
  "\nCom" "ing " by- and- "by, "
  "\nCom" "ing " by- and- "by! "
  "\nThe " bet "ter " "day " "is " com "ing, "
  "\nThe " morn "ing " draw "eth " "nigh; "
  "\nCom" "ing " by- and- "by, "
  "\nCom" "ing " by- and- "by! "
  "\nThe " wel "come " "dawn " "will " hast "en " "on; "
  "\n'Tis " com "ing " by- and- "by. "

  \set stanza = "3."
  "\nOh, " "for " "that " ho "ly " dawn "ing "
  "\nWe " "watch, " "and " "wait, " "and " "pray, "
  "\nTill " "o'er " "the " "height " "the " morn "ing " "light "
  "\nShall " "drive " "the " "gloom " a "way; "
  "\nAnd " "when " "the " heav'n "ly " glo "ry "
  "\nShall " "flood " "the " "earth " "and " "sky, "
  "\nWe'll " "bless " "the " "Lord " "for " "all " "His " "word, "
  "\nAnd " "praise " "Him " by and "by. "
  "\nCom" "ing " by- and- "by, "
  "\nCom" "ing " by- and- "by! "
  "\nThe " bet "ter " "day " "is " com "ing, "
  "\nThe " morn "ing " draw "eth " "nigh; "
  "\nCom" "ing " by- and- "by, "
  "\nCom" "ing " by- and- "by! "
  "\nThe " wel "come " "dawn " "will " hast "en " "on; "
  "\n'Tis " com "ing " by- and- "by. "
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
    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
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
