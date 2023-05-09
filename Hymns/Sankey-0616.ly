\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Consecration"
  subtitle    = "Sankey No. 616"
  subsubtitle = "Sankey 880 No. 416"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{from \smallCaps "Mozart"}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. Havergal."
  meter       = \markup\smallCaps "7.7.7.7."
  piece       = \markup\smallCaps "Nottingham."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*8
  \textMark \markup { \box \bold "B" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 4 | fis2 d4 | c'2 4 | b2. | d2 b4 | b(c) a | g2 b4 | a2. |
  g2 4 | fis4.(e8) d4 | 2 fis4 | g2. | d'2 b4 | a(c) e | g,2 fis4 | g2. |
}

alto = \relative {
  \autoBeamOff
  d'2 4 | 2 4 | 2 fis4 | g2. | 2 4 | e2 d4 | 2 g4 | fis2. |
  g2 4 | fis4.(e8) d4 | 2 fis4 | g2. | d4(g) f | e2 4 | d2 c4 | b2. |
}

tenor = \relative {
  \autoBeamOff
  b2 4 | a2 fis4 | 4(a) d | 2. | 4(b) b | a2 c4 | b2 d4 | 2. |
  b4(d) b | c4.(b8) a[g] | fis4(a) d | 2. | b2 d4 | c2 a4 | b2 a4 | g2. |
}

bass = \relative {
  \autoBeamOff
  g2 4 | d2 4 | d(fis) d | g2. | b4(g) g | a2 fis4 | g(b) g | d2. |
  g4(b) g | a4.(g8) fis[e] | d4(fis) d | g2. | 2 gis4 | a2 c,4 | d2 4 | g,2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Take my life, and let it be
  Con -- se -- cra -- ted Lord, to Thee;
  Take my mo -- ments and my days,
  Let them flow in cease -- less praise.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Take my hands and let them move
  At the im -- pulse of Thy love;
  Take my feet, and let them be
  Swift and Beau -- ti -- ful for Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Take my voice, and let me sing
  Al -- ways, on -- ly, for my Kingl
  Take my lips, and let them be
  Filled with mes -- sa -- ges from Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Take my sil -- ver and my gold;
  Not a mite would I with -- hold;
  Take my in -- tel -- lect, and use
  Ev -- 'ry power as Thou shalt choose.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Take my will, and make it Thine;
  It shall be no lon -- ger mine;
  Take my heart— it is Thine own,
  It shall be Thy roy -- al throne.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Take my love: my Lord, I pour
  At Thy feet its trea -- sure- store;
  Take my -- self, and I will be
  Ev -- er, on -- ly, ALL for Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Take " "my " "life, " "and " "let " "it " "be "
  "\nCon" se cra "ted " "Lord, " "to " "Thee; "
  "\nTake " "my " mo "ments " "and " "my " "days, "
  "\nLet " "them " "flow " "in " cease "less " "praise.\n"

  \set stanza = "2."
  "\nTake " "my " "hands " "and " "let " "them " "move "
  "\nAt " "the " im "pulse " "of " "Thy " "love; "
  "\nTake " "my " "feet, " "and " "let " "them " "be "
  "\nSwift " "and " Beau ti "ful " "for " "Thee.\n"

  \set stanza = "3."
  "\nTake " "my " "voice, " "and " "let " "me " "sing "
  "\nAl" "ways, " on "ly, " "for " "my " "Kingl "
  "\nTake " "my " "lips, " "and " "let " "them " "be "
  "\nFilled " "with " mes sa "ges " "from " "Thee.\n"

  \set stanza = "4."
  "\nTake " "my " sil "ver " "and " "my " "gold; "
  "\nNot " "a " "mite " "would " "I " with "hold; "
  "\nTake " "my " in tel "lect, " "and " "use "
  "\nEv" "'ry " "power " "as " "Thou " "shalt " "choose.\n"

  \set stanza = "5."
  "\nTake " "my " "will, " "and " "make " "it " "Thine; "
  "\nIt " "shall " "be " "no " lon "ger " "mine; "
  "\nTake " "my " "heart— " "it " "is " "Thine " "own, "
  "\nIt " "shall " "be " "Thy " roy "al " "throne.\n"

  \set stanza = "6."
  "\nTake " "my " "love: " "my " "Lord, " "I " "pour "
  "\nAt " "Thy " "feet " "its " trea sure "store; "
  "\nTake " my "self, " "and " "I " "will " "be "
  "\nEv" "er, " on "ly, " "ALL " "for " "Thee. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
