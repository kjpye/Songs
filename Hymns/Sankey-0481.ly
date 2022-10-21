\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am Coming."
  subtitle    = "Sankey No. 481"
  subsubtitle = "Sankey 880 No. 354"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Allie Starbright."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4.*12
  \mark \markup { \box "B" } s4.*12
  \mark \markup { \box "C" } s4.*12
  \mark \markup { \box "D" } s4.*12
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8 f[g] | a4. a a8[bes] b | c4. 4. 8[d] a | c4.~4 bes8 8[a] g | a4.~4. \bar "|" \break c,8[f] g |
  a4. 4. 8[bes] b | c4. 4. 8[d] a | c4.~4 bes8 8[a] g | f4.~4. \bar "|" \break a8^\markup\smallCaps Chorus. [bes] c |
  d4. 4. f8[e] d | 4. c c8[bes] a | g4.~4 a8 bes[c] d | c4.(a) \bar "|" \break 8[bes] c |
  d4. 4. f8[e] d | 4. c c8[bes] a | g4.~4 bes8 8[a] g | f4.~4.
}

alto = \relative {
  \autoBeamOff
  c'8 f c | f4. 4. 4 8 | 4. 4. 4 8 | e4.~4 g8 8[f] e | f4.~4. c4 8 |
  f4. 4. 4 8 | 4. 4. 4 8 | e4.~4 g8 g[f] e | f4.~4. 8[g] a |
  bes4. f4. 4 8 | 4. 4. a8[g] f | e4.~4 f8 g[a] bes | a4.(f4.) 4 8 |
  f4. 4. 4 8 | 4. 4. a8[g] f | e4.~4 g8 8[f] e | f4.~4.
}

tenor = \relative {
  \autoBeamOff
  a4 bes8 | c4. 4. f,8 g gis | a4. 4. 4 8 | g4.~4 c8 4 8 | 4.~4. a4 bes8 |
  c4. 4. f,8[g] gis | a4. 4. 4 8 | g4.~4 c8 4 bes8 | a4.~4. f4 8 |
  f4. bes d8[c] bes | 4. aes c4 8 | 4.~4 8 4 8 | 4.~4. 4 8 |
  bes4. 4. d8[c] bes | 4. a c4 8 | 4.~4 8 4 bes8 | a4.~4.
}

bass = \relative {
  \autoBeamOff
  f4 8 | 4. 4. 4 8 | 4. 4. 4 8 | c4.~4 8 4 8 | f4.~4. 4 8 |
  f4. 4. 4 8 | 4. 4. 4 8 | c4.~4 8 4 8 | f4.~4. 4 8 |
  bes,4. 4. 4 8 | f'4. 4. 4 8 | c4.~4 8 4 8 | f4.~4. 8[g] a |
  bes4. bes,4. 4 8 | f'4. 4 .4 8 | c4.~4 8 4 8 | f4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I am com -- ing, I am com -- ing,
  Com -- ing, Sa -- viour, to be blest;
  I am com -- ing, I am com -- ing,
  Com -- ing, Lord, to Thee for rest!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Lone and wea -- ry, sad and drea -- ry,
  Lord, I would Thy call o -- bey;
  Thee be -- liev -- ing, Christ re -- ceiv -- ing,
  I would come to Thee to -- day,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou, the Ho -- ly, meek and low -- ly,
  Je -- sus, un -- to Thee I come;
  Keep me e -- ver, let me ne -- ver
  From Thy bles -- sed keep -- ing roam.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Here a -- bid -- ing, in Thee hid -- ing,
  Seeks my wea -- ry soul to rest;
  Till the dawn -- ing of the morn -- ing,
  When I wake a -- mong the blest.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be Thou near me, keep and cheer me,
  Thro' life's dark and storm -- y way;
  Turn my sad -- ness in -- to glad -- ness,
  Turn my dark -- ness in -- to day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lone " "and " wea "ry, " "sad " "and " drea "ry, "
  "\nLord, " "I " "would " "Thy " "call " o "bey; "
  "\nThee " be liev "ing, " "Christ " re ceiv "ing, "
  "\nI " "would " "come " "to " "Thee " to "day, "
  "\nI " "am " com "ing, " "I " "am " com "ing, "
  "\nCom" "ing, " Sa "viour, " "to " "be " "blest; "
  "\nI " "am " com "ing, " "I " "am " com "ing, "
  "\nCom" "ing, " "Lord, " "to " "Thee " "for " "rest!\n"

  \set stanza = "2."
  "\nThou, " "the " Ho "ly, " "meek " "and " low "ly, "
  "\nJe" "sus, " un "to " "Thee " "I " "come; "
  "\nKeep " "me " e "ver, " "let " "me " ne "ver "
  "\nFrom " "Thy " bles "sed " keep "ing " "roam. "
  "\nI " "am " com "ing, " "I " "am " com "ing, "
  "\nCom" "ing, " Sa "viour, " "to " "be " "blest; "
  "\nI " "am " com "ing, " "I " "am " com "ing, "
  "\nCom" "ing, " "Lord, " "to " "Thee " "for " "rest!\n"

  \set stanza = "3."
  "\nHere " a bid "ing, " "in " "Thee " hid "ing, "
  "\nSeeks " "my " wea "ry " "soul " "to " "rest; "
  "\nTill " "the " dawn "ing " "of " "the " morn "ing, "
  "\nWhen " "I " "wake " a "mong " "the " "blest. "
  "\nI " "am " com "ing, " "I " "am " com "ing, "
  "\nCom" "ing, " Sa "viour, " "to " "be " "blest; "
  "\nI " "am " com "ing, " "I " "am " com "ing, "
  "\nCom" "ing, " "Lord, " "to " "Thee " "for " "rest!\n"

  \set stanza = "4."
  "\nBe " "Thou " "near " "me, " "keep " "and " "cheer " "me, "
  "\nThro' " "life's " "dark " "and " storm "y " "way; "
  "\nTurn " "my " sad "ness " in "to " glad "ness, "
  "\nTurn " "my " dark "ness " in "to " "day. "
  "\nI " "am " com "ing, " "I " "am " com "ing, "
  "\nCom" "ing, " Sa "viour, " "to " "be " "blest; "
  "\nI " "am " com "ing, " "I " "am " com "ing, "
  "\nCom" "ing, " "Lord, " "to " "Thee " "for " "rest! "
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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
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
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
          >>
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
