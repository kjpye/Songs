\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Deck the Halls"
%  subtitle    = "Sankey No. X"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Welsh"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Traditional"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*6
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Rollicking 4=150
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4. bes8 a4 g | f g a f | g8 a bes g a4. g8 | f4 e f2 | \break
  c'4. bes8 a4 g | f g a f | g8 a bes g a4. g8 | f4 e f2 | \break
  g4. a8 bes4 g | a4. bes8 c4 g | a8([b]) c4 d8([e]) f4 | e d c2 | \break
  c4. bes8 a4 g | f g a f | d'8 8 8 8 c4. bes8 | a4 g f2 |
}

alto = \relative {
  \autoBeamOff
  a'4. g8 f4 e | d e f c | e8 f g e f4. d8 | c4 4 2 |
  a'4. g8 f4 e | d e f c | e8 f g e f4. d8 | c4 4 2 |
  e4. f8 g4 e | f4. 8 4 g | f f a a | g f e2 |
  a4. g8 f4 e | d e f c | f8 8 8 8 4. g8 | f4 e f2 |
}

tenor = \relative {
  \autoBeamOff
  c'4. 8 4 bes | a c c a | c8 8 8 8 4. bes8 | a4 g a2 |
  c4.  8 4 bes | a c c a | c8 8 8 8 4. bes8 | a4 g a2 |
  c4. 8 4 4 | 4. g8 a4 c | c c c c | c b c2 |
  c4. 8 4 bes | a c c a | bes8 8 8 8 c4. d8 | c4 bes a2 |
}

bass = \relative {
  \autoBeamOff
  f4. e8 f4 c | d c f f | c8 8 8 8 f4. bes,8 c4 4 f2 |
  f4. e8 f4 c | d c f f | c8 8 8 8 f4. bes,8 c4 4 f2 |
  c4. 8 4 4 | f4. 8 4 e | f a f d | g g c,2 |
  f4. e8 f4 c | d c f f | bes8 8 8 8 a4. bes8 | c4 c, f2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Deck the halls with boughs of hol -- ly,
  Fa la la la la, la la la la.
  'Tis the sea -- son to be jol -- ly,
  Fa la la la la, la la la la.
  Don we now our gay ap -- par -- el,
  Fa la, la la, la la la,
  Troll the an -- cient Yule -- tide car -- ol,
  Fa la la la la, la la la la.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  See the blaz -- ing Yule be -- fore us,
  Fa la la la la, la la la la.
  Strike the harp and join the cho -- rus,
  Fa la la la la, la la la la.
  Fol -- low me in mer -- ry meas -- ure,
  Fa la, la la, la la la,
  While I tell of Yule -- tide treas -- ure,
  Fa la la la la, la la la la.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Fast a -- way the old year pass -- es,
  Fa la la la la, la la la la.
  Hail the new, ye lads and lass -- es,
  Fa la la la la, la la la la.
  Sing we joy -- ous all to -- geth -- er,
  Fa la, la la, la la la,
  Heed -- less of the wind and weath -- er,
  Fa la la la la, la la la la.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Deck " "the " "halls " "with " "boughs " "of " hol "ly, "
  "\nFa " "la " "la " "la " "la, " "la " "la " "la " "la. "
  "\n'Tis " "the " sea "son " "to " "be " jol "ly, "
  "\nFa " "la " "la " "la " "la, " "la " "la " "la " "la. "
  "\nDon " "we " "now " "our " "gay " ap par "el, "
  "\nFa " "la, " "la " "la, " "la " "la " "la, "
  "\nTroll " "the " an "cient " Yule "tide " car "ol, "
  "\nFa " "la " "la " "la " "la, " "la " "la " "la " "la.\n"

  \set stanza = "2."
  "\nSee " "the " blaz "ing " "Yule " be "fore " "us, "
  "\nFa " "la " "la " "la " "la, " "la " "la " "la " "la. "
  "\nStrike " "the " "harp " "and " "join " "the " cho "rus, "
  "\nFa " "la " "la " "la " "la, " "la " "la " "la " "la. "
  "\nFol" "low " "me " "in " mer "ry " meas "ure, "
  "\nFa " "la, " "la " "la, " "la " "la " "la, "
  "\nWhile " "I " "tell " "of " Yule "tide " treas "ure, "
  "\nFa " "la " "la " "la " "la, " "la " "la " "la " "la.\n"

  \set stanza = "3."
  "\nFast " a "way " "the " "old " "year " pass "es, "
  "\nFa " "la " "la " "la " "la, " "la " "la " "la " "la. "
  "\nHail " "the " "new, " "ye " "lads " "and " lass "es, "
  "\nFa " "la " "la " "la " "la, " "la " "la " "la " "la. "
  "\nSing " "we " joy "ous " "all " to geth "er, "
  "\nFa " "la, " "la " "la, " "la " "la " "la, "
  "\nHeed" "less " "of " "the " "wind " "and " weath "er, "
  "\nFa " "la " "la " "la " "la, " "la " "la " "la " "la. "
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
%            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
%            \new Voice \RehearsalTrack
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
%            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
