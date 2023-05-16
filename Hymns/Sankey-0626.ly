\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Something every Heart is Loving."
  subtitle    = "Sankey No. 626"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "14th century Latin melody"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "Tersteegen" "(" \italic tr. \smallCaps "Mrs. Bevan" ")"}
  meter       = \markup\smallCaps "8.7."
  piece       = \markup\smallCaps "Bethlehem"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 b d b | c e d a | b d c a | g b a2 |
  b4 c d e | d a b g | c b a g | g fis g2 |
}

alto = \relative {
  \autoBeamOff
  d'4 g a g | g g fis fis | g g g fis | g g fis2 |
  g4 g g g | fis d d g | g g fis g | e d d2 |
}

tenor = \relative {
  \autoBeamOff
  b4 d d d | c4. b8 a4 d | d b e d | d d d2 |
  d4 e d c | a d b b | e d d b | c a b2 |
}

bass = \relative {
  \autoBeamOff
  g4 g fis g |e4 c d d | g g c, d | b' g d2 |
  g4 e b c | d fis g e | c g' d e | c d g,2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Some -- thing ev -- 'ry heart is lov -- ing;
  If not Je -- sus, none can rest;
  Lord, my heart to Thee is giv -- en—
  Take it, for it loves Thee best.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thus I cast the world be -- hind me,
  Je -- sus most be -- loved shall be;
  Beau -- teous more than all things beau -- teous,
  He a -- lone is joy to me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bright with all e -- ter -- nal ra -- diance
  Is the glo -- ry of Thy face;
  Thou art lov -- ing, sweet and ten -- der,
  Full of pi -- ty, full of grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When I ha -- ted, Thou didst love me,
  Shedd'st for me Thy pre -- cious blood;
  Still Thou love -- est, lov -- est ev -- er—
  Shall I not love Thee, my God.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Keep my heart stll faith -- ful to Thee,
  That my earth -- ly life may be
  But a sha -- dow to that glo -- ry
  Of my hid -- den life in Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Some" "thing " ev "'ry " "heart " "is " lov "ing; "
  "\nIf " "not " Je "sus, " "none " "can " "rest; "
  "\nLord, " "my " "heart " "to " "Thee " "is " giv "en— "
  "\nTake " "it, " "for " "it " "loves " "Thee " "best.\n"

  \set stanza = "2."
  "\nThus " "I " "cast " "the " "world " be "hind " "me, "
  "\nJe" "sus " "most " be "loved " "shall " "be; "
  "\nBeau" "teous " "more " "than " "all " "things " beau "teous, "
  "\nHe " a "lone " "is " "joy " "to " "me.\n"

  \set stanza = "3."
  "\nBright " "with " "all " e ter "nal " ra "diance "
  "\nIs " "the " glo "ry " "of " "Thy " "face; "
  "\nThou " "art " lov "ing, " "sweet " "and " ten "der, "
  "\nFull " "of " pi "ty, " "full " "of " "grace.\n"

  \set stanza = "4."
  "\nWhen " "I " ha "ted, " "Thou " "didst " "love " "me, "
  "\nShedd'st " "for " "me " "Thy " pre "cious " "blood; "
  "\nStill " "Thou " love "est, " lov "est " ev "er— "
  "\nShall " "I " "not " "love " "Thee, " "my " "God.\n"

  \set stanza = "5."
  "\nKeep " "my " "heart " "stll " faith "ful " "to " "Thee, "
  "\nThat " "my " earth "ly " "life " "may " "be "
  "\nBut " "a " sha "dow " "to " "that " glo "ry "
  "\nOf " "my " hid "den " "life " "in " "Thee! "
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
