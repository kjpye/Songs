\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How Honoured, How Dear"
  subtitle    = "Sankey No. 213"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Croft"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Josiah Conder."
  meter       = \markup\smallCaps "5.5.6.5."
  piece       = \markup\smallCaps "Hanover"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4
  a4 4 b
  cis2 e4
  a,4 b gis
  a2 b4
  cis4 b a
  \tag #'dash             {gis2 \slurDashed a8(8) \slurSolid} % B
  \tag #'(v1 v2 v3 v4 v6) {gis2             a4              }
  \tag #'v5               {gis2             a8 8            }
  b4 a8[gis] fis4
  e2 gis4
  a4 b cis
  a4 fis d'
  cis4 b a % C
  \tag #'dash             {e'2 \slurDashed e,8(8) \slurSolid}
  \tag #'v1               {e'2             e,8 8            }
  \tag #'(v2 v3 v4 v5 v6) {e'2             e,4              }
  fis4 gis a
  b4 e, cis'
  fis,4 b gis
  a2
}

alto = \relative {
  \autoBeamOff
  cis'4
  e4 4 4
  e2 4
  fis4 4 d
  cis2 e4
  e4 4 8[dis]
  \tag #'dash             {e2 \slurDashed e8(8) \slurSolid} % B
  \tag #'(v1 v2 v3 v4 v6) {e2             e4              }
  \tag #'v5               {e2             e8 8            }
  e4 fis8[e] dis4
  e2 eis4
  fis4 4 eis
  fis4 4 e
  e4 4 8[dis] % C
  \tag #'dash             {e'2 \slurDashed e,8(8) \slurSolid}
  \tag #'v1               {e'2             e,8 8            }
  \tag #'(v2 v3 v4 v5 v6) {e'2             e,4              }
  d4 e e
  d4 cis e
  d4 fis d
  cis2
}

tenor = \relative {
  \autoBeamOff
  a4
  cis4 a gis
  a2 b4
  cis4 d b
  a2 gis4
  a4 b cis8[a]
  \tag #'dash             {b2 \slurDashed cis8(8) \slurSolid} % B
  \tag #'(v1 v2 v3 v4 v6) {b2             cis4              }
  \tag #'v5               {b2             cis8 8            }
  b4 cis a
  gis2 cis4
  cis4 b gis8[cis]
  cis4 4 b
  a4 b cis8[a] % C
  \tag #'dash             {gis2 \slurDashed a8(8) \slurSolid}
  \tag #'v1               {gis2             a8 8            }
  \tag #'(v2 v3 v4 v5 v6) {gis2             a4              }
  a4 d cis
  e,4 gis a
  a4 d b
  a2
}

bass = \relative {
  \autoBeamOff
  a,4
  a4 cis e
  a2 gis4
  fis4 d e
  a,2 e'4
  a4 gis fis
  \tag #'dash             {e2 \slurDashed cis8(8) \slurSolid} % B
  \tag #'(v1 v2 v3 v4 v6) {e2             cis4              }
  \tag #'v5               {e2             cis8 8            }
  gis4 a b
  e2 cis4
  fis4 d cis
  fis4 a gis
  a4 gis fis % C
  \tag #'dash             {e2 \slurDashed cis8(8) \slurSolid}
  \tag #'v1               {e2              cis8 8            }
  \tag #'(v2 v3 v4 v5 v6) {e2              cis4              }
  d4 b a
  gis4 cis a
  d4 b e
  a,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  How hon -- oured, how dear,
  That sa -- cred a -- bode,
  Where Christ -- ians draw near
  Their Fa -- ther and God!
  'Mid world -- ly com -- mo -- tion,
  My wea -- ried soul faints
  \nom For the \yesm house of de -- vo -- tion,
  The home of Thy saints.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The birds have their home,
  They fix on their nest;
  Where -- ev -- er they roam,
  They turn to their rest:
  From them fond -- ly learn -- ing,
  My soul would take wing;
  To Thee so re -- turn -- ing,
  My God and my King.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O hap -- py the choirs
  Who praise Thee a -- bove!
  What joy tunes their lyres!
  Their wor -- ship is love.
  Yet safe in their keep -- ing
  And hap -- py they be
  In this world of weep -- ing,
  Whose strength is in Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Though rug -- ged their way,
  They drink, as they go,
  Of springs that con -- vey
  New life as they flow;
  The God they re -- ly on
  Their strength shall re -- new,
  Till each, brought to Zi -- on,
  His glo -- ry shall view.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Thou hear -- er of prayer,
  Still grant me a place
  Where Christ -- ians re -- pair
  \nom To the \yesm courts of Thy grace:
  More blest, be -- yond mea -- sure,
  One day so em -- ployed,
  Than years of vain plea -- sure
  By world -- lngs en -- joyed.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  The Lord is a Sun,
  The Lord is a Shield;
  What grace has be -- gun,
  With glo -- ry is sealed,
  He hears the dis -- tres -- sed,
  He suc -- cours the just:
  And they shall be bles -- sed
  Who make him their trust.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  How hon -- oured, how dear,
  That sa -- cred a -- bode,
  Where Christ -- ians draw near
  Their Fa -- ther and God!
  'Mid world -- ly com -- mo -- tion,
  My wea -- ried soul faints
  For the house of de -- vo -- tion,
  The home of Thy saints.

  \set stanza = "2."
  The birds have their home,
  They fix on their nest;
  Where -- ev -- er they roam,
  They turn to their rest:
  From them fond -- ly learn -- ing,
  My soul would take wing;
  To Thee so re -- turn -- ing,
  My God and my King.

  \set stanza = "3."
  O hap -- py the choirs
  Who praise Thee a -- bove!
  What joy tunes their lyres!
  Their wor -- ship is love.
  Yet safe in their keep -- ing
  And hap -- py they be
  In this world of weep -- ing,
  Whose strength is in Thee.

  \set stanza = "4."
  Though rug -- ged their way,
  They drink, as they go,
  Of springs that con -- vey
  New life as they flow;
  The God they re -- ly on
  Their strength shall re -- new,
  Till each, brought to Zi -- on,
  His glo -- ry shall view.

  \set stanza = "5."
  Thou hear -- er of prayer,
  Still grant me a place
  Where Christ -- ians re -- pair
  To the courts of Thy grace:
  More blest, be -- yond mea -- sure,
  One day so em -- ployed,
  Than years of vain plea -- sure
  By world -- lngs en -- joyed.

  \set stanza = "6."
  The Lord is a Sun,
  The Lord is a Shield;
  What grace has be -- gun,
  With glo -- ry is sealed,
  He hears the dis -- tres -- sed,
  He suc -- cours the just:
  And they shall be bles -- sed
  Who make him their trust.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  How hon -- oured, how dear,
  That sa -- cred a -- bode,
  Where Christ -- ians draw near
  Their Fa -- ther and God!
  'Mid world -- ly com -- mo -- tion,
  My wea -- ried soul faints
  For the house of de -- vo -- tion,
  The home of Thy saints.

  \set stanza = "2."
  The birds have their home,
  They fix on their nest;
  Where -- ev -- er they roam,
  They turn to their rest:
  From them fond -- ly learn -- ing,
  My soul would take wing;
  To Thee so re -- turn -- ing,
  My God and my King.

  \set stanza = "3."
  O hap -- py the choirs
  Who praise Thee a -- bove!
  What joy tunes their lyres!
  Their wor -- ship is love.
  Yet safe in their keep -- ing
  And hap -- py they be
  In this world of weep -- ing,
  Whose strength is in Thee.

  \set stanza = "4."
  Though rug -- ged their way,
  They drink, as they go,
  Of springs that con -- vey
  New life as they flow;
  The God they re -- ly on
  Their strength shall re -- new,
  Till each, brought to Zi -- on,
  His glo -- ry shall view.

  \set stanza = "5."
  Thou hear -- er of prayer,
  Still grant me a place
  Where Christ -- ians re -- pair
  To the courts of Thy grace:
  More blest, be -- yond mea -- sure,
  One day so em -- ployed,
  Than years of vain plea -- sure
  By world -- lngs en -- joyed.

  \set stanza = "6."
  The Lord is a Sun,
  The Lord is a Shield;
  What grace has be -- gun,
  With glo -- ry is sealed,
  He hears the dis -- tres -- sed,
  He suc -- cours the just:
  And they shall be bles -- sed
  Who make him their trust.
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice = "women" \partCombine
                                 { \global \keepWithTag #'dash \soprano \bar "|." }
                                 { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine
                               { \global \keepWithTag #'dash \tenor }
                               { \global \keepWithTag #'dash \bass }
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
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \keepWithTag #'v1 \soprano
                                         \keepWithTag #'v2 \soprano
                                         \keepWithTag #'v3 \soprano
                                         \keepWithTag #'v4 \soprano
                                         \keepWithTag #'v5 \soprano
                                         \keepWithTag #'v6 \soprano
                                       }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \keepWithTag #'v4 \soprano
                                                \keepWithTag #'v5 \soprano
                                                \keepWithTag #'v6 \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \keepWithTag #'v4 \alto \nl
                                                \keepWithTag #'v5 \alto \nl
                                                \keepWithTag #'v6 \alto
                                              }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                              \keepWithTag #'v4 \tenor
                                              \keepWithTag #'v5 \tenor
                                              \keepWithTag #'v6 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                              \keepWithTag #'v4 \bass
                                              \keepWithTag #'v5 \bass
                                              \keepWithTag #'v6 \bass
                                            }
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
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \keepWithTag #'v1 \soprano
                                         \keepWithTag #'v2 \soprano
                                         \keepWithTag #'v3 \soprano
                                         \keepWithTag #'v4 \soprano
                                         \keepWithTag #'v5 \soprano
                                         \keepWithTag #'v6 \soprano
                                       }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \keepWithTag #'v4 \soprano
                                                \keepWithTag #'v5 \soprano
                                                \keepWithTag #'v6 \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \keepWithTag #'v4 \alto \nl
                                                \keepWithTag #'v5 \alto \nl
                                                \keepWithTag #'v6 \alto
                                              }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                              \keepWithTag #'v4 \tenor
                                              \keepWithTag #'v5 \tenor
                                              \keepWithTag #'v6 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                              \keepWithTag #'v4 \bass
                                              \keepWithTag #'v5 \bass
                                              \keepWithTag #'v6 \bass
                                            }
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \keepWithTag #'v5 \soprano
                         \keepWithTag #'v6 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \keepWithTag #'v5 \alto \nl
                         \keepWithTag #'v6 \alto
                       }
          >>
                                % Tenor/bass staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                         \keepWithTag #'v5 \tenor
                         \keepWithTag #'v6 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                         \keepWithTag #'v5 \bass
                         \keepWithTag #'v6 \bass
                       }
          >>
        >>
    \midi {}
  }
}
