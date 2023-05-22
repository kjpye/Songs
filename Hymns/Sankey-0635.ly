\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, I am Resting."
  subtitle    = "Sankey No. 635"
  subsubtitle = "C. C. No. 67"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Jean Sophia Piggot."
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
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
  \textMark \markup { \box \bold "E" } s1*4
  \textMark \markup { \box \bold "F" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Joyfully 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4. 8 e4 d | e fis fis g | d4. 8 e4 d | fis g a2 |
  b4. a8 c4 b | a g g e | d g g fis | g1 |
  a4.^\p 8 gis4 a | b a a g | fis4. 8 e4 c' | b a g(fis) |
  fis4.^\cresc 8 g4 a | b c d b | d,^\p g g fis | g1 |
  \section \sectionLabel \markup\smallCaps Chorus.
  d4. 8 e4 d | e fis4 4 g | d4. 8 e4 d | fis g a2 |
  b4. a8 c4 b | a g g e | d g g fis | g1 |
}

alto = \relative {
  \autoBeamOff
  b4.\omit\mf 8 c4 b | c c d d | 4. 8 c4 d | c b d2 |
  d4. 8 g4 4 | fis g e c | d b d d | 1 |
  fis4.\omit\p 8  eis4 fis | 4 4 4 g | d4. 8 c4 e | d e d2 |
  d4.\omit\cresc 8 4 4 | 4 4 4 4 | b\omit\p d c d | d1
  b4. 8 c4 b | c c d d | 4. 8 c4 d | c b d2 |
  d4. 8 g4 g | fis g e c | d b d d | d1 |
}

tenor = \relative {
  \autoBeamOff
  g4.\omit\mf 8 4 4 | 4 a a b | g4. 8 4 4 | d4 4 fis2 |
  g4. a8 g4 d' | c b c g | g g b a | b1 |
  c4.\omit\p 8 b4 c | d c c b | g4. 8 4 4 | g c b(a) |
  a4.\omit\cresc 8 g4 fis | g fis g g | g\omit\p b a c | b1 \section |
  g4. 8 4 4 | g a a b | g4. 8 4 4 | d d fis2 |
  g4. a8 g4 d' | c b c g | g g b a | b1 |
}

bass = \relative {
  \autoBeamOff
  g,4.\omit\mf 8 4 4 | c4 a d g | b,4. 8 c4 b | a g d'2 |
  g4. fis8 e4 d | d d c c | b g d' d | g1 |
  d4.\omit\p 8 4 4 | 4 4 g g | b,4. 8 c4 a | b c d2 |
  c4.\omit\cresc 8 b4 a | g a c g | d'\omit\p d d d | g1 \section |
  g,4. 8 4 4 | c a d g | b,4. 8 c4 b | a g d'2 |
  g4. fis8 e4 d | d d c c | b g d' d | g1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Je -- sus! I am rest -- ing,
  rest -- ing in the joy of what \markup\italic Thou art:
  I am find -- ing out the great -- ness
  Of Thou lov -- ing heart.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus! I am rest -- ing, rest -- ing
  In the joy of what \markup\italic Thou art:
  I am find -- ing out the great -- ness
  Of Thou lov -- ing heart.
  Thou hast bid me gaze up -- on Thee,
  And Thy beau -- ty fills my soul,
  For, by thy trans -- form -- ing pow -- er,
  Thou hast made me whole.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, how great Thy lov -- ing- kind -- ness,
  Vast -- er, broad -- er than the sea!
  Oh, how mar -- vel -- lous Thy good -- ness,
  Lav -- ished all on me!
  Yes, I rest in Thee, Be -- lov -- ed,
  Know what wealth of grace is Thine.
  Know Thy cer -- tain -- ty of prom -- ise,
  And have made it mine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sim -- ply trust -- ing Thee, Lord Je -- sus,
  I be -- hold Thee as Thou art,
  And Thy love, so pure, so change -- less,
  Sat -- is -- fies my heart—
  Sat -- is -- fies its deep -- est long -- ings,
  Meets, sup -- plies its ev -- 'ry need,
  Com -- pass -- eth me round with bless -- ings:
  Thine is love in -- deed.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ev -- er lift Thy face up -- on me,
  As I work and wait for Thee;
  Rest -- ing 'neath Thy smile, Lord Je -- sus,
  Earth's dark shad -- ows flee,
  Bright -- ness of my Fath -- er's glo -- ry,
  Sun -- shine of my Fath -- er's face,
  Keep me ev -- er trust -- ing, rest -- ing:
  Fill me with Thy grace!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus! " "I " "am " rest "ing, " rest "ing "
  "\nIn " "the " "joy " "of " "what " "Thou " "art: "
  "\nI " "am " find "ing " "out " "the " great "ness "
  "\nOf " "Thou " lov "ing " "heart. "
  "\nThou " "hast " "bid " "me " "gaze " up "on " "Thee, "
  "\nAnd " "Thy " beau "ty " "fills " "my " "soul, "
  "\nFor, " "by " "thy " trans form "ing " pow "er, "
  "\nThou " "hast " "made " "me " "whole. "
  "\nJe" "sus! " "I " "am " rest "ing, "
  "\nrest" "ing " "in " "the " "joy " "of " "what " "Thou " "art: "
  "\nI " "am " find "ing " "out " "the " great "ness "
  "\nOf " "Thou " lov "ing " "heart.\n"

  \set stanza = "2."
  "\nOh, " "how " "great " "Thy " lov "ing-" kind "ness, "
  "\nVast" "er, " broad "er " "than " "the " "sea! "
  "\nOh, " "how " mar vel "lous " "Thy " good "ness, "
  "\nLav" "ished " "all " "on " "me! "
  "\nYes, " "I " "rest " "in " "Thee, " Be lov "ed, "
  "\nKnow " "what " "wealth " "of " "grace " "is " "Thine. "
  "\nKnow " "Thy " cer tain "ty " "of " prom "ise, "
  "\nAnd " "have " "made " "it " "mine. "
  "\nJe" "sus! " "I " "am " rest "ing, "
  "\nrest" "ing " "in " "the " "joy " "of " "what " "Thou " "art: "
  "\nI " "am " find "ing " "out " "the " great "ness "
  "\nOf " "Thou " lov "ing " "heart.\n"

  \set stanza = "3."
  "\nSim" "ply " trust "ing " "Thee, " "Lord " Je "sus, "
  "\nI " be "hold " "Thee " "as " "Thou " "art, "
  "\nAnd " "Thy " "love, " "so " "pure, " "so " change "less, "
  "\nSat" is "fies " "my " "heart— "
  "\nSat" is "fies " "its " deep "est " long "ings, "
  "\nMeets, " sup "plies " "its " ev "'ry " "need, "
  "\nCom" pass "eth " "me " "round " "with " bless "ings: "
  "\nThine " "is " "love " in "deed. "
  "\nJe" "sus! " "I " "am " rest "ing, "
  "\nrest" "ing " "in " "the " "joy " "of " "what " "Thou " "art: "
  "\nI " "am " find "ing " "out " "the " great "ness "
  "\nOf " "Thou " lov "ing " "heart.\n"

  \set stanza = "4."
  "\nEv" "er " "lift " "Thy " "face " up "on " "me, "
  "\nAs " "I " "work " "and " "wait " "for " "Thee; "
  "\nRest" "ing " "'neath " "Thy " "smile, " "Lord " Je "sus, "
  "\nEarth's " "dark " shad "ows " "flee, "
  "\nBright" "ness " "of " "my " Fath "er's " glo "ry, "
  "\nSun" "shine " "of " "my " Fath "er's " "face, "
  "\nKeep " "me " ev "er " trust "ing, " rest "ing: "
  "\nFill " "me " "with " "Thy " "grace! "
  "\nJe" "sus! " "I " "am " rest "ing, "
  "\nrest" "ing " "in " "the " "joy " "of " "what " "Thou " "art: "
  "\nI " "am " find "ing " "out " "the " great "ness "
  "\nOf " "Thou " lov "ing " "heart. "
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
      #(layout-set-staff-size 20)
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
