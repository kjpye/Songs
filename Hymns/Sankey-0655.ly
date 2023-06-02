\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Peace, peace is Mine!"
  subtitle    = "Sankey No. 665"
  subsubtitle = "Sankey 880 No. 484"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Denham Smith."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4. 8 c4 b | a4 g fis e | d2 g4 a | b1 |
  b4. 8 c4 b | a g fis e | d2 g4 a | g1 |
  d'4. 8 e4 d | c b a b | c4. 8 d4 c | b a g a |
  b4. 8 c4 b | a g fis e | d2 g4 a | g1 |
}

alto = \relative {
  \autoBeamOff
  d'4. 8 e4 d | c4 e d c | b2 d4 d | d1 |
  d4. 8 e4 d | c e d c | b2 d4 d | d1 |
  g4. 8 4 4 | d4 4 4 4 | fis4. 8 4 4 | g fis g d |
  d4. 8 e4 g | fis e dis e | b2 d4 4 | 1 |
}

tenor = \relative {
  \autoBeamOff
  g4. 8 4 4 | 4 4 4 4 | 2 4 fis | g1 |
  g4. 8 4 4 | 4 4 4 4 | 2 b4 c | b1 |
  b4. 8 c4 b | a g c b | a4. 8 b4 d | d c b fis |
  g4. 8 4 d' | d b b g | g2 b4 c | b1 |
}

bass = \relative {
  \autoBeamOff
  g,4. 8 4 4 | c4 4 4 4 | g2 b4 d | g,1 |
  g4. 8 4 4 | c c c c | d2 4 4 | g1 |
  g4. 8 4 4 | fis4 g g g | d4. 8 4 4 | g d g, d' |
  g4. 8 4 4 | d e b c | d2 4 4 | g,1 |
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
  God's al -- migh -- ty arms are round me:
  Peace, peace is mine!
  Judg -- ment scenes need not con -- found me:
  Peace, peace is mine!
  Je -- sus came Him -- self and sought mel
  Sold to Death, He found and bought me;
  Then my bles -- sed free -- dom taught me—
  Peace, peace is mine!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  While I hear life's rug -- ged bil -- lows,
  Peace, peace is mine!
  Why sus -- pend my harp on wil -- lows?
  Peace, peace is mine!
  I may sing, with Christ be -- side me,
  Tho' a thou -- sand ills be -- tide me;
  Safe -- ly He hath sworn to guide me:
  Peace, peace is mine!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ev -- 'ry tri -- al draws Him near -- er:
  Peace, peace is mine!
  All His strokes but make Him dear -- er:
  Peace, peace is mine!
  Bless I then the hand that smi -- teth
  Gen -- tly, and to heal de -- light -- eth;
  'Tis a -- gainst \markup\italic my \markup\italic sins He fight -- eth:
  Peace, peace is mine!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Wel -- come ev -- 'ry ris -- ing sun -- light,
  Peace, peace is mine!
  Near -- er home each roll -- ing mid -- night:
  Peace, peace is mine!
  Death and hell can -- not ap -- pal me;
  Safe in Christ what -- e'er be -- fal me;
  Calm -- ly wait I till He call me:
  Peace, peace is mine!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "God's " al migh "ty " "arms " "are " "round " "me: "
  "\nPeace, " "peace " "is " "mine! "
  "\nJudg" "ment " "scenes " "need " "not " con "found " "me: "
  "\nPeace, " "peace " "is " "mine! "
  "\nJe" "sus " "came " Him "self " "and " "sought " "mel "
  "\nSold " "to " "Death, " "He " "found " "and " "bought " "me; "
  "\nThen " "my " bles "sed " free "dom " "taught " "me— "
  "\nPeace, " "peace " "is " "mine!\n"

  \set stanza = "2."
  "\nWhile " "I " "hear " "life's " rug "ged " bil "lows, "
  "\nPeace, " "peace " "is " "mine! "
  "\nWhy " sus "pend " "my " "harp " "on " wil "lows? "
  "\nPeace, " "peace " "is " "mine! "
  "\nI " "may " "sing, " "with " "Christ " be "side " "me, "
  "\nTho' " "a " thou "sand " "ills " be "tide " "me; "
  "\nSafe" "ly " "He " "hath " "sworn " "to " "guide " "me: "
  "\nPeace, " "peace " "is " "mine!\n"

  \set stanza = "3."
  "\nEv" "'ry " tri "al " "draws " "Him " near "er: "
  "\nPeace, " "peace " "is " "mine! "
  "\nAll " "His " "strokes " "but " "make " "Him " dear "er: "
  "\nPeace, " "peace " "is " "mine! "
  "\nBless " "I " "then " "the " "hand " "that " smi "teth "
  "\nGen" "tly, " "and " "to " "heal " de light "eth; "
  "\n'Tis " a "gainst " "my " "sins " "He " fight "eth: "
  "\nPeace, " "peace " "is " "mine!\n"

  \set stanza = "4."
  "\nWel" "come " ev "'ry " ris "ing " sun "light, "
  "\nPeace, " "peace " "is " "mine! "
  "\nNear" "er " "home " "each " roll "ing " mid "night: "
  "\nPeace, " "peace " "is " "mine! "
  "\nDeath " "and " "hell " can "not " ap "pal " "me; "
  "\nSafe " "in " "Christ " what "e'er " be "fal " "me; "
  "\nCalm" "ly " "wait " "I " "till " "He " "call " "me: "
  "\nPeace, " "peace " "is " "mine! "
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
