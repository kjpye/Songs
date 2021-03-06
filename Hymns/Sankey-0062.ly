\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Seeking for the Lost"
  subtitle    = "Sankey No. 62"
  subsubtitle = "C.C. No. 171"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Rebecca Ruter Springer."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*2     \break
  \mark \markup { \box "B" } s1*2 s2.    \break
  \mark \markup { \box "C" } s4 s1*2 s2. \break
  \mark \markup { \box "D" } s4 s1*2 s2  \break
  \mark \markup { \box "E" } s2 s1*2     \break
  \mark \markup { \box "F" } s1*2 s2.    \break
}

soprano = \relative {
  g'8 aes
  bes8 bes bes8. c16 bes4 g8 aes
  bes8 8 8. c16 bes4 g8 aes
  bes8 ees d c bes ees, aes8. g16 % B
  f2. f8 g
  aes8 8 8. bes16 aes4 \bar "|" \break \partial 4 f8 g
  aes8 aes aes8. bes16 aes4 g8 aes % C
  bes8 ees d c bes g g8. f16
  ees2. \bar "||" \break \partial 4 f8.^\markup\smallCaps Chorus. g16
  aes2. g8. aes16 % D
  bes2. g8 aes
  bes8 ees d c \bar "|" \break \partial 2 bes8 ees, aes8. g16
  f2. g8 aes
  bes8 8 aes bes g4 bes8 bes
  c8 ees d c bes4 g8 aes % E
  bes8 ees bes16 g8. g8 ees8 f8. ees16
  ees2.
}

alto = \relative {
  ees'8 ees
  ees8 8 8. 16 4 8 8
  ees8 8 8. 16 4 8 f
  g8 g ees ees ees ees d8. ees16 % B
  d2. 8 ees
  f8 8 8. g16 f4 d8 ees
  d8 8 8. 16 4 ees8 ees % C
  ees8 8 8 8 8 8 8. bes16
  bes2. d8. ees16
  f4 8. ees16 d4 ees8. f16 % D
  g4 g8. f16 ees4 8 8
  ees8 8 8 8 8 8 d8. ees16
  d2. ees8 f % E
  g8 g fis g ees4 8 8
  ees8 8 8 8 4 8 f % F
  g8 g ees16 8. 8 c d8. ees16
  ees2.
}

tenor = \relative {
  bes8 f
  g8 8 8. aes16 g4 bes8 f
  g8 8 8. aes16 g4 bes8 8
  ees8 bes bes aes g bes bes8. bes16 % B
  bes2. 8 8
  bes8 8 8. 16 4 8 8
  bes8 8 8. 16 4 8 f % C
  g8 c bes aes g bes bes8. 16
  g2. r4
  r4 bes8. 16 4 r % D
  r4 bes8. aes16 g4 bes8 f
  g8 c bes aes
  g8 bes bes8. 16
  bes2. 8 8 % E
  ees8 8 c ees bes4 g8 8
  aes8 c bes aes g4 bes8 bes % F
  ees8 bes g16 bes8. 8 g aes8. g16
  g2.
  
}

bass= \relative {
  ees8 ees
  ees8 8 8. 16 4 8 8
  ees8 8 8. 16 4 8 8
  ees8 ees aes, c ees g f8. ees16 % B
  bes4 d8. f16 bes,4 8 8
  bes8 8 8. 16 4 aes'8 g
  f8 8 8. 16 4 ees8 ees % C
  ees8 ees aes, c ees ees bes8. 16
  ees2. r4
  r4 d8. c16 bes4 r % D
  r4 ees8. 16 4 8 8
  ees8 ees aes, c ees g f8. ees16
  bes4 d8. f16 bes,4 ees8 ees % E
  ees8 8 8 8 4 8 8
  aes8 8 8 8 ees4 8 8 % F
  ees8 8 16 8. bes8 8 8. ees16
  ees2.
}

chorus = \lyricmode {
  Far a -- way, far a -- way,
  He is seek -- ing for the wan -- d'rers gone a -- stray;
  O -- ver moun -- tain, hill, and plain,
  In the sun -- shine and the rain.
  Hear the ten -- der Shep -- herd call -- ing day by day.
}

altoWords = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  far a -- way,
  _ _ _
  far a -- way,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}

bassWordsOne = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  day by day;
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  gone a -- stray;
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
}

bassWordsTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  chill and lone;
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
}

bassWordsThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  dark and cold?
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  He is seek -- ing for the lost,
  For the lone and temp -- est -- tost:
  Hear the ten -- der Shep -- herd call -- ing day by day;
  O -- ver moun -- tain, hill and plain,
  In the sun -- shine and the rain,
  He is eeek -- ing for the wan -- d'rers far a -- way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  See His feet, all bleed -- ing, torn,
  Pierced with many a cru -- el thorn,
  While He strug -- gles thro' the val -- leys chill and lone:
  But he press -- es ea -- ger on,
  All the rocks and caves a -- mong,
  Ev -- er seek -- ing to re -- claim and save His own.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, the night is clo -- sing round,
  Have the lost ones all been found?
  Are they com -- ing from the mount -- ains dark and cold?
  Let us heed the Shep -- herd's voice,
  Let us fol -- low and re -- joice,
  While He leads us, gent -- ly leads us to the fold.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "He " "is " seek "ing " "for " "the " "lost, "
  "\nFor " "the " "lone " "and " temp est "tost: "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day; "
  "\nO" "ver " moun "tain, " "hill " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain, "
  "\nHe " "is " eeek "ing " "for " "the " wan "d'rers " "far " a "way. "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "

  \set stanza = "2."
  "\nSee " "His " "feet, " "all " bleed "ing, " "torn, "
  "\nPierced " "with " "many " "a " cru "el " "thorn, "
  "\nWhile " "He " strug "gles " "thro' " "the " val "leys " "chill " "and " "lone: "
  "\nBut " "he " press "es " ea "ger " "on, "
  "\nAll " "the " "rocks " "and " "caves " a "mong, "
  "\nEv" "er " seek "ing " "to " re "claim " "and " "save " "His " "own. "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "

  \set stanza = "3."
  "\nOh, " "the " "night " "is " clo "sing " "round, "
  "\nHave " "the " "lost " "ones " "all " "been " "found? "
  "\nAre " "they " com "ing " "from " "the " mount "ains " "dark " "and " "cold? "
  "\nLet " "us " "heed " "the " Shep "herd's " "voice, "
  "\nLet " "us " fol "low " "and " re "joice, "
  "\nWhile " "He " "leads " "us, " gent "ly " "leads " "us " "to " "the " "fold. "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "
}
  
wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "He " "is " seek "ing " "for " "the " "lost, "
  "\nFor " "the " "lone " "and " temp est "tost: "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day; "
  "\nO" "ver " moun "tain, " "hill " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain, "
  "\nHe " "is " eeek "ing " "for " "the " wan "d'rers " "far " a "way. "
  "\nFar " a "way, " "far " a "way, "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "

  \set stanza = "2."
  "\nSee " "His " "feet, " "all " bleed "ing, " "torn, "
  "\nPierced " "with " "many " "a " cru "el " "thorn, "
  "\nWhile " "He " strug "gles " "thro' " "the " val "leys " "chill " "and " "lone: "
  "\nBut " "he " press "es " ea "ger " "on, "
  "\nAll " "the " "rocks " "and " "caves " a "mong, "
  "\nEv" "er " seek "ing " "to " re "claim " "and " "save " "His " "own. "
  "\nFar " a "way, " "far " a "way, "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "

  \set stanza = "3."
  "\nOh, " "the " "night " "is " clo "sing " "round, "
  "\nHave " "the " "lost " "ones " "all " "been " "found? "
  "\nAre " "they " com "ing " "from " "the " mount "ains " "dark " "and " "cold? "
  "\nLet " "us " "heed " "the " Shep "herd's " "voice, "
  "\nLet " "us " fol "low " "and " re "joice, "
  "\nWhile " "He " "leads " "us, " gent "ly " "leads " "us " "to " "the " "fold. "
  "\nFar " a "way, " "far " a "way, "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "
}
  
wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "He " "is " seek "ing " "for " "the " "lost, "
  "\nFor " "the " "lone " "and " temp est "tost: "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day; "
  "\nO" "ver " moun "tain, " "hill " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain, "
  "\nHe " "is " eeek "ing " "for " "the " wan "d'rers " "far " a "way. "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "

  \set stanza = "2."
  "\nSee " "His " "feet, " "all " bleed "ing, " "torn, "
  "\nPierced " "with " "many " "a " cru "el " "thorn, "
  "\nWhile " "He " strug "gles " "thro' " "the " val "leys " "chill " "and " "lone: "
  "\nBut " "he " press "es " ea "ger " "on, "
  "\nAll " "the " "rocks " "and " "caves " a "mong, "
  "\nEv" "er " seek "ing " "to " re "claim " "and " "save " "His " "own. "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "

  \set stanza = "3."
  "\nOh, " "the " "night " "is " clo "sing " "round, "
  "\nHave " "the " "lost " "ones " "all " "been " "found? "
  "\nAre " "they " com "ing " "from " "the " mount "ains " "dark " "and " "cold? "
  "\nLet " "us " "heed " "the " Shep "herd's " "voice, "
  "\nLet " "us " fol "low " "and " re "joice, "
  "\nWhile " "He " "leads " "us, " gent "ly " "leads " "us " "to " "the " "fold. "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "
}
  
wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "\nHe " "is " seek "ing " "for " "the " "lost, "
  "\nFor " "the " "lone " "and " temp est "tost: "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day; "
  "\nday " "by " "day; "
  "\nO" "ver " moun "tain, " "hill " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain, "
  "\nHe " "is " eeek "ing " "for " "the " wan "d'rers " "far " a "way. "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\ngone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "

  \set stanza = "2."
  "\nSee " "His " "feet, " "all " bleed "ing, " "torn, "
  "\nPierced " "with " "many " "a " cru "el " "thorn, "
  "\nWhile " "He " strug "gles " "thro' " "the " val "leys " "chill " "and " "lone: "
  "\nchill " "and " "lone: "
  "\nBut " "he " press "es " ea "ger " "on, "
  "\nAll " "the " "rocks " "and " "caves " a "mong, "
  "\nEv" "er " seek "ing " "to " re "claim " "and " "save " "His " "own. "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\ngone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "

  \set stanza = "3."
  "\nOh, " "the " "night " "is " clo "sing " "round, "
  "\nHave " "the " "lost " "ones " "all " "been " "found? "
  "\nAre " "they " com "ing " "from " "the " mount "ains " "dark " "and " "cold? "
  "\ndark " "and " "cold? "
  "\nLet " "us " "heed " "the " Shep "herd's " "voice, "
  "\nLet " "us " fol "low " "and " re "joice, "
  "\nWhile " "He " "leads " "us, " gent "ly " "leads " "us " "to " "the " "fold. "
  "\nFar " a "way, " "far " a "way, "
  "\nHe " "is " seek "ing " "for " "the " wan "d'rers " "gone " a "stray; "
  "\ngone " a "stray; "
  "\nO" "ver " moun "tain, " "hill, " "and " "plain, "
  "\nIn " "the " sun "shine " "and " "the " "rain. "
  "\nHear " "the " ten "der " Shep "herd " call "ing " "day " "by " "day. "
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
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerS" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerS"   \wordsTwo
            \new Lyrics \lyricsto "alignerS"   \wordsThree
            \new Lyrics \lyricsto "alignerA" \altoWords
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerB" \bass
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new Lyrics \lyricsto "alignerB" \bassWordsOne
            \new Lyrics \lyricsto "alignerB" \bassWordsTwo
            \new Lyrics \lyricsto "alignerB" \bassWordsThree
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
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerS" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
            \new Lyrics \lyricsto "alignerA" { \altoWords \altoWords \altoWords }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerB" { \bass \bass \bass }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto "alignerB" { \bassWordsOne \bassWordsTwo \bassWordsThree }
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
%    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
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
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerS" \wordsMidiSop
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" { \tenor \tenor \tenor }
            \new NullVoice = "alignerB" { \bass  \bass  \bass  }
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
  \bookOutputSuffix "midi-alto"
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
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerA" \wordsMidiAlto
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" { \tenor \tenor \tenor }
            \new NullVoice = "alignerB" { \bass  \bass  \bass  }
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
  \bookOutputSuffix "midi-tenor"
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
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" { \tenor \tenor \tenor }
            \new NullVoice = "alignerB" { \bass  \bass  \bass  }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto "alignerT" \wordsMidiTenor
          >>
        >>
      >>
    >>

    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
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
            }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = "alignerT" { \tenor \tenor \tenor }
            \new NullVoice = "alignerB" { \bass  \bass  \bass  }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto "alignerB" \wordsMidiBass
          >>
        >>
      >>
    >>
    \midi {}
  }
}
