\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let There Be Light!"
  subtitle    = "Sankey No. 5"
  subsubtitle = "Sankey 880 No. 233"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "F. Giardini"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "J. Marriott"
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
  Thou, whose al- might- y word
  Cha- os and dark- ness heard, __
  And took their flight,
  Hear us, we humb- ly pray;
  And, where the Gos- pel day
  Sheds not its glo- rious ray,
  "\"Let" there be "light!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou, who didst come to bring,
  On Thy re- deem- ing wing, __
  Heal- ing and sight--
  Health to the sick in mind,
  Sight to the in- ly blind--
  Oh, now to all man- kind
  "\"Let" there be "light!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Spir- it of truth and love,
  Life- giv- in, hol- y Dove.
  Speed forth Thy flight!
  Move on the war- er's face
  By thine al- might- y grace,
  And in earth's dark- est place
  "\"Let" there be "light!\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Bless- ed and hol- y Three,
  Glor- i- ous Trin- i- ty,
  Wis- dom, love, might;
  Bound- less as o- ceans's tide
  Rol- ling in ful- lest pride,
  O'er the world far and wide,
  "\"Let" there be "light!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou, " "whose " al might "y " "word "
  "\nCha" "os " "and " dark "ness " "heard, " 
  "\nAnd " "took " "their " "flight, "
  "\nHear " "us, " "we " humb "ly " "pray; "
  "\nAnd, " "where " "the " Gos "pel " "day "
  "\nSheds " "not " "its " glo "rious " "ray, "
  "\n\"Let " "there " "be " "light!\"\n"

  \set stanza = "2."
  "\nThou, " "who " "didst " "come " "to " "bring, "
  "\nOn " "Thy " re deem "ing " "wing, " 
  "\nHeal" "ing " "and " sight-
  "\nHealth " "to " "the " "sick " "in " "mind, "
  "\nSight " "to " "the " in "ly " blind-
  "\nOh, " "now " "to " "all " man "kind "
  "\n\"Let " "there " "be " "light!\"\n"

  \set stanza = "3."
  "\nSpir" "it " "of " "truth " "and " "love, "
  "\nLife" giv "in, " hol "y " "Dove. "
  "\nSpeed " "forth " "Thy " "flight! "
  "\nMove " "on " "the " war "er's " "face "
  "\nBy " "thine " al might "y " "grace, "
  "\nAnd " "in " "earth's " dark "est " "place "
  "\n\"Let " "there " "be " "light!\"\n"

  \set stanza = "4."
  "\nBless" "ed " "and " hol "y " "Three, "
  "\nGlor" i "ous " Trin i "ty, "
  "\nWis" "dom, " "love, " "might; "
  "\nBound" "less " "as " o "ceans's " "tide "
  "\nRol" "ling " "in " ful "lest " "pride, "
  "\nO'er " "the " "world " "far " "and " "wide, "
  "\n\"Let " "there " "be " "light!\""
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
