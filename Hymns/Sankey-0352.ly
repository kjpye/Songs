\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come to the Fountain!"
  subtitle    = "Sankey No. 352"
  subsubtitle = "Sankey 880 No. 475"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
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
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 a8. bes16 c4 a8. g16
  f2 c4 r
  f4 e8. f16 g4 bes8. a16
  g2. r4
  c4 a8. bes16 c4 a8. g16 % B
  f2 c4 r
  f4 e8. f16 g4 a8. g16
  f2. r4
  bes4^\markup\smallCaps Chorus. 8. 16 2 % C
  a4 8. 16 2
  d4 8. 16 c4 bes8. a16
  g4 b8. 16 c2
  c4 a8. bes16 c4 a8. g16 % D
  f2 c4 r
  f4 e8. f16 g4 a8. g16
  f2. r4
}

alto = \relative {
  \autoBeamOff
  a'4 f8. g16 a4 f8. c16
  c2 a4 r
  c4 8. 16 e4 g8. f16
  e2. r4
  f4 8. g16 a4 f8. c16 % B
  c2 a4 r
  c4 8. 16 e4 f8. c16
  c2. r4
  f4 8. 16 2 % C
  f4 8. 16 2
  f4 8. 16 4 e8. f16
  g4 f8. 16 e2
  f4 8. g16 a4 f8. c16 % D
  c2 a4 r
  c4 8. 16 e4 f8. c16
  c2. r4
}

tenor = \relative {
  \autoBeamOff
  c'4 8. 16 4 8. bes16
  a2 f4 r
  a4 g8. a16 c4 8. 16
  c2. r4
  a4 c8. 16 4 8. bes16 % B
  a2 f4 r
  a4 g8. a16 bes4 c8. bes16
  a2. r4
  d4 8. 16 2 % C
  c4 8. 16 2
  bes4 8. 16 c4 8. 16
  c4 g8. 16 2
  a4 c8. 16 4 8. bes16 % D
  a2 f4 r
  a4 g8. a16 bes4 c8. bes16
  a2. r4
}

bass = \relative {
  \autoBeamOff
  f4 8. 16 4 8. 16
  f2 4 r
  f4 8. 16 c4 e8. f16
  c2. r4
  f4 8. 16 4 8. 16 % B
  f2 4 r
  f4 8. 16 c4 8. 16
  f2. r4
  bes,4 8. 16 2 % C
  f'4 8. 16 2
  bes4 8. 16 a4 g8. f16
  e4 d8. 16 c2
  f4 8. 16 4 8. 16 % D
  f2 4 r
  f4 8. 16 c4 8. 16
  f2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Haste thou a -- way!— why wilt thou stay?
  Risk not thy soul on a mo -- ment's de -- lay;
  Je -- sus is wait -- ing to save thee,
  Mer -- cy is plead -- ing to -- day!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Come with thy sins to the foun -- tain,
  Come with thy bur -- den of grief;
  Bu -- ry then deep in its wa -- ters—
  There thou wilt find a re -- lief.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come as thou art to the foun -- tain,—
  Je -- sus is wait -- ing for thee;
  What tho' thy sins be like crim -- son?—
  White as te snow they shall be!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  These are the words of the Sa -- viour:
  They who re -- pent and be -- lieve,
  They who are wil -- ling to trust Him,
  Life at His hands shall re -- ceive.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come and be healed at the foun -- tain,—
  List to the peace- speak -- ing voice;
  O -- ver a sin -- ner re -- turn -- ing,
  Now let the an -- gels re -- joice!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come " "with " "thy " "sins " "to " "the " foun "tain, "
  "\nCome " "with " "thy " bur "den " "of " "grief; "
  "\nBu" "ry " "then " "deep " "in " "its " wa "ters— "
  "\nThere " "thou " "wilt " "find " "a " re "lief. "
  "\nHaste " "thou " a "way!— " "why " "wilt " "thou " "stay? "
  "\nRisk " "not " "thy " "soul " "on " "a " mo "ment's " de "lay; "
  "\nJe" "sus " "is " wait "ing " "to " "save " "thee, "
  "\nMer" "cy " "is " plead "ing " to "day! "

  \set stanza = "2."
  "\nCome " "as " "thou " "art " "to " "the " foun "tain,— "
  "\nJe" "sus " "is " wait "ing " "for " "thee; "
  "\nWhat " "tho' " "thy " "sins " "be " "like " crim "son?— "
  "\nWhite " "as " "te " "snow " "they " "shall " "be! "
  "\nHaste " "thou " a "way!— " "why " "wilt " "thou " "stay? "
  "\nRisk " "not " "thy " "soul " "on " "a " mo "ment's " de "lay; "
  "\nJe" "sus " "is " wait "ing " "to " "save " "thee, "
  "\nMer" "cy " "is " plead "ing " to "day! "

  \set stanza = "3."
  "\nThese " "are " "the " "words " "of " "the " Sa "viour: "
  "\nThey " "who " re "pent " "and " be "lieve, "
  "\nThey " "who " "are " wil "ling " "to " "trust " "Him, "
  "\nLife " "at " "His " "hands " "shall " re "ceive. "
  "\nHaste " "thou " a "way!— " "why " "wilt " "thou " "stay? "
  "\nRisk " "not " "thy " "soul " "on " "a " mo "ment's " de "lay; "
  "\nJe" "sus " "is " wait "ing " "to " "save " "thee, "
  "\nMer" "cy " "is " plead "ing " to "day! "

  \set stanza = "4."
  "\nCome " "and " "be " "healed " "at " "the " foun "tain,— "
  "\nList " "to " "the " peace speak "ing " "voice; "
  "\nO" "ver " "a " sin "ner " re turn "ing, "
  "\nNow " "let " "the " an "gels " re "joice! "
  "\nHaste " "thou " a "way!— " "why " "wilt " "thou " "stay? "
  "\nRisk " "not " "thy " "soul " "on " "a " mo "ment's " de "lay; "
  "\nJe" "sus " "is " wait "ing " "to " "save " "thee, "
  "\nMer" "cy " "is " plead "ing " to "day! "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
