\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "'Tis the Saviour, Let Him In!"
  subtitle    = "Sankey No. 446"
  subsubtitle = "Sankey 880 No. 450"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Mrs. J. F. Knapp."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Miss J. Pollard."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1   s2.
  \mark \markup { \box "B" } s4 s1   s2.
  \mark \markup { \box "C" } s4 s1   s2.
  \mark \markup { \box "D" } s4 s1*2
  \mark \markup { \box "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*10
  s2 \tempo 4=100 s2
  s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  cis'8^\markup\italic Tenderly. d
  fis8 e e dis e4 a8 cis
  cis4 b a \bar "|" \break cis,8 d
  fis8 e e dis e4 a8 cis % B
  cis4 b a \bar "|" \break cis8 d
  e8. b16 8 8 4 cis8 d % C
  e8. a,16 8 8 4 \bar "||" \break a8^\markup\smallCaps Chorus. gis
  fis8 8 8 8 8 a gis fis % D
  e2. a8 cis
  b4 e e b8 d % E
  cis2. a8 cis
  b4 e e^\markup\italic rit. b8 cis
  a2.
}

alto = \relative {
  \autoBeamOff
  a8 b
  d8 cis cis bis cis4 8 e8
  e4 d cis a8 b
  d8 cis cis bis cis4 8 e % B
  e4 d cis e8 8
  e8. 16 8 dis e4 8 8 % C
  e8. 16 8 d cis4 8 e
  d8 8 8 8 8 fis e d % D
  cis4 8^\p 8 4 8\omit\mf e
  e4 gis gis e8 8 % E
  e4 8^\p 8 4 8\omit\mf e
  e4 gis gis gis8 e
  e2.
}

tenor = \relative {
  \autoBeamOff
  e8 8
  a8 8 8 8 4 8 8
  a4 gis a e8 8
  a8 8 8 8 4 8 8 % B
  a4 gis a4 8 b
  b8. 16 8 a gis4 a8 gis % C
  a8. 16 8 8 4 8 8
  a8 8 8 8 8 8 8 8 % D
  a4 8 8 4 8 8
  gis4 b b gis8 b % E
  a4 cis8\omit\p 8 4 a8\omit\mf 8
  gis4 b b d8 8
  cis2.
}

bass = \relative {
  \autoBeamOff
  a,8 8
  a8 8 8 8 4 8 8
  e'4 4 a,4 8 8
  a8 8 8 8 4 8 8 % B
  e'4 4 a, a'8 8
  gis8. 16 8 fis e4 a,8 b % C
  cis8. 16 8 b a4 8 cis
  d8 8 8 8 8 8 8 8 % D
  a4 8\omit\p 8 4 8\omit\mf 8
  e'4 4 4 8 gis % E
  a4 8 8 4 cis,8 a
  e'4 4 4 8 8
  a,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  'Tis your Sa -- viour,
  'tis your Sa -- viour stand -- ing there: __
  Haste, and let Him in!
  let Him in! __
  Lest He turn a -- way. let Him in!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _
  _ _  _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  Let Him in!
  _ _ _ _ _ _ _ _
  let Him in!
  _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  'Tis the Sa -- viour who would claim
  En -- trance to your heart:
  Will you send your Lord a -- way?
  Will you say?— "\"De" -- "part!\""
  He will all your tri -- als share.
  He will cleanse you from all sin.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  No one like the Sa -- viour knocks
  At the sin -- ner's door;
  'Tis no stran -- ger that im -- plores,—
  He has knocked be -- fore;
  He has oft -- en sought your heart:
  Shall He cleanse it now from sin?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, how can you bid Him wait
  Till an -- o -- ther day,
  When al -- rea -- dy Je -- sus weeps
  At the long de -- lay?
  "'T was" for you that Je -- sus died,
  And 'tis you He longs to win.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "'Tis " "the " Sa "viour " "who " "would " "claim "
  "\nEn" "trance " "to " "your " "heart: "
  "\nWill " "you " "send " "your " "Lord " a "way? "
  "\nWill " "you " "say?— " "\"De" "part!\" "
  "\nHe " "will " "all " "your " tri "als " "share. "
  "\nHe " "will " "cleanse " "you " "from " "all " "sin. "
  "\n'Tis " "your " Sa "viour, "
  "\n'tis " "your " Sa "viour " stand "ing " "there: " 
  "\nHaste, " "and " "let " "Him " "in! "
  "\nlet " "Him " "in! " 
  "\nLest " "He " "turn " a "way. " "let " "Him " "in!\n"

  \set stanza = "2."
  "\nNo " "one " "like " "the " Sa "viour " "knocks "
  "\nAt " "the " sin "ner's " "door; "
  "\n'Tis " "no " stran "ger " "that " im "plores,— "
  "\nHe " "has " "knocked " be "fore; "
  "\nHe " "has " oft "en " "sought " "your " "heart: "
  "\nShall " "He " "cleanse " "it " "now " "from " "sin? "
  "\n'Tis " "your " Sa "viour, "
  "\n'tis " "your " Sa "viour " stand "ing " "there: " 
  "\nHaste, " "and " "let " "Him " "in! "
  "\nlet " "Him " "in! " 
  "\nLest " "He " "turn " a "way. " "let " "Him " "in!\n"

  \set stanza = "3."
  "\nOh, " "how " "can " "you " "bid " "Him " "wait "
  "\nTill " an o "ther " "day, "
  "\nWhen " al rea "dy " Je "sus " "weeps "
  "\nAt " "the " "long " de "lay? "
  "\n'T was " "for " "you " "that " Je "sus " "died, "
  "\nAnd " "'tis " "you " "He " "longs " "to " "win. "
  "\n'Tis " "your " Sa "viour, "
  "\n'tis " "your " Sa "viour " stand "ing " "there: " 
  "\nHaste, " "and " "let " "Him " "in! "
  "\nlet " "Him " "in! " 
  "\nLest " "He " "turn " a "way. " "let " "Him " "in! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "'Tis " "the " Sa "viour " "who " "would " "claim "
  "\nEn" "trance " "to " "your " "heart: "
  "\nWill " "you " "send " "your " "Lord " a "way? "
  "\nWill " "you " "say?— " "\"De" "part!\" "
  "\nHe " "will " "all " "your " tri "als " "share. "
  "\nHe " "will " "cleanse " "you " "from " "all " "sin. "
  "\n'Tis " "your " Sa "viour, "
  "\n'tis " "your " Sa "viour " stand "ing " "there: " 
  "\nLet " "Him " "in! "
  "\nHaste, " "and " "let " "Him " "in! "
  "\nlet " "Him " "in! "  "let " "Him " "in! "
  "\nLest " "He " "turn " a "way. " "let " "Him " "in!\n"

  \set stanza = "2."
  "\nNo " "one " "like " "the " Sa "viour " "knocks "
  "\nAt " "the " sin "ner's " "door; "
  "\n'Tis " "no " stran "ger " "that " im "plores,— "
  "\nHe " "has " "knocked " be "fore; "
  "\nHe " "has " oft "en " "sought " "your " "heart: "
  "\nShall " "He " "cleanse " "it " "now " "from " "sin? "
  "\n'Tis " "your " Sa "viour, "
  "\n'tis " "your " Sa "viour " stand "ing " "there: " 
  "\nLet " "Him " "in! "
  "\nHaste, " "and " "let " "Him " "in! "
  "\nlet " "Him " "in! "  "let " "Him " "in! "
  "\nLest " "He " "turn " a "way. " "let " "Him " "in!\n"

  \set stanza = "3."
  "\nOh, " "how " "can " "you " "bid " "Him " "wait "
  "\nTill " an o "ther " "day, "
  "\nWhen " al rea "dy " Je "sus " "weeps "
  "\nAt " "the " "long " de "lay? "
  "\n'T was " "for " "you " "that " Je "sus " "died, "
  "\nAnd " "'tis " "you " "He " "longs " "to " "win. "
  "\n'Tis " "your " Sa "viour, "
  "\n'tis " "your " Sa "viour " stand "ing " "there: " 
  "\nLet " "Him " "in! "
  "\nHaste, " "and " "let " "Him " "in! "
  "\nlet " "Him " "in! "  "let " "Him " "in! "
  "\nLest " "He " "turn " a "way. " "let " "Him " "in! "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
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
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
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
