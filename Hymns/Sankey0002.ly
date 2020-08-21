\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Mighty Fortress"
  subtitle    = "Sankey No. 2"
  subsubtitle = "Old Sankey 723"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Martin Luther"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "M. Luther"
  meter       = "8.7.8.7.6.6.6.6.7"
  piece       = "Ein' Feste Berg"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "a" } s4 s2.
}

TempoTrack = {
  \partial 4
  \repeat volta 3 {
    s4\tempo 4=120
    s1
    s2\tempo 4=40 s4\tempo 4=120 s
    s1
    s2\tempo 4=40 s4\tempo 4=120 s
    s1
    s2\tempo 4=40 s4\tempo 4=120 s
    s1
    s2\tempo 4=40 s4\tempo 4=120 s
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s2\tempo 4=40 s4\tempo 4=120
  }
}

soprano = \relative c'' {
  \global
  \repeat volta 3 {
    d4
    d4 d a8(b) cis4
    d8(cis) b4 a\fermata d
    cis4 b a b
    g8(fis e4) d\fermata \bar "||" \break d'
    d4 d a8(b) cis4
    d8(cis) b4 a\fermata d
    cis4 b a b
    g8(fis e4) d\fermata \bar "||" \break d
    a'4 b a gis
    a2. d,4
    a'4 a b cis
    d2. cis4
    d4 cis \bar "" \break b b
    a2. b4
    b4 a b g
    fis2. d'4
    cis4 b a b
    g8(fis e4) d\fermata
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 3 {
    fis4
    fis4 d e a
    d,4 e8(d) cis4\fermata d
    e4 d d b
    b4(cis) d\fermata d
    fis4 d e a
    d,4 e8(d) cis4\fermata d
    e4 d d b
    b4(cis) d\fermata d
    fis4 fis e e8(d)
    cis2. d4
    e4 fis d e
    fis2. fis4
    fis4 fis fis e8(d)
    cis2. d4
    g4 fis fis e
    cis2. d4
    fis4 e d b
    b4(cis) d\fermata
  }
}

tenor = \relative c' {
  \global
  \repeat volta 3 {
    a4
    a4 a cis a
    b8(fis) gis4 a fis
    a4 g fis fis
    g4(a8 g) fis4\fermata a
    a4 a cis a
    b8(fis) gis4 a fis
    a4 g fis fis
    g4(a8 g) fis4\fermata fis
    a4 d cis b
    a2. fis4
    a4 a g g
    b2. cis4
    b4 ais b gis
    a2. d4
    d4 d8(c) b4 b
    ais2. b4
    a4 g fis fis
    g4(a8 g) fis4\fermata
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 3 {
    d4
    d4 fis a fis
    b,4 e a,\fermata b
    fis4 g d' dis
    e4(a,) d\fermata d
    d4 fis a fis
    b,4 e a,\fermata b
    fis4 g d' dis
    e4(a,) d\fermata d
    d4 b cis8(d) e4
    a,2. d4
    cis4 d g e
    b2. ais4
    b4 cis d e
    a,2. g4
    b4 d dis e
    fis2. b,4
    fis4 g d' dis
    e4(a,) d\fermata
  }
  \bar "|."
}

wordsOne = \lyricmode {
  A migh- ty for- tress is our God.
  A bul- wark nev- er fail- ing;
  Our Help- er He, a- mid the flood
  Of mor- tal ills pre- vail- ing;
  For still our an- cient foe
  Doth seek to work his woe;
  His craft and power are great,
  And arm'd with cru- el hate—
  On earth is not his e- qual.
}

wordsTwo = \lyricmode {
  Did we in our own strength con- fide,
  Our striv- ing would be los- ing.
  Were not the right Man on our side,
  The Man of God's own choos- ing.
  Dost ask who that may be?
  Christ Jes- us, it is he!
  Lord Sab- aoth is His name.
  From age to age the same:
  And He must win the bat- tle.
}

wordsThree = \lyricmode {
  And though this world, with dev- ils filled,
  Should threat- en to un- do us,
  We will not fear; for God hath willed
  His truth to tri- umph through us.
  Let goods and kind- red go,
  This mor- tal life al- so:
  The bo- dy they may kill:
  God's truth a- bid- eth still,
  His king- dom is for e- ver.
}

wordsMidi = \lyricmode {
  "A " migh "ty " for "tress " "is " "our " "God. "
  "\nA " bul "wark " nev "er " fail "ing; "
  "\nOur " Help "er " "He, " a "mid " "the " "flood "
  "\nOf " mor "tal " "ills " pre vail "ing; "
  "\nFor " "still " "our " an "cient " "foe "
  "\nDoth " "seek " "to " "work " "his " "woe; "
  "\nHis " "craft " "and " "power " "are " "great, "
  "\nAnd " "arm'd " "with " cru "el " "hate— "
  "\nOn " "earth " "is " "not " "his " e "qual.\n"

  "\nDid " "we " "in " "our " "own " "strength " con "fide, "
  "\nOur " striv "ing " "would " "be " los "ing. "
  "\nWere " "not " "the " "right " "Man " "on " "our " "side, "
  "\nThe " "Man " "of " "God's " "own " choos "ing. "
  "\nDost " "ask " "who " "that " "may " "be? "
  "\nChrist " Jes "us, " "it " "is " "he! "
  "\nLord " Sab "aoth " "is " "His " "name. "
  "\nFrom " "age " "to " "age " "the " "same: "
  "\nAnd " "He " "must " "win " "the " bat "tle.\n"

  "\nAnd " "though " "this " "world, " "with " dev "ils " "filled, "
  "\nShould " threat "en " "to " un "do " "us, "
  "\nWe " "will " "not " "fear; " "for " "God " "hath " "willed "
  "\nHis " "truth " "to " tri "umph " "through " "us. "
  "\nLet " "goods " "and " kind "red " "go, "
  "\nThis " mor "tal " "life " al "so: "
  "\nThe " bo "dy " "they " "may " "kill: "
  "\nGod's " "truth " a bid "eth " "still, "
  "\nHis " king "dom " "is " "for " e "ver. "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsOne
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass }
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
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \wordsTwo \wordsThree }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass }
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

\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
          \new Voice = tempo \TempoTrack
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass }
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
    \midi {}
  }
}
