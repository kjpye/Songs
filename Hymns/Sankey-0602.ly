\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "True-Hearted, Whole-Hearted."
  subtitle    = "Sankey No. 602"
  subsubtitle = "N. H. No. 34"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. Havergal."
  meter       = \markup\smallCaps "11.10"
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
  \textMark \markup { \box \bold "C" } s2.*4
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*5
  \textMark \markup { \box \bold "F" } s2.*5
  \textMark \markup { \box \bold "G" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4. c4 f8 | a4. f4 a8 | c4. d8[c] b | c4. a4 r8 |
  bes4. c4 8 | d4. c4 8 | b4. a4 g8 | c4.~4 r8 |
  f,4. c4 f8 | a4. f4 a8 | c4. d8[c] b | c4. a4 r8 |
  bes4. c4 8 | d4. e4 e8 | a,4. 4 g8 | f4.~4 r8 |
  \section \sectionLabel \markup\smallCaps Chorus.
  c'4.~8 b c | d4. c4 r8 | a4.~8 gis a | bes4. a4 r8 | d4.~8 c b |
  c4. a4 8 | b4.~8 a b | c4.~4 r8 | c4.~8 b c | d4. c4 r8 |
  a4.~8 gis a | bes4. a4 r8 | d4.~8 c b | c4. f,4 bes8 | a4. 4 g8 | f4.~4 r8 |
}

alto = \relative {
  \autoBeamOff
  c'4. 4 8 | f4. 4 8 | a4. bes8[a] gis | a4. f4 r8 |
  f4. 4 8 | 4. 4 8 | 4. 4 8 | e4.~4 r8 |
  c4. 4 8 | f4. 4 8 | a4. bes8[a] gis | a4. f4 r8 |
  f4. 4 8 | 4. bes4 a8 | f4. e4 8 | f4.~4 r8 \section |
  a4.~8 gis a | bes4. a4 r8 | f4.~8 8 8 | 4. 4 r8 | bes4.~8 a gis |
  a4. f4 8 | g4.(f8) 8 8 | e4.(bes'4) r8 | a4.~8 gis a | bes4. a4 r8 |
  f4.~8 8 8 | 4. 4 r8 | bes4.~8 a gis | a4. f4 8 | 4. e4 8 | f4.~4 r8 |
}

tenor = \relative {
  \autoBeamOff
  a4. 4 8 | c4. a4 c8 | f4. 4 d8 | f4. c4 r8 |
  bes4. a4 8 | bes4. c4 8 | d4. c4 b8 | c4.~4 r8 |
  a4. 4 8 | c4. a4 c8 | f4. 4 d8 | f4. c4 r8 |
  bes4. a4 8 | bes4. c4 8 | c4. 4 bes8 | a4.~4 r8 \section |
  r4. c8 d c | f4. 4 r8 | r4. c8 b c | d4. c4 r8 | r4. d8 8 8 |
  f4. c4 r8 | r4. g8 b d | c4.~4 r8 | r4. c8 d c | f4. 4 r8 |
  r4. c8 b c | d4. c4 r8 | r4. f8 8 8 | 4. c4 d8 | c4. 4 bes8 | a4.~4 r8 |
}

bass = \relative {
  \autoBeamOff
  f4. 4 8 | 4. 4 8 | 4. 4 8 | 4. 4 r8 |
  d4. f4 8 | bes4. a4 8 | g4. 4 8 | c,4.~4 r8 |
  f4. 4 8 | 4. 4 8 | 4. 4 8 | 4. 4 r8 |
  d4. f4 8 | bes4. g4 f8 | c'4. c,4 8 | f4.~4 r8 \section |
  r4. f8 8 8 | 4. 4 r8 | r4. f8 8 8 | 4. 4 r8 | r4. f8 8 8 |
  f4. 4 r8 | r4. g8 8 8 | c,4.~4 r8 | r4. f8 8 8 | 4. 4 r8 |
  r4. f8 8 8 | 4. 4 r8 | r4. f8 8 8 | 4. a4 bes8 | c4. c,4 8 | f4.~4 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Peal __ out the watch -- word! si -- lence it nev -- er!
  Song __ of our spi -- rits re -- joi -- cing and free;
  Peal out the watch -- word! loy -- al for ev -- er,
  King of our lives, by Thy grace we will be!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  Peal _ _ _ _ si -- lence _ _ _
  Song _ _ _ _ joy -- ful _ _
  Peal _ _ _ _ loy -- al _ _ _
  King _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  True -- heart -- ed, whole -- heart -- ed, faith -- ful and loy -- al,
  King of our lives, by Thy grace we will be! __
  Un -- der the stand -- ard ex -- alt -- ed and roy -- al,
  String in Thy strength we will bat -- tle for Thee. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  True -- heart -- ed, whole -- heart -- ed, full -- est al -- le -- giance
  Yield -- ing hence -- forth to our glo -- ri -- ous King: __
  Val -- iant en -- deav -- our and lov -- ing o -- be -- dience.
  Free -- ly and joy -- ous -- ly now would we bring. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  True -- heart -- ed, whole -- heart -- ed, Sa -- viour all -- glo -- rious!
  Take Thy great pow -- er and reign there a -- lone. __
  O -- ver our wills amd af -- fec -- tions vic -- to -- rious,
  Free -- ly sur -- ren -- ered and whol -- ly Thine own. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "True" heart "ed, " whole heart "ed, " faith "ful " "and " loy "al, "
  "\nKing " "of " "our " "lives, " "by " "Thy " "grace " "we " "will " "be! " 
  "\nUn" "der " "the " stand "ard " ex alt "ed " "and " roy "al, "
  "\nString " "in " "Thy " "strength " "we " "will " bat "tle " "for " "Thee. " 
  "\nPeal "  "out " "the " watch "word! " si "lence " "it " nev "er! "
  "\nSong "  "of " "our " spi "rits " re joi "cing " "and " "free; "
  "\nPeal " "out " "the " watch "word! " loy "al " "for " ev "er, "
  "\nKing " "of " "our " "lives, " "by " "Thy " "grace " "we " "will " "be!\n"

  \set stanza = "2."
  "\nTrue" heart "ed, " whole heart "ed, " full "est " al le "giance "
  "\nYield" "ing " hence "forth " "to " "our " glo ri "ous " "King: " 
  "\nVal" "iant " en deav "our " "and " lov "ing " o be "dience. "
  "\nFree" "ly " "and " joy ous "ly " "now " "would " "we " "bring. " 
  "\nPeal "  "out " "the " watch "word! " si "lence " "it " nev "er! "
  "\nSong "  "of " "our " spi "rits " re joi "cing " "and " "free; "
  "\nPeal " "out " "the " watch "word! " loy "al " "for " ev "er, "
  "\nKing " "of " "our " "lives, " "by " "Thy " "grace " "we " "will " "be!\n"

  \set stanza = "3."
  "\nTrue" heart "ed, " whole heart "ed, " Sa "viour " all glo "rious! "
  "\nTake " "Thy " "great " pow "er " "and " "reign " "there " a "lone. " 
  "\nO" "ver " "our " "wills " "amd " af fec "tions " vic to "rious, "
  "\nFree" "ly " sur ren "ered " "and " whol "ly " "Thine " "own. " 
  "\nPeal "  "out " "the " watch "word! " si "lence " "it " nev "er! "
  "\nSong "  "of " "our " spi "rits " re joi "cing " "and " "free; "
  "\nPeal " "out " "the " watch "word! " loy "al " "for " ev "er, "
  "\nKing " "of " "our " "lives, " "by " "Thy " "grace " "we " "will " "be! "
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
      #(layout-set-staff-size 18)
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
