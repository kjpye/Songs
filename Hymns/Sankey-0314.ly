\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Hour of Prayer."
  subtitle    = "Sankey No. 314"
  subsubtitle = "Sankey 880 No. 724"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Gauntlett."
%  arranger    = "arranger"
  opus        = \markup {\italic "See also" \smallCaps Troyte, No. 718}

  poet        = \markup\smallCaps "Charlotte Elliott."
  meter       = \markup\smallCaps "8.8.8.4."
  piece       = \markup\smallCaps "Riseholme."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key aes \major
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
  ees'4
  ees4 f aes4. 8
  aes4 bes bes aes
  bes4 des des c
  bes4. 8 c4 \bar "|" \break c
  c4 g aes aes % B
  bes4 f g aes
  aes2 f
  aes2.
}

alto = \relative {
  \autoBeamOff
  c'4
  c4 aes c4. 8
  c4 d ees ees
  f4 4 ees ees
  ees4. 8 4 e
  e4 4 f f % B
  f4 4 ees ees
  f2 des
  ees2.
}

tenor = \relative {
  \autoBeamOff
  aes4
  aes4 f ees4. aes8
  aes4 4 g aes
  aes4 4 g aes
  aes4 g aes g
  g4 c c c % B
  bes4 4 4 aes
  aes2 2
  c2.
}

bass = \relative {
  \autoBeamOff
  aes,4
  aes4 des aes4. f'8
  f4 4 ees c
  des4 bes ees aes
  ees4. 8 aes,4 c
  c4 4 f ees % B
  d4 4 ees c
  des2 2
  aes2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  My God, is a -- ny hour so sweet,
  From blush of morn to ev -- 'ning star,
  As that which calls me to Thy feet—
  The hour of prayer?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Then is my strength by Thee re -- newed;
  Then are my sins by Thee for -- given;
  Then dost Thou cheer my sol -- i -- tude
  With hopes of heaven.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No words can tell what sweet re -- lief
  Here for my ev -- 'ry want I find:
  What strength for war -- fare, alm for grief,
  What peace of mind.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Hushed is each doubt, gone ev -- 'ry fear;
  My spi -- rit seems in heaven to stay;
  And e'en the pen -- i -- ten -- tial tear
  Is wiped a -- way.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Lord, till I reach yon bliss -- ful shore,
  No priv -- i -- lege so dear shall be
  As thus my in -- most soul to pour
  In prayer to Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " "God, " "is " a "ny " "hour " "so " "sweet, "
  "\nFrom " "blush " "of " "morn " "to " ev "'ning " "star, "
  "\nAs " "that " "which " "calls " "me " "to " "Thy " "feet— "
  "\nThe " "hour " "of " "prayer? "

  \set stanza = "2."
  "\nThen " "is " "my " "strength " "by " "Thee " re "newed; "
  "\nThen " "are " "my " "sins " "by " "Thee " for "given; "
  "\nThen " "dost " "Thou " "cheer " "my " sol i "tude "
  "\nWith " "hopes " "of " "heaven. "

  \set stanza = "3."
  "\nNo " "words " "can " "tell " "what " "sweet " re "lief "
  "\nHere " "for " "my " ev "'ry " "want " "I " "find: "
  "\nWhat " "strength " "for " war "fare, " "alm " "for " "grief, "
  "\nWhat " "peace " "of " "mind. "

  \set stanza = "4."
  "\nHushed " "is " "each " "doubt, " "gone " ev "'ry " "fear; "
  "\nMy " spi "rit " "seems " "in " "heaven " "to " "stay; "
  "\nAnd " "e'en " "the " pen i ten "tial " "tear "
  "\nIs " "wiped " a "way. "

  \set stanza = "5."
  "\nLord, " "till " "I " "reach " "yon " bliss "ful " "shore, "
  "\nNo " priv i "lege " "so " "dear " "shall " "be "
  "\nAs " "thus " "my " in "most " "soul " "to " "pour "
  "\nIn " "prayer " "to " "Thee. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
    page-breaking = #ly:one-page-breaking
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
                                              \wordsFive  \chorus
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
