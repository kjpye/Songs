\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Come Away!"
  subtitle    = "Sankey No. 434"
  subsubtitle = "N. H. No. 27"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo C. Stebbins."
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
  \key bes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*4
  \mark \markup { \box "C" }    s2.*4
  \mark \markup { \box "D" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8
  f8 8 8 4 8
  g4. f4 r8
  bes4(a8) g4 a8
  bes4.~4 \bar "|" \break 8
  c8 8 8 4 8 % B
  d4. c
  c4. bes8[a] g
  f4.~4 r8 \break
  d'4.^\markup\smallCaps Chorus. c8[bes] c % C
  d4.(bes4) r8
  bes4. c8[bes] g
  f4.~4 r8 \break
  a8 8 8 bes4 8 % D
  c4(d8) ees4.
  d4. c8[bes] c
  bes4.~4
}

alto = \relative {
  \autoBeamOff
  d'8
  d8 8 8 4 8
  ees4. d4 r8
  f4. ees4 8
  d4.~4 8
  f8 8 8 4 8 % B
  f4. 4.
  f4. e4 8
  f4.~4 r8
  f4. ees8 d ees % C
  f4.(d4) r8
  ees4. 4 8
  d4.~4 r8
  ees8 8 8 d4 g8 % D
  g4(f8) ees4.
  f4. ees8[d] ees
  d4.~4
}

tenor = \relative {
  \autoBeamOff
  bes8
  bes8 8 8 4 8
  bes4. 4 r8
  d4. c4 8
  bes4.~4 8
  a8 8 8 4 8 % B
  bes4. a
  a4. g8[c] bes
  a4.~4 r8
  bes4. a8[bes] a % C
  bes4.(f4) r8
  g4. 4 bes8
  bes4.~4 r8
  c8 8 8 bes4 d8 % D
  c4(bes8) c4.
  bes4. a8[bes] a
  bes4.~4
}

bass = \relative {
  \autoBeamOff
  bes,8
  bes8 8 8 4 8
  bes4. 4 r8
  f'4. 4 8
  bes,4.~4 8
  f'8 8 8 4 8 % B
  f4. 4.
  c4. 4 8
  f4.~4 r8
  bes,4. f'4 8 % C
  bes,4.~4 r8
  ees4. 4 8
  bes4.~4 r8
  f'8 8 8 g4 8 % D
  ees4(d8) c4.
  f4. 4 8
  bes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Come, come a -- way! __
  Come, come a -- way! __
  Je -- sus is gen -- tly call -- ing:
  Come, come to -- day!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, list to the watch -- man cry -- ing:
  Come, come a -- way!
  The ar -- rows of death are fly -- ing:
  Come, come to -- day!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The Spi -- rit of God is plead -- ing:
  Come, come a -- way!
  The Sa -- viour is in -- ter -- ce -- ding:
  Come, come to -- day!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The mer -- cy of God is cal -- ling:
  Come, come a -- way!
  How sweet -- ly the words are fall -- ing:
  Come, come to -- day!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The an -- gels of God en -- treat you:
  Come, come a -- way!
  The Fa -- ther Him -- self will meet you:
  Come, come to -- day!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "list " "to " "the " watch "man " cry "ing: "
  "\nCome, " "come " a "way! "
  "\nThe " ar "rows " "of " "death " "are " fly "ing: "
  "\nCome, " "come " to "day! "
  "\nCome, " "come " a "way! " 
  "\nCome, " "come " a "way! " 
  "\nJe" "sus " "is " gen "tly " call "ing: "
  "\nCome, " "come " to "day!\n"

  \set stanza = "2."
  "\nThe " Spi "rit " "of " "God " "is " plead "ing: "
  "\nCome, " "come " a "way! "
  "\nThe " Sa "viour " "is " in ter ce "ding: "
  "\nCome, " "come " to "day! "
  "\nCome, " "come " a "way! " 
  "\nCome, " "come " a "way! " 
  "\nJe" "sus " "is " gen "tly " call "ing: "
  "\nCome, " "come " to "day!\n"

  \set stanza = "3."
  "\nThe " mer "cy " "of " "God " "is " cal "ling: "
  "\nCome, " "come " a "way! "
  "\nHow " sweet "ly " "the " "words " "are " fall "ing: "
  "\nCome, " "come " to "day! "
  "\nCome, " "come " a "way! " 
  "\nCome, " "come " a "way! " 
  "\nJe" "sus " "is " gen "tly " call "ing: "
  "\nCome, " "come " to "day!\n"

  \set stanza = "4."
  "\nThe " an "gels " "of " "God " en "treat " "you: "
  "\nCome, " "come " a "way! "
  "\nThe " Fa "ther " Him "self " "will " "meet " "you: "
  "\nCome, " "come " to "day! "
  "\nCome, " "come " a "way! " 
  "\nCome, " "come " a "way! " 
  "\nJe" "sus " "is " gen "tly " call "ing: "
  "\nCome, " "come " to "day! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
