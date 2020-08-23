\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The God of Abraham Praise!"
  subtitle    = "Sankey No. 4"
  subsubtitle = "Sankey 880 No. 116"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jewish Air"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "T. Olivers"
  meter       = "6.6.8.4"
  piece       = "Leoni"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key bes \major
  \time 4/2
  \tempo 2=120
  \partial 2
}

RehearsalTrack = {
  \mark \markup { \box "A" } s2 s1 s1 s1 s1 s1 s1 s1 s2
  \mark \markup { \box "B" } s2 s1 s1 s1 s1 s1 s1 s1 s2
  \mark \markup { \box "C" } s2 s1 s1 s1 s1 s1 s1 s1 s2
  \mark \markup { \box "D" } s2 s1 s1 s1 s1 s1 s1 s1 s2
}

TempoTrack = {
}

soprano = \relative c' {
  \global
  \repeat volta 5 {
    d2
    g2 a bes c
    d1. bes2
    c2 d ees f
    d1. \bar "||" \break a2
    bes2 c d ees % B+
    f2 a, bes ees
    d1 c
    bes1. \bar "||" \break bes2
    d2 d d d % C+
    c1. bes4(a)
    g4(a) bes(c) d2 g,
    fis1. \bar "||" \break d2
    g2 a bes c % D+
    d2 c4(d) ees2 d4(c)
    bes1 a
    g1.
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 5 {
    d2
    d2 d d f
    f1. d2
    f2 f g f
    f1. f2
    f2 f f g
    f2 ees d g
    f1 f2(ees)
    d1. d2
    f2 f f f
    f1. f2
    d2 d d d
    d1. d2
    d2 d d f
    f2 f g g
    g1 fis
    g1.
  }
  \bar "|."
}

tenor = \relative c' {
  \global
  \repeat volta 5 {
    bes2
    bes2 fis g a
    bes1. bes2
    a2 bes bes c
    bes1. c2
    bes2 a bes bes
    bes2 c bes bes
    bes1 a
    bes1. bes2
    bes2 bes bes bes
    a1. d4(c)
    bes4(a) g2 a bes
    a1. fis2
    g2 fis g a
    bes2 a g4(c) d(ees)
    d1 d2(c)
    bes1.
  }
  \bar "|."
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative c' {
  \global
  \repeat volta 5 {
    g2
    g2 d g f
    bes,1. g'2
    f2 bes g a
    bes1. f4(ees)
    d2 f bes g % B+
    d2 f g ees
    f1 f
    bes,1. bes2
    bes'2 bes bes bes, % C+
    f'1. f2
    g2 g fis g
    d1. d4(c)
    bes2 d g f % D+
    bes2 f c bes4(c)
    d1 d
    g,1.
  }
  \bar "|."
}

wordsOne = \lyricmode {
  The God of Abra- ham praise!
  Who reigns en- throned a- bove,
  An- cient of ev- er- last- ing days,
  And God of love!
  Je- ho- vah, great I AM!
  By earth and heav'n con- fest!
  I bow and bless the sa- cred name,
  For ev- er blest!
}

wordsTwo = \lyricmode {
  The God of Abra- ham praise!
  At whose su- preme com- mand
  From earth I rise, and seek the joys
  At His right hand:
  I all on earth for- sake,
  It's wis- dom, fame, and power,
  And Him my on- ly por- tion make,
  My shield and tower.
}

wordsThree = \lyricmode {
  The God of Abra- ham praise!
  Whose all- suf- fi- cient grace
  Shall guide me all my hap- py days
  In all my ways:
  He calls a worm His friend!
  He calls Him- self my God!
  And He shall save me to the end
  Through Je- sus blood.
}

wordsFour = \lyricmode {
  He by Him- self hath sworn,
  I on His oath de- pend:
  I shall, on eag- les' wings up- borne,
  To heaven a- scend:
  I shall be- hold His face,
  I shall His power a- dore,
  And sing the won- ders of His grace
  For e- ver- more!
}

wordsFive = \lyricmode {
  The whole tri- um- phant host
  Give thanks to God on high:
  "\"Hail! " Fath- er, Son, and Hol- y "Ghost!\""
  They e- ver cry.
  Hail! Abra- ham's God and mine!
  I join the Heaven- ly lays:
  All might and maj- est- y are Thine,
  And end- less praise!
}

wordsMidi = \lyricmode {
  "The " "God " "of " Abra "ham " "praise! "
  "\nWho " "reigns " en "throned " a "bove, "
  "\nAn" "cient " "of " ev er last "ing " "days, "
  "\nAnd " "God " "of " "love! "
  "\nJe" ho "vah, " "great " "I " "AM! "
  "\nBy " "earth " "and " "heav'n " con "fest! "
  "\nI " "bow " "and " "bless " "the " sa "cred " "name, "
  "\nFor " ev "er " "blest!\n"

  "\nThe " "God " "of " Abra "ham " "praise! "
  "\nAt " "whose " su "preme " com "mand "
  "\nFrom " "earth " "I " "rise, " "and " "seek " "the " "joys "
  "\nAt " "His " "right " "hand: "
  "\nI " "all " "on " "earth " for "sake, "
  "\nIt's " wis "dom, " "fame, " "and " "power, "
  "\nAnd " "Him " "my " on "ly " por "tion " "make, "
  "\nMy " "shield " "and " "tower.\n"

  "\nThe " "God " "of " Abra "ham " "praise! "
  "\nWhose " all suf fi "cient " "grace "
  "\nShall " "guide " "me " "all " "my " hap "py " "days "
  "\nIn " "all " "my " "ways: "
  "\nHe " "calls " "a " "worm " "His " "friend! "
  "\nHe " "calls " Him "self " "my " "God! "
  "\nAnd " "He " "shall " "save " "me " "to " "the " "end "
  "\nThrough " Je "sus " "blood.\n"

  "\nHe " "by " Him "self " "hath " "sworn, "
  "\nI " "on " "His " "oath " de "pend: "
  "\nI " "shall, " "on " eag "les' " "wings " up "borne, "
  "\nTo " "heaven " a "scend: "
  "\nI " "shall " be "hold " "His " "face, "
  "\nI " "shall " "His " "power " a "dore, "
  "\nAnd " "sing " "the " won "ders " "of " "His " "grace "
  "\nFor " e ver "more!\n"

  "\nThe " "whole " tri um "phant " "host "
  "\nGive " "thanks " "to " "God " "on " "high: "
  "\n\"Hail! " Fath "er, " "Son, " "and " Hol "y " "Ghost!\""
  "\nThey " e "ver " "cry. "
  "\nHail! " Abra "ham's " "God " "and " "mine! "
  "\nI " "join " "the " Heaven "ly " "lays: "
  "\nAll " "might " "and " maj est "y " "are " "Thine, "
  "\nAnd " end "less " "praise! "
}

pianoRH = \relative c' {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLH = \relative c' {
  \global
  \oneVoice
  c4
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  c4
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \voiceTwo
  c4
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats \articulate <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
%            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsOne
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
            \new Lyrics \lyricsto "soprano" \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
%      >>
    >>
  >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats % \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
%            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
  >>
    \midi {
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
%            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \wordsTwo \wordsThree \wordsFour \wordsFive }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
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
