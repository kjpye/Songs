\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Praise Him all the Time!"
  subtitle    = "Sankey No. 218"
  subsubtitle = "Sankey 880 No. 350"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. P. Hammond."
  meter       = \markup\smallCaps "C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*4
  \mark \markup { \box "D" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  c4 g e f
  a4. g8 4 4
  a4 b c d
  c2(b4) \bar "|" \break g
  c4 g e f % B
  a4. g8 4 c
  b4 a g fis
  g2(a4) \bar "|" \break b4^\markup\smallCaps Chorus.
  c2 g % C
  d'2 g,
  e'4 c b c
  d1
  e2 d % D
  d2 b4 a
  g4 c b4. d8
  c2.
}

alto = \relative {
  \autoBeamOff
  e'4
  e4 4 c d
  f4. e8 4 4
  f4 g g a
  g2. f4
  e4 4 c d % B
  f4. e8 4 a
  g4 fis d d
  d2. f4
  e2 2 % C
  f2 2
  e4 g f e
  g1
  g2 2 % D
  g2 4 f
  e4 g f4. 8 e2.
}

tenor = \relative {
  \autoBeamOff
  c'4
  c4 c g g
  c4. 8 4 4
  c4 d c f
  e2(d4) b
  c4 4 g g % B
  c4. 8 4 e % B
  d4 c b a
  b2(c4) d
  c2 2 % C
  b2 2
  c4 4 g c
  b1
  c2 b % D
  c2 4 4
  c4 e d4. b8
  c2.
}

bass = \relative {
  \autoBeamOff
  c4
  c4 4 4 4
  c4. 8 4 4
  f4 d e f
  g2. 4
  c,4 4 4 4 % B
  c4. 8 4 4
  d4 4 4 4
  g2. 4
  c,2 2 % C
  g2 2
  c4 e d c
  g'1
  c,2 d % D
  e2 f4 4
  g4 4 4. 8
  c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I'll praise Him! praise Him! praise Him all the time!
  I'll praise Him! praise Him! praise Him all the time!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I feel like sing -- ing all the time,
  My tears are wiped a -- way;
  For Je -- sus is a Friend of mine,
  I'll serve Him ev -- 'ry day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When on the cross my Lord I saw,
  Nailed there by sins of mine,
  Fast fell the burn -- ing tears;
  but now I'm sing -- ing all the time.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When fierce temp -- ta -- tions try my heart,
  I'll sing, "\"Je" -- sus is "mine!\""
  And so, tho' tears at times may start,
  I'm sing -- ing all the time.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The won -- drous sto -- ry of the Lamb,
  Tell with that voice of thine,
  Till o -- thers, with the glad new song,
  Fo sing -- ing all the time.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  I feel like sing -- ing all the time,
  My tears are wiped a -- way;
  For Je -- sus is a Friend of mine,
  I'll serve Him ev -- 'ry day.
  I'll praise Him! praise Him! praise Him all the time!
  I'll praise Him! praise Him! praise Him all the time!

  \set stanza = "2."
  When on the cross my Lord I saw,
  Nailed there by sins of mine,
  Fast fell the burn -- ing tears;
  but now I'm sing -- ing all the time.
  I'll praise Him! praise Him! praise Him all the time!
  I'll praise Him! praise Him! praise Him all the time!

  \set stanza = "3."
  When fierce temp -- ta -- tions try my heart,
  I'll sing, "\"Je" -- sus is "mine!\""
  And so, tho' tears at times may start,
  I'm sing -- ing all the time.
  I'll praise Him! praise Him! praise Him all the time!
  I'll praise Him! praise Him! praise Him all the time!

  \set stanza = "4."
  The won -- drous sto -- ry of the Lamb,
  Tell with that voice of thine,
  Till o -- thers, with the glad new song,
  Fo sing -- ing all the time.
  I'll praise Him! praise Him! praise Him all the time!
  I'll praise Him! praise Him! praise Him all the time!
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
