\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "At Evening Time."
  subtitle    = "Sankey No. 290"
  subsubtitle = "C.C. No. 269"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. L. Hastings."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*7
  s2 \tempo 4=40 s4
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  f4. g8 a bes8 8. a16
  bes2. 4g4. a8 bes4 c
  c2 4 \bar "|" \break 4
  d4. 8 c c b b % B
  c2 bes
  a4. 8 g4 a
  a2 bes4\fermata
}

alto = \relative {
  \autoBeamOff
  d'4
  d4. 8 8 8 ees8. 16
  f2. 4
  g4. 8 4 4
  g2 f4 4
  f4. 8 8 8 8 d % B
  ees2 2
  ees4. 8 4 4
  ees2 d4\fermata
}

tenor = \relative {
  \autoBeamOff
  f4
  f4. 8 8 8 8. 16
  bes2. 4
  bes4. 8 4 4
  bes2 a4 4
  bes4. 8 c c d g, % B
  g2 ges
  f4. c'8 bes4 c
  c4(f,) f\fermata
}

bass = \relative {
  \autoBeamOff
  bes,4
  bes4. 8 8 8 c8. 16
  d2. 4
  ees4. 8 4 e
  e2 f4 4
  bes4. 8 aes8 8 g g % B
  c,2 2
  f4. 8 4 4
  f2 bes,4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  At ev -- 'ning time may there be light,
  While life's brief day is clo -- sing;
  Then shall I fear no gath -- 'ring night,
  In Je -- sus love re -- pos -- ing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  At ev -- 'ning time may there be light,
  The light of life e -- ter -- nal;
  The ra -- diance of those man -- sions bright,
  In climes for ev -- er ver -- nal.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  At ev -- 'ning time there shall be light,
  Earth's day of storm is dy -- ing;
  Sor -- row and sad -- ness take their flight—
  There shall be no more sigh -- ing.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  At ev -- 'ning time there shall be light,
  The twi -- light skies a -- dorn -- ing;
  But oh, how fair the ra -- diance bright
  Of that swift- -- speed -- ing morn -- ing.
}

  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "At " ev "'ning " "time " "may " "there " "be " "light, "
  "\nWhile " "life's " "brief " "day " "is " clo "sing; "
  "\nThen " "shall " "I " "fear " "no " gath "'ring " "night, "
  "\nIn " Je "sus " "love " re pos "ing. "

  \set stanza = "2."
  "\nAt " ev "'ning " "time " "may " "there " "be " "light, "
  "\nThe " "light " "of " "life " e ter "nal; "
  "\nThe " ra "diance " "of " "those " man "sions " "bright, "
  "\nIn " "climes " "for " ev "er " ver "nal. "

  \set stanza = "3."
  "\nAt " ev "'ning " "time " "there " "shall " "be " "light, "
  "\nEarth's " "day " "of " "storm " "is " dy "ing; "
  "\nSor" "row " "and " sad "ness " "take " "their " "flight— "
  "\nThere " "shall " "be " "no " "more " sigh "ing. "

  \set stanza = "4."
  "\nAt " ev "'ning " "time " "there " "shall " "be " "light, "
  "\nThe " twi "light " "skies " a dorn "ing; "
  "\nBut " "oh, " "how " "fair " "the " ra "diance " "bright "
  "\nOf " "that " swift- speed "ing " morn "ing. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
