\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Whosoever Will!"
  subtitle    = "Sankey No. 389"
  subsubtitle = "Sankey 880 No. 24"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*3
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*4
  \mark \markup { \box "D" }    s1*2 s2
  \mark \markup { \box "E" } s2 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*6
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1*7
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8.^\markup\italic Joyfully.  b16 a8 fis d4 d'
  \tag #'dash    {\slurDashed b8(8) \slurSolid d8. b16 a2}
  \tag #'(v1 v2) {            b4               d8. b16 a2}
  \tag #'v3      {            b8 8             d8. b16 a2}
  a8. b16 a8 fis d4 fis
  e8. d16 e8 fis e2 % B
  a8. b16 a8 fis d4 d'
  b8. 16 d8. b16 a2
  a8. b16 cis8 d e4\fermata cis % C
  d2. r4 \bar "||"
  cis8.^\markup\smallCaps Chorus. 16 8 d e2
  d8. cis16 d8 b a2
  fis8. 16 8 a b a b d % D
  e4 d cis2
  d8. cis16 d8 b \bar "|" \break a4 fis
  g8. fis16 g8 a b2 % E
  a8. b16 cis8 d e4\fermata cis
  d2. r4
}

alto = \relative {
  \autoBeamOff
  fis'8. g16 fis8 d8 4 fis
  \tag #'dash    {\slurDashed g8(8) \slurSolid 8. 16 fis2}
  \tag #'(v1 v2) {            g4               8. 16 fis2}
  \tag #'v3      {            g8 8             8. 16 fis2}
  fis8. g16 fis8 d d4 4
  cis8. b16 cis8 d cis2 % B
  fis8. g16 fis8 d d4 fis
  g8. 16 8. 16 fis2
  cis8. d16 e8 fis g4\fermata e % C
  fis2. r4
  e8. 16 8 fis g2
  fis8. 16 8 g fis2
  d8. 16 8 fis g g g g % D
  gis4 4 a2
  fis8. 16 8 g fis4 d
  d8. 16 g8 8 2 % E
  cis,8. d16 e8 fis g4\fermata e
  fis2. r4
}

tenor = \relative {
  \autoBeamOff
  d'8. 16 8 a8 4 4
  \tag #'dash    {\slurDashed g8(8) \slurSolid b8. d16 2}
  \tag #'(v1 v2) {            g,4              b8. d16 2}
  \tag #'v3      {            g,8 8            b8. d16 2}
  d8. 16 8 a8 4 4
  a8. 16 8 8 2 % B
  d8. 16 8 a8 4 4
  g8. 16 b8. d16 2
  a8. 16 8 8 4\fermata 4 % C
  a2. r4
  a8. 16 8 8 2
  a8. 16 b8 d8 2
  a8. 16 8 d d d d b % D
  b4 4 a2
  a8. 16 8 b d4 a
  b8. 16 8 cis d2 % E
  a8. 16 8 8 4\fermata 4
  a2. r4
}

bass = \relative {
  \autoBeamOff
  d8. 16 8 8 fis4 d
  \tag #'dash    {\slurDashed g8(8) \slurSolid 8. 16 d2}
  \tag #'(v1 v2) {            g4               8. 16 d2}
  \tag #'v3      {            g8 8             8. 16 d2}
  d8. 16 8 8 fis4 d
  a8. 16 8 8 2 % B
  d8. 16 8 8 fis4 d
  g8. 16 8. 16 d2
  a'8. 16 8 8 4\fermata 4 % C
  d,2. r4
  a'8. 16 8 8 2
  d,8. 16 8 8 2
  d8. 16 8 8 g g g g % D
  e4 4 a2
  d,8. 16 8 8 4 4
  g8. 16 8 8 2
  a8. 16 8 8 4\fermata 4 
  d,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Who" -- so -- ev -- er will! who -- so -- ev -- er "will!\""
  Send the pro -- clam -- a -- tion o -- ver vale and hill;
  'Tis a lov -- ing Fa -- ther calls the wan -- d'rer home:
  "\"Who" -- so -- ev -- er will— may "come!\""
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Who" -- so -- ev -- er hear -- "eth!\"" shout, shout the sound!
  Send the bles -- sed ti -- dings all the worl a -- round;
  Spread the joy -- ful news where -- ev -- er man is found:
  "\"Who" -- so -- ev -- er will may "come!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Who -- so -- ev -- er com -- eth need not de -- lay;
  Now the door is o -- pen, en -- ter while you may;
  Je -- sus is the True, the on -- ly Liv -- ing Way:
  "\"Who" -- so -- ev -- er will may "come!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Who" -- so -- ev -- er "will!\"" the \nom prom -- ise \yesm is se -- cure;
  "\"Who" -- so -- ev -- er "will!\"" for ev -- er shall en -- dure;
  "\"Who" -- so -- ev -- er "will!\"" 'tis life for ev -- er -- more:
  "\"Who" -- so -- ev -- er will may "come!\""
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  "\"Who" -- so -- ev -- er hear -- "eth!\"" shout, shout the sound!
  Send the bles -- sed ti -- dings all the worl a -- round;
  Spread the joy -- ful news where -- ev -- er man is found:
  "\"Who" -- so -- ev -- er will may "come!\""
  "\"Who" -- so -- ev -- er will! who -- so -- ev -- er "will!\""
  Send the pro -- clam -- a -- tion o -- ver vale and hill;
  'Tis a lov -- ing Fa -- ther calls the wan -- d'rer home:
  "\"Who" -- so -- ev -- er will— may "come!\""

  \set stanza = "2."
  Who -- so -- ev -- er com -- eth need not de -- lay;
  Now the door is o -- pen, en -- ter while you may;
  Je -- sus is the True, the on -- ly Liv -- ing Way:
  "\"Who" -- so -- ev -- er will may "come!\""
  "\"Who" -- so -- ev -- er will! who -- so -- ev -- er "will!\""
  Send the pro -- clam -- a -- tion o -- ver vale and hill;
  'Tis a lov -- ing Fa -- ther calls the wan -- d'rer home:
  "\"Who" -- so -- ev -- er will— may "come!\""

  \set stanza = "3."
  "\"Who" -- so -- ev -- er "will!\"" the prom -- ise is se -- cure;
  "\"Who" -- so -- ev -- er "will!\"" for ev -- er shall en -- dure;
  "\"Who" -- so -- ev -- er "will!\"" 'tis life for ev -- er -- more:
  "\"Who" -- so -- ev -- er will may "come!\""
  "\"Who" -- so -- ev -- er will! who -- so -- ev -- er "will!\""
  Send the pro -- clam -- a -- tion o -- ver vale and hill;
  'Tis a lov -- ing Fa -- ther calls the wan -- d'rer home:
  "\"Who" -- so -- ev -- er will— may "come!\""
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Who" so ev "er " hear "eth!\" " "shout, " "shout " "the " "sound! "
  "\nSend " "the " bles "sed " ti "dings " "all " "the " "worl " a "round; "
  "\nSpread " "the " joy "ful " "news " where ev "er " "man " "is " "found: "
  "\n\"Who" so ev "er " "will " "may " "come!\" "
  "\n\"Who" so ev "er " "will! " who so ev "er " "will!\" "
  "\nSend " "the " pro clam a "tion " o "ver " "vale " "and " "hill; "
  "\n'Tis " "a " lov "ing " Fa "ther " "calls " "the " wan "d'rer " "home: "
  "\n\"Who" so ev "er " "will— " "may " "come!\" "

  \set stanza = "2."
  "\nWho" so ev "er " com "eth " "need " "not " de "lay; "
  "\nNow " "the " "door " "is " o "pen, " en "ter " "while " "you " "may; "
  "\nJe" "sus " "is " "the " "True, " "the " on "ly " Liv "ing " "Way: "
  "\n\"Who" so ev "er " "will " "may " "come!\" "
  "\n\"Who" so ev "er " "will! " who so ev "er " "will!\" "
  "\nSend " "the " pro clam a "tion " o "ver " "vale " "and " "hill; "
  "\n'Tis " "a " lov "ing " Fa "ther " "calls " "the " wan "d'rer " "home: "
  "\n\"Who" so ev "er " "will— " "may " "come!\" "

  \set stanza = "3."
  "\n\"Who" so ev "er " "will!\" " "the " prom "ise " "is " se "cure; "
  "\n\"Who" so ev "er " "will!\" " "for " ev "er " "shall " en "dure; "
  "\n\"Who" so ev "er " "will!\" " "'tis " "life " "for " ev er "more: "
  "\n\"Who" so ev "er " "will " "may " "come!\" "
  "\n\"Who" so ev "er " "will! " who so ev "er " "will!\" "
  "\nSend " "the " pro clam a "tion " o "ver " "vale " "and " "hill; "
  "\n'Tis " "a " lov "ing " Fa "ther " "calls " "the " wan "d'rer " "home: "
  "\n\"Who" so ev "er " "will— " "may " "come!\" "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|."
                       }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \soprano
                                      \keepWithTag #'v2 \soprano
                                      \keepWithTag #'v3 \soprano
                                      \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|."
            }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \tenor
                                      \keepWithTag #'v2 \tenor
                                      \keepWithTag #'v3 \tenor
                                    }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
          >>
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

\book {
  \bookOutputSuffix "singlepage"
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \soprano
                                      \keepWithTag #'v2 \soprano
                                      \keepWithTag #'v3 \soprano
                                      \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|."
            }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \tenor
                                      \keepWithTag #'v2 \tenor
                                      \keepWithTag #'v3 \tenor
                                    }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
          >>
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
