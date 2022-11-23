\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Hiding Place."
  subtitle    = "Sankey No. 527"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "R. Hutchinson."
  meter       = \markup\smallCaps "C. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 | c f a d | c4. bes8 a4 f | e f bes a | g2. \bar "|" \break
  c,4 | c f a d | c4. d8 c4 bes | a f f g | f2. \bar "|" \break
  g4^\markup\smallCaps Chorus. | g4. f8 e4 d' | c4. bes8 a4 4 | g c b d | c2. \bar "|" \break
  c4 | 4. bes8 a4 bes | c ees d\fermata d | c a a4. g8 | f2.
}

alto = \relative {
  \autoBeamOff
  c'4 | c c f f | f4. g8 f4 4 | c c c c | e2.
  c4 | 4 4 f f | 4. 8 4 4 | 4 c d e | f2.
  e4 | 4. d8 c4 e | f4. e8 f4 4 | g4 e f f | e2.
  f4 | g4. 8 f4 4 | 4 4 4\fermata 4 | 4 4 e4. 8 | f2.
}

tenor = \relative {
  \autoBeamOff
  a4 | a a c bes | a4. c8 4 4 | bes a g f | c'2.
  a4 | 4 4 c bes | a4. bes8 a4 d | c a bes bes | a2.
  c4 | 4. 8 4 bes | c4. 8 4 4 | 4 4 d b | c2.
  c4 | 4. 8 4 g | a c bes\fermata bes | a c4 4. bes8 | a2.
}

bass = \relative {
  \autoBeamOff
  f4 | f f f f | 4. e8 f4 a | g f e f | c2.
  f4 | f f f f | 4. 8 4 bes, | c c c c | f2.
  c4 | 4. 8 4 bes' | a4. g8 f4 4 | e a g g | c,2.
  d4 | e4. 8 f4 4 | f a bes\fermata bes, | c4 4 4. 8 | f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  My Hi -- ding Place, my Hi -- ding Place,
  When storm -- y bil -- lows roll;
  My Rock, my Hope, my sure De -- fence,
  The An -- chor of my soul.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou art, O Lord, my Hi -- ding Place;
  My soul be -- neath Thy care
  May fold its wings in per -- fect peace,
  And fear no dan -- ger there.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou art, O Lord, my Hi -- ding Place
  From storm and tem -- pest wild;
  For naught can harm the hum -- blest one
  Whom Thou hast made Thy child;
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou art, O Lord, my Hi -- ding Place
  From strong temp -- ta -- tion's power;
  For Thou hast pro -- mised by Thy grace
  To keep me hour by hour.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thou art, O Lord, my Hi -- ding Place:
  My life is hid with Thee;
  Lord, Thou art mine, and I am thine,
  Thro all e -- ter -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "art, " "O " "Lord, " "my " Hi "ding " "Place; "
  "\nMy " "soul " be "neath " "Thy " "care "
  "\nMay " "fold " "its " "wings " "in " per "fect " "peace, "
  "\nAnd " "fear " "no " dan "ger " "there. "
  "\nMy " Hi "ding " "Place, " "my " Hi "ding " "Place, "
  "\nWhen " storm "y " bil "lows " "roll; "
  "\nMy " "Rock, " "my " "Hope, " "my " "sure " De "fence, "
  "\nThe " An "chor " "of " "my " "soul.\n"

  \set stanza = "2."
  "\nThou " "art, " "O " "Lord, " "my " Hi "ding " "Place "
  "\nFrom " "storm " "and " tem "pest " "wild; "
  "\nFor " "naught " "can " "harm " "the " hum "blest " "one "
  "\nWhom " "Thou " "hast " "made " "Thy " "child; "
  "\nMy " Hi "ding " "Place, " "my " Hi "ding " "Place, "
  "\nWhen " storm "y " bil "lows " "roll; "
  "\nMy " "Rock, " "my " "Hope, " "my " "sure " De "fence, "
  "\nThe " An "chor " "of " "my " "soul.\n"

  \set stanza = "3."
  "\nThou " "art, " "O " "Lord, " "my " Hi "ding " "Place "
  "\nFrom " "strong " temp ta "tion's " "power; "
  "\nFor " "Thou " "hast " pro "mised " "by " "Thy " "grace "
  "\nTo " "keep " "me " "hour " "by " "hour. "
  "\nMy " Hi "ding " "Place, " "my " Hi "ding " "Place, "
  "\nWhen " storm "y " bil "lows " "roll; "
  "\nMy " "Rock, " "my " "Hope, " "my " "sure " De "fence, "
  "\nThe " An "chor " "of " "my " "soul.\n"

  \set stanza = "4."
  "\nThou " "art, " "O " "Lord, " "my " Hi "ding " "Place: "
  "\nMy " "life " "is " "hid " "with " "Thee; "
  "\nLord, " "Thou " "art " "mine, " "and " "I " "am " "thine, "
  "\nThro " "all " e ter ni "ty. "
  "\nMy " Hi "ding " "Place, " "my " Hi "ding " "Place, "
  "\nWhen " storm "y " bil "lows " "roll; "
  "\nMy " "Rock, " "my " "Hope, " "my " "sure " De "fence, "
  "\nThe " An "chor " "of " "my " "soul.\n"
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
