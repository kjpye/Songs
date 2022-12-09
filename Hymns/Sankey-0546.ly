\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Shadow of the Rock."
  subtitle    = "Sankey No. 546"
  subsubtitle = "N. H. No. 69"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
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
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*2
  \textMark \markup { \box \bold "D" } s1*2
  \textMark \markup { \box \bold "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 8. a16 g8 e g a | b4 e d g, | b2 a4 g | a2. r4 \break |
  b4 8. a16 g8 d g a | b4 e d g, | b2 4 a | g2. r4 \break |
  a4^\markup\smallCaps Chorus. 8. g16 fis8 g a b | c4 a b g \break |
  b4 8. a16 g8 a b c | d4 b c a \break |
  b4 8. a16 g8 d g a | b4 e d g, | b2 4 a | g2. r4 |
}

alto = \relative {
  \autoBeamOff
  g'4 8. d16 8 8 8 fis | g4 4 4 4 | d2 4 e | fis2. r4 |
  g4 8. d16 8 8 8 fis | g4 4 4 4 | 2 fis4 4 | g2. r4 |
  a4 8. g16 fis8 g a b | c4 a b g |
  g4 8. d16 8 8 g g | 4 d fis fis |
  g4 8. d16 8 8 8 fis | g4 4 4 4 | 2 fis4 4 | g2. r4 |
}

tenor = \relative {
  \autoBeamOff
  d'4 8. c16 b8 8 d d | d4 c b b | g2 a4 b8[cis] | d2. r4 |
  d4 8. c16 b8 8 d d | 4 c b b | d2 4 c | b2. r4 |
  d4 8. 16 8 8 8 8 | 4 4 4 b |
  d4 8. c16 b8 c d a | b4 g a d |
  d4 8. c16 b8 8 d d | 4 c d b | d2 4 c | b2. r4 |
}

bass = \relative {
  \autoBeamOff
  g4 8. 16 8 8 b, d | g4 4 4 4 | 2 fis4 e | d2. r4 |
  g4 8. 16 8 8 b, d | g4 4 4 e | d2 4 4 | g2. r4 |
  d4 8. 16 8 8 8 8 | 4 4 g g |
  g4 8. 16 8 8 8 8 | 4 4 d d |
  g4 8. 16 8 8 b, d | g4 c, b e | d2 4 4 | g2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  There from the bil -- lows and the tem -- pest bi -- ding,
  Un -- der the shel -- ter of Thy love a -- bi -- ding,
  Safe in the sha -- dow of the "\"Rock" of A -- "ges,\""
  Joy shall be mine!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Lead to the sha -- dow of the Rock of Re -- fuge
  My wea -- ry feet;
  Give me the wa -- ter from the life- stream flow -- ing
  Clear, pure and sweet.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Lead to the sha -- dow of the Rock E -- ter -- nal
  My heart op -- prest;
  There in the se -- cret of Thy ho -- ly pre -- sence,
  Calm shall I rest.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lead to the sha -- dow of the "\"Rock" of A -- "ges,\""
  Oh, keep Thou me
  Safe from the ar -- rows of the world's temp -- ta -- tions,
  Close, close to Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lead " "to " "the " sha "dow " "of " "the " "Rock " "of " Re "fuge "
  "\nMy " wea "ry " "feet; "
  "\nGive " "me " "the " wa "ter " "from " "the " life "stream " flow "ing "
  "\nClear, " "pure " "and " "sweet. "
  "\nThere " "from " "the " bil "lows " "and " "the " tem "pest " bi "ding, "
  "\nUn" "der " "the " shel "ter " "of " "Thy " "love " a bi "ding, "
  "\nSafe " "in " "the " sha "dow " "of " "the " "\"Rock " "of " A "ges,\" "
  "\nJoy " "shall " "be " "mine!\n"

  \set stanza = "2."
  "\nLead " "to " "the " sha "dow " "of " "the " "Rock " E ter "nal "
  "\nMy " "heart " op "prest; "
  "\nThere " "in " "the " se "cret " "of " "Thy " ho "ly " pre "sence, "
  "\nCalm " "shall " "I " "rest. "
  "\nThere " "from " "the " bil "lows " "and " "the " tem "pest " bi "ding, "
  "\nUn" "der " "the " shel "ter " "of " "Thy " "love " a bi "ding, "
  "\nSafe " "in " "the " sha "dow " "of " "the " "\"Rock " "of " A "ges,\" "
  "\nJoy " "shall " "be " "mine!\n"

  \set stanza = "3."
  "\nLead " "to " "the " sha "dow " "of " "the " "\"Rock " "of " A "ges,\" "
  "\nOh, " "keep " "Thou " "me "
  "\nSafe " "from " "the " ar "rows " "of " "the " "world's " temp ta "tions, "
  "\nClose, " "close " "to " "Thee! "
  "\nThere " "from " "the " bil "lows " "and " "the " tem "pest " bi "ding, "
  "\nUn" "der " "the " shel "ter " "of " "Thy " "love " a bi "ding, "
  "\nSafe " "in " "the " sha "dow " "of " "the " "\"Rock " "of " A "ges,\" "
  "\nJoy " "shall " "be " "mine! "
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
