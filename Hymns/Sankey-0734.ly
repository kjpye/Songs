\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "On the Mountain's Top"
  subtitle    = "Sankey No. 734"
  subsubtitle = "Sankey 880 No. 681"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. Smart."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. Kelly."
  meter       = \markup\smallCaps "8.7.4."
  piece       = \markup\smallCaps "Regent Square."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1*3 s2
  \textMark \markup { \box \bold "B" } s2 s1*3 s2
  \textMark \markup { \box \bold "C" } s2 s1*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 e | c' g e'4. d8 | c4 g a a | g c g f | e2 \bar "|" \break
  g4 e | c' g e'4. d8 | c4 b c b | a b8[a] b4 a | g2 \bar "|" \break
  d'4. 8 | b4 g e'4. d8 | c4 a f' e | d c c b | c2
}

alto = \relative {
  \autoBeamOff
  e'4 c | g' e g4. 8 | 4 4 c, c | c c d b | c2
  e4 c | g' g8[f] e4. f8 | e4 4 4 4 | 4 4 g fis | g2
  g4. 8 | 4 4 4. e8 | f4 f a g | f e8[f] g4. f8 | e2
}

tenor = \relative {
  \autoBeamOff
  c'4 g | g c c4. b8 | c4 c a c | g a g g | 2
  c4 c | g g c4. b8 | a4 gis a gis | e'4 d8[c] d4 c | b2
  b4. 8 | d4 b c4. bes8 | a4 c d g, | a8[b] c4 d d | c2
}

bass = \relative {
  \autoBeamOff
  c4 c | e c g'4. f8 | e4 e f f | e a, b g | c2
  c'4 g | e4 8[d] c4. d8 | e4 e a f | c a d d | f2
  g4. 8 | 4 4 c,4. 8 | f4 f d e | f8[g] a4 g g, | c2
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
  On the moun -- tain's top ap -- pear -- ing,
  Lo! the sa -- cred her -- ald stands,
  Wel -- come news to Zi -- on bear -- ing—
  Zi -- on, long in hos -- tile lands:
  Mourn -- ing cap -- tive, Mourn -- ing cap -- tive,
  God Him -- self will loose thy bands.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Has thy night been long and mourn -- ful?
  Have thy friends un -- faith -- ful proved?
  Have thy foes been proud and scorn -- ful,
  By thy sighs and tears un -- moved?
  Cease thy mourn -- ing, Cease thy mourn -- ing,
  Zi -- on still is well be -- loved.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  God, thy God, will now res -- tore thee;
  He Him -- self ap -- pears thy Friend:
  All thy foes shall flee be -- fore thee,
  Here their boasts and tri -- umphs end:
  Great de -- liv -- 'rance, Great de -- liv -- 'rance,
  Zi -- on's King shall sure -- ly send.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  En -- em -- ies no more shall trou -- ble,
  All thy wrongs shall be re -- dressed;
  For thy shame thou shalt have dou -- ble,
  In thy Ma -- ker's fav -- our blessed;
  All thy con -- flicts All thy con -- flicts
  End in ev -- er -- last -- ing rest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On " "the " moun "tain's " "top " ap pear "ing, "
  "\nLo! " "the " sa "cred " her "ald " "stands, "
  "\nWel" "come " "news " "to " Zi "on " bear "ing— "
  "\nZi" "on, " "long " "in " hos "tile " "lands: "
  "\nMourn" "ing " cap "tive, " Mourn "ing " cap "tive, "
  "\nGod " Him "self " "will " "loose " "thy " "bands.\n"

  \set stanza = "2."
  "\nHas " "thy " "night " "been " "long " "and " mourn "ful? "
  "\nHave " "thy " "friends " un faith "ful " "proved? "
  "\nHave " "thy " "foes " "been " "proud " "and " scorn "ful, "
  "\nBy " "thy " "sighs " "and " "tears " un "moved? "
  "\nCease " "thy " mourn "ing, " "Cease " "thy " mourn "ing, "
  "\nZi" "on " "still " "is " "well " be "loved.\n"

  \set stanza = "3."
  "\nGod, " "thy " "God, " "will " "now " res "tore " "thee; "
  "\nHe " Him "self " ap "pears " "thy " "Friend: "
  "\nAll " "thy " "foes " "shall " "flee " be "fore " "thee, "
  "\nHere " "their " "boasts " "and " tri "umphs " "end: "
  "\nGreat " de liv "'rance, " "Great " de liv "'rance, "
  "\nZi" "on's " "King " "shall " sure "ly " "send.\n"

  \set stanza = "4."
  "\nEn" em "ies " "no " "more " "shall " trou "ble, "
  "\nAll " "thy " "wrongs " "shall " "be " re "dressed; "
  "\nFor " "thy " "shame " "thou " "shalt " "have " dou "ble, "
  "\nIn " "thy " Ma "ker's " fav "our " "blessed; "
  "\nAll " "thy " con "flicts " "All " "thy " con "flicts "
  "\nEnd " "in " ev er last "ing " "rest. "
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
