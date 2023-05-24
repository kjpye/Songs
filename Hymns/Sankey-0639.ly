\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Closer, Lord, to Thee!"
  subtitle    = "Sankey No. 639"
  subsubtitle = "Sankey 880 No. 558"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. G. Taylor, D. D."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*6
  \textMark \markup { \box \bold "B" }    s1*4 s2
  \textMark \markup { \box \bold "C" } s2 s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4. 8 4 a | g ees d2 | g4. 8 fis4 f | a2. r4 | b4. 8 4 a |
  g4 e d2 | g4. 8 b4 a | g2. r4 | a4. 8 4 d, | g a b2 | 4. 8 \bar "|" \break
  b4 g | a b c2 | b4. c8 d4 b | a g e2 | d4. g8 4 a | g2. r4 |
}

alto = \relative {
  \autoBeamOff
  d'4. 8 4 c | b c b2 | 4. d8 c4 b | d2. r4 | 4. 8 4 c |
  b4 c b2 | d4. e8 d4 d | b2. r4 | d4. 8 4 4 | 4 4 2 | 4. 8
  d4 4 | 4 4 2 | 4. 8 g4 d | c b4 2 | 4. 8 4 c | b2. r4 |
}

tenor = \relative {
  \autoBeamOff
  g4. 8 4 fis | g4 4 2 | 4. 8 a4 g | fis2. r4 | g4. 8 4 fis |
  g4 4 2 | 4. 8 4 c | b2. r4 | fis4. 8 4 a | g4 f g2 | 4. 8
  4 4 | fis g a2 | g4. a8 b4 g | fis g4 2 | 4. 8 4 fis | g2. r4 |
}

bass = \relative {
  \autoBeamOff
  g4. 8 4 d | e4 c g2 | 4. b8 d4 e | d2. r4 | g4. 8 4 d |
  e4 c g2 | b4. c8 d4 4 | g,2. r4 | d'4. 8 4 c | b d g2 | 4. 8
  g4 b, | d4 4 2 | g4. 8 4 4 | d4 e c2 | d4. 8 4 4 | g,2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Clo -- ser, Lord, to Thee I cling,
  Clo -- ser still to Thee;
  Safe be -- neath Thy shelt -- 'ring wing
  I would ev -- er be;
  Rude the blast of doubt and sin,
  Fierce as -- saults with -- out, with -- in:
  Help me, Lord, the bat -- tle win—
  Clo -- ser, Lord, to Thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Clo -- ser yet, O Lord, my Rock,
  Re -- fuge of my soull
  Dread I not the tem -- pest- shock,
  Tho' the bil -- lows roll:
  Wild -- est storm can not a -- larm,
  For to me can come no harm,
  Lean -- ing on Thy lov -- ing arm—
  Clo -- ser, Lord, to Thee!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Clo -- ser still, my Help, my Stay,
  Clo -- ser, clo -- ser still;
  Meek -- ly there I learn to say,
  "\"Fa" -- ther, not my "will!\""
  Learn that in af -- flic -- tion's hour,
  When the clouds of sor -- row lour,
  Love di -- rects Thy hand of power—
  Clo -- ser, Lord, to Thee!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Clo -- ser, Lord, to Thee I come,
  Light of lide Di -- vine;
  Thro' the ev -- er bles -- sed Son,
  Joy and peace are mine;
  Let me in Thy love a -- bide,
  Keep me ev -- er near Thy side,
  In the "\"Rock" of A -- "ges\"" hide—
  Clo -- ser, Lord, to Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Clo" "ser, " "Lord, " "to " "Thee " "I " "cling, "
  "\nClo" "ser " "still " "to " "Thee; "
  "\nSafe " be "neath " "Thy " shelt "'ring " "wing "
  "\nI " "would " ev "er " "be; "
  "\nRude " "the " "blast " "of " "doubt " "and " "sin, "
  "\nFierce " as "saults " with "out, " with "in: "
  "\nHelp " "me, " "Lord, " "the " bat "tle " "win— "
  "\nClo" "ser, " "Lord, " "to " "Thee!\n"

  \set stanza = "2."
  "\nClo" "ser " "yet, " "O " "Lord, " "my " "Rock, "
  "\nRe" "fuge " "of " "my " "soull "
  "\nDread " "I " "not " "the " tem pest "shock, "
  "\nTho' " "the " bil "lows " "roll: "
  "\nWild" "est " "storm " "can " "not " a "larm, "
  "\nFor " "to " "me " "can " "come " "no " "harm, "
  "\nLean" "ing " "on " "Thy " lov "ing " "arm— "
  "\nClo" "ser, " "Lord, " "to " "Thee!\n"

  \set stanza = "3."
  "\nClo" "ser " "still, " "my " "Help, " "my " "Stay, "
  "\nClo" "ser, " clo "ser " "still; "
  "\nMeek" "ly " "there " "I " "learn " "to " "say, "
  "\n\"Fa"- "ther, " "not " "my " "will!\" "
  "\nLearn " "that " "in " af flic "tion's " "hour, "
  "\nWhen " "the " "clouds " "of " sor "row " "lour, "
  "\nLove " di "rects " "Thy " "hand " "of " "power— "
  "\nClo" "ser, " "Lord, " "to " "Thee!\n"

  \set stanza = "4."
  "\nClo" "ser, " "Lord, " "to " "Thee " "I " "come, "
  "\nLight " "of " "lide " Di "vine; "
  "\nThro' " "the " ev "er " bles "sed " "Son, "
  "\nJoy " "and " "peace " "are " "mine; "
  "\nLet " "me " "in " "Thy " "love " a "bide, "
  "\nKeep " "me " ev "er " "near " "Thy " "side, "
  "\nIn " "the " "\"Rock " "of " A "ges\" " "hide— "
  "\nClo" "ser, " "Lord, " "to " "Thee! "
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
          >>
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
