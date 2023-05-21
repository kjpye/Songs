\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "More Love to Thee, O Christ!"
  subtitle    = "Sankey No. 632"
  subsubtitle = "Sankey 880 No. 192"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. Prentiss."
  meter       = \markup\smallCaps "6.4.6.4.6.6.4."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
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
  ees'2 f4 ees | aes4.  bes8 c2 | 2 bes4 aes | bes2. r4 | ees,2 f4 ees |
  aes4. bes8 c2 | bes aes4 g | aes2. r4 | des2 4 4 | 4. c8 2 |
  bes2 4 4 | 4. aes8 2 | f2 4 4 | aes2. r4 | bes2 aes4 g | aes2. r4 |
}

alto = \relative {
  \autoBeamOff
  c'2 des4 c | ees4. 8 2 | 2 4 d | ees2. r4 | c2 des4 c |
  ees4. 8 2 | 2 4 4 | 2. r4 | aes2 4 4 | 4. 8 2 |
  g2 4 4 | ees4. 8 2 | des2 4 4 | ees2. r4 | f2 ees4 4 | 2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes2 4 4 | 4. g8 aes2 | 2 bes4 4 | g2. r4 | aes2 4 4 |
  aes4. g8 aes2 | des2 c4 des | c2. r4 | f2 4 4 | 4. ees8 2 |
  des2 4 4 | 4. c8 2 | aes2 4 4 | 2. r4 | des2 c4 bes | c2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes,2 4 4 | c4. ees8 aes2 | 2 g4 f | ees2. r4 | aes2 4 4 |
  c,4. ees8 aes2 | ees2 4 4 | aes2. r4 | 2 4 4 | 4. 8 2 |
  ees2 4 4 | 4. aes8 2 | des,2 4 4 | c2. r4 | bes2 ees4 4 | aes,2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  More love, O Christ, to Thee!
  More love to Thee!
  More love to Thee!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  More love to Thee, O Christ!
  More love to Thee;
  Hear Thou the prayer I make
  On bend -- ed knee;
  This is my earn -- est plea—
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Once earth -- ly joy I craved,
  Sought peace and rest;
  Now Thee a -- lone I seek,
  Give what is best:
  This all my prayer shall be—
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let sor -- row do its work,
  Send grief and pain;
  Sweet are Thy mes -- sen -- gers,
  Sweet their re -- frain,
  When they can sing with me—
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then shall my la -- test breath
  Whis -- per Thy praise;
  This be the part -- ing cry
  My heart shall raise—
  This still its prayer shall be—
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "More " "love " "to " "Thee, " "O " "Christ! "
  "\nMore " "love " "to " "Thee; "
  "\nHear " "Thou " "the " "prayer " "I " "make "
  "\nOn " bend "ed " "knee; "
  "\nThis " "is " "my " earn "est " "plea— "
  "\nMore " "love, " "O " "Christ, " "to " "Thee! "
  "\nMore " "love " "to " "Thee! "
  "\nMore " "love " "to " "Thee!\n"

  \set stanza = "2."
  "\nOnce " earth "ly " "joy " "I " "craved, "
  "\nSought " "peace " "and " "rest; "
  "\nNow " "Thee " a "lone " "I " "seek, "
  "\nGive " "what " "is " "best: "
  "\nThis " "all " "my " "prayer " "shall " "be— "
  "\nMore " "love, " "O " "Christ, " "to " "Thee! "
  "\nMore " "love " "to " "Thee! "
  "\nMore " "love " "to " "Thee!\n"

  \set stanza = "3."
  "\nLet " sor "row " "do " "its " "work, "
  "\nSend " "grief " "and " "pain; "
  "\nSweet " "are " "Thy " mes sen "gers, "
  "\nSweet " "their " re "frain, "
  "\nWhen " "they " "can " "sing " "with " "me— "
  "\nMore " "love, " "O " "Christ, " "to " "Thee! "
  "\nMore " "love " "to " "Thee! "
  "\nMore " "love " "to " "Thee!\n"

  \set stanza = "4."
  "\nThen " "shall " "my " la "test " "breath "
  "\nWhis" "per " "Thy " "praise; "
  "\nThis " "be " "the " part "ing " "cry "
  "\nMy " "heart " "shall " "raise— "
  "\nThis " "still " "its " "prayer " "shall " "be— "
  "\nMore " "love, " "O " "Christ, " "to " "Thee! "
  "\nMore " "love " "to " "Thee! "
  "\nMore " "love " "to " "Thee! "
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
