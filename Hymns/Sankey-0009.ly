\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All People that on Earth"
  subtitle    = "Sankey No. 9"
  subsubtitle = "Sankey 880 No. 88"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "G. Franc"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "100th Psalm"
  meter       = "L.M."
  piece       = "Old Hundredth"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key g \major
  \time 2/2
  \tempo 2=120
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2 s1*7 s2
  \mark \markup { \box "B" } s2 s1*7 s2
}

TempoTrack = {
}

soprano = \relative c'' {
  \global
  \repeat volta 4 {
    g2
    g2 fis
    e2 d
    g2 a
    b2 b
    b2 b
    a2 g
    c2 b
    a2 \bar "||" \break g2
    a2 b % B+
    a2 g
    e2 fis
    g2 d'
    b2 g
    a2 c
    b2 a
    g2
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 4 {
    d2
    d2 d4(c)
    b2 b
    b2 d
    d2 d
    g2 g
    fis2 g
    g2 g
    fis2 e
    fis2 g % B+
    fis2 d
    e2 d
    d2 g
    d2 e
    fis2 a
    g2 fis
    g2
  }
}

tenor = \relative c' {
  \global
  \repeat volta 4 {
    b2
    b2 a
    g2 g
    g2 fis
    g2 b
    d2 d
    d4(c) b2
    e2 d
    d2 b
    d2 d % B
    d2 g,4(d')
    c4(b) a2
    b2 b
    g2 b
    d2 e
    d2 d4(c)
    b2
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c' {
  \global
  \repeat volta 4 {
    g2
    g2 d
    e2 b
    e2 d
    g,2 g'
    g2 g
    d2 e
    c2 g
    d'2 e
    d2 g % B
    d2 b
    c2 d
    g,2 g'
    g2 e
    d2 a
    d2 d
    g,2
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  All peo- ple that on earth do dwell,
  Sing to the Lord with cheer- ful voice:
  Him serve with mirth, His praise forth tell,
  Come ye be- fore Hime and re- joice.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Know that the Lord is God in- deed,
  With- out our aid He did us make:
  We are His flock, He doth us feed,
  And for His sheep He doth us take.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, en- ter then His gates with praise,
  Ap- proach with joy His courts un- to:
  Praise, laud, ad bless His name al- ways,
  For it is seem- ly so to do.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  For why? the Lord our God is good,
  His mer- cy is for- ev- er sure:
  His truth at all times firm- ly stood,
  And shall from age to age en- dure.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1. "
  "All " peo "ple " "that " "on " "earth " "do " "dwell, "
  "\nSing " "to " "the " "Lord " "with " cheer "ful " "voice: "
  "\nHim " "serve " "with " "mirth, " "His " "praise " "forth " "tell, "
  "\nCome " "ye " be "fore " "Hime " "and " re "joice.\n"

  \set stanza = "2. "
  "\nKnow " "that " "the " "Lord " "is " "God " in "deed, "
  "\nWith" "out " "our " "aid " "He " "did " "us " "make: "
  "\nWe " "are " "His " "flock, " "He " "doth " "us " "feed, "
  "\nAnd " "for " "His " "sheep " "He " "doth " "us " "take.\n"

  \set stanza = "3. "
  "\nOh, " en "ter " "then " "His " "gates " "with " "praise, "
  "\nAp" "proach " "with " "joy " "His " "courts " un "to: "
  "\nPraise, " "laud, " "ad " "bless " "His " "name " al "ways, "
  "\nFor " "it " "is " seem "ly " "so " "to " "do.\n"

 \set stanza = "4. "
  "\nFor " "why? " "the " "Lord " "our " "God " "is " "good, "
  "\nHis " mer "cy " "is " for ev "er " "sure: "
  "\nHis " "truth " "at " "all " "times " firm "ly " "stood, "
  "\nAnd " "shall " "from " "age " "to " "age " en "dure. "
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
            \new Voice \RehearsalTrack
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
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne
                                              \wordsTwo
                                              \wordsThree
                                              \wordsFour
                                            }
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
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
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
    \midi {}
  }
}
