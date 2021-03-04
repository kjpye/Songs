\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Peace! Be Still!"
  subtitle    = "Sankey No. 61"
  subsubtitle = "Sankey 880 No. 395"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. R. Palmer."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mary A. Baker."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*4
  \mark \markup { \box "C" } s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
  \mark \markup { \box "E" } s8 s2.*4
  \mark \markup { \box "F" } s2.*3
  \mark \markup { \box "G" } s2.*3
  \mark \markup { \box "H" } s2.*4
  \mark \markup { \box "I" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s2.*16
  s2.*11 % E
  s4. \tempo 4=60 s4 \tempo 4=120 s8
  s2.*8
}

soprano = \relative {
  g'8\omit\mf a g g c e
  d4. a4 c8
  b8 a g f4 g8
  e4.~4 \bar "|" \break \partial 8 g8
  g8 a g g c e % B
  d4. a4 c8
  b8 a g a4 b8
  c4.~c
  e,8 e e e e e % C
  a4. b
  c8 b a g4 fis8
  g4.~4 \bar "|" \break \partial 8 e16 f
  g8 a g g c e % D
  b4. a4 c8
  b8 a g a4 b8
  c4.~4 \bar "|" \break \partial 8 e,8^\markup\smallCaps Chorus.
  e8 e e e e e % E
  f4 8 4.
  d4.^\p~4 d8
  e4.^\pp~e
  e8 e e e e e % F
  f4 8 4 8
  g8 g g g g g
  a8^\cresc a a a4 a8 % G
  b8 b b b b b
  c4 8 4 8
  d8 d d d c d % H
  e4 e8^\ff e4\fermata g,8
  e'4 d8 c b a
  g4 e8 g4.
  f4 d8 f4. % I
  e4^\p c8 e4 g8
  e'4 d8 c b a
  g4 e8 g4.
  f4.^\p d4 g8
  e4.^\pp~4.
}

alto = \relative {
  e'8\omit\mf f e e e g
  f4. f4 a8
  g8 f e d4 e8
  c4.~4 e8
  e8 f e e e g % B
  f4. f4 a8
  g8 f e f4 f8
  e4.~e
  c8 c c d d d % C
  c4. f
  e8 f e d4 d8
  d4.~4 c16 d
  e8 f e e e g % D
  f4. f4 a8
  g8 f e f4 f8
  e4.~4 c8
  c8 c c c c c % E
  b4 8 4.
  b4.^\p~4 8
  c4.^\pp~c
  c8 c c c c c % F
  b4 8 4 8
  c8 c c c c c
  c8^\cresc c c f4 fis8 % G
  g8 g g gis gis gis
  a4 e8 4 8
  g8 g g g g g % H
  g4 8^\ff g4\fermata 8
  g4 f8 e g f
  e4 c8 e4.
  d4 b8 d4. % I
  c4^\p 8 4 g'8
  g4 f8 e g f
  e4 c8 e4.
  d4.^\p b4 b8
  c4.^\pp~c
}

tenor = \relative {
  c'8\omit\mf c c c c c
  a4. d4 d8
  d8 d g, g4 g8
  g4.~4 c8
  c8 c c c c c % B
  a4. d4 d8
  d8 b g b(c) d
  c4.~c
  g8 g g gis gis gis % C
  a4. d
  c8 d c b4 a8
  b4.~4 g16 g
  c8 c c c c c % D
  a4. d4 d8
  d8 b g b c d
  c4.~4 g8
  g8 g g g g g % E
  g4 8 4.
  g4\omit\p 8 4.
  g4\omit\pp 8 4.
  g8 g g g g g % F
  g4 8 4 8
  bes8 8 8 8 8 8
  a8\omit\cresc a a c4 d8 % G
  d8 d d d d d
  c4 8 4 8
  b8 b b b a b % H
  c4 8\omit\ff c4\fermata g8
  c4 8 8 8 8
  c4 g8 c4.
  b4 g8 4. % I
  g4\omit\p e8 g4 8
  c4 8 8 8 8
  c4 g8 c4.
  b4.\omit\p g4 8
  g4.\omit\pp~g
}

bass= \relative {
  c8\omit\mf c c c c c
  f4. f4 f8
  g8 g g g,4 g8
  c4.~4 c8
  c8 c c c c c % B
  f4. f4 f8
  g8 g g g,4 g8
  c4.~c
  c8 c c b b b % C
  a4. g
  a8 b c d4 d8
  g4.~4 c,16 c
  c8 c c c c c % D
  f4. 4 8
  g8 g g g,4 8
  c4.~4 8
  c8 c c c c c % E
  d4 8 4.
  g,4\omit\p 8 4.
  c4\omit\pp 8 4.
  c8 c c c c c % F
  d4 8 4 8
  e8 e e e e e
  f8\omit\cresc f f f4 d8 % G
  g8 g g e e e
  a4 8 4 8
  g8 g g g g g % H
  c4 8\omit\ff 4\fermata g8
  c,4 8 8 8 8
  c4 8 4.
  g4 8 4. % I
  c4\omit\p 8 4 g'8
  c,4 8 8 8 8
  c4 8 4.
  g4.\omit\p 4 8
  c4.\omit\pp~c
}

wordsBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  Peace, be still!
  Peace, be still!
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

chorus = \lyricmode {
  "\"The" winds and the waves shall o -- bey My will,
  Peace, __  be still! __
  Whe -- ther the wrath of the storm -- tossed sea,
  Or de -- mons, or men, or what -- e -- ver it be,
  No wa -- ters can swal -- low the ship where lies
  The Mas -- ter of o -- cean, and earth, and skies:
  They all shall sweet -- ly o -- bey My will;
  Peace, be still!
  Peace, be still!
  They all shall sweet -- ly o -- ney my willl
  Peace, peace, be "still!\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Mas -- ter, the tem -- pest is rag -- ing!
  The bil -- lows are toss -- ing high!
  The sky is o'er -- sha -- dowed with black -- ness,
  No shel -- ter or help is noghl
  "\"Car" -- est Thou not that we per -- "ish?\"—"
  How canst Thou lie a -- sleep,
  When each mo -- ment so mad -- ly is threat -- 'ning
  A grave in the an -- gry deep?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Mas -- ter with an -- guish of spi -- rit
  I bow in my grief to -- day;
  The depths of my sad heart are trou -- bled;
  Oh, wa -- ken and save, I pray!
  Tor -- rents of sin and of an -- guish
  Sweep o'er my sing -- ing soul;
  And I per -- ish! I per -- ish! dear Mas -- ter;
  Oh hast -- en and take con -- trol.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Mas -- ter, the ter -- ror is o -- ver,
  The el -- e -- mentssweet -- ly rest;
  Earth's sun in the calm lake is nir -- rored,
  And hea -- ven's with -- in my breast;
  Lin -- ger, O bles -- sed Re -- deem -- er,
  Leave me a -- lone no more;
  And with joy I shall make the blest har -- nour,
  And rest on the bliss -- ful shore.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Mas" "ter, " "the " tem "pest " "is " rag "ing! "
  "\nThe " bil "lows " "are " toss "ing " "high! "
  "\nThe " "sky " "is " o'er sha "dowed " "with " black "ness, "
  "\nNo " shel "ter " "or " "help " "is " "noghl "
  "\n\"Car" "est " "Thou " "not " "that " "we " per "ish?\"— "
  "\nHow " "canst " "Thou " "lie " a "sleep, "
  "\nWhen " "each " mo "ment " "so " mad "ly " "is " threat "'ning "
  "\nA " "grave " "in " "the " an "gry " "deep? "
  "\"The" winds and the waves shall o -- bey My will,
  "\nPeace, "   "be " "still! " 
  "\nWhe" "ther " "the " "wrath " "of " "the " storm "tossed " "sea, "
  "\nOr " de "mons, " "or " "men, " "or " what e "ver " "it " "be, "
  "\nNo " wa "ters " "can " swal "low " "the " "ship " "where " "lies "
  "\nThe " Mas "ter " "of " o "cean, " "and " "earth, " "and " "skies: "
  "\nThey " "all " "shall " sweet "ly " o "bey " "My " "will; "
  "\nPeace, " "be " "still! "
  "\nPeace, " "be " "still! "
  "\nThey " "all " "shall " sweet "ly " o "ney " "my " "willl "
  "\nPeace, " "peace, " "be " "still!\" "

  \set stanza = "2."
  "\nMas" "ter " "with " an "guish " "of " spi "rit "
  "\nI " "bow " "in " "my " "grief " to "day; "
  "\nThe " "depths " "of " "my " "sad " "heart " "are " trou "bled; "
  "\nOh, " wa "ken " "and " "save, " "I " "pray! "
  "\nTor" "rents " "of " "sin " "and " "of " an "guish "
  "\nSweep " "o'er " "my " sing "ing " "soul; "
  "\nAnd " "I " per "ish! " "I " per "ish! " "dear " Mas "ter; "
  "\nOh " hast "en " "and " "take " con "trol. "
  "\"The" winds and the waves shall o -- bey My will,
  "\nPeace, "   "be " "still! " 
  "\nWhe" "ther " "the " "wrath " "of " "the " storm "tossed " "sea, "
  "\nOr " de "mons, " "or " "men, " "or " what e "ver " "it " "be, "
  "\nNo " wa "ters " "can " swal "low " "the " "ship " "where " "lies "
  "\nThe " Mas "ter " "of " o "cean, " "and " "earth, " "and " "skies: "
  "\nThey " "all " "shall " sweet "ly " o "bey " "My " "will; "
  "\nPeace, " "be " "still! "
  "\nPeace, " "be " "still! "
  "\nThey " "all " "shall " sweet "ly " o "ney " "my " "willl "
  "\nPeace, " "peace, " "be " "still!\" "

  \set stanza = "3."
  "\nMas" "ter, " "the " ter "ror " "is " o "ver, "
  "\nThe " el e mentssweet "ly " "rest; "
  "\nEarth's " "sun " "in " "the " "calm " "lake " "is " nir "rored, "
  "\nAnd " hea "ven's " with "in " "my " "breast; "
  "\nLin" "ger, " "O " bles "sed " Re deem "er, "
  "\nLeave " "me " a "lone " "no " "more; "
  "\nAnd " "with " "joy " "I " "shall " "make " "the " "blest " har "nour, "
  "\nAnd " "rest " "on " "the " bliss "ful " "shore. "
  "\"The" winds and the waves shall o -- bey My will,
  "\nPeace, "   "be " "still! " 
  "\nWhe" "ther " "the " "wrath " "of " "the " storm "tossed " "sea, "
  "\nOr " de "mons, " "or " "men, " "or " what e "ver " "it " "be, "
  "\nNo " wa "ters " "can " swal "low " "the " "ship " "where " "lies "
  "\nThe " Mas "ter " "of " o "cean, " "and " "earth, " "and " "skies: "
  "\nThey " "all " "shall " sweet "ly " o "bey " "My " "will; "
  "\nPeace, " "be " "still! "
  "\nPeace, " "be " "still! "
  "\nThey " "all " "shall " sweet "ly " o "ney " "my " "willl "
  "\nPeace, " "peace, " "be " "still!\" "
}
  
wordsMenMidi = \lyricmode {
  \set stanza = "1."
  "Mas" "ter, " "the " tem "pest " "is " rag "ing! "
  "\nThe " bil "lows " "are " toss "ing " "high! "
  "\nThe " "sky " "is " o'er sha "dowed " "with " black "ness, "
  "\nNo " shel "ter " "or " "help " "is " "noghl "
  "\n\"Car" "est " "Thou " "not " "that " "we " per "ish?\"— "
  "\nHow " "canst " "Thou " "lie " a "sleep, "
  "\nWhen " "each " mo "ment " "so " mad "ly " "is " threat "'ning "
  "\nA " "grave " "in " "the " an "gry " "deep? "
  "\"The" winds and the waves shall o -- bey My will,
  "\nPeace, "   "be " "still! " 
  "\nPeace, "   "be " "still! " 
  "\nWhe" "ther " "the " "wrath " "of " "the " storm "tossed " "sea, "
  "\nOr " de "mons, " "or " "men, " "or " what e "ver " "it " "be, "
  "\nNo " wa "ters " "can " swal "low " "the " "ship " "where " "lies "
  "\nThe " Mas "ter " "of " o "cean, " "and " "earth, " "and " "skies: "
  "\nThey " "all " "shall " sweet "ly " o "bey " "My " "will; "
  "\nPeace, " "be " "still! "
  "\nPeace, " "be " "still! "
  "\nThey " "all " "shall " sweet "ly " o "ney " "my " "willl "
  "\nPeace, " "peace, " "be " "still!\" "

  \set stanza = "2."
  "\nMas" "ter " "with " an "guish " "of " spi "rit "
  "\nI " "bow " "in " "my " "grief " to "day; "
  "\nThe " "depths " "of " "my " "sad " "heart " "are " trou "bled; "
  "\nOh, " wa "ken " "and " "save, " "I " "pray! "
  "\nTor" "rents " "of " "sin " "and " "of " an "guish "
  "\nSweep " "o'er " "my " sing "ing " "soul; "
  "\nAnd " "I " per "ish! " "I " per "ish! " "dear " Mas "ter; "
  "\nOh " hast "en " "and " "take " con "trol. "
  "\"The" winds and the waves shall o -- bey My will,
  "\nPeace, "   "be " "still! " 
  "\nPeace, "   "be " "still! " 
  "\nWhe" "ther " "the " "wrath " "of " "the " storm "tossed " "sea, "
  "\nOr " de "mons, " "or " "men, " "or " what e "ver " "it " "be, "
  "\nNo " wa "ters " "can " swal "low " "the " "ship " "where " "lies "
  "\nThe " Mas "ter " "of " o "cean, " "and " "earth, " "and " "skies: "
  "\nThey " "all " "shall " sweet "ly " o "bey " "My " "will; "
  "\nPeace, " "be " "still! "
  "\nPeace, " "be " "still! "
  "\nThey " "all " "shall " sweet "ly " o "ney " "my " "willl "
  "\nPeace, " "peace, " "be " "still!\" "

  \set stanza = "3."
  "\nMas" "ter, " "the " ter "ror " "is " o "ver, "
  "\nThe " el e mentssweet "ly " "rest; "
  "\nEarth's " "sun " "in " "the " "calm " "lake " "is " nir "rored, "
  "\nAnd " hea "ven's " with "in " "my " "breast; "
  "\nLin" "ger, " "O " bles "sed " Re deem "er, "
  "\nLeave " "me " a "lone " "no " "more; "
  "\nAnd " "with " "joy " "I " "shall " "make " "the " "blest " har "nour, "
  "\nAnd " "rest " "on " "the " bliss "ful " "shore. "
  "\"The" winds and the waves shall o -- bey My will,
  "\nPeace, "   "be " "still! " 
  "\nPeace, "   "be " "still! " 
  "\nWhe" "ther " "the " "wrath " "of " "the " storm "tossed " "sea, "
  "\nOr " de "mons, " "or " "men, " "or " what e "ver " "it " "be, "
  "\nNo " wa "ters " "can " swal "low " "the " "ship " "where " "lies "
  "\nThe " Mas "ter " "of " o "cean, " "and " "earth, " "and " "skies: "
  "\nThey " "all " "shall " sweet "ly " o "bey " "My " "will; "
  "\nPeace, " "be " "still! "
  "\nPeace, " "be " "still! "
  "\nThey " "all " "shall " sweet "ly " o "ney " "my " "willl "
  "\nPeace, " "peace, " "be " "still!\" "
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
            \new NullVoice = alignerm { \bass }
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new Lyrics \lyricsto alignerm \wordsBass
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
            \new NullVoice = alignerm { \bass \bass \bass }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto alignerm \wordsBass
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
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerm { \bass \bass \bass }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerm { \bass \bass \bass }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto alignerm \wordsMenMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
