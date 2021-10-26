\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lord of the Sabbath."
  subtitle    = "Sankey No. 274"
  subsubtitle = "Sankey 880 No. 621"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "William Knapp"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "P. Doddridge."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Wareham."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% Uncomment for two-line repeat version
% #(set-global-staff-size 19)

global = {
  \key bes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*7 s2
  \mark \markup { \box "B" } s4 s2.*7 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4
  bes4(a) g
  f2 bes4
  c4(bes) a
  bes2 c4
  d4(c) bes
  a2 c4
  bes4(a) g
  f2 \bar "|" \break f4
  g4(f) g8[a] % B
  bes2 a4
  bes2 c4
  d2 4
  ees4(d) c
  bes4(a) bes
  c4(bes) a
  bes2
}

alto = \relative {
  \autoBeamOff
  d'4
  d2 ees4
  f2 d4
  g4(f) f
  f2 4
  f2 d8[e]
  f2 4
  g4(f) e
  f2 4
  ees4(f) ees % B
  d2 4
  d4(g) f
  f2 bes4
  a4(bes) g
  f4(ees) d
  g4(f) ees
  d2
}

tenor = \relative {
  \autoBeamOff
  g4
  bes2 8[a]
  bes2 4
  ees4(d) c
  d2 a4
  d4(a) bes
  c2 4
  d4(c) bes
  a2 bes4
  bes2 c4 % B
  bes2 fis4
  g4(d') c
  bes2 f'4
  ees4(f) ees
  d4(c) bes
  ees4(d) c
  bes2
}

bass = \relative {
  \autoBeamOff
  bes,4
  bes2 c4
  d2 g4
  ees4(f) f
  bes,2 f'4
  bes4(a) g
  f2 a4
  bes4(c) c,
  f2 d4
  ees4(d) c % B
  g'2 d4
  g2 a4
  bes2 bes,4
  c4(d) ees
  f2 g4
  ees4(f) f
  bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord of the Sab -- bath! hear our vows
  On this Thy day, in this Thy house;
  And own, as grate -- ful sac -- ri -- fice,
  The songs which from the des -- ert rise.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thine earth -- ly Sab -- baths, Lord, we love;
  But there's a nob -- ler rest a -- bove:
  To that our la -- bouring souls as -- pire,
  With ar -- dent pangs of strong de -- sire.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No more fa -- tigue, no more dis -- tress,
  Nor sin, nor hell, shall reach the place;
  No groans to min -- gle with the songs
  Which war -- ble from im -- mor -- tal tongues.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  No rude a -- larms of rag -- ing foes,
  No cares to break the long re -- pose;
  No mid -- night shade, no cloud -- ed sun,
  But sac -- red, high, e -- ter -- nal noon.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  O long- -- ex -- pect -- ed day, be -- gin!
  Dawn on these realms of woe and sin;
  Fain would we leave this wea -- ry road,
  And sleep in death to rest with God.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord " "of " "the " Sab "bath! " "hear " "our " "vows "
  "\nOn " "this " "Thy " "day, " "in " "this " "Thy " "house; "
  "\nAnd " "own, " "as " grate "ful " sac ri "fice, "
  "\nThe " "songs " "which " "from " "the " des "ert " "rise. "

  \set stanza = "2."
  "\nThine " earth "ly " Sab "baths, " "Lord, " "we " "love; "
  "\nBut " "there's " "a " nob "ler " "rest " a "bove: "
  "\nTo " "that " "our " la "bouring " "souls " as "pire, "
  "\nWith " ar "dent " "pangs " "of " "strong " de "sire. "

  \set stanza = "3."
  "\nNo " "more " fa "tigue, " "no " "more " dis "tress, "
  "\nNor " "sin, " "nor " "hell, " "shall " "reach " "the " "place; "
  "\nNo " "groans " "to " min "gle " "with " "the " "songs "
  "\nWhich " war "ble " "from " im mor "tal " "tongues. "

  \set stanza = "4."
  "\nNo " "rude " a "larms " "of " rag "ing " "foes, "
  "\nNo " "cares " "to " "break " "the " "long " re "pose; "
  "\nNo " mid "night " "shade, " "no " cloud "ed " "sun, "
  "\nBut " sac "red, " "high, " e ter "nal " "noon. "

  \set stanza = "5."
  "\nO " long- ex pect "ed " "day, " be "gin! "
  "\nDawn " "on " "these " "realms " "of " "woe " "and " "sin; "
  "\nFain " "would " "we " "leave " "this " wea "ry " "road, "
  "\nAnd " "sleep " "in " "death " "to " "rest " "with " "God. "
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
    paper-height = 2000\mm
    ragged-bottom = true
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
