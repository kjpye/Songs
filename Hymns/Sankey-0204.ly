\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Thy Name I Love."
  subtitle    = "Sankey No. 204"
  subsubtitle = "Sankey 880 No. 725"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. P. Holbrook."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. G. Deck."
  meter       = \markup\smallCaps "6.6.4.6.6.6.4."
  piece       = \markup\smallCaps "Lyte."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*7
  \mark \markup { \box "B" } s1*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*11
  s2 \tempo 4=60 s2 \tempo 4=120
  s1
  s1
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'2 ees4 g
  f4. ees8 d4 r
  f4(bes) d4. c8
  g4. a8 f4 r
  f4(bes) c4. d8
  bes2. r4
  bes2 ees4 g,
  g4. f8 4 r
  bes2 ees4 g,
  g4. f8 4 r
  f2 a4 c
  ees4. a,8 bes2\fermata
  g2 f4. 8
  f2. r4
}

alto = \relative {
  \autoBeamOff
  bes2 c4 ees
  d4. c8 bes4 r
  d2 f4. ees8
  ees4. 8 d4 r
  d2 ees4. 8
  d2. r4
  ees2 g4 ees
  ees4. d8 4 r % B
  ees2 g4 ees
  ees4. d8 4 r
  c2 ees4 4
  ees4. 8 d2\fermata
  ees2 d4. ees8
  d2. r4
}

tenor = \relative {
  \autoBeamOff
  s1*4
  bes2 a4. 8
  bes2. r4
  g2 bes4 4
  bes4. 8 4 r % B
  g2 bes4 4
  bes4. 8 4 r
  a2 c4 4
  a4. c8 bes2\fermata
  bes2 4. a8
  bes2. r4
}

bass = \relative {
  \autoBeamOff
  \tiny bes,2. r4
  bes2. r4
  bes1
  bes2. r4 \normalsize
  bes2 f'4. 8
  bes,2. r4
  ees2 4 4
  bes4. 8 4 r
  ees2 4 4
  bes4. 8 4 r
  f'2 4 4
  f4. fis8 g2\fermata
  ees2 f4. f,8
  bes2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Thy name I love,
  All o -- ther names a -- bove;
  Je -- sus, my Lord!
  Oh, Thou art all to me!
  No -- thing to please I see,
  No -- thing a -- part from Thee,
  Je -- sus, my Lord!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou, bles -- sed Son of God,
  Hast bought me with Thy blood,
  Je -- sus, my Lord!
  Oh, how great is Thy love,
  All o -- ther loves a -- bove,
  Love that I dai -- ly prove,
  Je -- sus, my Lord!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When un -- to Thee I flee,
  Thou wilt my re -- fuge be,
  Je -- sus, my Lord!
  What need O now to fear?
  What earth -- ly grief or care,
  Since Thou art ev -- er near?
  Je -- sus, my Lord!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Soon Thou wilt come a -- gain!
  I shall be hap -- py then,
  Je -- sus, my Lord!
  Then Thine own face I'll see
  Then I shall like Thee be,
  Then ev -- er -- more with Thee,
  Je -- sus, my Lord!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "Thy " "name " "I " "love, "
  "\nAll " o "ther " "names " a "bove; "
  "\nJe" "sus, " "my " "Lord! "
  "\nOh, " "Thou " "art " "all " "to " "me! "
  "\nNo" "thing " "to " "please " "I " "see, "
  "\nNo" "thing " a "part " "from " "Thee, "
  "\nJe" "sus, " "my " "Lord! "

  \set stanza = "2."
  "\nThou, " bles "sed " "Son " "of " "God, "
  "\nHast " "bought " "me " "with " "Thy " "blood, "
  "\nJe" "sus, " "my " "Lord! "
  "\nOh, " "how " "great " "is " "Thy " "love, "
  "\nAll " o "ther " "loves " a "bove, "
  "\nLove " "that " "I " dai "ly " "prove, "
  "\nJe" "sus, " "my " "Lord! "

  \set stanza = "3."
  "\nWhen " un "to " "Thee " "I " "flee, "
  "\nThou " "wilt " "my " re "fuge " "be, "
  "\nJe" "sus, " "my " "Lord! "
  "\nWhat " "need " "O " "now " "to " "fear? "
  "\nWhat " earth "ly " "grief " "or " "care, "
  "\nSince " "Thou " "art " ev "er " "near? "
  "\nJe" "sus, " "my " "Lord! "

  \set stanza = "4."
  "\nSoon " "Thou " "wilt " "come " a "gain! "
  "\nI " "shall " "be " hap "py " "then, "
  "\nJe" "sus, " "my " "Lord! "
  "\nThen " "Thine " "own " "face " "I'll " "see "
  "\nThen " "I " "shall " "like " "Thee " "be, "
  "\nThen " ev er "more " "with " "Thee, "
  "\nJe" "sus, " "my " "Lord! "
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
