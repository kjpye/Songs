\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thy Will be Done!"
  subtitle    = "Sankey No. 718"
  subsubtitle = "Sankey 880 No. 321"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Charlotte Elliott."
  meter       = \markup\smallCaps "8.8.8.4."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3
  \textMark \markup { \box \bold "B" }    s1*5
  \textMark \markup { \box \bold "C" }    s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 | c' c4 8[(bes)] c[(des)] | c4 bes4 4 ees, | bes'4 4 8[(aes)] bes[(c)] |
  bes4 aes4 4 ees | f4 4 aes8[(g)] aes[(f)] | ees4 aes c2 | bes aes4 g | aes2. r4
  \section \sectionLabel \markup\smallCaps Refrain. \break
  f2 4 4 | aes1 | c2 bes4 aes | bes2. \section \break
  ees,4 | c'4 ees des8[(c)] bes[(aes)] | g4 f aes(f) | ees2 4 4 | 2.
}

alto = \relative {
  \autoBeamOff
  ees'4 | aes4 4 8[(g)] aes[(bes)] | aes4 g g ees | des4 4 8[(c)] des[(ees)] |
  des4 c c c | des4 4 f8[(e)] f[(des)] | c4 4 ees2 | des2 c4 bes | c2. r4 \section |
  des2 4 4 | c1 | ees2 4 f | g2.\fermata \section
  ees4 | 4 ges f8[(ees)] des[(c)] | des4 4 f(des) | c(bes) c des | c2.
}

tenor = \relative {
  \autoBeamOff
  c'4 | ees4 4 4 4 | 4 4 4 des8[bes] | g4 4 4 8[aes] |
  aes4 ees4 4 aes | 4 4 4 4 | 4 ees aes2 | f ees4 4 | 2. r4 \section |
  aes2 4 4 | 4 ees4 2 | aes2 bes4 c | ees4 4 4\fermata \section
  des8[bes] | aes4 c aes aes | 4 4 2 | 4(g) aes bes | aes2.
}

bass = \relative {
  \autoBeamOff
  aes4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4 |
  aes,4 4 4 4 | des4 4 4 4 | aes4 4 2 | bes2 ees4 4 | aes,2. r4 \section
  des2 4 4 | aes4 4 2 | aes'2 g4 f | ees4 4 4 \section
  ees4 | aes,4 4 4 4 | des4 4 2 | ees2 4 4 | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _
  Thy will— Thy will— be done!
  Thy will— Thy will— be done!
  _ _ _ _ _ _ _ _
  _ _ _ _
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  My God, my Fa -- ther, while I stray
  Far from my home, on life's rough way,
  Oh, teach me from my heart to say,
  “Thy will be done!”
  “Thy will be done!” “Thy will be done!”
  Oh, teach me from my heart to say,
  “Thy will be done!”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What tho' in lone -- ly grief I sigh
  For friends be -- loved, no long -- er nigh,
  Sub -- mis -- sive still would I re -- ply,
  “Thy will be done!”
  "" _ _ _ _ _ _ _
  Sub -- mis -- sive still would I re -- ply,
  “Thy will be done!”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let but my faint -- ing heart be blest
  With thy sweet Spi -- rit for its guest,
  My God, to Thee I leave the rest,
  “Thy will be done!”
  "" _ _ _ _ _ _ _
  My God, to Thee I leave the rest,
  “Thy will be done!”
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Re -- new my will from day to day:
  Blend it with Thine; and take a -- way
  All now that makes it hard to say,
  “Thy will be done!”
  "" _ _ _ _ _ _ _
  All now that makes it hard to say,
  “Thy will be done!”
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Then when on earth I breathe no more
  The prayer oft mixed with tears be -- fore,
  I'll sing up -- on a hap -- pier shore,
  “Thy will be done!”
  "" _ _ _ _ _ _ _
  I'll sing up -- on a hap -- pier shore,
  “Thy will be done!”
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  My God, my Fa -- ther, while I stray
  Far from my home, on life's rough way,
  Oh, teach me from my heart to say,
  “Thy will be done!”
  “Thy will be done!” “Thy will be done!”
  Oh, teach me from my heart to say,
  “Thy will be done!”

  \set stanza = "2."
  What tho' in lone -- ly grief I sigh
  For friends be -- loved, no long -- er nigh,
  Sub -- mis -- sive still would I re -- ply,
  “Thy will be done!”
  “Thy will be done!” “Thy will be done!”
  Sub -- mis -- sive still would I re -- ply,
  “Thy will be done!”

  \set stanza = "3."
  Let but my faint -- ing heart be blest
  With thy sweet Spi -- rit for its guest,
  My God, to Thee I leave the rest,
  “Thy will be done!”
  “Thy will be done!” “Thy will be done!”
  My God, to Thee I leave the rest,
  “Thy will be done!”

  \set stanza = "4."
  Re -- new my will from day to day:
  Blend it with Thine; and take a -- way
  All now that makes it hard to say,
  “Thy will be done!”
  “Thy will be done!” “Thy will be done!”
  All now that makes it hard to say,
  “Thy will be done!”

  \set stanza = "5."
  Then when on earth I breathe no more
  The prayer oft mixed with tears be -- fore,
  I'll sing up -- on a hap -- pier shore,
  “Thy will be done!”
  “Thy will be done!” “Thy will be done!”
  I'll sing up -- on a hap -- pier shore,
  “Thy will be done!”
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " "God, " "my " Fa "ther, " "while " "I " "stray "
  "\nFar " "from " "my " "home, " "on " "life's " "rough " "way, "
  "\nOh, " "teach " "me " "from " "my " "heart " "to " "say, "
  "\n“Thy " "will " "be " "done!” "
  "\n“Thy " "will " "be " "done!” " "“Thy " "will " "be " "done!” "
  "\nOh, " "teach " "me " "from " "my " "heart " "to " "say, "
  "\n“Thy " "will " "be " "done!”\n"

  \set stanza = "2."
  "\nWhat " "tho' " "in " lone "ly " "grief " "I " "sigh "
  "\nFor " "friends " be "loved, " "no " long "er " "nigh, "
  "\nSub" mis "sive " "still " "would " "I " re "ply, "
  "\n“Thy " "will " "be " "done!” "
  "\n“Thy " "will " "be " "done!” " "“Thy " "will " "be " "done!” "
  "\nSub" mis "sive " "still " "would " "I " re "ply, "
  "\n“Thy " "will " "be " "done!”\n"

  \set stanza = "3."
  "\nLet " "but " "my " faint "ing " "heart " "be " "blest "
  "\nWith " "thy " "sweet " Spi "rit " "for " "its " "guest, "
  "\nMy " "God, " "to " "Thee " "I " "leave " "the " "rest, "
  "\n“Thy " "will " "be " "done!” "
  "\n“Thy " "will " "be " "done!” " "“Thy " "will " "be " "done!” "
  "\nMy " "God, " "to " "Thee " "I " "leave " "the " "rest, "
  "\n“Thy " "will " "be " "done!”\n"

  \set stanza = "4."
  "\nRe" "new " "my " "will " "from " "day " "to " "day: "
  "\nBlend " "it " "with " "Thine; " "and " "take " a "way "
  "\nAll " "now " "that " "makes " "it " "hard " "to " "say, "
  "\n“Thy " "will " "be " "done!” "
  "\n“Thy " "will " "be " "done!” " "“Thy " "will " "be " "done!” "
  "\nAll " "now " "that " "makes " "it " "hard " "to " "say, "
  "\n“Thy " "will " "be " "done!”\n"

  \set stanza = "5."
  "\nThen " "when " "on " "earth " "I " "breathe " "no " "more "
  "\nThe " "prayer " "oft " "mixed " "with " "tears " be "fore, "
  "\nI'll " "sing " up "on " "a " hap "pier " "shore, "
  "\n“Thy " "will " "be " "done!” "
  "\n“Thy " "will " "be " "done!” " "“Thy " "will " "be " "done!” "
  "\nI'll " "sing " up "on " "a " hap "pier " "shore, "
  "\n“Thy " "will " "be " "done!” "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "My " "God, " "my " Fa "ther, " "while " "I " "stray "
  "\nFar " "from " "my " "home, " "on " "life's " "rough " "way, "
  "\nOh, " "teach " "me " "from " "my " "heart " "to " "say, "
  "\n“Thy " "will " "be " "done!” "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nOh, " "teach " "me " "from " "my " "heart " "to " "say, "
  "\n“Thy " "will " "be " "done!”\n"

  \set stanza = "2."
  "\nWhat " "tho' " "in " lone "ly " "grief " "I " "sigh "
  "\nFor " "friends " be "loved, " "no " long "er " "nigh, "
  "\nSub" mis "sive " "still " "would " "I " re "ply, "
  "\n“Thy " "will " "be " "done!” "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nSub" mis "sive " "still " "would " "I " re "ply, "
  "\n“Thy " "will " "be " "done!”\n"

  \set stanza = "3."
  "\nLet " "but " "my " faint "ing " "heart " "be " "blest "
  "\nWith " "thy " "sweet " Spi "rit " "for " "its " "guest, "
  "\nMy " "God, " "to " "Thee " "I " "leave " "the " "rest, "
  "\n“Thy " "will " "be " "done!” "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nMy " "God, " "to " "Thee " "I " "leave " "the " "rest, "
  "\n“Thy " "will " "be " "done!”\n"

  \set stanza = "4."
  "\nRe" "new " "my " "will " "from " "day " "to " "day: "
  "\nBlend " "it " "with " "Thine; " "and " "take " a "way "
  "\nAll " "now " "that " "makes " "it " "hard " "to " "say, "
  "\n“Thy " "will " "be " "done!” "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nAll " "now " "that " "makes " "it " "hard " "to " "say, "
  "\n“Thy " "will " "be " "done!”\n"

  \set stanza = "5."
  "\nThen " "when " "on " "earth " "I " "breathe " "no " "more "
  "\nThe " "prayer " "oft " "mixed " "with " "tears " be "fore, "
  "\nI'll " "sing " up "on " "a " hap "pier " "shore, "
  "\n“Thy " "will " "be " "done!” "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nThy " "will— " "Thy " "will— " "be " "done! "
  "\nI'll " "sing " up "on " "a " hap "pier " "shore, "
  "\n“Thy " "will " "be " "done!” "
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT \chorusMen
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
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
