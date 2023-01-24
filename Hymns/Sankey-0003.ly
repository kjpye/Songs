\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Safe Stronghold"

%  subsubtitle = "Old Sankey 723"
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
  \tempo 4=100
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "a" } s4 s2.
}

TempoTrack = {
  \partial 4
  \repeat volta 4 {
    s4\tempo 4=100
    s1
    s2\tempo 4=33 s4\tempo 4=100 s
    s1
    s2\tempo 4=33 s4\tempo 4=100 s
    s1
    s2\tempo 4=33 s4\tempo 4=100 s
    s1
    s2\tempo 4=33 s4\tempo 4=100 s
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s2\tempo 4=33 s4\tempo 4=100
  }
}

soprano = \relative c'' {
  \global
  \repeat volta 4 {
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
  \repeat volta 4 {
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
  \repeat volta 4 {
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
  \repeat volta 4 {
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
  A safe strong- hold our God is still,
  A trust- y shield and wea- pon;
  He'll help us clear from all the ill
  That hath us now o'er- tak- en.
  The an- cient prince of hell
  Hath risen with pur- pose fell;
  Strong mail of craft and power
  He wear- eth in this hour,
  On earth is not his fel- low.
}

wordsTwo = \lyricmode {
  With force of arms we no- thing can,
  Full soon were we down- rid- den;
  But for us fights the pro- per Man,
  Whom God Him- self hath bid- den.
  Ask ye, Who is this same?
  Christ Je- sus is His name,
  The Lord Sab- a- oth's Son;
  He, and no oth- er one.
  Shall con- quer in the bat- tle.
}

wordsThree = \lyricmode {
  And were this world all de- vils o'er,
  And watch- ing to de- vour us,
  We lay it not to heart so sore;
  Not they can o- ver- power us.
  And let the prince of ill
  Look grim as e'er he will,
  He harms us not one whit:
  For why? His doom is writ;
  A word shall quick- ly slay him.
}

wordsFour = \lyricmode {
  God's Word, for all their craft and force,
  One mom- ent will not lin- ger,
  But, spite of hell, shall have it's course;
  'Tis writ- ten by His fing- er.
  And though they take our life,
  Goods, hon- our, child- ren, wife,
  Yet is their prof- it small:
  These things shall van- ish all,
  The city of God re- main- eth.
}

wordsMidi = \lyricmode {
  "A " "safe " strong "hold " "our " "God " "is " "still, "
  "\nA " trust "y " "shield " "and " wea "pon; "
  "\nHe'll " "help " "us " "clear " "from " "all " "the " "ill "
  "\nThat " "hath " "us " "now " o'er tak "en. "
  "\nThe " an "cient " "prince " "of " "hell "
  "\nHath " "risen " "with " pur "pose " "fell; "
  "\nStrong " "mail " "of " "craft " "and " "power "
  "\nHe " wear "eth " "in " "this " "hour, "
  "\nOn " "earth " "is " "not " "his " fel "low.\n"

  "\nWith " "force " "of " "arms " "we " no "thing " "can, "
  "\nFull " "soon " "were " "we " down rid "den; "
  "\nBut " "for " "us " "fights " "the " pro "per " "Man, "
  "\nWhom " "God " Him "self " "hath " bid "den. "
  "\nAsk " "ye, " "Who " "is " "this " "same? "
  "\nChrist " Je "sus " "is " "His " "name, "
  "\nThe " "Lord " Sab a "oth's " "Son; "
  "\nHe, " "and " "no " oth "er " "one. "
  "\nShall " con "quer " "in " "the " bat "tle.\n"

  "\nAnd " "were " "this " "world " "all " de "vils " "o'er, "
  "\nAnd " watch "ing " "to " de "vour " "us, "
  "\nWe " "lay " "it " "not " "to " "heart " "so " "sore; "
  "\nNot " "they " "can " o ver "power " "us. "
  "\nAnd " "let " "the " "prince " "of " "ill "
  "\nLook " "grim " "as " "e'er " "he " "will, "
  "\nHe " "harms " "us " "not " "one " "whit: "
  "\nFor " "why? " "His " "doom " "is " "writ; "
  "\nA " "word " "shall " quick "ly " "slay " "him.\n"

  "\nGod's " "Word, " "for " "all " "their " "craft " "and " "force, "
  "\nOne " mom "ent " "will " "not " lin "ger, "
  "\nBut, " "spite " "of " "hell, " "shall " "have " "it's " "course; "
  "\n'Tis " writ "ten " "by " "His " fing "er. "
  "\nAnd " "though " "they " "take " "our " "life, "
  "\nGoods, " hon "our, " child "ren, " "wife, "
  "\nYet " "is " "their " prof "it " "small: "
  "\nThese " "things " "shall " van "ish " "all, "
  "\nThe " "city " "of " "God " re main "eth. "
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
            \new Lyrics \lyricsto "soprano" \wordsFour
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
            \new Lyrics \lyricsto "soprano" { \wordsOne \wordsTwo \wordsThree
  \wordsFour }
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
