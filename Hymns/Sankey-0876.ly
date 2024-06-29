\version "2.25.17"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It Came to Me."
  subtitle    = "Sankey No. 876"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. S. Ufford."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4. s2.*3 s4.
  \textMark \markup { \box \bold "B" } s4. s2.*3 s4.
  \textMark \markup { \box \bold "C" } s4. s2.*3 s4.
  \textMark \markup { \box \bold "D" } s4. s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  ees'8 8 aes | c4. des8 c bes | bes4. aes8 g aes | bes4. des8 c bes | c4. \bar "|" \break
  ees,8 8 aes | c4. ees8 8 des | f,4. des'8 c bes | aes4. c8 8. bes16 | aes4.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  c8 8 bes | aes4. g8 aes bes | c4. 8 8 des | ees4. c8 aes c | bes4. \bar "|" \break
  des8 c bes | aes4. g8 bes aes | f4. aes8 g f | ees4. aes8^\markup\italic ritard. c8. bes16 | aes4.
}

alto = \relative {
  c'8 8 8 | ees4. f8 ees8 8 | des4. c8 des c | ees4. 8 8 8 | 4.
  c8 8 8 | ees4. ges8 f f | des4. f8 8 8 | ees4. 8 8. des16 | c4. \section
  ees8 e e | f4. e8 f f | e4. ees8 8 8 | aes4. ees8 8 8 | 4.
  ees8 8 des | c4. e8 f f | des4. 8 8 8 | c4. 8 ees8. des16 | c4.
}

tenor = \relative {
  aes8 8 ees | aes4. 8 8 g | 4. aes8 bes aes | g4. bes8 aes g | aes4.
  aes8 8 ees | aes4. 8 8 8 | 4. bes8 ees des | c4. aes8 g8. 16 | aes4. \section
  aes8 g c | 4. 8 8 f, | g4. aes8 8 bes | c4. aes8 8 8 | g4.
  bes8 aes g | aes4. bes8 aes aes | 4. f8 g aes | 4. ees8 g8. 16 | aes4.
}

bass = \relative {
  aes,8 8 8 | 4. des8 ees8 8 | 4. 8 8 8 | 4. 8 8 8 | aes,4.
  aes8 8 8 | 4. c8 des8 8 | 4. bes8 c des | ees4. 8 8. 16 | aes,4. \section
  aes8 c c | f4. c8 f des | c4. aes8 aes'8 8 | 4. 8 c, aes | ees'4.
  g8 aes ees | f4. c8 des8 8 | 4. 8 8 8 | ees4. 8 8. 16 | aes,4.
}

chorus = \lyricmode {
  By faith I saw Him in the tree;
  ’Twas there His blood was shed for me;
  And by that look, O love Di -- vine,
  I now am His, and He is mine.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  It came to me one pre -- cious day,
  That I had grieved my Lord a -- way;
  It smote me with a sense of loss;
  And drove me to His bless -- ed cross.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  It came to me that joy -- ful day,
  That He would take my sins a -- way,
  If I to Him would trust my all,
  And on His name but hum -- bly call.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  It came to me that gold -- en day,
  That in my heart He'd come and stay,
  And there a -- bide for e -- ver -- more,
  If I would o -- pen wide the door.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "It " "came " "to " "me " "one " pre "cious " "day, "
  "\nThat " "I " "had " "grieved " "my " "Lord " a "way; "
  "\nIt " "smote " "me " "with " "a " "sense " "of " "loss; "
  "\nAnd " "drove " "me " "to " "His " bless "ed " "cross. "
  "\nBy " "faith " "I " "saw " "Him " "in " "the " "tree; "
  "\n’Twas " "there " "His " "blood " "was " "shed " "for " "me; "
  "\nAnd " "by " "that " "look, " "O " "love " Di "vine, "
  "\nI " "now " "am " "His, " "and " "He " "is " "mine.\n"

  \set stanza = "2."
  "\nIt " "came " "to " "me " "that " joy "ful " "day, "
  "\nThat " "He " "would " "take " "my " "sins " a "way, "
  "\nIf " "I " "to " "Him " "would " "trust " "my " "all, "
  "\nAnd " "on " "His " "name " "but " hum "bly " "call. "
  "\nBy " "faith " "I " "saw " "Him " "in " "the " "tree; "
  "\n’Twas " "there " "His " "blood " "was " "shed " "for " "me; "
  "\nAnd " "by " "that " "look, " "O " "love " Di "vine, "
  "\nI " "now " "am " "His, " "and " "He " "is " "mine.\n"

  \set stanza = "3."
  "\nIt " "came " "to " "me " "that " gold "en " "day, "
  "\nThat " "in " "my " "heart " "He'd " "come " "and " "stay, "
  "\nAnd " "there " a "bide " "for " e ver "more, "
  "\nIf " "I " "would " o "pen " "wide " "the " "door. "
  "\nBy " "faith " "I " "saw " "Him " "in " "the " "tree; "
  "\n’Twas " "there " "His " "blood " "was " "shed " "for " "me; "
  "\nAnd " "by " "that " "look, " "O " "love " Di "vine, "
  "\nI " "now " "am " "His, " "and " "He " "is " "mine. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
