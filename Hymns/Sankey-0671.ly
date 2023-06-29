\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Awake! the Trumpet is Sounding!"
  subtitle    = "Sankey No. 671"
  subsubtitle = "Sankey 880 No. 442"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. F. Sherwin."
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

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2
  \textMark \markup { \box \bold "C" }    s1*3 s2
  \textMark \markup { \box \bold "D" } s2 s1*3
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | bes4 8. 16 4 8. 16 | d2 bes4 d | ees4 d8. 16 \bar "|" \break
  c4 bes8. 16 | c2 r4 f, | c'4 8. 16 d4 8. 16 |
  ees2 d4 c | bes a8 bes d4 c8. bes16 | 2 r4
  \section \sectionLabel \markup\smallCaps Chorus.
  f4 | a4 8. 16 \bar "|" \break
  bes4 8. 16 | c4.(a8) f4 bes | a4 bes8. 16 c4 b | c2. d4 |
  ees4 8. 16 d4 c8. 16 | bes2 a4 g | f8. 16 bes4 4. a8 | bes2.
}

alto = \relative {
  \autoBeamOff
  f'4 | d4 8. 16 4 8. 16 | f2 d4 f | g f8. 16
  f4 d8. e16 | << {d2 r4} \new Voice { \teeny r4 f8. 16 4} >> f4 | 4 8. 16 4 aes8. 16 |
  g2 f4 e | d c8 d f4 ees8. d16 | d2 r4 \section f | ees4 8. 16
  d4 8. 16 | f2 4 d | e d8. 16 f4 4 | 2. 4 |
  g4 8. 16 f4 ees8. 16 | d2 f4 ees | d8. 16 f4 ees4. 8 | d2.
}

tenor = \relative {
  \autoBeamOff
  f4 | 4 8. 16 4 8. 16 | bes2 4 4 | 4 8. 16
  c4 d8. bes16 | a2 r4 f | a4 8. 16 b4 8. 16 |
  bes2 4 g | f4 8 8 bes4 a8. bes16 | bes2 r4 \section f4 | c'4 8. 16
  bes4 8. 16 | a4.(c8) a4 bes | c4 bes8. 16 a4 gis | a2. bes4 |
  bes4 8. 16 4 a8. 16 | bes2 4 4 | 8. 16 d4 c4. 8 | bes2.
}

bass = \relative {
  \autoBeamOff
  f4 | bes,4 8. 16 4 8. 16 | bes'2 bes,4 bes' | 4 8. 16
  a4 g8. 16 | f2 r4 f | f4 8. 16 bes4 8. 16 |
  ees,2 bes4 ees | f4 8 8 4 8. bes,16 | 2 r4 \section  f' | 4 8. 16
  f4 8. 16 | 2 4 4 | 4 8. 16 4 4 | 2. bes4 |
  ees,4 g8. 16 bes4 f8. 16 | g2 d4 ees | f8. 16 4 4. 8 | bes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  No truce while the foe is un -- con -- queredl
  No lay -- ing the ar -- mour down!
  No peace till the bat -- tle is end -- ed,
  And vic -- to -- ry wins the crown!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- wake! for the trum -- pet is sound -- ing!
  A -- wake to its call, and o -- bey!
  The voice of our Lead -- er cries,
  "\"On" -- "ward!\"" Oh, let us no -- long -- er de -- lay!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Then gird on the sword of the Spi -- rit,
  With hel -- met, and breast -- plate, and shield;
  And val -- iant -- ly fol -- low your Cap -- tain,
  De -- ter -- mined you nev -- er will yield!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Then for -- ward! O ar -- my of Zi -- on,
  With hearts that are loy -- al and brave!
  Stand firm by the Cross and its ban -- ner,
  And trust in the "\"Migh" -- ty to "save!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "wake! " "for " "the " trum "pet " "is " sound "ing! "
  "\nA" "wake " "to " "its " "call, " "and " o "bey! "
  "\nThe " "voice " "of " "our " Lead "er " "cries, "
  "\n\"On" "ward!\" " "Oh, " "let " "us " no long "er " de "lay! "
  "\nNo " "truce " "while " "the " "foe " "is " un con "queredl "
  "\nNo " lay "ing " "the " ar "mour " "down! "
  "\nNo " "peace " "till " "the " bat "tle " "is " end "ed, "
  "\nAnd " vic to "ry " "wins " "the " "crown!\n"

  \set stanza = "2."
  "\nThen " "gird " "on " "the " "sword " "of " "the " Spi "rit, "
  "\nWith " hel "met, " "and " breast "plate, " "and " "shield; "
  "\nAnd " val iant "ly " fol "low " "your " Cap "tain, "
  "\nDe" ter "mined " "you " nev "er " "will " "yield! "
  "\nNo " "truce " "while " "the " "foe " "is " un con "queredl "
  "\nNo " lay "ing " "the " ar "mour " "down! "
  "\nNo " "peace " "till " "the " bat "tle " "is " end "ed, "
  "\nAnd " vic to "ry " "wins " "the " "crown!\n"

  \set stanza = "3."
  "\nThen " for "ward! " "O " ar "my " "of " Zi "on, "
  "\nWith " "hearts " "that " "are " loy "al " "and " "brave! "
  "\nStand " "firm " "by " "the " "Cross " "and " "its " ban "ner, "
  "\nAnd " "trust " "in " "the " "\"Migh" "ty " "to " "save!\" "
  "\nNo " "truce " "while " "the " "foe " "is " un con "queredl "
  "\nNo " lay "ing " "the " ar "mour " "down! "
  "\nNo " "peace " "till " "the " bat "tle " "is " end "ed, "
  "\nAnd " vic to "ry " "wins " "the " "crown! "
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
