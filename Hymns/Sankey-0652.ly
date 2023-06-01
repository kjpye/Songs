\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Like a River Glorious."
  subtitle    = "Sankey No. 652"
  subsubtitle = "C. C. No. 53"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. havergal."
  meter       = \markup\smallCaps "6.5. D."
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
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*5
  \textMark \markup { \box \bold "D" } s1*5
  \textMark \markup { \box \bold "E" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Joyful 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 4 g g | a2 c | bes4 4 g g | a1 |
  f4 4 g g | a2 f | e4 e d d | c1 | c'4 4 4 4 |
  d2 c | bes4 4 a a | g1 | a4 4 g g | f2 g |
  a4 4 g g | f1 |
  \section \sectionLabel \markup\smallCaps Chorus
  c'4 4 4 4 | d2 c | bes4 4 a a |
  g1 | a4 4 g g | f2 g | a4 4 g g | f1 |
}

alto = \relative {
  \autoBeamOff
  c'4 4 4 4 | 2 ees | d4 f c c | 1 |
  c4 4 4 4 | 2 2 | 4 4 a b | c1 | 4 f e f |
  f2 2 | 4 e f f | e1 | f4 f e e | d2 d |
  c4 f d e | f1 \section | c4 f e f | 2 2 | 4 e f f |
  e1 | f4 f e e | d2 d | c4 f d e | f1 |
}

tenor = \relative {
  \autoBeamOff
  a4 4 g g | f2 2 | 4 d e e | f1 |
  a4 4 g g | f2 2 | g4 g f f | e1 | a4 a bes c |
  bes2 c | d4 c c c | 1 | 4 4 bes bes | a2 g4(f) |
  f4 a b bes | a1 \section | 4 4 bes c | bes2 c | d4 c c c |
  c1 | 4 4 bes bes | a2 g4(f) | f a b bes | a1 |
}

bass = \relative {
  \autoBeamOff
  f4 4 e e | f2 a, | bes4 4 c c | f1 |
  f4 f e e | a,2 2 | g4 g g g | c1 | f4 f g a |
  bes2 a | g4 g f f | c1 | f4 f cis cis | d2 b |
  c4 4 4 4 | f1 \section | 4 4 g a | bes2 a | g4 g f f |
  c1 | f4 f cis cis | d2 b | c4 4 4 4 | f1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Stayed up -- on Je -- ho -- vah,
  Hearts are ful -- ly blest;
  Find -- ing, as He pro -- mised,
  Per -- fect peace and rest.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Like a riv -- er glo -- rious
  Is God's per -- fect peace,
  O -- ver all vic -- to -- rious
  In its bright in -- crease;
  Per -- fect, yet it flow -- eth
  Full -- er ev -- 'ry day;
  Per -- fect, yet it grow -- eth
  Deep -- er all the way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hid -- den in the hol -- low
  Of His bless -- ed hand,
  Nev -- er foe can fol -- low,
  Nev -- er trai -- tor stand;
  Not a surge of wor -- ry,
  Not a shade of care,
  Not a blast of hur -- ry
  Moves the spi -- rit there.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ev -- 'ry joy or tri -- al
  Fall -- eth from a -- bove,
  Traced up -- on our di -- al
  By the Son of Love.
  We may trust Him ful -- ly
  All for us to do:
  They who trust Him whol -- ly
  Find Him whol -- ly true.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Like " "a " riv "er " glo "rious "
  "\nIs " "God's " per "fect " "peace, "
  "\nO" "ver " "all " vic to "rious "
  "\nIn " "its " "bright " in "crease; "
  "\nPer" "fect, " "yet " "it " flow "eth "
  "\nFull" "er " ev "'ry " "day; "
  "\nPer" "fect, " "yet " "it " grow "eth "
  "\nDeep" "er " "all " "the " "way. "
  "\nStayed " up "on " Je ho "vah, "
  "\nHearts " "are " ful "ly " "blest; "
  "\nFind" "ing, " "as " "He " pro "mised, "
  "\nPer" "fect " "peace " "and " "rest.\n"

  \set stanza = "2."
  "\nHid" "den " "in " "the " hol "low "
  "\nOf " "His " bless "ed " "hand, "
  "\nNev" "er " "foe " "can " fol "low, "
  "\nNev" "er " trai "tor " "stand; "
  "\nNot " "a " "surge " "of " wor "ry, "
  "\nNot " "a " "shade " "of " "care, "
  "\nNot " "a " "blast " "of " hur "ry "
  "\nMoves " "the " spi "rit " "there. "
  "\nStayed " up "on " Je ho "vah, "
  "\nHearts " "are " ful "ly " "blest; "
  "\nFind" "ing, " "as " "He " pro "mised, "
  "\nPer" "fect " "peace " "and " "rest.\n"

  \set stanza = "3."
  "\nEv" "'ry " "joy " "or " tri "al "
  "\nFall" "eth " "from " a "bove, "
  "\nTraced " up "on " "our " di "al "
  "\nBy " "the " "Son " "of " "Love. "
  "\nWe " "may " "trust " "Him " ful "ly "
  "\nAll " "for " "us " "to " "do: "
  "\nThey " "who " "trust " "Him " whol "ly "
  "\nFind " "Him " whol "ly " "true. "
  "\nStayed " up "on " Je ho "vah, "
  "\nHearts " "are " ful "ly " "blest; "
  "\nFind" "ing, " "as " "He " pro "mised, "
  "\nPer" "fect " "peace " "and " "rest. "
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
