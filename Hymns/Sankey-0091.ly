\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Precious Name."
  subtitle    = "Sankey No. 91"
  subsubtitle = "Sankey 880 No. 148"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. L. Baxter"
  meter       = "8.7."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key aes \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*3
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3
  \mark \markup { \box "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  ees'4 aes c8. bes16 aes8. bes16
  aes2 ees
  f4 aes g8.f16 aes8. f16
  ees2. r4 % B
  ees4 bes' aes8. g16 aes8. bes16
  c2 aes
  bes4 ees, \bar "|" \break \partial 2 c'8. bes16 aes8. g16
  aes2. \bar "||" \partial 4 aes8.^\markup\smallCaps Chorus. g16 % C
  f2. aes8 f
  ees2. aes8 bes % D
  c4 ees, aes c
  bes2. c8. bes16
  aes2. 8 g % E
  f2(aes4\fermata) 8 bes
  c4 aes c bes
  aes2. r4
}

alto = \relative {
  c'4 c ees8. des16 c8. des16
  c2 c
  des4 f ees8. des16 f8. des16
  c2. r4 % B
  ees4 4 8. 16 8. 16
  ees2 e
  ees4 4 8. 16 8. 16
  c2. 8. ees16 % C
  des2. f8 des
  c2. ees8 8 % D
  ees4 c ees aes
  g2. ees8. des16
  c2. 8 ees % E
  des2(f4\fermata) 8 fes
  ees4 4 4 des
  c2. r4
}

tenor = \relative {
  aes4 4 8. 16 8. 16
  aes2 2
  aes4 4 8. 16 8. 16
  aes2. r4 % B
  g4 des' c8. bes16 c8. aes16
  aes2 c
  des4 g, aes8. des16 c8. bes16
  aes2. r4 % C
  r4 aes8 8 4 r4
  r4 aes8 8 4 8 g % D
  aes4 4 c ees
  ees2. r4
  r4 aes,8 8 4 8 8 % E
  aes4 4 4\fermata 8 8
  aes4 c aes g
  aes2. r4
}

bass= \relative {
  aes,4 4 8. 16 8. 16
  aes2 2
  des4 4 8. 16 8. 16
  aes2. r4 % B
  ees'4 4 8. 16 8. 16
  aes,2 2
  ees'4 4 8. 16 8. 16
  aes,2. r4 % C
  r4 des8 8 4 r
  r4 aes8 8 4 c8 ees % D
  aes4 4 4 aes,
  ees'2. r4
  r4 aes,8 8 4 8 c % E
  des4 4 4\fermata 8 8
  ees4 4 4 4
  aes,2. r4
}

chorus = \lyricmode {
  Pre -- cious name, oh, how sweet!
  Hope of earth and joy of heav'n;
  Pre -- cious name, oh, how sweet!
  Hope of earth and joy of heav'n.
}

emptyVerse = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

chorusMen = \lyricmode {
  Pre -- cious name.
  oh, how sweet!
  _ _ _ _ _ _ _
  Pre -- cious name.
  oh, how sweet, how sweet!
  _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Take the name of Je -- sus with you.
  Child of sor -- row and of woe;
  It will joy and com -- fort give you—
  Take it then wher -- e'er you go.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Take the name of Je -- sus ev -- er,
  As a shield from ev -- 'ry snare;
  If temp -- ta -- tions round you gath -- er,
  Breathe that ho -- ly name in prayer.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, the prec -- ious name of Je -- sus!
  How it thrills our souls with joy,
  When His lov -- ing arms re -- ceive us,
  And His songs our tongues em -- ploy!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  At the name of Je -- sus bow -- ing,
  Fall -- ing pros -- trate at His feet,
  King of kings in heaven we'll crown Him,
  When our jour-- ney is comp -- lete.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Take " "the " "name " "of " Je "sus " "with " "you. "
  "\nChild " "of " sor "row " "and " "of " "woe; "
  "\nIt " "will " "joy " "and " com "fort " "give " "you— "
  "\nTake " "it " "then " wher "e'er " "you " "go. "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n; "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n. "

  \set stanza = "2."
  "\nTake " "the " "name " "of " Je "sus " ev "er, "
  "\nAs " "a " "shield " "from " ev "'ry " "snare; "
  "\nIf " temp ta "tions " "round " "you " gath "er, "
  "\nBreathe " "that " ho "ly " "name " "in " "prayer. "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n; "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n. "

  \set stanza = "3."
  "\nOh, " "the " prec "ious " "name " "of " Je "sus! "
  "\nHow " "it " "thrills " "our " "souls " "with " "joy, "
  "\nWhen " "His " lov "ing " "arms " re "ceive " "us, "
  "\nAnd " "His " "songs " "our " "tongues " em "ploy! "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n; "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n. "

  \set stanza = "4."
  "\nAt " "the " "name " "of " Je "sus " bow "ing, "
  "\nFall" "ing " pros "trate " "at " "His " "feet, "
  "\nKing " "of " "kings " "in " "heaven " "we'll " "crown " "Him, "
  "\nWhen " "our " jour "ney " "is " comp "lete. "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n; "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n. "
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Take " "the " "name " "of " Je "sus " "with " "you. "
  "\nChild " "of " sor "row " "and " "of " "woe; "
  "\nIt " "will " "joy " "and " com "fort " "give " "you— "
  "\nTake " "it " "then " wher "e'er " "you " "go. "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n; "
  "\nPre" "cious " "name, " "oh, " "how " "sweet, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n. "

  \set stanza = "2."
  "\nTake " "the " "name " "of " Je "sus " ev "er, "
  "\nAs " "a " "shield " "from " ev "'ry " "snare; "
  "\nIf " temp ta "tions " "round " "you " gath "er, "
  "\nBreathe " "that " ho "ly " "name " "in " "prayer. "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n; "
  "\nPre" "cious " "name, " "oh, " "how " "sweet, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n. "

  \set stanza = "3."
  "\nOh, " "the " prec "ious " "name " "of " Je "sus! "
  "\nHow " "it " "thrills " "our " "souls " "with " "joy, "
  "\nWhen " "His " lov "ing " "arms " re "ceive " "us, "
  "\nAnd " "His " "songs " "our " "tongues " em "ploy! "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n; "
  "\nPre" "cious " "name, " "oh, " "how " "sweet, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n. "

  \set stanza = "4."
  "\nAt " "the " "name " "of " Je "sus " bow "ing, "
  "\nFall" "ing " pros "trate " "at " "His " "feet, "
  "\nKing " "of " "kings " "in " "heaven " "we'll " "crown " "Him, "
  "\nWhen " "our " jour "ney " "is " comp "lete. "
  "\nPre" "cious " "name, " "oh, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n; "
  "\nPre" "cious " "name, " "oh, " "how " "sweet, " "how " "sweet! "
  "\nHope " "of " "earth " "and " "joy " "of " "heav'n. "
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
            \new NullVoice = alignerMen \tenor
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
           \new Lyrics \lyricsto alignerMen { \emptyVerse \chorusMen }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new Lyrics \lyricsto alignerMen { \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                             }
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new Lyrics \lyricsto alignerMen { \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                             }
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
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerMen { \tenor \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new Lyrics \lyricsto alignerMen \wordsMidiMen
          >>
        >>
      >>
    >>
    \midi {}
  }
}
