\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Wondrous Love!"
  subtitle    = "Sankey No. 17"
  subsubtitle = "Sankey 880 No. 38"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. G. Fischer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Mrs Stockton"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*3 s2.
}

TempoTrack = {
  \repeat volta 5 {
    s4
    s1*13
    s2 \tempo 4=40 s \tempo 4=120
    s1
    s1
  }
}

soprano = \relative c' {
  \global
  \repeat volta 5 {
    ees4
    ees4 g bes4. c8
    bes8(g4)
    f8 ees4. ees8
    ees4 aes c4. c8
    bes2. \bar "" \break g4
    ees4 g bes4. c8
    bes8(g4) f8 ees4. g8
    g4 bes c4. d8
    bes1 \bar "||"
    bes4. c8 bes4. g8
    g8(f) ees4 bes'4. bes8
    c4 c ees4. c8
    bes2. bes4
    bes4. c8 bes4. g8
    g8(f) ees4 bes'\fermata c\fermata
    bes4 g f4. ees8
    ees2.
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 5 {
    bes4
    bes4 ees g4. aes8
    g8(ees4) d8 ees4. 8
    ees4 ees aes4. 8
    g2. ees4
    ees4 4 g4. aes8 % B+
    g8(ees4) d8 ees4. 8
    d4 d ees4. 8
    d1
    g4. aes8 g4. ees8 % C
    ees8(d) ees4 d4. ees8
    ees4 4 4. aes8
    g2. 4
    g4. aes8 g4. ees8 % D
    ees8(d) ees4 d\fermata ees\fermata
    ees4 ees d4. bes8
    bes2.
  }
}

tenor = \relative c' {
  \global
  \repeat volta 5 {
    g4
    g4 bes ees4. 8
    ees8(bes4) aes8 g4. 8
    c4 c ees4. 8
    ees2. g,4
    g4 bes ees4. 8 % B+
    ees8(bes4) aes8 g4. bes8
    bes4 4 a4. 8
    bes1
    ees4. 8 4. bes8 % C
    bes8(aes) g4 f4. g8
    aes4 4 c4. ees8
    ees2. 4
    ees4. 8 4. bes8 % D
    bes8(aes) g4f\fermata aes\fermata
    g4 bes aes4. g8
    g2.
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 5 {
    ees4
    ees4  ees ees4. ees8
    ees4. bes8 ees4. ees8
    bes4 4 4. 8
    ees2. 4
    ees4 4 4. 8
    ees4. bes8 ees4. 8
    f4 4 4. 8
    bes,1
    ees4. 8 4. 8 % C
    ees4 4 bes4. ees8
    aes,4 4 4. 8
    ees'2. 4
    ees4. 8 4. 8 % D
    ees4 4 bes\fermata aes\fermata
    bes4 4 4. ees8
    ees2.
  }
}

chorus = \lyricmode {
  Oh, 'twas love, 'twas won- drous love!
  The love of God to me!
  It brought my Sa- viour from a- bove,
  To die on Cal- va- ry.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  God loved the world of sin- ners lost
  And ru- in'd by the Fall;
  Sal- vat- ion full, at high- est cost,
  He of- fers free to all.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  E'en now by faith I claim Him mine,
  The ris- en Son of God;
  Re- demp- tion nu His death I find,
  And cleans- ing thro' the blood,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Love brings the glor- ious ful- ness in,
  And to His saints makes known
  The bles- sed rest from in- bred sin,
  Thro' faith in Christ a- lone.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be- liev- ing souls, re- joic- ing go;
  There shall to you be given
  A glor- ious fore- taste, here be- low,
  Of end- less life in heaven.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Of vict- 'ry now o'er Sat- an's power
  Let all the ran- somed sing,
  And tri- umph in the dy- ing hour,
  Through Christ, the Lord and King.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nGod " "loved " "the " "world " "of " sin "ners " "lost "
  "\nAnd " ru "in'd " "by " "the " "Fall; "
  "\nSal" vat "ion " "full, " "at " high "est " "cost, "
  "\nHe " of "fers " "free " "to " "all. "
  "\nOh, " "'twas " "love, " "'twas " won "drous " "love! "
  "\nThe " "love " "of " "God " "to " "me! "
  "\nIt " "brought " "my " Sa "viour " "from " a "bove, "
  "\nTo " "die " "on " Cal va "ry. "

  \set stanza = "2."
  "\nE'en " "now " "by " "faith " "I " "claim " "Him " "mine, "
  "\nThe " ris "en " "Son " "of " "God; "
  "\nRe" demp "tion " "nu " "His " "death " "I " "find, "
  "\nAnd " cleans "ing " "thro' " "the " "blood, "
  "\nOh, " "'twas " "love, " "'twas " won "drous " "love! "
  "\nThe " "love " "of " "God " "to " "me! "
  "\nIt " "brought " "my " Sa "viour " "from " a "bove, "
  "\nTo " "die " "on " Cal va "ry. "

  \set stanza = "3."
  "\nLove " "brings " "the " glor "ious " ful "ness " "in, "
  "\nAnd " "to " "His " "saints " "makes " "known "
  "\nThe " bles "sed " "rest " "from " in "bred " "sin, "
  "\nThro' " "faith " "in " "Christ " a "lone. "
  "\nOh, " "'twas " "love, " "'twas " won "drous " "love! "
  "\nThe " "love " "of " "God " "to " "me! "
  "\nIt " "brought " "my " Sa "viour " "from " a "bove, "
  "\nTo " "die " "on " Cal va "ry. "

  \set stanza = "4."
  "\nBe" liev "ing " "souls, " re joic "ing " "go; "
  "\nThere " "shall " "to " "you " "be " "given "
  "\nA " glor "ious " fore "taste, " "here " be "low, "
  "\nOf " end "less " "life " "in " "heaven. "
  "\nOh, " "'twas " "love, " "'twas " won "drous " "love! "
  "\nThe " "love " "of " "God " "to " "me! "
  "\nIt " "brought " "my " Sa "viour " "from " a "bove, "
  "\nTo " "die " "on " Cal va "ry. "

  \set stanza = "5."
  "\nOf " vict "'ry " "now " "o'er " Sat "an's " "power "
  "\nLet " "all " "the " ran "somed " "sing, "
  "\nAnd " tri "umph " "in " "the " dy "ing " "hour, "
  "\nThrough " "Christ, " "the " "Lord " "and " "King. "
  "\nOh, " "'twas " "love, " "'twas " won "drous " "love! "
  "\nThe " "love " "of " "God " "to " "me! "
  "\nIt " "brought " "my " Sa "viour " "from " a "bove, "
  "\nTo " "die " "on " Cal va "ry. "
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
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
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
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|."}
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
