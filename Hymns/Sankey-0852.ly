\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am His, and He is mine."
  subtitle    = "Sankey No. 852"
  subsubtitle = "C. C. No. 58"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Wade Robinson."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1.*3 s1
  \textMark \markup { \box \bold "B" } s2 s1.*3 s1
  \textMark \markup { \box \bold "C" } s2 s1.*3 s1
  \repeat volta 2 {
    \textMark \markup { \box \bold "D" } s2 s1.*3 s1
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Smoothly." 4=120
}

barlinesSingle = {
% verse 1
  s2 s1.*3 s1 |
  s2 s1.*3 s1 |
  s2 s1.*3 s1 \section |
  s2 s1.*3 s1 \section |
  s2 s1.*3 s1 \section |
% verse 2
  s2 s1.*3 s1 |
  s2 s1.*3 s1 |
  s2 s1.*3 s1 \section |
  s2 s1.*3 s1 \section |
  s2 s1.*3 s1 \section |
% verse 3
  s2 s1.*3 s1 |
  s2 s1.*3 s1 |
  s2 s1.*3 s1 \section |
  s2 s1.*3 s1 \section |
  s2 s1.*3 s1 \section |
% verse 1
  s2 s1.*3 s1 |
  s2 s1.*3 s1 |
  s2 s1.*3 s1 \section |
  s2 s1.*3 s1 \section |
  s2 s1.*3 s1 \bar "|." |
}

dynamicsRepeat = {
  s2 s1.*15
  s1 ^\markup{\halign #RIGHT {\italic "Repeat last two lines of each verse as Chorus" \dynamic p}}
}

dynamicsSingle = {
  \repeat unfold 4 {
    s2\omit\mf s1.*15 s1
    s2\p s1.*3 s1
  }
}

soprano = \relative {
  \autoBeamOff
  ees'4 f | g2. 4 aes4 4 | g1 4 aes | bes2. 4 aes g | f1 \bar "|" \break
  ees4 f | g2. 4 aes aes | g1 bes4 4 | 2. a4 g a | bes1 \bar "|" \break
  bes4 aes | g2. 4 aes g | c1 4 4 | bes2. 4 aes g | f1 \section \break
  \repeat volta 2 {
    g4 aes | bes2. 4 c d | ees1 d4 c | bes2. 4 aes f | ees1 \break
  }
}

alto = \relative {
  \autoBeamOff
  ees'4 4 | 2. 4 4 4 | 1 4 d | ees2. g4 f ees | d1
  ees4 4 | 2. 4 4 4 | 1 f4 4 | ees2. 4 4 4 | d1
  ees4 f | ees2. 4 4 4 | 1 d4 4 | ees2. g4 f ees | d1 \section
  \repeat volta 2 {
    ees4 d | ees2. 4 4 f | ees1 4 4 | 2. e4 f d | ees1
  }
}

tenor = \relative {
  \autoBeamOff
  g4 aes | bes2. 4 c ces | bes1 4 4 | 2. 4 4 4 | 1
  g4 aes | bes2. 4 c ces | bes1 4 4 | 2. c4 bes c | bes1
  bes4 4 | 2. 4 c bes | aes1 bes4 4 | 2. 4 4 4 | 1 \section
  \repeat volta 2 {
    bes4 4 | 2. ees4 c ces | bes1 aes4 4 | bes2. c4 4 aes | g1
  }
}

bass = \relative {
  \autoBeamOff
  ees4 4 | 2. 4 4 4 | 1 4 f | g2. ees4 d ees | bes1
  ees4 4 | 2. 4 4 4 | 1 d4 4 | c2. 4 4 f, | bes1
  c4 d | ees2. 4 4 4 | aes1 4 4 | g2. ees4 d ees | bes1 \section
  \repeat volta 2 {
    ees4 f | g2. 4 aes4 4 | g1 aes4 4 | g2. 4 f bes, | ees1
  }
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Loved with ev -- er -- last -- ing love,
  Led by grace that love to know;
  Spi -- rit, breath -- ing from a -- bove,
  Thou hast taught me it is so!
  Oh this full and per -- fect peace!
  Oh this trans -- port all di -- vine!
  \repeat volta 2 {
    In a love which can -- not cease,
    I am His, and He is mine.
  }
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hearts a -- bove is soft -- er blue,
  Earth a -- round is sweet -- er green!
  Some -- thing lives in ev -- ‘ry hue
  Christ -- less eyes have nev -- er seen:
  Birds with glad -- der songs o‘er -- flow,
  Flowers with deep -- er beau -- ties shine,
  \repeat volta 2 {
    In a love which can -- not cease,
    I am His, and He is mine.
  }
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Things that once were wild a -- larms
  Can -- not now dis -- turb my erst;
  Closed in ev -- er -- last -- ing arms,
  Pil -- lowed on the lov -- ing breast.
  Oh to lie for ev -- er here,
  Doubt and care and self re -- sign,
  \repeat volta 2 {
    While He whis -- ers in my ear—
    I am His, and He is mine.
  }
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  His for ev -- er, on -- ly His;
  Who the Lord and me shall part?
  Ah, with what a rest of bliss
  Christ can fill the lov -- ing heart!
  Heaven and earth may fade and flee,
  First -- born light in bloom de -- cline;
  \repeat volta 2 {
    But, while God and I shall be,
    I am His, and He is mine.
  }
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Loved " "with " ev er last "ing " "love, "
  "\nLed " "by " "grace " "that " "love " "to " "know; "
  "\nSpi" "rit, " breath "ing " "from " a "bove, "
  "\nThou " "hast " "taught " "me " "it " "is " "so! "
  "\nOh " "this " "full " "and " per "fect " "peace! "
  "\nOh " "this " trans "port " "all " di "vine! "
  \repeat volta 2 {
    "\nIn " "a " "love " "which " can "not " "cease, "
    "\nI " "am " "His, " "and " "He " "is " "mine. "
  }

  \set stanza = "2."
  "\nHearts " a "bove " "is " soft "er " "blue, "
  "\nEarth " a "round " "is " sweet "er " "green! "
  "\nSome" "thing " "lives " "in " ev "‘ry " "hue "
  "\nChrist" "less " "eyes " "have " nev "er " "seen: "
  "\nBirds " "with " glad "der " "songs " o‘er "flow, "
  "\nFlowers " "with " deep "er " beau "ties " "shine, "
  \repeat volta 2 {
    "\nIn " "a " "love " "which " can "not " "cease, "
    "\nI " "am " "His, " "and " "He " "is " "mine. "
  }

  \set stanza = "3."
  "\nThings " "that " "once " "were " "wild " a "larms "
  "\nCan" "not " "now " dis "turb " "my " "erst; "
  "\nClosed " "in " ev er last "ing " "arms, "
  "\nPil" "lowed " "on " "the " lov "ing " "breast. "
  "\nOh " "to " "lie " "for " ev "er " "here, "
  "\nDoubt " "and " "care " "and " "self " re "sign, "
  \repeat volta 2 {
    "\nWhile " "He " whis "ers " "in " "my " "ear— "
    "\nI " "am " "His, " "and " "He " "is " "mine. "
  }

  \set stanza = "4."
  "\nHis " "for " ev "er, " on "ly " "His; "
  "\nWho " "the " "Lord " "and " "me " "shall " "part? "
  "\nAh, " "with " "what " "a " "rest " "of " "bliss "
  "\nChrist " "can " "fill " "the " lov "ing " "heart! "
  "\nHeaven " "and " "earth " "may " "fade " "and " "flee, "
  "\nFirst" "born " "light " "in " "bloom " de "cline; "
  \repeat volta 2 {
    "\nBut, " "while " "God " "and " "I " "shall " "be, "
    "\nI " "am " "His, " "and " "He " "is " "mine. "
  }
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Dynamics \dynamicsSingle
            \new Voice \barlinesSingle
            \new Voice { \repeat-verses \verses \unfoldRepeats \RehearsalTrack }
            \new Voice { \repeat-verses \verses \unfoldRepeats \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \unfoldRepeats \soprano \bar "|." }
            \addlyrics {\unfoldRepeats \wordsMidi}
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \dynamicsSingle
            \new Voice \barlinesSingle
            \new Voice { \global \repeat-verses \verses \unfoldRepeats \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsSingle
            \new Voice \barlinesSingle
            \new Voice { \global \repeat-verses \verses \unfoldRepeats \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \dynamicsSingle
            \new Voice \barlinesSingle
            \new Voice { \global \repeat-verses \verses \unfoldRepeats \bass }
          >>
        >>
        \midi {
          \context {
            \Staff
            \consists "Dynamic_performer"
          }
          \context {
            \Voice
            \remove "Dynamic_performer"
          }
        }
      }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsRepeat
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsSingle
            \new Voice { \repeat-verses \verses \unfoldRepeats \RehearsalTrack }
            \new Voice { \repeat-verses \verses \unfoldRepeats  \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \unfoldRepeats \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \unfoldRepeats \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \unfoldRepeats \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \unfoldRepeats \wordsOne
                                              \unfoldRepeats \wordsTwo
                                              \unfoldRepeats \wordsThree
                                              \unfoldRepeats \wordsFour
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \unfoldRepeats \tenor \nl } }
                                    { \global \repeat-verses \verses \unfoldRepeats \bass }
          >>
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
