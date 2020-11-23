\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Angel's from the Realms of Glory!"
  subtitle    = "Sankey No. 29"
  subsubtitle = "Sankey 880 No. 680"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Dr. Gauntlett."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "James Montgomery"
  meter       = "8.7.4."
  piece       = "Triumph"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

verses = 4

global = {
  \key c \major
  \time 4/4
  \tempo 4=120
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta \verses {
    \mark \markup { \box "A" } s2 s1 s1 s1 s2 \bar "|" \break
    \mark \markup { \box "B" } s2 s1 s1 s1 s2 \bar "|" \break
    \mark \markup { \box "C" } s2 s1 s1 s1 s2
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    c'4 e
    g4. 8 4 a
    g4 e g g
    c4 b a a
    g2 e4 g
    c4. 8 4 b % B
    d4 c c a
    g4 e' d4. 8
    c2 e,4 g
    a4 fis g c % C
    c4 b c f
    f4 e d d
    c2
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    c'4 e
    g4. 8 4 a
    g4 e e g
    fis4 g g fis
    g2 e4 g
    c4. 8 4 b % B
    d4 c a f
    g4 g g4. f8
    e2 c4 d
    e4 d d g % C
    f4 f e f
    g4 g g4. f8
    e2
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    c4 e
    g4. 8 4 a
    g4e c' d
    c4 d d4. c8
    b2 e,4 g
    c4. 8 4 b % B
    d4 c c c
    c4 c c b
    c2 g4 b
    c4 a d c % C
    d4 d c c
    d4 c c b
    c2
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    c4 e g4. 8 4 a
    g4 e c' b
    a4 g d d
    g2 e4 g
    c4. 8 4 b
    d4 c f, f
    e4 c g'4. 8
    c,2 c4 b
    a4 d b e % C
    d4 g a a
    b4 c g g
    c,2
  }
}

chorus = \lyricmode {
  Come and wor -- ship!
  come and wor -- ship!
  Wor -- ship Christ, the new -- born King!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  An -- gels from the realms of glo -- ry,
  Wing your flight o'er all the earth;
  Ye who sang cre -- a -- tion's sto -- ry,
  Now pro -- claim Mes -- si -- ah's birth:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Shep -- herds in the field a -- bid -- ing,
  Warch -- ing o'er their glocks by night;
  God with man in now re -- sid -- ing,
  Yon -- der shines the In -- fant light:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sag -- es. leave your con -- tem -- pla -- tions:
  Bright -- er vis -- ions beam a -- far!
  Seek the great De -- sire of nat -- ions,
  Ye have seen His nat -- al star:
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Saints be -- fore the al -- tar bend -- ing,
  Watch -- ing long in hope and fear,
  Sud -- den -- ly the Lord, des -- cend -- ing,
  In His tem -- ple shall ap -- pear:
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nAn" "gels " "from " "the " "realms " "of " glo "ry, "
  "\nWing " "your " "flight " "o'er " "all " "the " "earth; "
  "\nYe " "who " "sang " cre a "tion's " sto "ry, "
  "\nNow " pro "claim " Mes si "ah's " "birth: "
  "\nCome " "and " wor "ship! "
  "\ncome " "and " wor "ship! "
  "\nWor" "ship " "Christ, " "the " new "born " "King! "
  \set stanza = "2."
  "\nShep" "herds " "in " "the " "field " a bid "ing, "
  "\nWarch" "ing " "o'er " "their " "glocks " "by " "night; "
  "\nGod " "with " "man " "in " "now " re sid "ing, "
  "\nYon" "der " "shines " "the " In "fant " "light: "
  "\nCome " "and " wor "ship! "
  "\ncome " "and " wor "ship! "
  "\nWor" "ship " "Christ, " "the " new "born " "King! "
  \set stanza = "3."
  "\nSag" "es. " "leave " "your " con tem pla "tions: "
  "\nBright" "er " vis "ions " "beam " a "far! "
  "\nSeek " "the " "great " De "sire " "of " "nat " "ions, "
  "\nYe " "have " "seen " "His " nat "al " "star: "
  "\nCome " "and " wor "ship! "
  "\ncome " "and " wor "ship! "
  "\nWor" "ship " "Christ, " "the " new "born " "King! "
  \set stanza = "4."
  "\nSaints " be "fore " "the " al "tar " bend "ing, "
  "\nWatch" "ing " "long " "in " "hope " "and " "fear, "
  "\nSud" den "ly " "the " "Lord, " des cend "ing, "
  "\nIn " "His " tem "ple " "shall " ap "pear: "
  "\nCome " "and " wor "ship! "
  "\ncome " "and " wor "ship! "
  "\nWor" "ship " "Christ, " "the " new "born " "King! "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano"   \wordsTwo
            \new Lyrics \lyricsto "soprano"   \wordsThree
            \new Lyrics \lyricsto "soprano"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
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
    \unfoldRepeats
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
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
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
