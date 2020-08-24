\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Thou Almighty King!"
  subtitle    = "Sankey No. 6"
  subsubtitle = "Sankey 880 No. 726"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "F. Giardini"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Anon"
  meter       = "6.6.4.6.6.6.4"
  piece       = "Moscow"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5
}

TempoTrack = {
}

soprano = \relative c'' {
  \global
  \repeat volta 4 {
    d4 b g
    a2 fis4
    g2.
    g4 a b
    c2 b4
    a2. \break
    d4 b g % B
    d2.
    a'4 b c
    b4. a8 g4
    a4 b c \break
    b4. a8 g4 % C
    g4 g g
    d'4. c8 b4
    a4 g fis
    g2.
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c'' {
  \global
  \repeat volta 4 {
    g4 d g
    e2 d4
    d2.
    d4 fis g
    g2 g4
    g4(fis8 e fis4)
    d'4 b g % B
    d2.
    fis4 g a
    g4. d8 d4
    a'4 g g
    g4. fis8 g4
    g4 fis e
    d4. fis8 g4
    e4 d d
    d2.
  }
}

tenor = \relative c' {
  \global
  \repeat volta 4 {
    b4 g b
    c2 a4
    b2.
    b4 c d
    e2 d4
    d2.
    d4 b g
    d2.
    d'4 d d
    d4. c8 b4
    d4 d e
    d4. c8 d4 % C
    d4 d c
    g4. a8 b4
    c4 b a
    b2.
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 4 {
    g4 b e
    c2 d4
    g,2.
    b'4 a g
    c,2 g'4
    d2.
    d'4 b g % B
    d2.
    d4 g fis
    g4. g8 g4
    fis4 g c,
    g'4. g8 g4 % D
    e4 d c
    b4. a8 g4
    c4 d d
    g,2.
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, Thou al- might- y King.
  Help us Thy name to sing,
  Help us to praise:
  Fath- er all- glor- i- ous,
  O'er all vict- or- i- ous,
  Come, and reign ov- er us,
  An- cient of Days!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, thou in- car- nate Word,
  Gird on Thy might- y sword;
  Our prayer at- tend:
  Come, and Thy peop- le bless,
  And give Thy Word suc- cess:
  Spir- it of hol- i- ness,
  On us des- cend!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, Ho- ly Com- fort- er,
  Thy sac- red wit- ness bear,
  In this glad hour:
  Thou, who al- might- y art,
  Now rule in ever- y heart,
  And ne'er from us de- part,
  Spir- it of power!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  To the great One in Three
  The high- est prais- es be,
  Hence ev- er- more!
  His sov- ereign maj- est- y
  May we in glor- y see,
  And to e- tern- i- ty
  Love and a- dore.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1. "
  "Come, " "Thou " al might "y " "King. "
  "\nHelp " "us " "Thy " "name " "to " "sing, "
  "\nHelp " "us " "to " "praise: "
  "\nFath" "er " all glor i "ous, "
  "\nO'er " "all " vict or i "ous, "
  "\nCome, " "and " "reign " ov "er " "us, "
  "\nAn" "cient " "of " "Days!\n"

  \set stanza = "2. "
  "\nCome, " "thou " in car "nate " "Word, "
  "\nGird " "on " "Thy " might "y " "sword; "
  "\nOur " "prayer " at "tend: "
  "\nCome, " "and " "Thy " peop "le " "bless, "
  "\nAnd " "give " "Thy " "Word " suc "cess: "
  "\nSpir" "it " "of " hol i "ness, "
  "\nOn " "us " des "cend!\n"

  \set stanza = "3. "
  "\nCome, " Ho "ly " Com fort "er, "
  "\nThy " sac "red " wit "ness " "bear, "
  "\nIn " "this " "glad " "hour: "
  "\nThou, " "who " al might "y " "art, "
  "\nNow " "rule " "in " ever "y " "heart, "
  "\nAnd " "ne'er " "from " "us " de "part, "
  "\nSpir" "it " "of " "power!\n"

  \set stanza = "4. "
  "\nTo " "the " "great " "One " "in " "Three "
  "\nThe " high "est " prais "es " "be, "
  "\nHence " ev er "more! "
  "\nHis " sov "ereign " maj est "y "
  "\nMay " "we " "in " glor "y " "see, "
  "\nAnd " "to " e tern i "ty "
  "\nLove " "and " a "dore. "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats \articulate <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<

          \new Dynamics \dynamicsWomen
          \new Staff <<
%            \new Voice \RehearsalTrack
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
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
%        >>
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
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    % \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<

          \new Dynamics \dynamicsWomen
          \new Staff <<
%            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \wordsTwo \wordsThree \wordsFour }
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

\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
    % \articulate <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<

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
    \midi {}
  }
}
