\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Out of Darkness into Light!"
  subtitle    = "Sankey No. 702"
  subsubtitle = "Sankey 880 No. 329"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. O. Lattimore."
  meter       = \markup\smallCaps "8.7.D."
  piece       = \markup\smallCaps "Temperance Hymn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
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
  d'8. g16 | b4 4 8. 16 | c4 4 8. 16 | d4. a8 b8. c16 | b2 \bar "|" \break
  g8. fis16 | fis4 e g8. e16 | e4 d g8 b | d4. c8 fis,8. a16 | g2
  \section \sectionLabel \markup\smallCaps Chorus \break
  b8. c16 | d4 4 e8. b16 | c4 4 a8. b16 | c4. cis8 d8. a16 | b2 \bar "|" \break
  b8. a16 | g4. 8 b8 d | 4 c b8. 16 | g4. 8 8 fis | g2
}

alto = \relative {
  \autoBeamOff
  b8. 16 | d4 4 8. g16 | fis4 4 8. 16 | 4. 8 g8. a16 | g2
  d8. 16 | 4 c e8. c16 | 4 b d8 8 | fis4. 8 d8. 16 | 2 \section
  g8. 16 | 4 4 gis8. 16 | a4 a fis8. g16 | a4. g8 f8. 16 | g2
  g8. d16 | 4. e8 d f | e4 4 8. ees16 | d4. 8 c c | b2
}

tenor = \relative {
  \autoBeamOff
  g8. 16 | 4 4 8. d'16 | 4 4 8. 16 | 4. 8 8. 16 | 2
  g,8. 16 | 4 4 8. 16 | 4 4 b8 g | a4. 8 c8. 16 | b2 \section
  g8. a16 | b4 4 8. e16 | 4 4 c8. b16 | a4. 8 8. d16 | 2
  d8. c16 | b4. 8 g8 8 | 4 4 d'8. c16 | b4. 8 a a | g2
}

bass = \relative {
  \autoBeamOff
  g8. 16 | 4 4 8. 16 | a4 4 8. 16 | d,4. 8 8. 16 | g2
  b,8. 16 c4 4 8. e16 | g4 g, g'8 8 | d4. 8 8. 16 | g2 \section
  g8. 16 | 4 4 e8. 16 | a4 a d,8. g16 | fis4. e8 d8. 16 | g2
  g8. 16 | 4. 8 8 b, | c4 4 8. 16 | d4. 8 8 8 | g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  \set stanza = "1-4."
  Bles -- sed Je -- sus, lov -- ing Sa -- viour!
  Ten -- der, faith -- ful, strong and true,
  \set stanza = "1-4."
  Break the fet -- ters that have bound us,
  Make us in Thy -- self a new.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Long in dark -- ness we have wait -- ed,
  For the shin -- ing of the Light;
  Long have felt the things we ha -- ted,
  Sink us still in deep -- er night.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Now, at last, the Light ap -- pear -- eth,
  Je -- sus stands up -- on the shore;
  And with ten -- der voice He call -- eth,
  “Come to Me, and sin no more!”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No -- thing have we but our weak -- ness,
  naught but sor -- row, sin, and care;
  All with -- in is loath -- some vile -- ness,
  All with -- out is dark des -- pair.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  All our tal -- ents we have wast -- ed,
  All Thy laws have dis -- o -- beyed;
  But Thy good -- ness now we've tast -- ed,
  In Thy robes we stand ar -- rayed.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Thou hast saved us— do Thou keep us,
  Guide us by Thine eye di -- vine;
  Let the Ho -- ly Spi -- rit teach us,
  That our light may ev -- er shine.
  \set stanza = "5."
  Bles -- sed Je -- sus, be Thou near us,
  Give us of Thy grace to -- day;
  \set stanza = "5."
  While we're call -- ing, do Thou hear us,
  Send us now Thy peace, we pray.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Long " "in " dark "ness " "we " "have " wait "ed, "
  "\nFor " "the " shin "ing " "of " "the " "Light; "
  "\nLong " "have " "felt " "the " "things " "we " ha "ted, "
  "\nSink " "us " "still " "in " deep "er " "night. "
  "\nBles" "sed " Je "sus, " lov "ing " Sa "viour! "
  "\nTen" "der, " faith "ful, " "strong " "and " "true, "
  "\nBreak " "the " fet "ters " "that " "have " "bound " "us, "
  "\nMake " "us " "in " Thy "self " "a " "new.\n"

  \set stanza = "2."
  "\nNow, " "at " "last, " "the " "Light " ap pear "eth, "
  "\nJe" "sus " "stands " up "on " "the " "shore; "
  "\nAnd " "with " ten "der " "voice " "He " call "eth, "
  "\n“Come " "to " "Me, " "and " "sin " "no " "more!” "
  "\nBles" "sed " Je "sus, " lov "ing " Sa "viour! "
  "\nTen" "der, " faith "ful, " "strong " "and " "true, "
  "\nBreak " "the " fet "ters " "that " "have " "bound " "us, "
  "\nMake " "us " "in " Thy "self " "a " "new.\n"

  \set stanza = "3."
  "\nNo" "thing " "have " "we " "but " "our " weak "ness, "
  "\nnaught " "but " sor "row, " "sin, " "and " "care; "
  "\nAll " with "in " "is " loath "some " vile "ness, "
  "\nAll " with "out " "is " "dark " des "pair. "
  "\nBles" "sed " Je "sus, " lov "ing " Sa "viour! "
  "\nTen" "der, " faith "ful, " "strong " "and " "true, "
  "\nBreak " "the " fet "ters " "that " "have " "bound " "us, "
  "\nMake " "us " "in " Thy "self " "a " "new.\n"

  \set stanza = "4."
  "\nAll " "our " tal "ents " "we " "have " wast "ed, "
  "\nAll " "Thy " "laws " "have " dis o "beyed; "
  "\nBut " "Thy " good "ness " "now " "we've " tast "ed, "
  "\nIn " "Thy " "robes " "we " "stand " ar "rayed. "
  "\nBles" "sed " Je "sus, " lov "ing " Sa "viour! "
  "\nTen" "der, " faith "ful, " "strong " "and " "true, "
  "\nBreak " "the " fet "ters " "that " "have " "bound " "us, "
  "\nMake " "us " "in " Thy "self " "a " "new.\n"

  \set stanza = "5."
  "\nThou " "hast " "saved " "us— " "do " "Thou " "keep " "us, "
  "\nGuide " "us " "by " "Thine " "eye " di "vine; "
  "\nLet " "the " Ho "ly " Spi "rit " "teach " "us, "
  "\nThat " "our " "light " "may " ev "er " "shine. "
  "\nBles" "sed " Je "sus, " "be " "Thou " "near " "us, "
  "\nGive " "us " "of " "Thy " "grace " to "day; "
  "\nWhile " "we're " call "ing, " "do " "Thou " "hear " "us, "
  "\nSend " "us " "now " "Thy " "peace, " "we " "pray. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
