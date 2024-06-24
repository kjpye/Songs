\version "2.25.17"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sunshine in the Soul."
  subtitle    = "Sankey No. 872"
  subsubtitle = "C. C. No. 150"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Hewitt."
  meter       = \markup\smallCaps "C.M."
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
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1 s2.
  \textMark \markup { \box \bold "D" } s4 s1*2
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  aes'8. bes16 | c4 es,4 f8. g16 aes8. bes16 | c2. 8.[des16] | c4 bes ees, bes' | aes2. \bar "|" \break
  aes8.[bes16] | c4 ees, f8. g16 aes8. bes16 | c2. 4 | bes4. 8 c4 d | ees2.
  \section \sectionLabel \markup\smallCaps Refrain. \break
  ees8. des16 | c2 aes4 \apart \tuplet 3/2 {bes8[aes] f} | \auto ees2 c4 \bar "|" \break
  c8. des16 | ees4 aes c8. ees16 des8. c16 | bes2. ees8.[des16] |
  c4 4 des4. c8 | c[bes] aes[f] ees4 aes8 bes | c8 4. bes4 4 | aes2.
}

alto = \relative {
  c'8. des16 | ees4 c des8. ees16 f8. 16 | ees2. 8.[f16] | ees4 des4 4 4 | c2.
  c8.[des16] | ees4 c des8. ees16 f8. 16 | ees2. 4 | 4. 8 aes4 4 | g2. \section
  g8. ees16 | 2 4 \tuplet 3/2 {f4 des8} | c2 aes4 |
  aes8. bes16 | c4 4 ees8. 16 8. 16 | 2. 4 |
  ees4 4 f4. ees8 | f4 8[des] c4 ees8 f | ees8 4. des4 4 | c2.
}

tenor = \relative {
  ees8. 16 | aes4 4 8. 16 8. 16 | 2. 4 | 4 aes4 4 ees | 2.
  ees4 | aes4 4 8. 16 8. 16 | 2. 4 | g4. 8 bes4 4 | 2. \section
  bes8. 16 | aes8. 16 8. 16 c4 \tuplet 3/2 {des4 aes8} | 8. 16 8. 16 ees4
  ees8. 16 | aes4 ees aes8. c16 bes8. aes16 | g8. 16 8. 16 8.[aes16] bes4 |
  aes4 4 4. 8 | des4 8[aes] 4 8 8 | 8 4. g4 4 | aes2.
}

bass = \relative {
  aes,8. 16 | 4 4 des8. 16 8. 16 | aes2. 4 | ees'4 4 4 4 | aes,2.
  aes4 | 4 4 des8. 16 8. 16 | aes2. 4 | bes4. 8 4 4 | ees2. \section
  ees8. g16 | aes8. 16 8. 16 4 \tuplet 3/2 {des,4 8} | aes8. 16 8. 16 4
  aes8. 16 | 4 4 aes'8. 16 g8. aes16 | ees8. 16 8. 16 8.[f16] g4 |
  aes4 4 4. 8 | des,4 4 aes c8 des | ees8 4. 4 4 | aes,2.
}

chorus = \lyricmode {
  Oh, there's sun -- shine, bles -- sed sun -- shine,
  When the peace -- ful, hap -- py mo -- ments roll;
  When Je -- sus shows His smil -- ing face,
  There is sun -- shine in my soul.
}

chorusMen = \lyricmode {
  \repeat unfold 29 \skip 1
  Oh, there's sun -- shine in my soul,
  bles -- sed sun -- shine in my soul,
  _ _ _ _ _ _ _ _ hap -- py mo -- ments roll;
  \repeat unfold 15 \skip 1
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  There is sun -- shine in my soul to -- day,
  More glo -- ri -- ous and bright
  Than glows in an -- y earth -- ly sky,
  For Je -- sus is my Light.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There is mu -- sic in my soul to -- day,
  A ca -- rol to my King;
  And Je -- sus, list -- en -- ing, can hear
  The songs I can -- not sing.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There is spring -- time in my soul to -- day,
  For when the Lord is near,
  The dove of peace sings in my heart,
  The flowers if grace ap -- pear.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  There is glad -- ness in my soul to -- day,
  And hope, and praise, and love;
  For bles -- sings which He gives me now,
  For joys laid up a -- bove.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " sun "shine " "in " "my " "soul " to "day, "
  "\nMore " glo ri "ous " "and " "bright "
  "\nThan " "glows " "in " an "y " earth "ly " "sky, "
  "\nFor " Je "sus " "is " "my " "Light. "
  "\nOh, " "there's " sun "shine, " bles "sed " sun "shine, "
  "\nWhen " "the " peace "ful, " hap "py " mo "ments " "roll; "
  "\nWhen " Je "sus " "shows " "His " smil "ing " "face, "
  "\nThere " "is " sun "shine " "in " "my " "soul.\n"

  \set stanza = "2."
  "\nThere " "is " mu "sic " "in " "my " "soul " to "day, "
  "\nA " ca "rol " "to " "my " "King; "
  "\nAnd " Je "sus, " list en "ing, " "can " "hear "
  "\nThe " "songs " "I " can "not " "sing. "
  "\nOh, " "there's " sun "shine, " bles "sed " sun "shine, "
  "\nWhen " "the " peace "ful, " hap "py " mo "ments " "roll; "
  "\nWhen " Je "sus " "shows " "His " smil "ing " "face, "
  "\nThere " "is " sun "shine " "in " "my " "soul.\n"

  \set stanza = "3."
  "\nThere " "is " spring "time " "in " "my " "soul " to "day, "
  "\nFor " "when " "the " "Lord " "is " "near, "
  "\nThe " "dove " "of " "peace " "sings " "in " "my " "heart, "
  "\nThe " "flowers " "if " "grace " ap "pear. "
  "\nOh, " "there's " sun "shine, " bles "sed " sun "shine, "
  "\nWhen " "the " peace "ful, " hap "py " mo "ments " "roll; "
  "\nWhen " Je "sus " "shows " "His " smil "ing " "face, "
  "\nThere " "is " sun "shine " "in " "my " "soul.\n"

  \set stanza = "4."
  "\nThere " "is " glad "ness " "in " "my " "soul " to "day, "
  "\nAnd " "hope, " "and " "praise, " "and " "love; "
  "\nFor " bles "sings " "which " "He " "gives " "me " "now, "
  "\nFor " "joys " "laid " "up " a "bove. "
  "\nOh, " "there's " sun "shine, " bles "sed " sun "shine, "
  "\nWhen " "the " peace "ful, " hap "py " mo "ments " "roll; "
  "\nWhen " Je "sus " "shows " "His " smil "ing " "face, "
  "\nThere " "is " sun "shine " "in " "my " "soul. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "There " "is " sun "shine " "in " "my " "soul " to "day, "
  "\nMore " glo ri "ous " "and " "bright "
  "\nThan " "glows " "in " an "y " earth "ly " "sky, "
  "\nFor " Je "sus " "is " "my " "Light. "
  "\nOh, " "there's " sun "shine " "in " "my " "soul, "
  "\nbles" "sed " sun "shine " "in " "my " "soul, "
  "\nWhen " "the " peace "ful, " hap "py " mo "ments, "
  "\nhap" "py " mo "ments " "roll; "
  "\nWhen " Je "sus " "shows " "His " smil "ing " "face, "
  "\nThere " "is " sun "shine " "in " "my " "soul.\n"

  \set stanza = "2."
  "\nThere " "is " mu "sic " "in " "my " "soul " to "day, "
  "\nA " ca "rol " "to " "my " "King; "
  "\nAnd " Je "sus, " list en "ing, " "can " "hear "
  "\nThe " "songs " "I " can "not " "sing. "
  "\nOh, " "there's " sun "shine " "in " "my " "soul, "
  "\nbles" "sed " sun "shine " "in " "my " "soul, "
  "\nWhen " "the " peace "ful, " hap "py " mo "ments, "
  "\nhap" "py " mo "ments " "roll; "
  "\nWhen " Je "sus " "shows " "His " smil "ing " "face, "
  "\nThere " "is " sun "shine " "in " "my " "soul.\n"

  \set stanza = "3."
  "\nThere " "is " spring "time " "in " "my " "soul " to "day, "
  "\nFor " "when " "the " "Lord " "is " "near, "
  "\nThe " "dove " "of " "peace " "sings " "in " "my " "heart, "
  "\nThe " "flowers " "if " "grace " ap "pear. "
  "\nOh, " "there's " sun "shine " "in " "my " "soul, "
  "\nbles" "sed " sun "shine " "in " "my " "soul, "
  "\nWhen " "the " peace "ful, " hap "py " mo "ments, "
  "\nhap" "py " mo "ments " "roll; "
  "\nWhen " Je "sus " "shows " "His " smil "ing " "face, "
  "\nThere " "is " sun "shine " "in " "my " "soul.\n"

  \set stanza = "4."
  "\nThere " "is " glad "ness " "in " "my " "soul " to "day, "
  "\nAnd " "hope, " "and " "praise, " "and " "love; "
  "\nFor " bles "sings " "which " "He " "gives " "me " "now, "
  "\nFor " "joys " "laid " "up " a "bove. "
  "\nOh, " "there's " sun "shine " "in " "my " "soul, "
  "\nbles" "sed " sun "shine " "in " "my " "soul, "
  "\nWhen " "the " peace "ful, " hap "py " mo "ments, "
  "\nhap" "py " mo "ments " "roll; "
  "\nWhen " Je "sus " "shows " "His " smil "ing " "face, "
  "\nThere " "is " sun "shine " "in " "my " "soul. "
}

\book {
  \paper {
    output-suffix = midi-women
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
    output-suffix = midi-men
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
                 \override TupletBracket.bracket-visibility = ##t
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
