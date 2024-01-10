\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Loving Service."
  subtitle    = "Sankey No. 770"
  subsubtitle = "C. C. No. 197"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. hewitt."
  meter       = \markup\smallCaps "8.7. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8. bes16 | a4. g8 f e | e4 d bes'8. a16 | g4. f8 e f | g2 \bar "|" \break
  c8. bes16 | a4. g8 f a | c4 bes g8 bes | a g f4 e | f2 \bar "|" \break
  g8 8 | 4. 8 f g | a4 c a8 8 | 4. 8 d a | bes2 \bar "|" \break
  c8. bes16 | a4. g8 f e | 4 d g8 a | bes g f4 e | f2
}

alto = \relative {
  \autoBeamOff
  a'8. g16 | f4. e8 f cis | 4 d4 8. 16 | 4. b8 8 8 | c2
  c8. 16 | 4. 8 8 ees | d4 4 8 g | f d c4 c | 2
  e8 8 | 4. 8 f e | f4 4 g8 8 | fis4. 8 d8 fis | g2
  g8. 16 | f4. e8 f cis | 4 d4 8 8 | d d c4 c | 2
}

tenor = \relative {
  \autoBeamOff
  c'8. 16 | 4. 8 8 g | g4 f g8. fis16 | g4. 8 8 f | e2
  g8. 16 | f4. bes8 a f | 4 4 bes8 d | c bes a4 g | a2
  c8 8 | 4. 8 a c | 4 a c8 8 | 4. 8 a d | 2
  c8. 16 | 4. 8 8 g | 4 f4 8 fis | g bes a4 g | a2
}

bass = \relative {
  \autoBeamOff
  f8. 16 | 4. bes8 a a, |4 bes g8. a16 | bes4. d8 8 des | c2
  e8. 16 | f4. 8 8 8 | bes,4 4 8 g | a bes c4 4 | f2
  c8 8 | 4. 8 8 8 | f4 f ees8 8 | d4. 8 fis d | g2
  e8. 16 | f4. bes8 a a, | 4 bes4 8 d | g bes, c4 4 | f2
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Bear the cup of lov -- ing ser -- vice,
  Sons and daugh -- ters of the King;
  Wa -- ter from the liv -- ing foun -- tain
  To the faint and thirs -- ty bring;
  Ten -- dered in His lov -- ing spi -- rit,
  Bless -- ed will the mis -- sion be;
  E'en the small -- est cup that's of -- fered,
  Christ, our gra -- cious Lord, will see.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bear the cup of lov -- ing ser -- vice
  To the wea -- ry and the sad;
  For the draught held out to oth -- ers
  Makes the giv -- er more than glad;
  So 'twill tield a dou -- ble bless -- ing,
  Wa -- king sweet -- est chords of praise,
  While we strive to fol -- low Je -- sus
  In His pleas -- ant, peace -- ful ways.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bear the cup of lov -- ing ser -- vice,
  List -- 'ning for the Mas -- ter's voice;
  Rea -- dy al -- ways for His er -- rands,
  In the bless -- ed work re -- joice.
  Yes, we know, for He hath told us—
  And His word is still the same—
  He will bless the cup of wa -- ter
  Hum -- bly of -- fered in His name.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Bear " "the " "cup " "of " lov "ing " ser "vice, "
  "\nSons " "and " daugh "ters " "of " "the " "King; "
  "\nWa" "ter " "from " "the " liv "ing " foun "tain "
  "\nTo " "the " "faint " "and " thirs "ty " "bring; "
  "\nTen" "dered " "in " "His " lov "ing " spi "rit, "
  "\nBless" "ed " "will " "the " mis "sion " "be; "
  "\nE'en " "the " small "est " "cup " "that's " of "fered, "
  "\nChrist, " "our " gra "cious " "Lord, " "will " "see.\n"

  \set stanza = "2."
  "\nBear " "the " "cup " "of " lov "ing " ser "vice "
  "\nTo " "the " wea "ry " "and " "the " "sad; "
  "\nFor " "the " "draught " "held " "out " "to " oth "ers "
  "\nMakes " "the " giv "er " "more " "than " "glad; "
  "\nSo " "'twill " "tield " "a " dou "ble " bless "ing, "
  "\nWa" "king " sweet "est " "chords " "of " "praise, "
  "\nWhile " "we " "strive " "to " fol "low " Je "sus "
  "\nIn " "His " pleas "ant, " peace "ful " "ways.\n"

  \set stanza = "3."
  "\nBear " "the " "cup " "of " lov "ing " ser "vice, "
  "\nList" "'ning " "for " "the " Mas "ter's " "voice; "
  "\nRea" "dy " al "ways " "for " "His " er "rands, "
  "\nIn " "the " bless "ed " "work " re "joice. "
  "\nYes, " "we " "know, " "for " "He " "hath " "told " "us— "
  "\nAnd " "His " "word " "is " "still " "the " "same— "
  "\nHe " "will " "bless " "the " "cup " "of " wa "ter "
  "\nHum" "bly " of "fered " "in " "His " "name. "
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
