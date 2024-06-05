\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Looked to Jesus."
  subtitle    = "Sankey No. 863"
  subsubtitle = "Sankey 880 No. 457"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
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

soprano = \relative {
  ees'4 | g4. 8 4 f | 4 ees4 4 g | bes4. 8 4 aes | g bes2 \bar "|" \break
  bes4 | c4. 8 4 d | ees4. 8 4 4 | d c bes a | c4 bes2
  \section \sectionLabel \markup\smallCaps Chorus. \break
  bes4 | 2. 4 | 2. 4 | c d ees f | ees2 d4 \bar "|" \break
  d4 | ees2. 4 | 2. c4 | bes4 ees, g4. f8 | f2 ees4
}

alto = \relative {
  ees'4 | 4. 8 4 bes | 4 4 4 4 | d4. 8 4 4 | ees4 g2
  g4 aes4. 8 4 4 | g4. 8 4 4 | f ees d c | ees4 d2 \section
  d8[ees] | f4 g aes4 4 | g f ees g | aes4 4 bes aes | g2 f4
  bes4 | 4 aes g bes | aes g aes4 4 | g ees d4. 8 | 2 ees4
}

tenor = \relative {
  g4 | bes4. 8 4 aes | 4 g g ees | f4. 8 4 bes | 4 2
  ees4 | 4. 8 4 bes | 4. 8 4 4 | 4 a bes f | 4 2 \section
  g4 | bes4 4 4 d | ees d ees4 4 | 4 bes4 4 c | bes2 4
  bes4 | 4 4 4 g | aes bes c ees | 4 g, bes4. aes8 | 2 g4
  
}

bass = \relative {
  ees4 | 4. 8 4 4 | 4 4 4 4 | bes4. 8 4 4 | ees4 2
  ees4 | aes4. 8 4 f | ees4. 8 4 4 | f4 4 4 4 | bes,4 2 \section
  bes8[c] | d4 ees f bes, | ees d g ees | aes f g aes | bes2 4
  bes8[aes] | g4 f ees des | c bes aes4 4 | bes4 4 4. 8 | 2 ees4
}

chorus = \lyricmode {
  “I looked to Him;”
  ’Tis true— His “Who -- so -- ev -- er;”
  “He looked on me;
  And we were one for -- ev -- er.”
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 30 \skip 1
  “I looked to Him, to Him I looked;”
  \repeat unfold 7 \skip 1
  “He looked on me, on me He looked;
  \repeat unfold 7 \skip 1
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I looked to Je -- sus in my sin,
  My woe and want con -- fess -- ing;
  Un -- done and lost, I came to Him,—
  I sought and found a bless -- ing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I looked to Je -- sus on the cross;
  For me I saw Him dy -- ing;
  God’s Word be -- lieved— that all my sins
  Were there up -- on Him ly -- ing.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I looked to Je -- sus there on high,
  From death up -- raised to glo -- ry;
  I trust -- ed in His power to save,
  Be -- lieved the old, old sto -- ry.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He looked on me— oh, look of love!
  My heart by it was bro -- ken;
  And with that look of love He gave
  The Ho -- ly Spi -- rit’s to -- ken.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Now one with Christ, I find my peace
  In Him to be a -- bid -- ing;
  And in His love for all my need,
  In child -- like faith con -- fi -- ding.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "looked " "to " Je "sus " "in " "my " "sin, "
  "\nMy " "woe " "and " "want " con fess "ing; "
  "\nUn" "done " "and " "lost, " "I " "came " "to " "Him,— "
  "\nI " "sought " "and " "found " "a " bless "ing. "
  "\n“I " "looked " "to " "Him;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me; "
  "\nAnd " "we " "were " "one " for ev "er.”\n"

  \set stanza = "2."
  "\nI " "looked " "to " Je "sus " "on " "the " "cross; "
  "\nFor " "me " "I " "saw " "Him " dy "ing; "
  "\nGod’s " "Word " be "lieved— " "that " "all " "my " "sins "
  "\nWere " "there " up "on " "Him " ly "ing. "
  "\n“I " "looked " "to " "Him;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me; "
  "\nAnd " "we " "were " "one " for ev "er.”\n"

  \set stanza = "3."
  "\nI " "looked " "to " Je "sus " "there " "on " "high, "
  "\nFrom " "death " up "raised " "to " glo "ry; "
  "\nI " trust "ed " "in " "His " "power " "to " "save, "
  "\nBe" "lieved " "the " "old, " "old " sto "ry. "
  "\n“I " "looked " "to " "Him;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me; "
  "\nAnd " "we " "were " "one " for ev "er.”\n"

  \set stanza = "4."
  "\nHe " "looked " "on " "me— " "oh, " "look " "of " "love! "
  "\nMy " "heart " "by " "it " "was " bro "ken; "
  "\nAnd " "with " "that " "look " "of " "love " "He " "gave "
  "\nThe " Ho "ly " Spi "rit’s " to "ken. "
  "\n“I " "looked " "to " "Him;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me; "
  "\nAnd " "we " "were " "one " for ev "er.”\n"

  \set stanza = "5."
  "\nNow " "one " "with " "Christ, " "I " "find " "my " "peace "
  "\nIn " "Him " "to " "be " a bid "ing; "
  "\nAnd " "in " "His " "love " "for " "all " "my " "need, "
  "\nIn " child "like " "faith " con fi "ding. "
  "\n“I " "looked " "to " "Him;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me; "
  "\nAnd " "we " "were " "one " for ev "er.” "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "I " "looked " "to " Je "sus " "in " "my " "sin, "
  "\nMy " "woe " "and " "want " con fess "ing; "
  "\nUn" "done " "and " "lost, " "I " "came " "to " "Him,— "
  "\nI " "sought " "and " "found " "a " bless "ing. "
  "\n“I " "looked " "to " "Him, " "to " "Him " "I " "looked;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me, " "on " "me " "He " "looked; "
  "\nAnd " "we " "were " "one " for ev "er.”\n"

  \set stanza = "2."
  "\nI " "looked " "to " Je "sus " "on " "the " "cross; "
  "\nFor " "me " "I " "saw " "Him " dy "ing; "
  "\nGod’s " "Word " be "lieved— " "that " "all " "my " "sins "
  "\nWere " "there " up "on " "Him " ly "ing. "
  "\n“I " "looked " "to " "Him, " "to " "Him " "I " "looked;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me, " "on " "me " "He " "looked; "
  "\nAnd " "we " "were " "one " for ev "er.”\n"

  \set stanza = "3."
  "\nI " "looked " "to " Je "sus " "there " "on " "high, "
  "\nFrom " "death " up "raised " "to " glo "ry; "
  "\nI " trust "ed " "in " "His " "power " "to " "save, "
  "\nBe" "lieved " "the " "old, " "old " sto "ry. "
  "\n“I " "looked " "to " "Him, " "to " "Him " "I " "looked;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me, " "on " "me " "He " "looked; "
  "\nAnd " "we " "were " "one " for ev "er.\n"

  \set stanza = "4."
  "\nHe " "looked " "on " "me— " "oh, " "look " "of " "love! "
  "\nMy " "heart " "by " "it " "was " bro "ken; "
  "\nAnd " "with " "that " "look " "of " "love " "He " "gave "
  "\nThe " Ho "ly " Spi "rit’s " to "ken. "
  "\n“I " "looked " "to " "Him, " "to " "Him " "I " "looked;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me, " "on " "me " "He " "looked; "
  "\nAnd " "we " "were " "one " for ev "er.”\n"

  \set stanza = "5."
  "\nNow " "one " "with " "Christ, " "I " "find " "my " "peace "
  "\nIn " "Him " "to " "be " a bid "ing; "
  "\nAnd " "in " "His " "love " "for " "all " "my " "need, "
  "\nIn " child "like " "faith " con fi "ding. "
  "\n“I " "looked " "to " "Him, " "to " "Him " "I " "looked;” "
  "\n’Tis " "true— " "His " “Who so ev "er;” "
  "\n“He " "looked " "on " "me, " "on " "me " "He " "looked; "
  "\nAnd " "we " "were " "one " for ev "er.” "
}

\book {
  \paper {
    output-suffix = midi-sop
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
