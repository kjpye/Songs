\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, The Boundless Love to me."
  subtitle    = "Sankey No. 68"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Gauntlett."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "P. Gerhardt. (Tr. J. Weslay.)"
  meter       = "Six 8s."
  piece       = \markup\smallCaps "Dura."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*11
  s2 \tempo 4=40 s4
}

soprano = \relative {
  b'4
  b4 ais b e
  gis, fis b e,
  e4 dis e gis
  fis4 fis gis b % B
  b4 a b e
  gis,4 gis cis cis
  fis,4 ais b dis % C
  cis4 cis b a
  gis4 fis b b
  a4 gis fis a % D
  gis4 fis b e
  gis,4 fis e\fermata
}

alto = \relative {
  gis'4
  gis4 fisis gis e
  e4 dis e e
  b4 b b e
  e4 dis e gis % B
  g4 fisis gis gis
  e4 e e fis
  fis4 e dis fis % C
  gis4 e dis fis
  e4 dis e e
  fis4 e dis fis % D
  e4 dis e e
  e4 dis e\fermata
}

tenor = \relative {
  b4
  b4 cis b b
  b4 b b cis
  b4 a gis b
  b4 b b b % B
  b4 cis b cis
  cis4 cis fis e
  dis4 cis b b % C
  b4 ais b b
  b4 b b b
  b4 b b b % D
  b4 a b cis
  b4 a gis\fermata
}

bass= \relative {
  e4
  e4 e e gis
  b4 a gis a
  gis4 fis e e
  b4 b e e % B
  e4 e e cis
  cis'4 b ais ais
  b4 fis gis dis % C
  e4 fis b, b
  b'4 a gis gis
  dis4 e b b % D
  e4 fis gis a
  b4 b, e\fermata
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Thy bound -- less love to me
  No thought can reach, no tongue de -- clare;
  Oh, knit my thank -- ful heart to Thee,
  And reign with -- out a ri -- val there!
  Thine whol -- ly, Thine a -- lone I am;
  Lord, with Thy love my heart in -- flame.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, grant that no -- thing in my soul
  May dwell, but Thy pure love a -- lone!
  Oh, may Thy love pos -- sess me whole—
  My joy, my trea -- sure, and my crown!
  All cold -- ness from my heart re -- move;
  May ev -- 'ry act, word, thought, be love.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O Love, how cheer -- ing is thy ray!
  All pain be -- fore thy pre -- sence flies;
  Care, an -- guish, sor -- row, melt a -- way,
  Where -- 'er thy heal -- ing beams a -- rise;
  O Je -- sus, no -- thing may I see,
  No -- thing de -- sire, or seek, but Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  In suf -- fering be Thy love my peace;
  In weak -- ness be Thy love my power;
  And when the storms of life shall cease,
  Je -- sus, in that im -- por -- tant hour.
  In death, as life, be Thou my Guide,
  And save me who for me hast died.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "Thy " bound "less " "love " "to " "me "
  "\nNo " "thought " "can " "reach, " "no " "tongue " de "clare; "
  "\nOh, " "knit " "my " thank "ful " "heart " "to " "Thee, "
  "\nAnd " "reign " with "out " "a " ri "val " "there! "
  "\nThine " whol "ly, " "Thine " a "lone " "I " "am; "
  "\nLord, " "with " "Thy " "love " "my " "heart " in "flame. "

  \set stanza = "2."
  "\nOh, " "grant " "that " no "thing " "in " "my " "soul "
  "\nMay " "dwell, " "but " "Thy " "pure " "love " a "lone! "
  "\nOh, " "may " "Thy " "love " pos "sess " "me " "whole— "
  "\nMy " "joy, " "my " trea "sure, " "and " "my " "crown! "
  "\nAll " cold "ness " "from " "my " "heart " re "move; "
  "\nMay " ev "'ry " "act, " "word, " "thought, " "be " "love. "

  \set stanza = "3."
  "\nO " "Love, " "how " cheer "ing " "is " "thy " "ray! "
  "\nAll " "pain " be "fore " "thy " pre "sence " "flies; "
  "\nCare, " an "guish, " sor "row, " "melt " a "way, "
  "\nWhere" "'er " "thy " heal "ing " "beams " a "rise; "
  "\nO " Je "sus, " no "thing " "may " "I " "see, "
  "\nNo" "thing " de "sire, " "or " "seek, " "but " "Thee. "

  \set stanza = "4."
  "\nIn " suf "fering " "be " "Thy " "love " "my " "peace; "
  "\nIn " weak "ness " "be " "Thy " "love " "my " "power; "
  "\nAnd " "when " "the " "storms " "of " "life " "shall " "cease, "
  "\nJe" "sus, " "in " "that " im por "tant " "hour. "
  "\nIn " "death, " "as " "life, " "be " "Thou " "my " "Guide, "
  "\nAnd " "save " "me " "who " "for " "me " "hast " "died. "
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
                                            { \global \bass  \bass  \bass  \bass  }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass  \bass  \bass  \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
