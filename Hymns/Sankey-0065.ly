\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, How He Loves!"
  subtitle    = "Sankey No. 65"
  subsubtitle = "Sankey 880 No. 125"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Miss M. Nunn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  a'4. 8 4 fis
  d'4. b8 a4 fis
  b2 a4. fis8
  e2. r4 \break
  a4. 8 4 fis % B
  d'4. b8 a4 fis
  a4(d) e4. cis8 d2. r4 \break
  e,4 e e fis % C
  a4. g8 4 e
  fis4 4 4 g
  b4. a8 4 fis \break
  d'4 4 4. 8 % D
  e4 e e b
  a2 d4 cis
  d2. r4
}

alto = \relative {
  fis'4. 8 4 d
  g4. 8 fis4 d
  d2 4. 8
  cis2. r4
  d4. 8 fis4 d % B
  d4. g8 fis4 d
  fis2 g4. e8
  fis2. r4
  cis4 4 4 d % C
  fis4. e8 4 cis
  d4 d d e
  g4. a8 4 fis
  fis4 g a4. 8 % D
  g4 g g g
  fis2 4 e
  fis2. r4
}

tenor = \relative {
  a4. 8 4 4
  b4. d8 4 a
  g2 a4. 8
  a2. r4
  fis4. 8 a4 a % B
  b4. d8 4 a
  d4(a) 4. 8
  a2. r4
  a4 a a a % C
  a4. 8 4 4
  a4 a a a
  d4. 8 4 a
  a4 a a4. c8 % D
  b4 b b d
  d2 a4 a
  a2. r4
}

bass= \relative {
  d4. 8 4 4
  d4. 8 4 4
  g2 fis4. d8
  a2. r4
  d4. 8 4 4 % B
  g4. 8 d4 d
  d2 a4. 8
  d2. r4
  a4 a a a % C
  a4. 8 4 4
  d4 d d d
  d4. 8 4 4
  d4 e fis4. 8
  g4 g g g
  a2 a,4 a
  d2. r4
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  One there is a -- bove all o -- thers,
  Oh, how He loves!
  His is love be -- yond a bro -- ther's,
  Oh, how He loves!
  Earth -- ly friends may fail or leave us,
  One day soothe, the next day grieve us;
  But this Friend will ne'er de -- ceive us:
  Oh, how He loves!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  'Tis e -- ter -- nal life to know Hom,
  Oh, how He loves!
  Think, oh, think how much we owe Him,
  Oh, how He loves!
  With His pre -- cious blood He bought us,
  In the wil -- der -- ness He sought us,
  To His fold He safe -- ly brought us:
  Oh, how He loves!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bless -- ed Je -- sus! would you know Him?
  Oh, how He loves!
  Give your -- selves en -- tire -- ly to Him,
  Oh, how He loves!
  Think no long -- er of the mor -- row,
  From the past new cour -- age bor -- row,
  Je -- sus car -- ries all your sor -- row:
  Oh, how He loves!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  All your sins shall be for -- giv -- en,
  Oh, how He loves!
  Back -- ward shall your foes be dri -- ven,
  Oh, how He loves!
  Best of bless -- ings He'll pro -- vide you,
  Naught but good shall e'er be -- tide you:
  Safe to glo -- ry He will guide you:
  Oh, how He loves!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "One " "there " "is " a "bove " "all " o "thers, "
  "\nOh, " "how " "He " "loves! "
  "\nHis " "is " "love " be "yond " "a " bro "ther's, "
  "\nOh, " "how " "He " "loves! "
  "\nEarth" "ly " "friends " "may " "fail " "or " "leave " "us, "
  "\nOne " "day " "soothe, " "the " "next " "day " "grieve " "us; "
  "\nBut " "this " "Friend " "will " "ne'er " de "ceive " "us: "
  "\nOh, " "how " "He " "loves! "

  \set stanza = "2."
  "\n'Tis " e ter "nal " "life " "to " "know " "Hom, "
  "\nOh, " "how " "He " "loves! "
  "\nThink, " "oh, " "think " "how " "much " "we " "owe " "Him, "
  "\nOh, " "how " "He " "loves! "
  "\nWith " "His " pre "cious " "blood " "He " "bought " "us, "
  "\nIn " "the " wil der "ness " "He " "sought " "us, "
  "\nTo " "His " "fold " "He " safe "ly " "brought " "us: "
  "\nOh, " "how " "He " "loves! "

  \set stanza = "3."
  "\nBless" "ed " Je "sus! " "would " "you " "know " "Him? "
  "\nOh, " "how " "He " "loves! "
  "\nGive " your "selves " en tire "ly " "to " "Him, "
  "\nOh, " "how " "He " "loves! "
  "\nThink " "no " long "er " "of " "the " mor "row, "
  "\nFrom " "the " "past " "new " cour "age " bor "row, "
  "\nJe" "sus " car "ries " "all " "your " sor "row: "
  "\nOh, " "how " "He " "loves! "

  \set stanza = "4."
  "\nAll " "your " "sins " "shall " "be " for giv "en, "
  "\nOh, " "how " "He " "loves! "
  "\nBack" "ward " "shall " "your " "foes " "be " dri "ven, "
  "\nOh, " "how " "He " "loves! "
  "\nBest " "of " bless "ings " "He'll " pro "vide " "you, "
  "\nNaught " "but " "good " "shall " "e'er " be "tide " "you: "
  "\nSafe " "to " glo "ry " "He " "will " "guide " "you: "
  "\nOh, " "how " "He " "loves! "
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
            \new Voice \TempoTrack
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
%    \midi {}
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
