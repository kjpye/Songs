\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He's the Prince of Peacemakers."
  subtitle    = "Sankey No. 95"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. E. Glines"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "F. W. Ware."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
  \tempo 4=114
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2. s2. s4.
  \mark \markup { \box "B" } s4. s2. s2.
  \mark \markup { \box "C" } s2. s2. s2 s8
  \mark \markup { \box "D" } s8 s2. s2. s4.
  \mark \markup { \box "E" } s4. s2. s2.
  \mark \markup { \box "F" } s2. s2. s2 s8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  \autoBeamOff
  e'16^\markup\italic Moderato. e
  e16 8. f8 g8. 16 8
  a8. b16 c8 g4 16 16
  g8-> f8. 16 \bar "|" \break \partial 4. e4 g16 c
  b8 b a g4 16^\p^\markup\italic rall. f % B
  e8-! e-! e-! e-! e-! e-!
  f8.^\cresc 16 8 a4 g16 g % C
  c8. 16 b8 a a f
  e8 e d c4 \bar "|" \break \partial 8 g'16^\mf^\markup\smallCaps Chorus. g
  c8.^\markup\italic Faster. d16 e8 d c b % D
  a8. 16 8 g4 16 16
  g8-> f8. 16 \bar "|" \break \partial 4. f8-> e8. 16
  d8 e fis g4 16 16 % E
  c8 c d e4 16 d
  c8. 16 a8 g4 16 16 % F
  a16 8. b8 c16 8. d8
  e8 e d c4
}

alto = \relative {
  \autoBeamOff
  c'16 c
  c16 8. d8 e8. 16 8
  f8. g16 f8 g4 e16 e
  e8-> d8. 16 c4 e16 e
  d8 d c b4 16^\p d % B
  c8-! c-! d-! c-! c-! c-!
  c8.^\cresc 16 8 f4 d16 d % C
  g8. 16 8 f8 f d
  c8 c b c4 g'16^\mf g
  e8. f16 g8 f e g % D
  f8. 16 8 e4 16 16
  e8-> d8. 16 8-> c8. 16
  b8 c c b4 f'16 f % E
  e8 g g g4 16 e
  f8. 16 8 e4 16 e % F
  f16 8. g8 16 8. a8
  g8 g f e4
}

tenor = \relative {
  \autoBeamOff
  g16 g
  g16 8. 8 c8. 16 8
  c8. 16 a8 c4 16 16
  c8 b8. g16 4 16 16
  g8 8 fis g4 16 16 % B
  g8 8 gis a a bes
  a8. 16 8 c4 b16 b % C
  c8. 16 8 8 8 a
  g8 8 f e4 g16 g
  g8. 16 c8 g g c % D
  c8. 16 8 4 16 16
  c8 b8. g16 8 8. 16
  g8 8 a g4 16 16 % E
  g8 c b c4 16 bes
  a8. 16 c8 4 16 16 % F
  c16 8. d8 c16 8. 8
  c8 8 b c4
}

bass= \relative {
  \autoBeamOff
  c16 c
  c16 8. 8 8. 16 8
  f8. 16 8 e4 c16 c
  g'8 8. g,16 c4 16 16
  d8 d d g,4 16 16 % B
  c8 8 b a a' g
  f8. 16 8 4 16 16 % C
  e8. 16 8 f f f
  g8 g g, c4 g'16 16
  c,8. 16 8 8 8 e % D
  f8. 16 8 c4 16 16
  g'8 8. g,16 c8 8. 16
  d8 8 8 g,4 g'16 16 % E
  c,8 e g c,4 16 16
  f8. 16 8 c4 16 16 % F
  f16 8. 8 e16 8. f8
  g8 8 <g, g'> <c g'>4
}

chorus = \lyricmode {
  He's the Prince of Peace -- mak -- ers,
  all glo -- ry to God,
  To re -- deem me, and cleanse me,
  He shed His own blood;
  My a -- dop -- tion is seal'd,
  I'm a child of the King,
  And for ev -- er and ev -- er of Je -- sus I'll sing.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  He hath spo -- ken, "\"Be" "still,\"" the Re -- bu -- ker of seas:
  The com -- mand was for me, and my heart is at ease;
  He hath hush'd in -- to si -- lence the waves and the winds,
  By ap -- ply -- ing His blood and re -- mov -- ing my sins.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He hath quick -- en'd my soul by a life from a -- bove;
  It was done by the Spi -- rit, its es -- sence is love;
  He hath par -- don'd and wash'd me as white as the snow,
  And my heart with His love does this mo -- ment o'er flow.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He's a won -- der -- ful Je -- sus, this Sa -- viour of mine;
  He's the great Son of God— a Re -- deem -- er Di -- vine;
  He's my Strength and my Wis -- dom, my Life and my Lord.
  And en -- throned in my heart to be loved and a -- dored.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I will love Him and serve Him from now till I die,
  For His loev fills my heart, and His beau -- ty my eye;
  He's the fair -- est and dear -- est of all to my soul,
  And our lives shall be one, while e -- ter -- ni -- ties roll.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "He " "hath " spo "ken, " "\"Be " "still,\" " "the " Re bu "ker " "of " "seas: "
  "\nThe " com "mand " "was " "for " "me, " "and " "my " "heart " "is " "at " "ease; "
  "\nHe " "hath " "hush'd " in "to " si "lence " "the " "waves " "and " "the " "winds, "
  "\nBy " ap ply "ing " "His " "blood " "and " re mov "ing " "my " "sins. "
  "\nHe's " "the " "Prince " "of " Peace mak "ers, "
  "\nall " glo "ry " "to " "God, "
  "\nTo " re "deem " "me, " "and " "cleanse " "me, "
  "\nHe " "shed " "His " "own " "blood; "
  "\nMy " a dop "tion " "is " "seal'd, "
  "\nI'm " "a " "child " "of " "the " "King, "
  "\nAnd " "for " ev "er " "and " ev "er " "of " Je "sus " "I'll " "sing. "

  \set stanza = "2."
  "\nHe " "hath " quick "en'd " "my " "soul " "by " "a " "life " "from " a "bove; "
  "\nIt " "was " "done " "by " "the " Spi "rit, " "its " es "sence " "is " "love; "
  "\nHe " "hath " par "don'd " "and " "wash'd " "me " "as " "white " "as " "the " "snow, "
  "\nAnd " "my " "heart " "with " "His " "love " "does " "this " mo "ment " "o'er " "flow. "
  "\nHe's " "the " "Prince " "of " Peace mak "ers, "
  "\nall " glo "ry " "to " "God, "
  "\nTo " re "deem " "me, " "and " "cleanse " "me, "
  "\nHe " "shed " "His " "own " "blood; "
  "\nMy " a dop "tion " "is " "seal'd, "
  "\nI'm " "a " "child " "of " "the " "King, "
  "\nAnd " "for " ev "er " "and " ev "er " "of " Je "sus " "I'll " "sing. "

  \set stanza = "3."
  "\nHe's " "a " won der "ful " Je "sus, " "this " Sa "viour " "of " "mine; "
  "\nHe's " "the " "great " "Son " "of " "God— " "a " Re deem "er " Di "vine; "
  "\nHe's " "my " "Strength " "and " "my " Wis "dom, " "my " "Life " "and " "my " "Lord. "
  "\nAnd " en "throned " "in " "my " "heart " "to " "be " "loved " "and " a "dored. "
  "\nHe's " "the " "Prince " "of " Peace mak "ers, "
  "\nall " glo "ry " "to " "God, "
  "\nTo " re "deem " "me, " "and " "cleanse " "me, "
  "\nHe " "shed " "His " "own " "blood; "
  "\nMy " a dop "tion " "is " "seal'd, "
  "\nI'm " "a " "child " "of " "the " "King, "
  "\nAnd " "for " ev "er " "and " ev "er " "of " Je "sus " "I'll " "sing. "

  \set stanza = "4."
  "\nI " "will " "love " "Him " "and " "serve " "Him " "from " "now " "till " "I " "die, "
  "\nFor " "His " "loev " "fills " "my " "heart, " "and " "His " beau "ty " "my " "eye; "
  "\nHe's " "the " fair "est " "and " dear "est " "of " "all " "to " "my " "soul, "
  "\nAnd " "our " "lives " "shall " "be " "one, " "while " e ter ni "ties " "roll. "
  "\nHe's " "the " "Prince " "of " Peace mak "ers, "
  "\nall " glo "ry " "to " "God, "
  "\nTo " re "deem " "me, " "and " "cleanse " "me, "
  "\nHe " "shed " "His " "own " "blood; "
  "\nMy " a dop "tion " "is " "seal'd, "
  "\nI'm " "a " "child " "of " "the " "King, "
  "\nAnd " "for " ev "er " "and " ev "er " "of " Je "sus " "I'll " "sing. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
%    \articulate
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
