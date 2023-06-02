\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "More and More!"
  subtitle    = "Sankey No. 653"
  subsubtitle = "C. C. No. 243"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. Edwards."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

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
  \textMark \markup { \box \bold "C" } s4 s2.*2
  \textMark \markup { \box \bold "D" }    s2.*3
  \textMark \markup { \box \bold "E" }    s2.*2 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'8. fis16 | a4 g4 8. d16 | fis4 e a8. b16 | c4. e,8 fis8. d16 | b'2 \bar "|" \break
  b8. fis16 | a4 g d'8. b16 | c4 e, a8. g16 | f4. d8 b'8. a16 | g2
  \section \sectionLabel \markup\smallCaps Chorus \break
  d'8. b16 | c2 8. a16 | b2 8. a16 |
  g8. fis16 e8. g16 c8. e,16 | d2 8. g16 | b2 8. d16 |
  c2 a8. g16 | fis8.^\markup\italic rit. d16 c'8. a16 e8. fis16 | g2
}

alto = \relative {
  \autoBeamOff
  d'8. 16 | 4 4 b8. 16 | c4 4 e8. 16 | 4. c8 8. 16 | d2
  d8. 16 | 4 4 g8. f16 | e4 c e8. 16 | d4. 8 8. c16 | b2 \section
  b'8. g16 | f2 8. a16 | b2 8. a16 |
  e8. d16 c8. e16 8. c16 | b2 \partCombineApart r4 \partCombineAutomatic | g'8. 16 4 8. f16 |
  e2 8. 16 | d8. 16 8. 16 8. 16 | 2
}

tenor = \relative {
  \autoBeamOff
  g8. a16 | c4 b g8. 16 | g4 g c8. gis16 | a4. 8 8. fis16 | g2
  g8. 16 | 4 4 8. 16 | c,4 4 8. 16 | d4. 8 8. 16 | 2 \section
  r4 | a'8. 16 d4 r | d8. 16 4 g,8. fis16 |
  e8. g16 8. 16 8. 16 | 2 r4 | d'8. 16 4 r |
  c8. g16 4 c8. 16 | 8. fis,16 a8. c16 8. 16 | b2
  
}

bass = \relative {
  \autoBeamOff
  g8. 16 | 4 4 g,8. 16 | c4 4 8. b16 | a4. 8 d8. 16 | g2
  g8. 16 | g4 4 8. 16 | c,4 4 8. 16 | d4. 8 8. 16 | g,2 \section
  r4 | d'8. 16 4 r | g8. 16 4 8. b,16 |
  c8. 16 8. 16 8. 16 | g2 r4 | g'8. 16 4 r |
  c,8. 16 4 8. 16 | d8. 16 8. 16 8. 16 | <g, g'>2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  More and more, more and more!
  Oh to love Thee, Sa -- viour, more and more!
  More and more, more and more!
  Oh to love Thee, Sa -- viour, more and more!
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 30 _
  More and more, more and more!
  _ _ _ _ _ _ _ _ _
  More and more, more and more!
  _ _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  For Thy good -- ness, O my Sa -- viour,
  I would praise Thee o'er and o'er;
  May the o -- ly Spi -- rit teach me
  How to love Thee more and more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For the bless -- ings that sur -- round me,
  Lotd, Thy mer -- cy I a -- dore;
  For Thy care so deep and ten -- der,
  I would love Thee more and more.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Rag -- ing tem -- pest, roll -- ing bil -- low,
  Thou hast brought me safe -- ly o'er;
  Thou hast led me, safe -- ly led me,
  And I long to love Thee more!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Till my jour -- ney here is end -- ed,
  Till I reach the heaven -- ly shore,
  This my earn -- est sup -- pli -- ca -- tion—
  That my soul may love Thee more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "For " "Thy " good "ness, " "O " "my " Sa "viour, "
  "\nI " "would " "praise " "Thee " "o'er " "and " "o'er; "
  "\nMay " "the " o "ly " Spi "rit " "teach " "me "
  "\nHow " "to " "love " "Thee " "more " "and " "more. "
  "\nMore " "and " "more, " "more " "and " "more! "
  "\nOh " "to " "love " "Thee, " Sa "viour, " "more " "and " "more! "
  "\nMore " "and " "more, " "more " "and " "more! "
  "\nOh " "to " "love " "Thee, " Sa "viour, " "more " "and " "more!\n"

  \set stanza = "2."
  "\nFor " "the " bless "ings " "that " sur "round " "me, "
  "\nLotd, " "Thy " mer "cy " "I " a "dore; "
  "\nFor " "Thy " "care " "so " "deep " "and " ten "der, "
  "\nI " "would " "love " "Thee " "more " "and " "more. "
  "\nMore " "and " "more, " "more " "and " "more! "
  "\nOh " "to " "love " "Thee, " Sa "viour, " "more " "and " "more! "
  "\nMore " "and " "more, " "more " "and " "more! "
  "\nOh " "to " "love " "Thee, " Sa "viour, " "more " "and " "more!\n"

  \set stanza = "3."
  "\nRag" "ing " tem "pest, " roll "ing " bil "low, "
  "\nThou " "hast " "brought " "me " safe "ly " "o'er; "
  "\nThou " "hast " "led " "me, " safe "ly " "led " "me, "
  "\nAnd " "I " "long " "to " "love " "Thee " "more! "
  "\nMore " "and " "more, " "more " "and " "more! "
  "\nOh " "to " "love " "Thee, " Sa "viour, " "more " "and " "more! "
  "\nMore " "and " "more, " "more " "and " "more! "
  "\nOh " "to " "love " "Thee, " Sa "viour, " "more " "and " "more!\n"

  \set stanza = "4."
  "\nTill " "my " jour "ney " "here " "is " end "ed, "
  "\nTill " "I " "reach " "the " heaven "ly " "shore, "
  "\nThis " "my " earn "est " sup pli ca "tion— "
  "\nThat " "my " "soul " "may " "love " "Thee " "more. "
  "\nMore " "and " "more, " "more " "and " "more! "
  "\nOh " "to " "love " "Thee, " Sa "viour, " "more " "and " "more! "
  "\nMore " "and " "more, " "more " "and " "more! "
  "\nOh " "to " "love " "Thee, " Sa "viour, " "more " "and " "more! "
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

#(set-global-staff-size 20)

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
