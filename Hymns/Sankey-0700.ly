\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Temperance Bells."
  subtitle    = "Sankey No. 700"
  subsubtitle = "Sankey 880 No. 501"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. Stevenson."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "8.7.s"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8. a16 | b4 4 8[c] d[e] | d4 b2 a8. b16 | c4 a b g | a2. \bar "|" \break
  g8. a16 | b4 4 8[c] d[e] | d4 b2 d8. c16 | b4 g b a | g2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  d'8. c16 | b2. a8. b16 | c2. b8. a16 | b4 e d cis | d2. \bar "|" \break
  b8. c16 | d2. c8. b16 | c2. b8. a16 | g4 b d fis, | g2.
}

alto = \relative {
  \autoBeamOff
  d'8. 16 | g4 g g g | g4 2 fis8. g16 | a4 fis g g | fis2.
  d8. 16 | g4 g g g | 4 2 fis8. a16 | g4 d g fis | g2. \section
  b8. a16 | g2. fis8. g16 | a2. g8. fis16 | g4 g fis e | fis2.
  g8. a16 | b2. a8. g16 | e2. 8. 16 | d4 g fis d | d2.
}

tenor = \relative {
  \autoBeamOff
  b8. c16 | d4 d d8[e] b[c] | b4 d2 8. 16 | 4 4 4 cis | d2.
  b8. c16 | d4 d d8[e] b[c] | b4 d2 8. 16 | 4 b d c | b2. \section
  r4 | r d8. 16 4 r | r d8. 16 4 8. 16 | 4 b a a | 2.
  r4 | r d8. 16 4 r | r g,8. 16 4 c8. 16 | b4 d a c | b2.
}

bass = \relative {
  \autoBeamOff
  g8. 16 | 4 4 4 4 | 4 2 d8. 16 | 4 4 g e | d2.
  g8. 16 4 4 4 4 | 4 2 d8. 16 | g4 4 d d | g,2. \section
  r4 | r g'8. 16 4 r | r d8. 16 4 8. 16 | g4 g a a, | d2.
  r4 | r g8. 16 4 r | r c,8. 16 4 8. 16 | d4 4 4 4 | g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Hear the bells, joy -- ous bells,
  Chime the an -- them of the free;
  hear the bells, mer -- ry bells,
  Sound the tem -- p'rance ju -- bi -- lee!
}

chorusMen = \lyricmode {
  \repeat unfold 30 _
  Hear the bells, joy -- ous bells,
  _ _ _ _ _ _ _
  hear the bells, mer -- ry bells,
  _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark! the tem -- p'rance bells are ring -- ing,
  Joy -- ous mu -- sic fills the air;
  Strength and hope their tones are bring -- ing
  To the homes where dwelt des -- pair.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Long the ty -- rant foe hath ta -- ken
  Cher -- ished loved ones for his own;
  Now his cru -- el power is sha -- ken,
  Soon will fall his tott -- 'ring throne.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bro -- thers, come! the hosts are form -- ing!
  Let us join with -- out de -- lay,
  Bright the hills with tints of morn -- ing,
  Dawn -- ing of a bet -- ter day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hark! " "the " tem "p'rance " "bells " "are " ring "ing, "
  "\nJoy" "ous " mu "sic " "fills " "the " "air; "
  "\nStrength " "and " "hope " "their " "tones " "are " bring "ing "
  "\nTo " "the " "homes " "where " "dwelt " des "pair. "
  "\nHear " "the " "bells, " joy "ous " "bells, "
  "\nChime " "the " an "them " "of " "the " "free; "
  "\nhear " "the " "bells, " mer "ry " "bells, "
  "\nSound " "the " tem "p'rance " ju bi "lee!\n"

  \set stanza = "2."
  "\nLong " "the " ty "rant " "foe " "hath " ta "ken "
  "\nCher" "ished " "loved " "ones " "for " "his " "own; "
  "\nNow " "his " cru "el " "power " "is " sha "ken, "
  "\nSoon " "will " "fall " "his " tott "'ring " "throne. "
  "\nHear " "the " "bells, " joy "ous " "bells, "
  "\nChime " "the " an "them " "of " "the " "free; "
  "\nhear " "the " "bells, " mer "ry " "bells, "
  "\nSound " "the " tem "p'rance " ju bi "lee!\n"

  \set stanza = "3."
  "\nBro" "thers, " "come! " "the " "hosts " "are " form "ing! "
  "\nLet " "us " "join " with "out " de "lay, "
  "\nBright " "the " "hills " "with " "tints " "of " morn "ing, "
  "\nDawn" "ing " "of " "a " bet "ter " "day. "
  "\nHear " "the " "bells, " joy "ous " "bells, "
  "\nChime " "the " an "them " "of " "the " "free; "
  "\nhear " "the " "bells, " mer "ry " "bells, "
  "\nSound " "the " tem "p'rance " ju bi "lee! "
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
            \addlyrics \wordsMidi
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

#(set-global-staff-size 20)

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
