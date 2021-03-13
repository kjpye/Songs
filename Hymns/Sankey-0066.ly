\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Who is He?"
  subtitle    = "Sankey No. 66"
  subsubtitle = "Sankey 880 No. 392"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "B. R. Hanby."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3
  \mark \markup { \box "C" } s2.*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  e'8\omit\mp ^\markup\italic Tenderly. e
  e4. 8 8 8
  fis2 8 8
  e4. 8 a a b2 \bar "|" \break \partial 4 a8^\f ^\markup { \smallCaps Chorus. \italic Joyful. } b
  cis4. 8 d cis % B
  cis4 b gis8 a
  b4. 8 cis b
  b4 a a8^\p a % C
  a4. 8 8 e
  fis2 a8^\ff b
  cis4. 8 b b
  a2
}

alto = \relative {
  cis'8\omit\mp  cis
  cis4. 8 8 e
  d2 8 8
  cis4. 8 8 8
  d2 cis8^\f d
  e4. 8 fis e % B
  e4 e e8 cis
  e4. 8 8 8
  d4 cis4 8^\p 8 % C
  cis4. 8 e e
  d2 fis8^\ff fis
  e4. 8 8 d
  cis2
}

tenor = \relative {
  a8\omit\mp a
  a4. 8 8 8
  a2 8 8
  a4. 8 8 8
  gis2 e8\omit\f e
  a4. 8 8 8 % B
  a4 gis b8 a
  gis4. 8 a gis
  a4 a e8\omit\p e % C
  a4. 8 8 8
  a2 8\omit\ff 8
  a4. 8 gis gis
  a2
}

bass= \relative {
  a,8\omit\mp a
  a4. 8 cis cis
  d2 8 8
  e4. 8 fis fis
  e2 a,8\omit\f a
  a4. 8 8 8 % B
  e'4 e e8 e
  e4. 8 8 8
  a,4 a a8\omit\p a % C
  a4. 8 cis cis
  d2 8\omit\ff 8
  e4. 8 8 8
  a,2
}

chorus = \lyricmode {
  'Tis the Lord! oh, won -- drous sto -- ry!
  'Tis the Lord, the King of Glo -- ry!
  At His feet we hum -- bly fall—,
  Crown Him, crown Him Lord of All!
}

nochorus = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

noverse = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}
  
wordsOne = \lyricmode {
  \set stanza = "1."
  Who is He in yon -- der stall,
  At whose feet the shep -- herds fall?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Who is He in deep dis -- tress,
  Fast -- ing in the wil -- der -- ness?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Who is He the peo -- ple bless
  For His words of gen -- tle -- ness?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Who is He to whom they bring
  All the sick and sor -- row -- ing?
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Who is He who stands and weeps
  At the grave where Laz -- arus sleeps?
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Who is He the gath -- ering throng
  Greet with loud tri -- um -- phant song?
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  Lo, at mid -- nioght, who is He
  Prays in dark Geth -- sem -- an -- e?
}
  
wordsEight = \lyricmode {
  \set stanza = "8."
  Who is He on yon -- der tree
  Dies in grief and a -- gon -- y?
}
  
wordsNine = \lyricmode {
  \set stanza = "9."
  Who is He who from the grave
  comes to suc -- cour, help, and save?
}
  
wordsTen = \lyricmode {
  \set stanza = "10."
  Who is He who from His throne
  Rules through all the worlds a -- lone?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nWho " "is " "He " "in " yon "der " "stall, "
  "\nAt " "whose " "feet " "the " shep "herds " "fall? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "

  \set stanza = "2."
  "\nWho " "is " "He " "in " "deep " dis "tress, "
  "\nFast" "ing " "in " "the " wil der "ness? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "

  \set stanza = "3."
  "\nWho " "is " "He " "the " peo "ple " "bless "
  "\nFor " "His " "words " "of " gen tle "ness? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "

  \set stanza = "4."
  "\nWho " "is " "He " "to " "whom " "they " "bring "
  "\nAll " "the " "sick " "and " sor row "ing? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "

  \set stanza = "5."
  "\nWho " "is " "He " "who " "stands " "and " "weeps "
  "\nAt " "the " "grave " "where " Laz "arus " "sleeps? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "

  \set stanza = "6."
  "\nWho " "is " "He " "the " gath "ering " "throng "
  "\nGreet " "with " "loud " tri um "phant " "song? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "

  \set stanza = "7."
  "\nLo, " "at " mid "nioght, " "who " "is " "He "
  "\nPrays " "in " "dark " Geth sem an "e? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "

  \set stanza = "8."
  "\nWho " "is " "He " "on " yon "der " "tree "
  "\nDies " "in " "grief " "and " a gon "y? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "

  \set stanza = "9."
  "\nWho " "is " "He " "who " "from " "the " "grave "
  "\ncomes " "to " suc "cour, " "help, " "and " "save? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "

  \set stanza = "10."
  "\nWho " "is " "He " "who " "from " "His " "throne "
  "\nRules " "through " "all " "the " "worlds " a "lone? "
  "\n'Tis " "the " "Lord! " "oh, " won "drous " sto "ry! "
  "\n'Tis " "the " "Lord, " "the " "King " "of " Glo "ry! "
  "\nAt " "His " "feet " "we " hum "bly " "fall—, "
  "\nCrown " "Him, " "crown " "Him " "Lord " "of " "All! "
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
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
            \new Lyrics \lyricsto "aligner"   \wordsEight
            \new Lyrics \lyricsto "aligner"   \wordsNine
            \new Lyrics \lyricsto "aligner"   \wordsTen
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
  \bookOutputSuffix "multiple"
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
            \new Voice \TempoTrack
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \repeat volta 3 \soprano \repeat volta 4 \soprano \repeat volta 3 \soprano }
                                               { \global \alto \break \alto \break \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus \wordsFour \chorus \wordsEight \chorus }
            \new Lyrics \lyricsto "aligner" { \wordsTwo \nochorus \wordsFive \nochorus \wordsNine }
            \new Lyrics \lyricsto "aligner" { \wordsThree \nochorus \wordsSix \nochorus \wordsTen }
            \new Lyrics \lyricsto "aligner" { \noverse \nochorus \wordsSeven }
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
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice \TempoTrack
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl\alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
                                              \wordsEight \chorus
                                              \wordsNine  \chorus
                                              \wordsTen  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass \bass \bass \bass \bass }
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
            \new Voice \TempoTrack
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl\alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
