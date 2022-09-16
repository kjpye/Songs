\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "No Longer Wait."
  subtitle    = "Sankey No. 453"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "F. N. Riggs."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*6
  \mark \markup { \box "B" } s1*6
  \mark \markup { \box "C" } s1*6
  \mark \markup { \box "D" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'2^\markup\smallCaps Duet. gis4. 8 | a2. f4 | f4 4 e d | c2. r4 | c2 d4 e | f2. a4
  a4 g b g | c2. r4 | c2 d4 c | c2. a4 | a4 g f g | a2. r4
  g2 f4 d | c2(f4\fermata) a | a4 g d e | f2. r4 \bar "||" c'2^\markup\smallCaps Chorus. b4. 8 | c2. 4
  d4 c bes c | a2. r4 | g2 f4 d | c4(f) a2 | c4 bes d, e | f2. r4
}

alto = \relative {
  \autoBeamOff
  c'2 b4. 8 | c2. a4 | d4 4 c bes | a2. r4 | c2 b4 bes | a2. f'4
  f4 e d f | e2. r4 | a2 bes4 a | a2. c,4 | c4 bes a c | f2. r4
  b,2 d4 b | a2.\fermata c4 | c4 bes bes bes | a2. r4 | f'2 4. 8 | f2. 4
  f4 4 e g | f2. r4 | d2 4 bes | a2 c | e4 4 d c | c2. r4
}

tenor = \relative {
  \autoBeamOff
  f2 r | f2. r4 | bes,2 r | f'2. r4 | e2 f4 g | f2. r4
  g,2 2 | c2. r4 | f2 r | f2. r4 | c4 r c r | f,2. r4
  bes1 | f'2.\fermata r4 | c4 4 4 4 | c2. r4 | a'2 gis4. 8 | a2. 4
  bes4 c c c | c2. r4 | bes2 4 f | f2 2 | g4 4 bes bes | a2. r4
}

bass = \relative {
  \autoBeamOff
  f2 r | f2. r4 | bes,2 r | f'2. r4 | e2 f4 g | f2. r4
  g,2 2 | c2. r4 | f2 r | f2. r4 | c4 r c r | f,2. r4
  bes1 | f2.\fermata r4 | c'4 4 4 4 | f,2. r4 | f'2 4. 8 | f2. 4
  bes4 a g e | f2. r4 | bes,2 4 4 | f'2 2 | c4 4 4 4 | f2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O sin -- ner, come to Christ, the liv -- ing Way;
  Still He is plead -- ing: why not come to -- day?
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  No long -- er wait, my bro -- ther; e -- ven now
  God's Spi -- rit seeks an en -- trance to your heart;
  Come to the cross, and to the Sa -- viour bow;
  Un -- bar the door: make haste, lest He de -- part.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  No long -- er wait, O sad and trou -- bled soul,
  His pard -- 'ning grace He of -- fers free to all;
  O wea -- ry one, that grace will make you whole:
  Oh, why not hear the lov -- ing Sa -- viour's call.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No long -- er wait; the Lord your God hath said,
  "\"I" will not strive for e -- ver with your "heart\";"
  Oh come, ere yet the spark of life has fled,
  And thou hast failed to choose the bet -- ter part.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "No " long "er " "wait, " "my " bro "ther; " e "ven " "now "
  "\nGod's " Spi "rit " "seeks " "an " en "trance " "to " "your " "heart; "
  "\nCome " "to " "the " "cross, " "and " "to " "the " Sa "viour " "bow; "
  "\nUn" "bar " "the " "door: " "make " "haste, " "lest " "He " de "part. "
  "\nO " sin "ner, " "come " "to " "Christ, " "the " liv "ing " "Way; "
  "\nStill " "He " "is " plead "ing: " "why " "not " "come " to "day?\n"

  \set stanza = "2."
  "\nNo " long "er " "wait, " "O " "sad " "and " trou "bled " "soul, "
  "\nHis " pard "'ning " "grace " "He " of "fers " "free " "to " "all; "
  "\nO " wea "ry " "one, " "that " "grace " "will " "make " "you " "whole: "
  "\nOh, " "why " "not " "hear " "the " lov "ing " Sa "viour's " "call. "
  "\nO " sin "ner, " "come " "to " "Christ, " "the " liv "ing " "Way; "
  "\nStill " "He " "is " plead "ing: " "why " "not " "come " to "day?\n"

  \set stanza = "3."
  "\nNo " long "er " "wait; " "the " "Lord " "your " "God " "hath " "said, "
  "\n\"I " "will " "not " "strive " "for " e "ver " "with " "your " "heart\"; "
  "\nOh " "come, " "ere " "yet " "the " "spark " "of " "life " "has " "fled, "
  "\nAnd " "thou " "hast " "failed " "to " "choose " "the " bet "ter " "part. "
  "\nO " sin "ner, " "come " "to " "Christ, " "the " liv "ing " "Way; "
  "\nStill " "He " "is " plead "ing: " "why " "not " "come " to "day? "
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
