\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Let us to the Lord."
  subtitle    = "Sankey No. 584"
  subsubtitle = "Sankey 880 No. 439"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Isaac Smith."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Morrison."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Abridge."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  ees'4 | bes'2 ees4 | ees(d) c | bes(aes) g | g(f) g | c2 bes4 | 2 a4 | bes2 \bar "|" \break
  bes4 | g(aes) c | bes2 4 | c(d) ees | ees(d) bes | ees(g,) bes | aes(g) f | ees2
}

alto = \relative {
  \autoBeamOff
  ees'4 | 2 4 | g(f) f | g(f) ees | ees(d) ees | 2 f4 | g2 f4 | 2 
  d4 | ees2 d4 | ees2 4 | ees(a) g | g(f) d | ees2 4 | 2 d4 | ees2 
}

tenor = \relative {
  \autoBeamOff
  g4 | 2 bes4 | 2 d4 | ees(bes) bes | 2 4 | ees2 d4 | c2 4 | d2
  bes4 | 4(aes) aes | bes2 g4 | aes2 bes4 | 2 4 | 2 4 | c(bes) aes | g2
}

bass = \relative {
  \autoBeamOff
  ees4 | 2 g4 | bes2 aes4 | g(d) ees | bes2 ees4 | c2 d4 | ees2 f4 | bes,2
  bes4 | ees(f) aes | g2 ees4 | aes(f) ees | bes2 aes'4 | g(ees) g | aes(bes) bes, | ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, let us to the Lord our God
  With con -- trite hearts re -- turn;
  Our God is gra -- cious, nor will leave
  The des -- o -- late to mourn.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  His voice com -- mands the tem -- pest forth,
  And stills the storm -- y wave;
  And though His arm be strong to smite,
  'Tis al -- so strong to save.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Long hath the night of sor -- row reigned!
  The dawn shall bring us light;
  God shall ap -- pear, and we shall rise
  With glad -- ness in His sight.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Our heartsd, if God we seek to know,
  Shall know Him and re -- joice;
  His com -- ing like the morn shall be,
  Like morn -- ing songs His voice.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  As dew up -- on the ten -- der herb,
  Dif -- fus -- ing frag -- rance round:
  As showers that ush -- er in the spring,
  And cheer the thir -- sty ground:
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  So shall His pre -- sence bless our souls,
  And shed a joy -- ful light;
  That hal -- lowed morn shall chase a -- way
  The sor -- rows of the night.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "let " "us " "to " "the " "Lord " "our " "God "
  "\nWith " con "trite " "hearts " re "turn; "
  "\nOur " "God " "is " gra "cious, " "nor " "will " "leave "
  "\nThe " des o "late " "to " "mourn.\n"

  \set stanza = "2."
  "\nHis " "voice " com "mands " "the " tem "pest " "forth, "
  "\nAnd " "stills " "the " storm "y " "wave; "
  "\nAnd " "though " "His " "arm " "be " "strong " "to " "smite, "
  "\n'Tis " al "so " "strong " "to " "save.\n"

  \set stanza = "3."
  "\nLong " "hath " "the " "night " "of " sor "row " "reigned! "
  "\nThe " "dawn " "shall " "bring " "us " "light; "
  "\nGod " "shall " ap "pear, " "and " "we " "shall " "rise "
  "\nWith " glad "ness " "in " "His " "sight.\n"

  \set stanza = "4."
  "\nOur " "heartsd, " "if " "God " "we " "seek " "to " "know, "
  "\nShall " "know " "Him " "and " re "joice; "
  "\nHis " com "ing " "like " "the " "morn " "shall " "be, "
  "\nLike " morn "ing " "songs " "His " "voice.\n"

  \set stanza = "5."
  "\nAs " "dew " up "on " "the " ten "der " "herb, "
  "\nDif" fus "ing " frag "rance " "round: "
  "\nAs " "showers " "that " ush "er " "in " "the " "spring, "
  "\nAnd " "cheer " "the " thir "sty " "ground:\n"

  \set stanza = "6."
  "\nSo " "shall " "His " pre "sence " "bless " "our " "souls, "
  "\nAnd " "shed " "a " joy "ful " "light; "
  "\nThat " hal "lowed " "morn " "shall " "chase " a "way "
  "\nThe " sor "rows " "of " "the " "night. "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
