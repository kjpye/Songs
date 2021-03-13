\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hail to the Lord's Anointed."
  subtitle    = "Sankey No. 67"
  subsubtitle = "C.C. No. 42"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Anon."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "James Montgomery."
  meter       = \markup\smallCaps "c.m.d"
  piece       = \markup\smallCaps "Ellacombe."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  f'4
  bes4 a8(g) f4 bes
  d,4(ees) f f
  g8(a) bes4 c c
  d2. \bar "|" \break \partial 4 f,4
  bes4 a8(g) f4 bes % B
  d,4(ees) f f
  g8(a) bes4 bes a
  bes2. \bar "|" \break \partial 4 bes8(c)
  d4 c d ees % C
  c4(a8 bes) c4 bes8(c)
  d4 c d ees
  c2. \bar "|" \break \partial 4 f,4
  bes4 a8(g) f4 bes % D
  d,4(ees) f f
  g8(a) bes4 bes a
  bes2.
}

alto = \relative {
  f'4
  bes4 a8(g) f4 bes
  d,4(c8 bes) c4 d
  ees4 f g f
  f2. f4
  bes4 a8(g) f4 bes % B
  d,4(c8 bes) c4 d
  ees4 d8(ees) f4 f
  f2. d8(ees)
  f4 f f g % C
  f2 f4 d8(ees)
  f4 f f g
  f2. f4
  bes4 a8(g) f4 f % D
  d4(c8 bes) c4 d
  ees4 d8(ees) f4 f
  f2.
}

tenor = \relative {
  f4
  bes4 a8(g) f4 bes
  bes2 a4 bes
  bes4 bes bes a
  bes2. f4
  bes4 a8(g) f4 bes % B
  bes2 a4 bes
  bes4 bes c c
  d2. bes4
  bes4 c bes bes % C
  a4(f8 g) a4 bes
  bes4 c bes bes
  a2. f4
  bes4 a8(g) f4 bes % D
  bes2 a4 bes
  bes4 bes c c
  d2.
}

bass= \relative {
  f4
  bes4 a8(g) f4 d
  g2 f4 bes,
  ees4 d ees f
  bes,2. f'4
  bes4 a8(g) f4 d % B
  g2 f4 bes,
  ees4 g f f
  bes,2. bes'4
  bes4 a bes ees, % C
  f2 f4 bes
  bes4 a bes ees,
  f2. f4
  bes4 a8(g) f4 d % D
  g2 f4 bes,
  ees4 g f f
  bes,2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Hail to the Lord's a -- noint -- ed,
  Great Da -- vid's great -- er Son;
  Hail in the time ap -- point -- ed,
  His reign on earth be -- gun!
  He comes to break op -- pres -- sion,
  To set the cap -- tive free;
  To take a -- way trans -- gres -- sion,
  And rule in e -- qui -- ty.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He shall come down like show -- ers
  Up -- on the fruit -- ful earth:
  And love, joy, hope, like flow -- ers,
  Spring in His path to birth,
  Be -- fore Him on the moun -- tains
  Shall Peace, the her -- ald, go;
  And righ -- teous -- ness in foun -- tains
  From hill to val -- ley flow.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Kings shall fall down be -- fore Him,
  And gold and in -- cense bring;
  All na -- tions shall a -- dore Him,
  His praise all peo -- ple sing.
  For He shall have do -- min -- ion
  O'er riv -- er, sea, and shore.
  Far as the ea -- gle's pin -- ion
  Or dove's light wing can soar.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  For Him shall prayer un -- ceas -- ing,
  And dai -- ly vows as -- cend;
  His king -- dom still in -- creas -- ing,
  A king -- dom with -- out end.
  The tide of time shall nev -- er
  His cov -- e -- nant re -- move;
  His name shall stand for ev -- er,
  That name to us is— Love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nHail " "to " "the " "Lord's " a noint "ed, "
  "\nGreat " Da "vid's " great "er " "Son; "
  "\nHail " "in " "the " "time " ap point "ed, "
  "\nHis " "reign " "on " "earth " be "gun! "
  "\nHe " "comes " "to " "break " op pres "sion, "
  "\nTo " "set " "the " cap "tive " "free; "
  "\nTo " "take " a "way " trans gres "sion, "
  "\nAnd " "rule " "in " e qui "ty. "

  \set stanza = "2."
  "\nHe " "shall " "come " "down " "like " show "ers "
  "\nUp" "on " "the " fruit "ful " "earth: "
  "\nAnd " "love, " "joy, " "hope, " "like " flow "ers, "
  "\nSpring " "in " "His " "path " "to " "birth, "
  "\nBe" "fore " "Him " "on " "the " moun "tains "
  "\nShall " "Peace, " "the " her "ald, " "go; "
  "\nAnd " righ teous "ness " "in " foun "tains "
  "\nFrom " "hill " "to " val "ley " "flow. "

  \set stanza = "3."
  "\nKings " "shall " "fall " "down " be "fore " "Him, "
  "\nAnd " "gold " "and " in "cense " "bring; "
  "\nAll " na "tions " "shall " a "dore " "Him, "
  "\nHis " "praise " "all " peo "ple " "sing. "
  "\nFor " "He " "shall " "have " do min "ion "
  "\nO'er " riv "er, " "sea, " "and " "shore. "
  "\nFar " "as " "the " ea "gle's " pin "ion "
  "\nOr " "dove's " "light " "wing " "can " "soar. "

  \set stanza = "4."
  "\nFor " "Him " "shall " "prayer " un ceas "ing, "
  "\nAnd " dai "ly " "vows " as "cend; "
  "\nHis " king "dom " "still " in creas "ing, "
  "\nA " king "dom " with "out " "end. "
  "\nThe " "tide " "of " "time " "shall " nev "er "
  "\nHis " cov e "nant " re "move; "
  "\nHis " "name " "shall " "stand " "for " ev "er, "
  "\nThat " "name " "to " "us " "is— " "Love. "
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
               \RehearsalTrack
            }
            \new Voice \TempoTrack
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice \TempoTrack
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
