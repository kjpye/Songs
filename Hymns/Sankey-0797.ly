\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only a Little Word!"
  subtitle    = "Sankey No. 797"
  subsubtitle = "C. C. No. 208"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
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

global = {
  \key aes \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 b c | des8 c aes2 | bes4 f g | f ees2 | 4 aes4 4 |
  aes4 des c | c bes c | bes2 r4 | c b c des8 c aes2 |
  aes4 g aes | bes8 aes f2 | ees4 aes bes | c ees\fermata des | c aes bes | aes2 r4 |
  \section \sectionLabel \markup\smallCaps Chorus.
  ees'4 d ees | f8 ees c2 | c4 b c | des8 c aes2 |
  bes4 aes f | 8 ees aes2 | c4 c bes | aes2 r4 |
}

alto = \relative {
  \autoBeamOff
  ees'4 d ees | f8 ees c2 | des4 4 ees | des c2 | 4 4 4 |
  c4 f ees | d d d | ees2 r4 | 4 d ees | f8 ees c2 |
  des4 4 4 | 8 8 2 | c4 ees4 4 | 4 ges\fermata f | ees4 4 4 | 2 r4 \section |
  aes4 4 4 | 8 8 2 | \apart R2. | R | \auto
  f4 4 des | 8 c8 2 | ees4 4 des | c2 r4 |
}

tenor = \relative {
  \autoBeamOff
  aes4 4 4 | 8 8 ees2 | g4 aes bes | aes4 2 | 4 ees4 4 |
  ees4 aes4 4 | 4 4 4 | g2 r4 | aes4 4 4 8 8 ees2 |
  f4 e f | 8 8 aes2 | 4 4 g | aes4 4\fermata 4 |4 c des | c2 r4 |
  c4 b c | des8 c ees2 | 4 d ees | f8 ees c2 |
  des4 4 aes | 8 8 ees2 | aes4 4 g | ees2 r4 |
}

bass = \relative {
  \autoBeamOff
  aes,4 4 4 | 8 8 2 | ees'4 4 4 | aes,4 2 | 4 4 4 |
  aes4 4 4 | bes4 4 4 | ees2 r4 | aes,4 4 4 | 8 8 2 |
  des4 4 4 | 8 8 2 | aes4 c ees | aes c,\fermata des | ees4 4 4 | aes,2 r4 \section |
  aes'4 4 4 | 8 8 2 | \apart R2. | R \auto |
  des,4 4 4 | aes8 8 2 | ees'4 4 ees, | aes2 r4 |
}

chorus = \lyricmode {
  On -- ly a lit -- tle word!
  On -- ly a lit -- tle word!
  On -- ly a lit -- tle word, whis -- pered in love!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  On -- ly a lit -- tle word, soft -- ly and kind -- ly
  Breathed in the ear of the sad and op -- prest;
  Oh, how it ten -- der -- ly steals like a mel -- o -- dy
  O -- ver life's bil -- lows, and lulls them to rest!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On -- ly a lit -- tle word, soft -- ly and kind -- ly
  Dropped in a heart that is blight -- ed and chilled:
  Oh, how its gen -- tle strain tunes ev -- 'ry chord a -- gain,
  Wa -- king the e -- choes that sor -- row has stilled!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ly a lit -- tle word, care -- ful -- ly spo -- ken,
  Borne to the lost on the des -- ert that roam,
  Breaks like the morn -- ing light, cha -- sing the drear -- y night,
  Point -- ing them up -- ward, and lead -- ing them home.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  On -- ly a lit -- tle word, spo -- ken for Je -- sus,
  Tell -- ing His pi -- ty, com -- pas -- sion, and love;
  Out of the path of sin, thou -- sands may gath -- er in,
  Joy -- ful to en -- ter His King -- dom a -- bove.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On" "ly " "a " lit "tle " "word, " soft "ly " "and " kind "ly "
  "\nBreathed " "in " "the " "ear " "of " "the " "sad " "and " op "prest; "
  "\nOh, " "how " "it " ten der "ly " "steals " "like " "a " mel o "dy "
  "\nO" "ver " "life's " bil "lows, " "and " "lulls " "them " "to " "rest! "
  "\nOn" "ly " "a " lit "tle " "word! "
  "\nOn" "ly " "a " lit "tle " "word! "
  "\nOn" "ly " "a " lit "tle " "word, " whis "pered " "in " "love!\n"

  \set stanza = "2."
  "\nOn" "ly " "a " lit "tle " "word, " soft "ly " "and " kind "ly "
  "\nDropped " "in " "a " "heart " "that " "is " blight "ed " "and " "chilled: "
  "\nOh, " "how " "its " gen "tle " "strain " "tunes " ev "'ry " "chord " a "gain, "
  "\nWa" "king " "the " e "choes " "that " sor "row " "has " "stilled! "
  "\nOn" "ly " "a " lit "tle " "word! "
  "\nOn" "ly " "a " lit "tle " "word! "
  "\nOn" "ly " "a " lit "tle " "word, " whis "pered " "in " "love!\n"

  \set stanza = "3."
  "\nOn" "ly " "a " lit "tle " "word, " care ful "ly " spo "ken, "
  "\nBorne " "to " "the " "lost " "on " "the " des "ert " "that " "roam, "
  "\nBreaks " "like " "the " morn "ing " "light, " cha "sing " "the " drear "y " "night, "
  "\nPoint" "ing " "them " up "ward, " "and " lead "ing " "them " "home. "
  "\nOn" "ly " "a " lit "tle " "word! "
  "\nOn" "ly " "a " lit "tle " "word! "
  "\nOn" "ly " "a " lit "tle " "word, " whis "pered " "in " "love!\n"

  \set stanza = "4."
  "\nOn" "ly " "a " lit "tle " "word, " spo "ken " "for " Je "sus, "
  "\nTell" "ing " "His " pi "ty, " com pas "sion, " "and " "love; "
  "\nOut " "of " "the " "path " "of " "sin, " thou "sands " "may " gath "er " "in, "
  "\nJoy" "ful " "to " en "ter " "His " King "dom " a "bove. "
  "\nOn" "ly " "a " lit "tle " "word! "
  "\nOn" "ly " "a " lit "tle " "word! "
  "\nOn" "ly " "a " lit "tle " "word, " whis "pered " "in " "love! "
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
