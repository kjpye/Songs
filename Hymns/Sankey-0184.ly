\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Hope of the Coming of the Lord."
  subtitle    = "Sankey No. 184"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "May Whittle Moody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "D. W. Whittle"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s1*3
  \mark \markup { \box "B" }    s1*2
  \mark \markup { \box "C" }    s1*2 s2.
  \mark \markup { \box "D" } s4 s1*2 s2
  \mark \markup { \box "E" } s2 s1*2
  \mark \markup { \box "F" }    s1*2 s2..
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8
  c4 d8. e16 f4. 8
  e8 f a^\< a\! a4^\> g8\! a
  bes4 g d e
  f8 f e f a4 g8  c, % B
  \tag #'dash  { c8 c d e \slurDashed f4(8) \slurSolid 8 }
  \tag #'solid { c8 c d e             f4.              8 }
  \tag #'none  { c8 c d e             f4 8             8 }
  e8 f^\< a\! bes c8 16\fermata r d8 c % C
  bes4^\> f8 g\! a16 8. g f16
  f2 r4 \bar "||" \break a8^\markup\smallCaps Chorus. a
  a2^\markup\italic Tempo. (4) 8 c % D
  c2(4) bes8^\< c
  e4^^ \! d8 c \bar "|" \break bes16 8. a8.^\> gis16\!
  a2 r4 a8 8 % E
  a8 8 bes a d4 g,8 8
  g8 8 a g c4 d8 c % F
  bes4 f8 g a16 8. g f16
  f2. r8
}

sopranoSingle = {
  \keepWithTag #'none  \soprano
  \keepWithTag #'none  \soprano
  \keepWithTag #'none  \soprano
  \keepWithTag #'solid \soprano
}

alto = \relative {
  \autoBeamOff
  c'8
  c4 8. 16 4. 8
  c8 8 8^\< cis\! d4^\> 8\! 8
  d4 4 4 c
  c8 c b b c4 c8 c % B
  \tag #'dash  {c8 8 8 8 \slurDashed 4(8) \slurSolid 8}
  \tag #'solid {c8 8 8 8             4.              8}
  \tag #'none  {c8 8 8 8             4 8             8}
  c8 8^\< f\! g a g16\fermata r fis8 a % C
  g4^\> f8 8\! 16 8. e8. c16
  c2 r4 f8 8
  f4 e8 d c4 f8 a % D
  bes2(e,4) 8^\< 8
  g4^^ \! f8 e e16 8. 8.^\> 16\!
  f2 r4 8 8 % E
  fis8 8 8 8 f4 8 8
  e8 8 8 8 ees4 f8 ees % E
  d4 f8 8 16 8. e8. c16
  c2. r8
}

altoSingle = {
  \keepWithTag #'none  \alto \nl
  \keepWithTag #'none  \alto \nl
  \keepWithTag #'none  \alto \nl
  \keepWithTag #'solid \alto \nl
}

tenor = \relative {
  \autoBeamOff
  a8
  a4 8. g16 a4. f8
  f8 8 8^\< 8\! 4^\> 8\! fis
  g4 4 bes bes
  a8 8 g g f4 e8 bes' % B
  \tag #'dash  {a8 8 8 g \slurDashed a4(8) \slurSolid 8}
  \tag #'solid {a8 8 8 g             a4.              8}
  \tag #'none  {a8 8 8 g             a4 8             8}
  g8 a^\< c\! c c c16\fermata r a8 d % C
  d4^\> 8 des\! c16 8. bes a16
  a2 r4 c8 8
  c2(4) 8 f % D
  f4 e8 d c4 8^\< 8
  bes4^^ \! 8 c d16 8. c8.^\> c16\!
  c2 r4 8 8 % E
  c8 8 d d g,4 8 8
  bes8 8 c c f,4 8 8 % F
  bes4 d8 des c16 8. bes8. a16
  a2. r8
}

tenorSingle = {
  \keepWithTag #'none  \tenor
  \keepWithTag #'none  \tenor
  \keepWithTag #'none  \tenor
  \keepWithTag #'solid \tenor
}

bass = \relative {
  \autoBeamOff
  f8
  f4 8. 16 4. a,8
  a8 8 8^\< 8\! bes4^\> 8\! a
  g4 bes c c
  d8 d g, g c4 8 8 % B
  \tag #'dash  {f8 8 8 8 \slurDashed f4(8) \slurSolid 8}
  \tag #'solid {f8 8 8 8             f4.              8}
  \tag #'none  {f8 8 8 8             f4 8             8}
  f8 8^\< 8\! 8 8 ees16\fermata r d8 8 % C
  g4 bes,8 8 c16 8. 8. f,16
  f2 r4 f'8 8
  f2(4) 8 8 % D
  g2(c,4) 8^\< 8
  c4^^ \! 8 8 16 8. 8.^\> 16\!
  f2 r4 8 8 % E
  d8 8 8 c b4 8 8
  c8 8 8 bes a4 8 8 % F
  bes4 8 8 c16 8. 8. f,16
  f2. r8
}

bassSingle = {
  \keepWithTag #'none  \bass
  \keepWithTag #'none  \bass
  \keepWithTag #'none  \bass
  \keepWithTag #'solid \bass
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Bles -- sed hope, bles -- sed hope
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.
}

chorusAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ Bles -- sed hope, _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

chorusAltoSingle = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ Bles -- sed hope, _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _

% 2
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ Bles -- sed hope, _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _

% 3
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ Bles -- sed hope, _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _

% 4
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ Bles -- sed hope, _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

chorusTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ Bles -- sed hope,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

chorusTenorSingle = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ Bles -- sed hope,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
% 2
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ Bles -- sed hope,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
% 3
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ Bles -- sed hope,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
% 4
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ Bles -- sed hope,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  A lamp in the night, a song in time of sor -- row,
  A great glad hope which faith can ev -- er bor -- row
  To gild the pass -- ing \nom day \yesm with the glo -- ry of the mor -- row,
  Is the hope of the com -- ing of the Lord.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  A star in the sky, a bea -- con bright to guide us;
  An an -- chor sure to hold when storms be -- tide us;
  A ref -- uge for the \nom soul, where \yesm in qui -- et we may hide us—
  Is the hope of the com -- ing of the Lord.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  A call of com -- mand, like trum -- pet clear -- ly sound -- ing,
  To make us bold when e -- vil is sur -- round -- ing;
  To stir the slug -- gish \nom heart, and \yesm to keep in good a -- bound -- ing—
  Is the hope of the com -- ing of the Lord.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A word from the One to all our hearts the dear -- est,
  A part -- ing word to make Him aye the near -- est;
  Of all His pre -- cious words, the sweet -- est, bright -- est, clear -- est,
  Is the hope of the com -- ing of the Lord.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  A lamp in the night, a song in time of sor -- row,
  A great glad hope which faith can ev -- er bor -- row
  To gild the pass -- ing day with the glo -- ry of the mor -- row,
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.

  \set stanza = "2."
  A star in the sky, a bea -- con bright to guide us;
  An an -- chor sure to hold when storms be -- tide us;
  A ref -- uge for the soul, where in qui -- et we may hide us—
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.

  \set stanza = "3."
  A call of com -- mand, like trum -- pet clear -- ly sound -- ing,
  To make us bold when e -- vil is sur -- round -- ing;
  To stir the slug -- gish heart, and to keep in good a -- bound -- ing—
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.

  \set stanza = "4."
  A word from the One to all our hearts the dear -- est,
  A part -- ing word to make Him aye the near -- est;
  Of all His pre -- cious words, the sweet -- est, bright -- est, clear -- est,
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  A lamp in the night, a song in time of sor -- row,
  A great glad hope which faith can ev -- er bor -- row
  To gild the pass -- ing day with the glo -- ry of the mor -- row,
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.

  \set stanza = "2."
  A star in the sky, a bea -- con bright to guide us;
  An an -- chor sure to hold when storms be -- tide us;
  A ref -- uge for the soul, where in qui -- et we may hide us—
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.

  \set stanza = "3."
  A call of com -- mand, like trum -- pet clear -- ly sound -- ing,
  To make us bold when e -- vil is sur -- round -- ing;
  To stir the slug -- gish heart, and to keep in good a -- bound -- ing—
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.

  \set stanza = "4."
  A word from the One to all our hearts the dear -- est,
  A part -- ing word to make Him aye the near -- est;
  Of all His pre -- cious words, the sweet -- est, bright -- est, clear -- est,
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  A lamp in the night, a song in time of sor -- row,
  A great glad hope which faith can ev -- er bor -- row
  To gild the pass -- ing day with the glo -- ry of the mor -- row,
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope, bles -- sed hope,
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.

  \set stanza = "2."
  A star in the sky, a bea -- con bright to guide us;
  An an -- chor sure to hold when storms be -- tide us;
  A ref -- uge for the soul, where in qui -- et we may hide us—
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope, bles -- sed hope,
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.

  \set stanza = "3."
  A call of com -- mand, like trum -- pet clear -- ly sound -- ing,
  To make us bold when e -- vil is sur -- round -- ing;
  To stir the slug -- gish heart, and to keep in good a -- bound -- ing—
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope, bles -- sed hope,
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.

  \set stanza = "4."
  A word from the One to all our hearts the dear -- est,
  A part -- ing word to make Him aye the near -- est;
  Of all His pre -- cious words, the sweet -- est, bright -- est, clear -- est,
  Is the hope of the com -- ing of the Lord.
  Bles -- sed hope, bles -- sed hope, bles -- sed hope,
  Bles -- sed hope of the com -- ing of the Lord;
  How the ach -- ing heart it cheers;
  How it glis -- tens thro' our tears,
  Bles -- sed hope of the com -- ing of the Lord.
}

wordsMidiTenor = \wordsMidiAlto

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new NullVoice = "alignerA" \keepWithTag #'dash \alto
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." }
            { \global \keepWithTag #'dash \alto }

            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "alignerA" \chorusAlto
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerT \keepWithTag #'dash \tenor
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor }
            { \global \keepWithTag #'dash \bass }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenor
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
            \new NullVoice = "aligner" \sopranoSingle
            \new NullVoice = "alignerA" \altoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
                                              { \global \altoSingle }
            \new Lyrics \lyricsto "aligner" \wordsSingle
            \new Lyrics \lyricsto "alignerA" \chorusAltoSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerT \tenorSingle
            \new Voice \partCombine { \global \tenorSingle }
            { \global \bassSingle }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenorSingle
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
            \new NullVoice = "aligner" \sopranoSingle
            \new NullVoice = "alignerA" \altoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." }
                                              { \global \altoSingle }
            \new Lyrics \lyricsto "aligner" \wordsSingle
            \new Lyrics \lyricsto "alignerA" \chorusAltoSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerT \tenorSingle
            \new Voice \partCombine { \global \tenorSingle }
            { \global \bassSingle }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenorSingle
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
            \new Voice { \global \sopranoSingle \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
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
            \new Voice { \global \sopranoSingle \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
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
            \new Voice { \global \sopranoSingle \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
    \midi {}
  }
}
