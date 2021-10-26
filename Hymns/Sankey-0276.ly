\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Another Six Days Work."
  subtitle    = "Sankey No. 276"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "William Knapp"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Joseph Stennet."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Wareham."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% Uncomment for two-line repeat version
% #(set-global-staff-size 18)

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
  An -- oth -- er six days' work is done,
  An -- oth -- er Sab -- bath is be -- gun;
  Re -- turn, my soul, en -- joy thy rest;
  Im -- prove the day thy God has blest.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, bless the Lord, whose love as -- signs
  So sweet a rest to wea -- ried minds,
  Pro -- vides an an -- te -- past of heaven,
  And gives this day the food of seven.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh that our thoughts and thanks may rise
  As grate -- ful in -- cense to the skies,
  And draw from heaven that sweet re -- pose
  Which none but he that feels it knows.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  This heaven -- ly calm with -- in the breast
  Is the dear pledge of glo -- rious rest,
  Which for the church of God re -- mains;
  The end of cares, the end of pains.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  In ho -- ly du -- ties let the day.
  In ho -- ly plea -- sures, pass a -- way:
  How sweet a Sab -- bath thus to spend,
  In hope of one that ne'er shall end.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "An" oth "er " "six " "days' " "work " "is " "done, "
  "\nAn" oth "er " Sab "bath " "is " be "gun; "
  "\nRe" "turn, " "my " "soul, " en "joy " "thy " "rest; "
  "\nIm" "prove " "the " "day " "thy " "God " "has " "blest. "

  \set stanza = "2."
  "\nCome, " "bless " "the " "Lord, " "whose " "love " as "signs "
  "\nSo " "sweet " "a " "rest " "to " wea "ried " "minds, "
  "\nPro" "vides " "an " an te "past " "of " "heaven, "
  "\nAnd " "gives " "this " "day " "the " "food " "of " "seven. "

  \set stanza = "3."
  "\nOh " "that " "our " "thoughts " "and " "thanks " "may " "rise "
  "\nAs " grate "ful " in "cense " "to " "the " "skies, "
  "\nAnd " "draw " "from " "heaven " "that " "sweet " re "pose "
  "\nWhich " "none " "but " "he " "that " "feels " "it " "knows. "

  \set stanza = "4."
  "\nThis " heaven "ly " "calm " with "in " "the " "breast "
  "\nIs " "the " "dear " "pledge " "of " glo "rious " "rest, "
  "\nWhich " "for " "the " "church " "of " "God " re "mains; "
  "\nThe " "end " "of " "cares, " "the " "end " "of " "pains. "

  \set stanza = "5."
  "\nIn " ho "ly " du "ties " "let " "the " "day. "
  "\nIn " ho "ly " plea "sures, " "pass " a "way: "
  "\nHow " "sweet " "a " Sab "bath " "thus " "to " "spend, "
  "\nIn " "hope " "of " "one " "that " "ne'er " "shall " "end. "
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
