\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Day by Day the Manna Fell"
  subtitle    = "Sankey No. 10"
  subsubtitle = "Sankey 880 No. 368"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "L. M. Gottschale"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Josiah Conder"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 3/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
}

TempoTrack = {
}

soprano = \relative c' {
  \global
  \repeat volta 3 {
    f2 g4
    f4(bes) d
    d2 c4
    bes2 r4
    bes4(a) bes
    bis4(f') d
    c2 d8(c)
    c2(f,4) \break
    f2 a8(g)
    f4(bes) d
    d2 ees8(d)
    d2.
    bes4(a) g
    f4(ees') d
    d2 c4
    bes2.
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 3 {
    d2 cis4
    d4(f) f
    f2 ees4
    d2 r4
    e2 e4
    f2 f4
    e2 e4
    ees2.
    d2 cis4 % B
    d4(f) f
    fis2 fis4
    g2(d4)
    cis2 cis4
    d4(fis) fis
    f2 ees4
    d2.
  }
}

tenor = \relative c' {
  \global
  \repeat volta 3 {
    bes4(f) e
    f4(d') bes
    a2 a4
    b2 r4
    c2 cis4
    d2 bes4
    bes2 bes8(g)
    a2.
    bes4(f) e % B
    f4(d') bes
    c2 a4
    bes2.
    g4(a) bes
    bes4(c) bes
    bes4(a) a
    bes2.
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 3 {
    bes2 bes4
    bes2 bes4
    f'2 fis4
    g2 r4
    g2 ges4
    f2 f4
    g2 c,4
    f2.
    bes,2 bes4
    bes2 bes'4
    a4(d,) d
    g2.
    e2 e4
    f4(a) bes
    f2 f,4
    bes2.
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Day by day the man- na fell;
  Oh to learn this les- son well!
  Still by con- stant mer- cy fed.
  Give us, Lord, our dai- ly bread.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Day" by "day,\"" the prom- ise reads,
  Dai- ly strength for dai- ly needs;
  Cast fore- bod- ing fear a- way,
  Take the man- na of to- day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou our dail- y task shall give;
  Day by day to Thee we live:
  So shall add- ed years ful- fil—
  Not our own, our Fath- er's will.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
}
  
wordsMidi = \lyricmode {
  \set stanza = "1. "
  "Day " "by " "day " "the " man "na " "fell; "
  "\nOh " "to " "learn " "this " les "son " "well! "
  "\nStill " "by " con "stant " mer "cy " "fed. "
  "\nGive " "us, " "Lord, " "our " dai "ly " "bread.\n"

  \set stanza = "2. "
  "\n\"Day " "by " "day,\" " "the " prom "ise " "reads, "
  "\nDai" "ly " "strength " "for " dai "ly " "needs; "
  "\nCast " fore bod "ing " "fear " a "way, "
  "\nTake " "the " man "na " "of " to "day.\n"

  \set stanza = "3. "
  "\nThou " "our " dail "y " "task " "shall " "give; "
  "\nDay " "by " "day " "to " "Thee " "we " "live: "
  "\nSo " "shall " add "ed " "years " ful "fil— "
  "\nNot " "our " "own, " "our " Fath "er's " "will. "
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
%            \new Voice \TempoTrack
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
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne
                                              \wordsTwo
                                              \wordsThree
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff  <<
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
            \new Voice \TempoTrack
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
