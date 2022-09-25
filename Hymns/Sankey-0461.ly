\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How Solemn are the Words."
  subtitle    = "Sankey No. 461"
  subsubtitle = "Sankey 880 No. 147"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "German Chorale."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Albert Midlane."
  meter       = \markup\smallCaps "S.M."
  piece       = \markup\smallCaps "Franconia."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
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
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 | f4 g aes bes | g2. bes4 | c ees aes, g | f2. \bar "|" \break bes4 |
  ees4 d c bes | c c bes bes | ees, g f f | ees2.
}

alto = \relative {
  \autoBeamOff
  bes4 | d ees ees d | ees2. 4 | 4 4 d ees | d2. 4 |
  ees4 f f d | g f d ees | ees4 4 4 d | ees2.
}

tenor = \relative {
  \autoBeamOff
  g4 | bes bes aes f | g2. 4 | aes g f ees | bes2. 4 |
  bes4 4 a bes | bes a bes g | g bes c bes | g2.
}

bass = \relative {
  \autoBeamOff
  ees4 | bes ees c bes | ees2. 4 | aes g f ees | bes2. bes'4 |
  g4 bes f g | ees f bes, ees | c g aes bes | ees2.
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
  How sol -- emn are the words,
  And yet to faith how plain,
  Which Je -- sus ut -- tered while on earth—
  \markup\italic "\"Ye" \markup\italic must \markup\italic be \markup\italic born \markup\italic a -- \markup\italic "gain!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  \markup\italic "\"Ye" \markup\italic must \markup\italic be \markup\italic born \markup\italic a -- \markup\italic "gain!\""
  For so hath God de -- creed;
  No re -- for -- ma -- tion will suf -- fice—
  'Tis \markup\italic life poor sin -- ners need.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  \markup\italic "\"Ye" \markup\italic must \markup\italic be \markup\italic born \markup\italic a -- \markup\italic "gain!\""
  And life \markup\italic in \markup\italic Christ must have;
  In vain the soul may else -- where go—
  'Tis He \markup\italic a -- \markup\italic lone can save.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  \markup\italic "\"Ye" \markup\italic must \markup\italic be \markup\italic born \markup\italic a -- \markup\italic "gain!\""
  Or nev -- er en -- ter heaven;
  'Tis on -- ly blood- -- washed ones are there—
  The ran -- somed and for -- given.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nHow " sol "emn " "are " "the " "words, "
  "\nAnd " "yet " "to " "faith " "how " "plain, "
  "\nWhich " Je "sus " ut "tered " "while " "on " "earth—"
  "\"Ye " "must " "be " "born " a "gain!\"\n"

  \set stanza = "2."
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\nFor " "so " "hath " "God " de "creed; "
  "\nNo " re for ma "tion " "will " suf "fice— "
  "\n'Tis " "life " "poor " sin "ners " "need.\n"

  \set stanza = "3."
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\nAnd " "life " "in " "Christ " "must " "have; "
  "\nIn " "vain " "the " "soul " "may " else "where " "go— "
  "\n'Tis " "He " a "lone " "can " "save.\n"

  \set stanza = "4."
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\nOr " nev "er " en "ter " "heaven; "
  "\n'Tis " on "ly " blood- "washed " "ones " "are " "there— "
  "\nThe " ran "somed " "and " for "given. "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
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
