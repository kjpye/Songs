\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, what a Saviour!"
  subtitle    = "Sankey No. 413"
  subsubtitle = "Sankey 880 No. 596"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Stirling."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*2 s2
  \mark \markup { \box "B" } s2 s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3
  \mark \markup { \box "E" }    s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4 8. c16 bes4 f
  g8 bes a g f2
  bes8 8 8 8 \bar "|" \break 8 8 a bes
  c2. r4 % B
  d4 8. c16 bes4 f
  g8 bes a g f2
  bes8 8 8 8 d4 c % C
  bes2. r4 \bar "||"
  c4^\markup\smallCaps Chorus. 8. d16 ees4 a,
  bes8 a bes c d2 % D
  c4 8. d16 ees4 a,
  bes8 a bes d c2
  d4 8. c16 bes4 f % E
  g8 bes a g f2
  bes8 8 8 8 d4 c
  bes2. r4
}

alto = \relative {
  \autoBeamOff
  f'4 8. ees16 d4 f
  ees8 g f ees d2
  d8 8 f f ees f e e
  f2. r4 % B
  f4 8. ees16 d4 f
  ees8 g f ees d2
  f8 8 d d f4 ees % C
  d2. r4
  f4 8. 16 4 4
  f8 8 8 ees d4(f) % D
  f4 8. 16 4 4
  f8 8 8 8 2
  f4 8. ees16 d4 f % E
  ees8 g f ees d2
  f8 8 d d f4 ees
  d2. r4
}

tenor = \relative {
  \autoBeamOff
  bes4 8. f16 4 bes
  bes8 8 8 8 2
  f8 8 bes bes bes d c g
  a2. r4 % B
  bes4 8. f16 4 bes
  bes8 8 8 8 2
  bes8 8 8 8 4 a % C
  bes2. r4
  a4 8. bes16 c4 4
  bes8 c bes a bes2 % D
  a4 8. bes16 c4 4
  bes8 ees d bes a2
  bes4 8. f16 4 bes % E
  bes8 8 8 8 2
  bes8 8 8 8 4 a
  bes2. r4
}

bass = \relative {
  \autoBeamOff
  bes,4 8. 16 4 d
  ees8 8 8 8 bes2
  bes8 8 d d g g c, c
  f2. r4 % B
  bes,4 8. 16 4 d
  ees8 8 8 8 bes2
  d8 8 g g f4 4 % C
  bes,2. r4
  f'4 8. 16 4 ees
  d8 ees d c bes2 % D
  f'4 8. 16 4 ees
  d8 c bes bes f'2
  bes,4 8. 16 4 d % E
  ees8 8 8 8 bes2
  d8 8 g g f4 4
  bes,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, What a Sa -- viour stand -- ing at the door!
  Haste while He lin -- gers; par -- don now im -- plore!
  Still He is wait -- ing, grieve His love no more:
  Ten -- der -- ly He call -- eth you.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Come to the Sa -- viour, hear His lov -- ing voice!
  Nev -- er will you find a friend so true;
  Now He is wait -- ing, trust Him and re -- joice,
  Ten -- der -- ly He call -- eth you!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Blest words of com -- fort, gen -- tly now they fall—
  Je -- sus is the Life, the Truth, the Way;
  Come to the foun -- tain, there is room for all—
  Je -- sus bids you come to -- day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Soft -- ly the Spi -- rit whis -- pers to thy heart—
  Do not slight the Sa -- viour's of -- fered grace;
  Glad -- ly re -- ceive Him, let Him not de -- part—
  Hap -- py they who seek His face!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come " "to " "the " Sa "viour, " "hear " "His " lov "ing " "voice! "
  "\nNev" "er " "will " "you " "find " "a " "friend " "so " "true; "
  "\nNow " "He " "is " wait "ing, " "trust " "Him " "and " re "joice, "
  "\nTen" der "ly " "He " call "eth " "you! "
  "\nOh, " "What " "a " Sa "viour " stand "ing " "at " "the " "door! "
  "\nHaste " "while " "He " lin "gers; " par "don " "now " im "plore! "
  "\nStill " "He " "is " wait "ing, " "grieve " "His " "love " "no " "more: "
  "\nTen" der "ly " "He " call "eth " "you. "

  \set stanza = "2."
  "\nBlest " "words " "of " com "fort, " gen "tly " "now " "they " "fall— "
  "\nJe" "sus " "is " "the " "Life, " "the " "Truth, " "the " "Way; "
  "\nCome " "to " "the " foun "tain, " "there " "is " "room " "for " "all— "
  "\nJe" "sus " "bids " "you " "come " to "day. "
  "\nOh, " "What " "a " Sa "viour " stand "ing " "at " "the " "door! "
  "\nHaste " "while " "He " lin "gers; " par "don " "now " im "plore! "
  "\nStill " "He " "is " wait "ing, " "grieve " "His " "love " "no " "more: "
  "\nTen" der "ly " "He " call "eth " "you. "

  \set stanza = "3."
  "\nSoft" "ly " "the " Spi "rit " whis "pers " "to " "thy " "heart— "
  "\nDo " "not " "slight " "the " Sa "viour's " of "fered " "grace; "
  "\nGlad" "ly " re "ceive " "Him, " "let " "Him " "not " de "part— "
  "\nHap" "py " "they " "who " "seek " "His " "face! "
  "\nOh, " "What " "a " Sa "viour " stand "ing " "at " "the " "door! "
  "\nHaste " "while " "He " lin "gers; " par "don " "now " im "plore! "
  "\nStill " "He " "is " wait "ing, " "grieve " "His " "love " "no " "more: "
  "\nTen" der "ly " "He " call "eth " "you. "
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

\book {
  \bookOutputSuffix "single"
  \score {
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
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
