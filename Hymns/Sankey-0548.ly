\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thou, Lord, Knowest."
  subtitle    = "Sankey No. 548"
  subsubtitle = "Sankey 880 No. 556"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "M. L. Bradshaw."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Anna Shipton."
%  meter       = \markup\smallCaps "meter"
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
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'2\omit\p^\markup{\dynamic p \bold\italic Andante.} c4 bes | a2. 4 | 4 g a bes | f2 e | g2 f4 e |
  f4 a e' d | c2. bes4 | a1 | 2 c4 bes | a2. 4 |
  bes4 f' ees d | 2 cis4. 8 | d2 e | f c | g4. fis8 g4 a | f1 |
}

alto = \relative {
  \autoBeamOff
  f'2 g4 f | f2. e4 | d4 4 4 4 | c2 2 | e2 c4 4 |
  c4 f f f | g(e f) g | f1 | 2 g4 f | 2. e4 |
  f4 bes4 4 4 | a2 4. 8 | f2 g | f f | e4. dis8 e4 4 | c1 |
}

tenor = \relative {
  \autoBeamOff
  c'2 e4 d | c2. cis4 | bes4 4 a g | a2 g | bes2 a4 g |
  a4 c a a | c2. 4 | 1 | 2 e4 d | c2. cis4 |
  d4 4 e f | 2 e4. 8 | bes2 2 a a | bes4. a8 bes4 c | a1 |
}

bass = \relative {
  \autoBeamOff
  f2 4 4 | 2. a,4 | bes4 4 4 4 | c2 2 | 2 4 4 |
  c4 4 4 4 | e(c d) e | f1 | 2 4 4 | 2. a,4 |
  d4 f f f | a2 4. 8 | bes2 c, | 2 2 | 4. 8 4 4 | f1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou know -- est, Lord,
  Thou know -- est all a -- bout me,
  And all the wind -- ing way my feet have trod;
  And now Thou know'st I can -- not go with -- out Thee,
  To guide me on -- ward thro' the swel -- ling flood.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou know'st my way—
  how lone, how dark, how cheer -- less,
  If Thy dear hand I fail in all to see:
  Bright with Thy smile of love, my heart is fear -- less,
  When in my weak -- ness I can lean on Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Give me Thy pre -- sence! Go Thou, Lord, be -- fore me,
  Make a plain path where all is rough and drear;
  So let me trust the love that watch -- es o'er me,
  And in the sha -- dows still be -- lieve Thee near.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " know "est, " "Lord, "
  "\nThou " know "est " "all " a "bout " "me, "
  "\nAnd " "all " "the " wind "ing " "way " "my " "feet " "have " "trod; "
  "\nAnd " "now " "Thou " "know'st " "I " can "not " "go " with "out " "Thee, "
  "\nTo " "guide " "me " on "ward " "thro' " "the " swel "ling " "flood.\n"

  \set stanza = "2."
  "\nThou " "know'st " "my " "way— "
  "\nhow " "lone, " "how " "dark, " "how " cheer "less, "
  "\nIf " "Thy " "dear " "hand " "I " "fail " "in " "all " "to " "see: "
  "\nBright " "with " "Thy " "smile " "of " "love, " "my " "heart " "is " fear "less, "
  "\nWhen " "in " "my " weak "ness " "I " "can " "lean " "on " "Thee.\n"

  \set stanza = "3."
  "\nGive " "me " "Thy " pre "sence! " "Go " "Thou, " "Lord, " be "fore " "me, "
  "\nMake " "a " "plain " "path " "where " "all " "is " "rough " "and " "drear; "
  "\nSo " "let " "me " "trust " "the " "love " "that " watch "es " "o'er " "me, "
  "\nAnd " "in " "the " sha "dows " "still " be "lieve " "Thee " "near. "
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
