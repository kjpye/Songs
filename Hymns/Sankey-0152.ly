\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ Arose!"
  subtitle    = "Sankey No. 152"
  subsubtitle = "Sankey 880 No. 317"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*6
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3
  \mark \markup { \box "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 4 a
  a4 g g2
  g2 f4 a
  a2 g
  a2 b4 c
  c4 g g2
  a2 g4 fis % B
  g1
  c,4^\markup {\smallCaps Chorus. \italic Faster.} 8. 16 e4 g8. 16
  c2. 8. d16
  e4 c d8. c16 b8. a16 % C
  g2. b8. c16
  d4 4 8. c16 d8. e16
  c4 a g g8. 16 % D
  a4 4 8. d16 8. c16
  b4 c d g,8. 16
  e'2. d8. c16 % E
  f2. e8. d16
  c4 g e' d
  c1
}

alto = \relative {
  \autoBeamOff
  e'2 4 f
  f4 e e2
  d2 4 f
  f2 e
  f2 g4 a
  g4 e e2
  e2 d4 c \bar "||" % B
  b1
  c4 8. 16 e4 g8. 16
  e2. 8. f16
  g4 4 a8. 16 g8. f16 % C
  e2. d8. e16
  f4 4 8. e16 f8. g16
  e4 f e e8. 16 % D
  f4 4 fis8. 16 8. a16
  g8[f] e4 g g8. 16
  g2. f8. e16
  a2. g8. f16
  e4 4 g f
  e1
}

tenor = \relative {
  \autoBeamOff
  c'2 4 4
  c4 4 2
  b2 4 4
  c2 2
  c2 4 4
  c4 4 2
  c2 b4 a % B
  g1
  c,4 8. 16 e4 g8. 16
  g4 8. 16 4 c8. 16
  c4 4 8. 16 8. 16 % C
  c4 8. 16 4 g8. 16
  g4 4 8. 16 8. 16
  c4 4 4 8. 16 % D
  c4 4 8. a16 8. d16
  d4 c b r
  r4 c8. 16 4 r % E
  r4 c8. 16 4 8. a16
  g4 c c b
  c1
}

bass = \relative {
  \autoBeamOff
  c2 4 4
  c4 4 2
  g2 4 4
  c2 2
  f2 4 4
  e4 c c2
  a2 d4 4 % B
  g,1
  c4 8. 16 e4 g8. 16
  c,4 8. 16 4 8. 16
  c4 e f8. 16 8. 16 % C
  c4 8. 16 4 g'8. 16
  g4 4 8. 16 8. 16
  a4 f c c8. 16 % D
  f4 4 d8. 16 8. 16
  g4 a g r
  r4 c8. 16 4 r % E
  r4 f,8. 16 4 8. 16
  g4 4 4 4
  c,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Up from the grave He a -- rose,
  With a migh -- ty tr -- umph o'er His foes;
  He a -- rose a Vic -- tor from the dark do -- main,
  And He lives for e -- ver with His saints to reign:
  He a -- rose! He a -- rose!
  Hal -- le -- lu -- jah! Christ a -- rose!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _
  \set fontSize = #-2
  He a -- rose,
  _ _ _ _ _ _ _ _ _
  He a -- rose!
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  He a -- rose!
  He a -- rose!
  _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Low in the grave He lay—
  Je -- sus my Sa -- viour!
  Wait -- ing the com -- ing day—
  Je -- sus my Lord!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Vain -- ly they watch His bed—
  Je -- sus, my Sa -- viour!
  Vain -- ly they seal the dead—
  Je -- sus, my Lord!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Death can -- not keep His prey—
  Je -- sus my Sa -- viour!
  He tore the bars a -- way—
  Je -- sus my Lord!
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Low " "in " "the " "grave " "He " "lay— "
  "\nJe" "sus " "my " Sa "viour! "
  "\nWait" "ing " "the " com "ing " "day— "
  "\nJe" "sus " "my " "Lord! "
  "\nUp " "from " "the " "grave " "He " a "rose, "
  "\nWith " "a " migh "ty " tr "umph " "o'er " "His " "foes; "
  "\nHe " a "rose " "a " Vic "tor " "from " "the " "dark " do "main, "
  "\nAnd " "He " "lives " "for " e "ver " "with " "His " "saints " "to " "reign: "
  "\nHe " a "rose! " "He " a "rose! "
  "\nHal" le lu "jah! " "Christ " a "rose! "

  \set stanza = "2."
  "\nVain" "ly " "they " "watch " "His " "bed— "
  "\nJe" "sus, " "my " Sa "viour! "
  "\nVain" "ly " "they " "seal " "the " "dead— "
  "\nJe" "sus, " "my " "Lord! "
  "\nUp " "from " "the " "grave " "He " a "rose, "
  "\nWith " "a " migh "ty " tr "umph " "o'er " "His " "foes; "
  "\nHe " a "rose " "a " Vic "tor " "from " "the " "dark " do "main, "
  "\nAnd " "He " "lives " "for " e "ver " "with " "His " "saints " "to " "reign: "
  "\nHe " a "rose! " "He " a "rose! "
  "\nHal" le lu "jah! " "Christ " a "rose! "

  \set stanza = "3."
  "\nDeath " can "not " "keep " "His " "prey— "
  "\nJe" "sus " "my " Sa "viour! "
  "\nHe " "tore " "the " "bars " a "way— "
  "\nJe" "sus " "my " "Lord! "
  "\nUp " "from " "the " "grave " "He " a "rose, "
  "\nWith " "a " migh "ty " tr "umph " "o'er " "His " "foes; "
  "\nHe " a "rose " "a " Vic "tor " "from " "the " "dark " do "main, "
  "\nAnd " "He " "lives " "for " e "ver " "with " "His " "saints " "to " "reign: "
  "\nHe " a "rose! " "He " a "rose! "
  "\nHal" le lu "jah! " "Christ " a "rose! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Low " "in " "the " "grave " "He " "lay— "
  "\nJe" "sus " "my " Sa "viour! "
  "\nWait" "ing " "the " com "ing " "day— "
  "\nJe" "sus " "my " "Lord! "
  "\nUp " "from " "the " "grave " "He " a "rose, "
  "\nHe " a "rose, "
  "\nWith " "a " migh "ty " tr "umph " "o'er " "His " "foes; "
  "\nHe " a "rose! "
  "\nHe " a "rose " "a " Vic "tor " "from " "the " "dark " do "main, "
  "\nAnd " "He " "lives " "for " e "ver " "with " "His " "saints " "to " "reign: "
  "\nHe " a "rose! " "He " a "rose! "
  "\nHal" le lu "jah! " "Christ " a "rose! "

  \set stanza = "2."
  "\nVain" "ly " "they " "watch " "His " "bed— "
  "\nJe" "sus, " "my " Sa "viour! "
  "\nVain" "ly " "they " "seal " "the " "dead— "
  "\nJe" "sus, " "my " "Lord! "
  "\nUp " "from " "the " "grave " "He " a "rose, "
  "\nHe " a "rose, "
  "\nWith " "a " migh "ty " tr "umph " "o'er " "His " "foes; "
  "\nHe " a "rose! "
  "\nHe " a "rose " "a " Vic "tor " "from " "the " "dark " do "main, "
  "\nAnd " "He " "lives " "for " e "ver " "with " "His " "saints " "to " "reign: "
  "\nHe " a "rose! " "He " a "rose! "
  "\nHal" le lu "jah! " "Christ " a "rose! "

  \set stanza = "3."
  "\nDeath " can "not " "keep " "His " "prey— "
  "\nJe" "sus " "my " Sa "viour! "
  "\nHe " "tore " "the " "bars " a "way— "
  "\nJe" "sus " "my " "Lord! "
  "\nUp " "from " "the " "grave " "He " a "rose, "
  "\nHe " a "rose, "
  "\nWith " "a " migh "ty " tr "umph " "o'er " "His " "foes; "
  "\nHe " a "rose! "
  "\nHe " a "rose " "a " Vic "tor " "from " "the " "dark " do "main, "
  "\nAnd " "He " "lives " "for " e "ver " "with " "His " "saints " "to " "reign: "
  "\nHe " a "rose! " "He " a "rose! "
  "\nHal" le lu "jah! " "Christ " a "rose! "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerMen \tenor
            \new Lyrics \with { alignAboveContext = men } \lyricsto alignerMen \chorusMen
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
            \new Lyrics \with { alignAboveContext = men } \lyricsto alignerMen { \chorusMen \chorusMen \chorusMen }
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
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
            \new Lyrics \with { alignAboveContext = men } \lyricsto alignerMen { \chorusMen \chorusMen \chorusMen }
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
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff =soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "midi=men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff =soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
            \addlyrics \wordsMidiMen
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
