\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Just as thou art!"
  subtitle    = "Sankey No. 420"
  subsubtitle = "N. H. No. 116"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
  arranger    = "(Arranged)"
%  opus        = "opus"

  poet        = \markup\smallCaps "Russell S. Cook."
  meter       = \markup\smallCaps "8.8.8.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8
  g8 b d4. b8
  fis8 g8 4. 8
  g8 8 4. 8
  g8 fis8 4. \bar "|" \break d8
  g8 b d4. b8 % B
  c8 d e4. 8\fermata
  d8 g, b4 a
  g2 r8
}

alto = \relative {
  \autoBeamOff
  d'8
  d8 8 4. 8
  fis8 g8 4. 8
  g8 8 4. 8
  g8 fis8 4. d8
  d8 8 4. 8 % B
  e8 g8 4. 8\fermata
  g8 8 4 fis
  g2 r8
}

tenor = \relative {
  \autoBeamOff
  b8
  b8 g b4. d8
  d8 8 c4. 8
  d8 8 4. b8
  d8 8 4. c8
  b8 g b4. g8 % B
  g8 b c4. 8
  d8 b d4 c
  b2 r8
}

bass = \relative {
  \autoBeamOff
  g8
  g8 8 4. 8
  a8 b c4. 8
  b8 g8 4. 8
  d8 8 4. fis8
  g8 8 4. f8
  e8 d c4. 8\fermata
  b8 e d4 4
  g,2 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Just as thou art,
  with -- out one trace
  Of love, or joy, or in -- ward grace,
  Or meet -- ness for the heaven -- ly place,
  O guil -- ty sin -- ner, come!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bur -- dened with guilt, wouldst thou be blest?
  Trust not the world, it gives no rest;
  Christ brings re -- lief to hearts op -- prest:
  O wea -- ry sin -- ner, come!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, leave they bur -- den at the cross,
  Count all thy gains but emp -- ty dross;
  His grace re -- pays all earth -- ly loss:
  O need -- y sin -- ner, come!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come, hi -- ther bring thy bo -- ding fears,
  Thy ach -- ing heart, thy burn -- ing tears;
  'Tis Mer -- cy's voice sa -- lutes thine ears:
  O tremb -- ling sin -- ner, come!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  "\"The" Spi -- rit and the bride say, "Come!\""
  Re -- joic -- ing saints re -- ech -- o, "\"Come!\""
  Who faints, who thirsts, who will, may come:
  The Sa -- viour bids thee come!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Just " "as " "thou " "art, "
  "\nwith" "out " "one " "trace "
  "\nOf " "love, " "or " "joy, " "or " in "ward " "grace, "
  "\nOr " meet "ness " "for " "the " heaven "ly " "place, "
  "\nO " guil "ty " sin "ner, " "come! "

  \set stanza = "2."
  "\nBur" "dened " "with " "guilt, " "wouldst " "thou " "be " "blest? "
  "\nTrust " "not " "the " "world, " "it " "gives " "no " "rest; "
  "\nChrist " "brings " re "lief " "to " "hearts " op "prest: "
  "\nO " wea "ry " sin "ner, " "come! "

  \set stanza = "3."
  "\nCome, " "leave " "they " bur "den " "at " "the " "cross, "
  "\nCount " "all " "thy " "gains " "but " emp "ty " "dross; "
  "\nHis " "grace " re "pays " "all " earth "ly " "loss: "
  "\nO " need "y " sin "ner, " "come! "

  \set stanza = "4."
  "\nCome, " hi "ther " "bring " "thy " bo "ding " "fears, "
  "\nThy " ach "ing " "heart, " "thy " burn "ing " "tears; "
  "\n'Tis " Mer "cy's " "voice " sa "lutes " "thine " "ears: "
  "\nO " tremb "ling " sin "ner, " "come! "

  \set stanza = "5."
  "\n\"The " Spi "rit " "and " "the " "bride " "say, " "Come!\" "
  "\nRe" joic "ing " "saints " re- ech "o, " "\"Come!\" "
  "\nWho " "faints, " "who " "thirsts, " "who " "will, " "may " "come: "
  "\nThe " Sa "viour " "bids " "thee " "come! "
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

#(set-global-staff-size 18)

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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
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
                                              \wordsFive  \chorus
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
                                              \wordsFive  \chorus
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
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
