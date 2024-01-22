\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Who, Who will go?"
  subtitle    = "Sankey No. 784"
  subsubtitle = "C. C. No. 152"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. Clark Waring."
  meter       = \markup\smallCaps "10s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*5
  \textMark \markup { \box \bold "D" } s2.*5
  \textMark \markup { \box \bold "E" } s2.*5
  \textMark \markup { \box \bold "F" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4. b8[c] d | c4. a | f4 e8 f4 g8 | a4.~4 r8 |
  bes4. 8[c] d | c4. a | 4 g8 f4 a8 | g4.~4 r8 |
  c4. b8[c] d | c4. a | f4 e8 f4 g8 | a4.~4 r8 |bes4. 8[c] d |
  c4. a | g4 a8 bes4 e,8 | f4.~4 r8 |
  \section \sectionLabel \markup\smallCaps Refrain.
  g4. e4 g8 | c4.~4 g8 |
  e'4.~8[d] g, | c4.~4 8 | bes4 8 8[a] g | a4.~4 8 | g4 8 8[f] e |
  f4.~4. | 4. bes8[c] d | c4.~8[a] bes | a4.~8[g] a | f4.~4. |
}

alto = \relative {
  \autoBeamOff
  a'4. gis8[a] gis |a4. f | 4 c8 4 e8 | f4.~4 r8 |
  f4. 4 8 | 4. 4. | 4 8 4 8 | e4.~4 r8 |
  f4. 4 8 | 4. c | 4 8 4 e8 | f4.~4 r8 | 4. 4 8 |
  f4. 4. | 4 8 e4 c8 | 4.~4 r8 \section | e4. c4 e8 | 4.~4 8 |
  g4.~8[f] f | e4.~4 8 | 4 8 c4 8 | 4.~4 f8 | e4 8 c4 8 |
  ees4.~4. | d4. 8[e] f | 4.~4 8 | 4.(e4) c8 | 4.~4. |
}

tenor = \relative {
  \autoBeamOff
  c'4. d8[c] b | c4. c | a4 g8 a4 c8 | 4.~4 r8 |
  bes4. 8[a] bes | a4. a | b4 8 4 8 | c4.(bes4) r8 |
  a4. gis8[a] bes | a4. f | a4 g8 a4 c8 | 4.~4 r8 | bes4. 8[a] bes |
  a4. a | d4 8 4 bes8 | a4.~4 r8 \section | c4. g4 c8 | g4.~4 c8 |
  c4.(b4) 8 | c4.~4 g8 | 4 8 8[f] e | f4.~4 c'8 | bes4 8 8[a] g |
  c4.~4. | bes f4 bes8 | a4.~8[c] d | c4.~8[bes] c | a4.~4. |
}

bass = \relative {
  \autoBeamOff
  f4. 4 8 | 4. 4. | c4 8 4 8 | f4.~4 r8 |
  d4. 8[c] bes | c4. d | g4 8 g,4 8 | c4.~4 r8 |
  f4. 4 8 | 4. 4. | c4 8 4 8 | f4.~4 r8 | d4. 8[c] bes |
  c4. d | bes4 a8 g4 c8 | f4.~4 r8 \section | c4. 4 8 | 4.~4 8 |
  g'4.~4 8 | c,4.~4 8 | 4 8 4 8 | f4.~4 8 | c4 8 4 bes8 |
  a4.~4. | bes4. 4 8 | c4.~4 g8 | c4.~4 8 | f4.~4. |
}

chorus = \lyricmode {
  
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Who, who will go to bind the bro -- ken heart?
  Bur -- dened with grief and hea -- vy in its woe,
  Long -- ing to find in life some bet -- ter part:
  Who, who will go to bind the bro -- ken heart?
  Lord, here am I; __ send me, __ send me!
  To bind the bro -- ken heart,
  To find the bet -- ter part;
  Lord, here am I; __ send me, __ send me! __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Who, who will go to wipe a -- way the tear
  From eyes long used to sor -- row's bri -- ny flow?
  To com -- fort those who stand be -- side hope's bier:
  Who, who will go to wipe a -- way the tear?
  Lord, here am I; __ send me, __ send me!
  To wipe a -- way the tear,
  To stand be -- side hope's bier:
  Lord, here am I; __ send me, __ send me! __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Who, who will go to seek the lambs a -- stray?
  To lift the fall -- en where he lies so low,
  In -- to the sun -- light of the heaven -- ly way:
  Who, who will go to seek the lambs a -- stray?
  Lord, here am I; __ send me, __ send me!
  To seek the lambs a -- stray,
  To point the heaven -- ly way:
  Lord, here am I; __ send me, __ send me! __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Who, " "who " "will " "go " "to " "bind " "the " bro "ken " "heart? "
  "\nBur" "dened " "with " "grief " "and " hea "vy " "in " "its " "woe, "
  "\nLong" "ing " "to " "find " "in " "life " "some " bet "ter " "part: "
  "\nWho, " "who " "will " "go " "to " "bind " "the " bro "ken " "heart? "
  "\nLord, " "here " "am " "I; "  "send " "me, "  "send " "me! "
  "\nTo " "bind " "the " bro "ken " "heart, "
  "\nTo " "find " "the " bet "ter " "part; "
  "\nLord, " "here " "am " "I; "  "send " "me, "  "send " "me!\n" 

  \set stanza = "2."
  "\nWho, " "who " "will " "go " "to " "wipe " a "way " "the " "tear "
  "\nFrom " "eyes " "long " "used " "to " sor "row's " bri "ny " "flow? "
  "\nTo " com "fort " "those " "who " "stand " be "side " "hope's " "bier: "
  "\nWho, " "who " "will " "go " "to " "wipe " a "way " "the " "tear? "
  "\nLord, " "here " "am " "I; "  "send " "me, "  "send " "me! "
  "\nTo " "wipe " a "way " "the " "tear, "
  "\nTo " "stand " be "side " "hope's " "bier: "
  "\nLord, " "here " "am " "I; "  "send " "me, "  "send " "me!\n" 

  \set stanza = "3."
  "\nWho, " "who " "will " "go " "to " "seek " "the " "lambs " a "stray? "
  "\nTo " "lift " "the " fall "en " "where " "he " "lies " "so " "low, "
  "\nIn" "to " "the " sun "light " "of " "the " heaven "ly " "way: "
  "\nWho, " "who " "will " "go " "to " "seek " "the " "lambs " a "stray? "
  "\nLord, " "here " "am " "I; "  "send " "me, "  "send " "me! "
  "\nTo " "seek " "the " "lambs " a "stray, "
  "\nTo " "point " "the " heaven "ly " "way: "
  "\nLord, " "here " "am " "I; "  "send " "me, "  "send " "me! " 
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

#(set-global-staff-size 19)

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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
