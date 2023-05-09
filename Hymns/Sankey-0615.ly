\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Moment by Moment."
  subtitle    = "Sankey No. 615"
  subsubtitle = "C. C. No. 1"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Mary Whittle Moody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "D. W. Whittle."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
  \textMark \markup { \box \bold "D" } s2.*5
  \textMark \markup { \box \bold "E" } s2.*5
  \textMark \markup { \box \bold "F" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s2.*14
  s4 \tempo 4=40 s \tempo 4=120 s
  s2.*16
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 f g | a a a | bes f g | a2 r4 | a4 g fis |
  g4 a g | f e4. d8 | g2. | c,4 f g | a a a |
  bes4 4 b | c2 r4 | c4 b a | d, g8 r f4 | e a\fermata g | f2. |
  \section \sectionLabel \markup\smallCaps Chorus.
  a4 bes c | a g f | e4. f8 g4 | a2 r4 | a4 bes c |
  a4 g f | d4. e8 f4 | g2. | c,4 f g | a a a |
  d4 4. c8 | bes2 r4 | bes a g | d g8 r f4 | e a4. g8 | f2. |
}

alto = \relative {
  \autoBeamOff
  c'4 4 4 | f f f | f f f | 2 r4 | e e ees |
  e4 4 4 | c b4. 8 | c2. | 4 4 4 | f f f |
  f4 f f | 2 r4 | ees4 4 4 | d d8 r d4 | c e\fermata e | c2. \section |
  f4 g a | f c c | c4. d8 e4 | f2 r4 | f f f |
  f4 e d | b4. c8 d4 | e2. | c4 4 4 | f f g |
  fis4 4. a8 | g2 r4 | d d d | d4 8 r d4 | c e4. c8 | 2. |
}

tenor = \relative {
  \autoBeamOff
  a4 a bes | c c cis | d d d | c2 r4 | c bes a |
  bes4 c bes | a aes4. 8 | g2(bes4) | a a bes | c c c |
  bes4 4 gis | a2 r4 | a g f | g g8 r g4 | g c\fermata bes | a2. \section |
  c4 4 4 | c bes a | g4. c8 4 | 2 r4 | c g a |
  c4 bes a | g4. 8 4 | 2(bes4) | a a bes | c c c |
  a4 4. d8 | 2 r4 | bes c bes | g g8 r g4 | g c4. bes8 | a2. |
}

bass = \relative {
  \autoBeamOff
  f4 4 4 | 4 4 4 | 4 4 4 | 2 r4 | c c c |
  c4 c c | f4 4. 8 | e2. | f4 f f | f f ees |
  d4 d des | c2 r4 | f f f | bes,4 8 r b4 | c c\fermata c | <f, f'>2. |
  f'4 f f | f f f | c4. 8 4 | f2 r4 | 4 4 4 |
  f4 c d | f4. e8 d4 | c2. | f4 4 4 | 4 4 ees |
  d4 4. 8 | g2 r4 | g,4 a bes | 4 8 r b4 | c4 4. 8 | <f, f'>2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Mo -- ment by mo -- ment I'm kept in His love.
  Mo -- ment by mo -- ment I've life from a -- bove;
  Look -- ing to Je -- sus till glo -- ry doth shine;
  Mo -- ment by mo -- ment, O Lord, I am Thine.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Dy -- ing with Je -- sus, by death reck -- oned mine;
  Liv -- ing with Je -- sus a new life di -- vine;
  Look -- ing to Je -- sus till glo -- ry doth shine—
  Mo -- ment by mo -- ment, O Lord, I am thine.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Nev -- er a bat -- tle with wrong for the right,
  Nev -- er a con -- test that He doth not fight;
  Lift -- ing a -- bove us His ban -- ner so white—
  Mo -- ment by mo -- ment I'm kept in His sight.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Nev -- er a tri -- al that He is not there,
  Nev -- er a  bur -- den that He doth not bear,
  Nev -- er a sor -- row that He doth not share—
  Mo -- ment by mo -- ment, I'm un -- der His care.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Nev -- er a heart -- ache, and nev -- er a groan,
  Nev -- er a  tear -- drop, and nev -- er a moan;
  Nev -- er a dan -- ger but there on the throne
  Mo -- ment by mo -- ment He thinks of His own.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Nev -- er a weak -- mess that He doth not feel,
  Nev -- er a sick -- ness that He can -- not heal;
  Mo -- ment by mo -- ment, in woe or in weal,
  Je -- sus, my Sa -- viour, a -- bides with me still.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Dy" "ing " "with " Je "sus, " "by " "death " reck "oned " "mine; "
  "\nLiv" "ing " "with " Je "sus " "a " "new " "life " di "vine; "
  "\nLook" "ing " "to " Je "sus " "till " glo "ry " "doth " "shine— "
  "\nMo" "ment " "by " mo "ment, " "O " "Lord, " "I " "am " "thine. "
  "\nMo" "ment " "by " mo "ment " "I'm " "kept " "in " "His " "love. "
  "\nMo" "ment " "by " mo "ment " "I've " "life " "from " a "bove; "
  "\nLook" "ing " "to " Je "sus " "till " glo "ry " "doth " "shine; "
  "\nMo" "ment " "by " mo "ment, " "O " "Lord, " "I " "am " "Thine.\n"

  \set stanza = "2."
  "\nNev" "er " "a " bat "tle " "with " "wrong " "for " "the " "right, "
  "\nNev" "er " "a " con "test " "that " "He " "doth " "not " "fight; "
  "\nLift" "ing " a "bove " "us " "His " ban "ner " "so " "white— "
  "\nMo" "ment " "by " mo "ment " "I'm " "kept " "in " "His " "sight. "
  "\nMo" "ment " "by " mo "ment " "I'm " "kept " "in " "His " "love. "
  "\nMo" "ment " "by " mo "ment " "I've " "life " "from " a "bove; "
  "\nLook" "ing " "to " Je "sus " "till " glo "ry " "doth " "shine; "
  "\nMo" "ment " "by " mo "ment, " "O " "Lord, " "I " "am " "Thine.\n"

  \set stanza = "3."
  "\nNev" "er " "a " tri "al " "that " "He " "is " "not " "there, "
  "\nNev" "er " "a "  bur "den " "that " "He " "doth " "not " "bear, "
  "\nNev" "er " "a " sor "row " "that " "He " "doth " "not " "share— "
  "\nMo" "ment " "by " mo "ment, " "I'm " un "der " "His " "care. "
  "\nMo" "ment " "by " mo "ment " "I'm " "kept " "in " "His " "love. "
  "\nMo" "ment " "by " mo "ment " "I've " "life " "from " a "bove; "
  "\nLook" "ing " "to " Je "sus " "till " glo "ry " "doth " "shine; "
  "\nMo" "ment " "by " mo "ment, " "O " "Lord, " "I " "am " "Thine.\n"

  \set stanza = "4."
  "\nNev" "er " "a " heart "ache, " "and " nev "er " "a " "groan, "
  "\nNev" "er " "a "  tear "drop, " "and " nev "er " "a " "moan; "
  "\nNev" "er " "a " dan "ger " "but " "there " "on " "the " "throne "
  "\nMo" "ment " "by " mo "ment " "He " "thinks " "of " "His " "own. "
  "\nMo" "ment " "by " mo "ment " "I'm " "kept " "in " "His " "love. "
  "\nMo" "ment " "by " mo "ment " "I've " "life " "from " a "bove; "
  "\nLook" "ing " "to " Je "sus " "till " glo "ry " "doth " "shine; "
  "\nMo" "ment " "by " mo "ment, " "O " "Lord, " "I " "am " "Thine.\n"

  \set stanza = "5."
  "\nNev" "er " "a " weak "mess " "that " "He " "doth " "not " "feel, "
  "\nNev" "er " "a " sick "ness " "that " "He " can "not " "heal; "
  "\nMo" "ment " "by " mo "ment, " "in " "woe " "or " "in " "weal, "
  "\nJe" "sus, " "my " Sa "viour, " a "bides " "with " "me " "still. "
  "\nMo" "ment " "by " mo "ment " "I'm " "kept " "in " "His " "love. "
  "\nMo" "ment " "by " mo "ment " "I've " "life " "from " a "bove; "
  "\nLook" "ing " "to " Je "sus " "till " glo "ry " "doth " "shine; "
  "\nMo" "ment " "by " mo "ment, " "O " "Lord, " "I " "am " "Thine. "
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
