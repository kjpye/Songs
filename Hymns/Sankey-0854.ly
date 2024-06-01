\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He Saves me!"
  subtitle    = "Sankey No. 854"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. S. Weeden."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. W. van de Venter."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "B" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "C" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "D" } s8 s2.*3 s4. s4
  \repeat volta 2 {
    \textMark \markup { \box \bold "E" } s8  s2.*2 s4.
    \textMark \markup { \box \bold "F" } s4. s2.*2 s4. s4
    \alternative {
      \volta 1 { \textMark \markup { \box \bold "G" } s8 s2. s4. s4 }
      \volta 2 { s8 s2. s4. s4 }
    }
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  d'8 | d g a b b b | 4. g4 d8 | d fis a c c c | 4. a4 \bar "|" \break
  d,8 | d g b d d d | 4. c4 b8 | a a a a b a | 4.(d4) \bar "|" \break
  d,8 | d g a b b b | 4. g4 d8 | d f a c c c | 4. a4 \bar "|" \break
  d,8 d g b d d d | 4. c4 b8 | a b c b b a | g4.~4
  \section \sectionLabel \markup\smallCaps Chorus. \break
  \repeat volta 2 {
    d'8 | 4. b4 d8 | 4. b4 d,8 | d g b \bar "|" \break
    d8 e8. \chord <b d>16 \auto | 4. c4 8 | 4. a4 c8 | 4. a4 \bar "|" \break
    \alternative {
      \volta 1 { d,8 | d fis a c d8. c16 | b4.~4 }
      \volta 2 { d,8 | d fis a c b a | g4.~4 }
    }
  }
}

alto = \relative {
  \autoBeamOff
  d'8 | d d g g g g | 4. d4 8 | d d fis8 8 8 8 | 4. 4
  d8 | d d d g g g | 4(d8) 4 8 | e e g g g g | fis4.(4)
  d8 | d d g g g g | 4. d4 8 | d d fis8 8 8 8 | 4. 4
  d8 | d d d g g g | 4(d8) 4 8 | e8 8 8 g fis d | 4.~4 \section
  \repeat volta 2 {
    g8 | 4. 4 8 | 4. 4 d8 | d g b
    g8 8. 16 | fis4(d8) fis4 a8 | 4. fis4 a8 | 4. fis4
    \alternative {
      \volta 1 { d8 | d fis a a b8. a16 | g4.~4 }
      \volta 2 { d8 | d fis a fis8 8 d | 4.~4 }
    }
  }
}

tenor = \relative {
  \autoBeamOff
  b8 | b b c d d d | 4. b4 8 | fis a c a a a | 4. c4
  b8 | b b d b b b | 4. fis4 g8 | c c e e e e | d4.(a4)
  b8 | b b c d d d | 4. b4 8 | fis8 a c a a a | 4. c4
  b8 | b b d b b b | 4. fis4 g8 | a gis a g d' c | b4.~4 \section
  \repeat volta 2 {
    b8 | 4. d4 b8 | 4. d4 d,8 | d g b
    b8 c8. b16 | 4. a4 d8 | 4. 4 8 | 4. 4
    \alternative {
      \volta 1 { d,8 | d fis a d8 8. 16 | 4.~4 }
      \volta 2 { d,8 | d fis a e' d c | b4.~4 }
    }
  }
}

bass = \relative {
  \autoBeamOff
  g8 | g g g g g g | 4. 4 8 | d8 d d d d d | 4. 4
  g8 | g g g g, g g | 4. a4 b8 | c c c cis cis cis | d4.~4
  g8 | g g g g g g | 4. 4 8 | d8 d d d d d | 4. 4
  g8 | g g g g, g g | 4. a4 b8 | c b a d d d | g4.~4 \section
  \repeat volta 2 {
    g8 | 4. 4 8 | 4. 4 d8 | d g b
    g8 8. 16 | d4. 4 8 | 4. 4 8 | 4. 4
    \alternative {
      \volta 1 { d8 | d fis a d,8 8. 16 | g4.~4 }
      \volta 2 { d8 | d fis a d, d d | \chord <g, g'>4.~4 }
    }
  }
}

bassLow = \relative {
  \autoBeamOff \tiny \vf
  s8 | s2.*3 s4. s4
  s8 | s2.*3 s4. s4
  s8 | s2.*3 s4. s4
  s8 | s2.*3 s4. s4
  \repeat volta 2 {
    s8 | g,8[b d] s4. | g,8[b d] s4. | s4.
    s4. | s2. | d8[fis a] s4. | d,8[fis a] s4
    \alternative {
      \volta 1 { s8 | s2. | s4. s4 }
      \volta 2 { s8 | s2. | s4. s4 }
    }
  }
}

chorus = \lyricmode {
  \repeat volta 2 {
    He saves me, He saves me,
    His love fills my soul, hal -- le -- lu -- jah!
    I‘ll praise Him, I‘ll praise Him,
    \alternative {
      \volta 1 { His Spi -- rit a -- bid -- deth with -- in. }
      \volta 2 { His blood cleans -- eth me from all sin. }
    }
  }
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  The bless -- ed Re -- deem -- er has found me,
  And shat -- tered the fet -- ters that bound me;
  Though all was con -- fu -- sion a -- round me,
  He came and spoke peace to my soul.
  In ten -- der -- est love He hath bought me,
  With pa -- tience He con -- stant -- ly sought me,
  The way of sal -- va -- tion He taught me,
  And made my heart per -- fect -- ly whole.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He sought me so long ere I knew Him,
  But, fi -- nal -- ly win -- ning me to Him,
  I yield -- ed my all to pur -- sue Him,
  And asked to be filled with His grace.
  Al -- though a vile sin -- ner be -- fore Him,
  Thro‘ faith I was led to im -- plore Him,
  And now I re -- joice and a -- dore Him,
  Re -- stored to His lov -- ing em -- brace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I nev -- er, no nev -- er, will leave Him,
  Grow wea -- ry of ser -- vice and grieve Him,
  I‘ll con -- stant -- ly trust and be -- lieve Him,
  Se -- cure in His pre -- sence Di -- vine.
  A -- bi -- ding in love ev -- er flow -- ing,
  In know -- ledge and grace ev -- er grow -- ing,
  Con -- fi -- ding im -- pli -- cit -- ly, know -- ing
  That Je -- sus the Sa -- viour is mine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " bless "ed " Re deem "er " "has " "found " "me, "
  "\nAnd " shat "tered " "the " fet "ters " "that " "bound " "me; "
  "\nThough " "all " "was " con fu "sion " a "round " "me, "
  "\nHe " "came " "and " "spoke " "peace " "to " "my " "soul. "
  "\nIn " ten der "est " "love " "He " "hath " "bought " "me, "
  "\nWith " pa "tience " "He " con stant "ly " "sought " "me, "
  "\nThe " "way " "of " sal va "tion " "He " "taught " "me, "
  "\nAnd " "made " "my " "heart " per fect "ly " "whole. "
  \repeat volta 2 {
    "\nHe " "saves " "me, " "He " "saves " "me, "
    "\nHis " "love " "fills " "my " "soul, " hal le lu "jah! "
    "\nI‘ll " "praise " "Him, " "I‘ll " "praise " "Him, "
    \alternative {
      \volta 1 { "\nHis " Spi "rit " a bid "deth " with "in. " }
      \volta 2 { "\nHis " "blood " cleans "eth " "me " "from " "all " "sin.\n" }
    }
  }

  \set stanza = "2."
  "\nHe " "sought " "me " "so " "long " "ere " "I " "knew " "Him, "
  "\nBut, " fi nal "ly " win "ning " "me " "to " "Him, "
  "\nI " yield "ed " "my " "all " "to " pur "sue " "Him, "
  "\nAnd " "asked " "to " "be " "filled " "with " "His " "grace. "
  "\nAl" "though " "a " "vile " sin "ner " be "fore " "Him, "
  "\nThro‘ " "faith " "I " "was " "led " "to " im "plore " "Him, "
  "\nAnd " "now " "I " re "joice " "and " a "dore " "Him, "
  "\nRe" "stored " "to " "His " lov "ing " em "brace. "
  \repeat volta 2 {
    "\nHe " "saves " "me, " "He " "saves " "me, "
    "\nHis " "love " "fills " "my " "soul, " hal le lu "jah! "
    "\nI‘ll " "praise " "Him, " "I‘ll " "praise " "Him, "
    \alternative {
      \volta 1 { "\nHis " Spi "rit " a bid "deth " with "in. " }
      \volta 2 { "\nHis " "blood " cleans "eth " "me " "from " "all " "sin.\n" }
    }
  }

  \set stanza = "3."
  "\nI " nev "er, " "no " nev "er, " "will " "leave " "Him, "
  "\nGrow " wea "ry " "of " ser "vice " "and " "grieve " "Him, "
  "\nI‘ll " con stant "ly " "trust " "and " be "lieve " "Him, "
  "\nSe" "cure " "in " "His " pre "sence " Di "vine. "
  "\nA" bi "ding " "in " "love " ev "er " flow "ing, "
  "\nIn " know "ledge " "and " "grace " ev "er " grow "ing, "
  "\nCon" fi "ding " im pli cit "ly, " know "ing "
  "\nThat " Je "sus " "the " Sa "viour " "is " "mine. "
  \repeat volta 2 {
    "\nHe " "saves " "me, " "He " "saves " "me, "
    "\nHis " "love " "fills " "my " "soul, " hal le lu "jah! "
    "\nI‘ll " "praise " "Him, " "I‘ll " "praise " "Him, "
    \alternative {
      \volta 1 { "\nHis " Spi "rit " a bid "deth " with "in. " }
      \volta 2 { "\nHis " "blood " cleans "eth " "me " "from " "all " "sin.\n" }
    }
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
            \new Voice { \repeat-verses \verses \unfoldRepeats \TempoTrack}
            \new Voice { \global \repeat-verses \verses \unfoldRepeats \soprano \bar "|." }
            \addlyrics { \unfoldRepeats \wordsMidi }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \unfoldRepeats \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \unfoldRepeats \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \unfoldRepeats \bass }
            \new Voice { \global \repeat-verses \verses \unfoldRepeats \bassLow }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
            \new Voice \bassLow
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
            \new Voice { \repeat-verses \verses \unfoldRepeats \RehearsalTrack }
            \new Voice { \repeat-verses \verses \unfoldRepeats \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \unfoldRepeats \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \unfoldRepeats \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \unfoldRepeats \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \unfoldRepeats \chorus
                                              \wordsTwo   \unfoldRepeats \chorus
                                              \wordsThree \unfoldRepeats \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \unfoldRepeats \tenor \nl } }
                                    { \global \repeat-verses \verses \unfoldRepeats \bass }
            \new Voice \repeat-verses \verses \unfoldRepeats \bassLow
          >>
        >>
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
