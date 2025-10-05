\version "2.25.28"

\include "../../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Lagan Love"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional"
  arranger    = "Arr. David Downes"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key des \major
  \time 3/4
}

TempoTrack = {
  \tempo "Slowly, rubato" 4=60
  s2.
%  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1b" } s1 s2.*2
  \textMark \markup { \box "1c" } s2. s1 s2.
  \textMark \markup { \box "2a" } s2. s1 s1
  \textMark \markup { \box "2b" } s2. s2. s1 s2.
  \textMark \markup { \box "2c" } s2.*4
  \textMark \markup { \box "3a" } s2. s2. s1
  \textMark \markup { \box "3b" } s1 s2. s2.
  \textMark \markup { \box "3c" } s1*2 s2 s8
  \textMark \markup { \box "4a" } s2. s2. s2 s1
  \textMark \markup { \box "4b" } s2. s2. s1
  \textMark \markup { \box "4c" } s2. s1 s2 s
}

ChordTrack = \chordmode {
  r2. s s s | des1/aes s2. aes:m7 | des2/aes des4:sus/aes des1/aes ges2 des4:m/fes |
  ges4:sus ges2 s2. aes4/ges des2/f des:m7 | des2. aes:m7 des2/ges ces4/ges ges:9 des2.:5 | s2. ges:5 aes:m7 ces:6.9 |
  des4 ees:m7 des:maj7 | ges:sus ges ges:sus2.4 | des2/f des4 bes:m7 | % 3a
  ges1:9 | des4 ees:m7 des:maj7 | ges:sus ges ges:sus2.4 |
  des2/f aes:m7 | des4:sus/aes des2. | ges4 fes4./aes |
  ges4/bes ces:6.9 des:7sus | ges2/des aes4/ees | des4/f ges:6.9 | des1:m7 | % 4a
  des2./f | ges:sus | des4.\f ges8:6.9 aes4:m7 ges/aes |
  bes2.:m7 | des1/ges | s2 | des:5 |
}

solo = \relative {
  \global
  r4 r8 aes' bes ces |
  des4. aes8 \appoggiatura {ges8 aes} \tuplet 3/2 {ges8(f) des} |
  ces2 r8 des | f8.(ges32 aes ges8) f des16 8. \time 4/4 |
  des2 r8. aes'16 bes8 ces \time 3/4 | % 1b
  des4. aes8 ges16(f) des(ces) | 2 r8 des |
  f8.(ges32 aes ges8) f des8. 16 \time 4/4 | % 1c
  des2 r8 des f ges \time 3/4 |
  bes4 aes \tuplet 3/2 {aes16(bes ges8) fes} |
  ges2 r8 bes16(ces) \time 4/4 | % 2a
  des4. ges,8 bes8.(aes32 bes) c8. 16( |
  des2) fes4 des8 ces \time 3/4 |
  des4. aes8 \tuplet 3/2 {ges8(f) des} | % 2b
  ces2 r8 des \time 4/4 |
  fes4~(\tuplet 3/2 {8 ges aes} ges8) f des8. 16 \time 3/4 |
  des2. |
  R2.*3 | r4 r8 aes' bes ces \section | % 2c
  des4. aes8 \tuplet 3/2 {ges8(f) des} | ces2~8 des \time 4/4 | % 3a
  f4~(8. ges32 aes ges8) f des8. 16 |
  des2 r8 aes' bes ces \time 3/4 | % 3b
  des4. aes8 \tuplet 3/2 {ges(f) des} | ces2~8 des \time 4/4 |
  f4~(8. ges32 aes ges8) f des des | % 3c
  des2 r8 des f ges \time 5/8 | bes aes aes(ges) fes \time 3/4 |
  ges2 r8 bes16(ces) | % 3a
  des8. ges,16 \tuplet 3/2 {bes8(aes bes)} c(des) \time 2/4 |
  des2 \time 4/4 | fes2 16(ees des4) ces16(des) \time 3/4 |
  des4. aes8 \tuplet 3/2 {ges(f) des} | % 3b
  ces2 r8 des \time 4/4 | f4.(ges16 aes ges8) d des8. 16 \time 3/4 |
  des2 r8 des \time 4/4 | f4.(ges16 aes ges4.) f16(ees) \time 2/4 | % 4c
  des4. ces16(des) | des2\fermata |
}

wordsSolo = \lyricmode {
  Where La -- gan stream sing lull -- a -- by,
  there blows __ a lil -- y fair.
  The twi -- light gleam is in __ her __ eye,
  the night __ is on her hair.
  And like a love -- sick len -- an -- shee,
  she __ hath my heart __ in thrall. __
  No life I own, no lib -- er -- ty,
  with love __ is lord of all.
  And some -- times when the bee -- tle’s horn __
  hath lulled __ the eve to sleep.
  I steal un -- to her shiel -- ing low __
  and through __ her door -- een peep.
  There on the crick -- et’s sing -- ing stone,
  she __ stirs the bog -- wood __ fire
  and burns __ in __ soft sweet un -- der -- tones
  the song __ of heart’s de -- sire,
  the song __ of __ heart’s de -- sire.
}

wordsSoloMidi = \lyricmode {
  "Where " La "gan " "stream " "sing " lull a "by, "
  "\nthere " "blows "  "a " lil "y " "fair. "
  "\nThe " twi "light " "gleam " "is " "in "  "her "  "eye, "
  "\nthe " "night "  "is " "on " "her " "hair. "
  "\nAnd " "like " "a " love "sick " len an "shee, "
  "\nshe "  "hath " "my " "heart "  "in " "thrall. " 
  "\nNo " "life " "I " "own, " "no " lib er "ty, "
  "\nwith " "love "  "is " "lord " "of " "all. "
  "\nAnd " some "times " "when " "the " bee "tle’s " "horn " 
  "\nhath " "lulled "  "the " "eve " "to " "sleep. "
  "\nI " "steal " un "to " "her " shiel "ing " "low " 
  "\nand " "through "  "her " door "een " "peep. "
  "\nThere " "on " "the " crick "et’s " sing "ing " "stone, "
  "\nshe "  "stirs " "the " bog "wood "  "fire "
  "\nand " "burns "  "in "  "soft " "sweet " un der "tones "
  "\nthe " "song "  "of " "heart’s " de "sire, "
  "\nthe " "song "  "of "  "heart’s " de "sire. "
}

soprano = \relative {
  \global
  R2.*4 \time 4/4 |
  des'1~( \time 3/4 des4 ees f) | ges2. |
  aes2(ges4 \time 4/4 | f2~8) des(f ges) \time 3/4 | bes4(aes4. ges8) |
  ges2 r8 8 \time 4/4 | ges4(aes bes) aes | 2 des2( \time 3/4 | % 2a
  aes2. | ges2) r8 ges \time 4/4 | aes2~8 8 8. ges16 \time 3/4 | des2.~ |
  des2.~ | 2. | aes'2(ges8 aes~ | 2~8) r \section |
  aes4(des8) 8 8 8 | ces4(bes aes8) 8 \time 4/4 | aes2(ges8) f des8. 16 | % 3a
  aes'4(ges2) r8 8 \time 3/4 | aes4(des8) 8 8 8 | ees2~8 des \time 4/4 |
  des4(aes8 ges aes ges) 8 8 | 4(f) r8 des f ges \time 5/8 | bes aes aes(ges) ges \time 3/4 |
  ges2 4 | <ges bes>8. <ges ces>16 <ges des'>4 e' \time 2/4 | des2 \time 4/4 des1~ \time 3/4 | % 4a
  des2 des,4~ | 2. \time 4/4 | des2. 8. 16 \time 3/4 |
  des4(ees f8 ges) \time 4/4 | aes1~ \time 2/4 | 2~ | 2\fermata |
}

wordsWomen = \lyricmode {
  Oo, __ oo, oo, __ oo. __
  oo, __ oo,
  she hath __ in thrall.
  No, __ with love __ is lord of all. __
  Oo. __
  When __ the bee -- tle’s horn __
  hath lulled __ the eve to sleep, __
  un -- to __ her shiel -- ing low __
  and through __ door -- een peep. __
  There on the crick -- et’s sing -- ing stone,
  she stirs the bog -- wood fire and, __
  oo. __ Song. __
  heart’s de -- sire. oo. __
}

wordsWomenMidi = \lyricmode {
  "Oo, "  "oo, " "oo, "  "oo. " 
  "\noo, "  "oo, "
  "\nshe " "hath "  "in " "thrall. "
  "\nNo, "  "with " "love "  "is " "lord " "of " "all. " 
  "\nOo. " 
  "\nWhen "  "the " bee "tle’s " "horn " 
  "\nhath " "lulled "  "the " "eve " "to " "sleep, " 
  "\nun" "to "  "her " shiel "ing " "low " 
  "\nand " "through "  door "een " "peep. " 
  "\nThere " "on " "the " crick "et’s " sing "ing " "stone, "
  "\nshe " "stirs " "the " bog "wood " "fire " "and, " 
  "\noo. "  "Song. " 
  "\nheart’s " de "sire. " "oo. " 
}

alto = \relative {
  \global
  R2.*4 \time 4/4 |
  des'1~ \time 3/4 | 2. | \apart ces |
  des2.~ \time 4/4 | 2~8 4. \time 3/4 | des2. |
  des2 r8 8 \time 4/4 | 4(ges~<des ges>8 <des f>) ees4 | des2 aes'( \time 3/4 | % 2a
  f2 ees8 des | ces4 ges') r8 des \time 4/4 | f2(ees8) des8 8. 16 \time 3/4 | \auto des2.~ |
  des2.~ | 2. | ges8(f ges4 des8 ces | des2~8) r \section \apart |
  f4(ges8) 8 aes aes | ges2~8 8 \time 4/4 f4(ees8 des ees) des aes8. 16 | % 3a
  bes2. r8 des \time 3/4 | f4(ges8) 8 aes aes | ces4(bes aes8) 8 \time 4/4 |
  aes4(ees~8 f) ees des | 2 r8 8 8 8 \time 5/8 | 8 8 ces4 8 \time 3/4 |
  des2 4 | 8. ces16 des4 aes' \time 2/4 | 2 \time 4/4 | ces1( \time 3/4 | % 4a
  aes2) des,4( | c2.) \time 4/4 | aes4(bes ces) bes8. 16 \time 3/4 |
  des2. \time 4/4 | des1~ \time 2/4 | 2~ | 2_\fermata |
}

tenor = \relative {
  \global \numericTimeSignature
  R2.*4 \time 4/4 |
  aes1~ \time 3/4 | 2.~ | 2.~ |
  aes2.~ \time 4/4 | aes2~8 des4. \time 3/4 | des2. |
  ces4(bes) r8 aes \time 4/4 | bes4(ces8 des aes ges) aes4 | 2 des~( \time 3/4 | % 2a
  des2. | ces4 bes) r8 bes \time 4/4 | aes4(bes ces8) 8 bes8. aes16 \time 3/4 | des2.( |
  ces8 bes ges aes ees f | ges2.) ees'8(des ces ees bes ges~ | 2~8) r \section |
  aes4(bes8) bes c c | des2~8 8 \time 4/4 | des4(aes bes8) bes f8. 16 | % 3a
  des2. r8 aes' \time 3/4 | aes4(bes8) bes c c | ees4(des ces8) 8 \time 4/4 |
  ees4(des ces8 bes) aes aes | 2 r8 8 8 8 \time 5/8 | des,8 8 fes4 8 \time 3/4 |
  ges4(aes8) r ces4 | ges8. aes16 bes4 des \time 2/4 | des(ees) \time 4/4 aes1( | % 4a
  \time 3/4 f2) aes,4( | ges2.) \time 4/4 | des4(ees2) ges8. 16 \time 3/4 |
  aes2(bes4) \time 4/4 | ges1~( \time 2/4 | 2 | aes2\fermata) |
  \bar "|."
}

wordsMen = \lyricmode {
  Oo, __ oo, __ oo, __ oo, __
  she hath __ in thrall.
  No, __ with love __ ls lord of all. __
  Oo. __
  When __ the bee -- tle’s horn __
  hath lulled __ the eve to sleep,
  un -- to __ her shiel -- ing low __
  and through __ door -- een peep.
  There on the crick -- et’s sing -- ing stone, __
  she stirs the bog -- wood fire __
  and, __ oo. __ Song, __
  heart’s de -- sire. __
  oo. __
}

wordsTenorMidi = \lyricmode {
  "Oo, "  "oo, "  "oo, "  "oo, " 
  "\nshe " "hath "  "in " "thrall. "
  "\nNo, "  "with " "love "  "ls " "lord " "of " "all. " 
  "\nOo. " 
  "\nWhen "  "the " bee "tle’s " "horn " 
  "\nhath " "lulled "  "the " "eve " "to " "sleep, "
  "\nun" "to "  "her " shiel "ing " "low " 
  "\nand " "through "  door "een " "peep. "
  "\nThere " "on " "the " crick "et’s " sing "ing " "stone, " 
  "\nshe " "stirs " "the " bog "wood " "fire " 
  "\nand, "  "oo. "  "Song, " 
  "\nheart’s " de "sire. " 
  "\noo. " 
}

wordsFullBass = \lyricmode {
  Oo, __ oo, __ oo, __ oo, __
  she hath __ in thrall.
  No, __ with love __ ls lord of all. __
  Oo. __
  When __ the bee -- tle’s horn __
  hath lulled __ the eve to sleep,
  un -- to __ her shiel -- ing low __
  and through __ door -- een peep.
  There on the crick -- et’s sing -- ing stone, __
  she stirs the bog -- wood fire __
  and, __ Song, __
  heart’s de -- sire. __
  Oo.
}

wordsBassMidi = \lyricmode {
  "Oo, "  "oo, "  "oo, "  "oo, " 
  "\nshe " "hath "  "in " "thrall. "
  "\nNo, "  "with " "love "  "ls " "lord " "of " "all. " 
  "\nOo. " 
  "\nWhen "  "the " bee "tle’s " "horn " 
  "\nhath " "lulled "  "the " "eve " "to " "sleep, "
  "\nun" "to "  "her " shiel "ing " "low " 
  "\nand " "through "  door "een " "peep. "
  "\nThere " "on " "the " crick "et’s " sing "ing " "stone, " 
  "\nshe " "stirs " "the " bog "wood " "fire " 
  "\nand, "  "Song, " 
  "\nheart’s " de "sire. " 
  "\nOo. "
}

wordsBass = \lyricmode {
  \repeat unfold 57 \skip 1
  Oo.
}

bass = \relative {
  \global
  R2.*4 \time 4/4 |
  aes1~ \time 3/4 | 2.~ | 2.~ |
  aes2.~ \time 4/4 aes2~8 des(bes aes) \time 3/4 | ges2(fes4) |
  \apart ges2 r8 ges \time 4/4 | ges2. 4 | fes2 des4.(aes'8 \time 3/4 | % 2a
  des2 aes4~ | 2) r8 aes \time 4/4 | ges2~8 8 8. 16 \time 3/4 \auto des'2.( |
  ces8 bes ges aes ees f | ges2.) | \apart ces8(bes aes ges f ees | ces2~8) r \section |
  des4~8 8 f f | ges2~8 8 \time 4/4 | f4.(ees8 des) des bes8. 16 | % 3a
  ges2. r8 ges \time 3/4 | des'4(ees8) ees f f | ges2~8 8 \time 4/4 |
  f2(ees8 des) ces bes | aes2 r8 des8 8 8 \time 5/8 ges,8 8 aes4 8 \time 3/4 |
  bes4(ces8) r des4 | 8. 16 4 ees \time 2/4 | f(ges) \time 4/4 | fes1 \time 3/4 | % 4a
  R2. | R \time 4/4 | f,4(ges aes) 8. 16 \time 3/4 |
  bes2 r4 \time 4/4 | R1 \time 2/4 | R2 | des2_\fermata |
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = "Soprano/Alto"
            shortInstrumentName = SA
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = "Tenor/Bass"
            shortInstrumentName = TB
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
            \new NullVoice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = "Soprano/Alto"
            shortInstrumentName = SA
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partCombine \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = "Tenor/Bass"
            shortInstrumentName = TB
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
            \new NullVoice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsWomen
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsFullBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-solo
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsFullBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsWomen
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsFullBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsFullBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsFullBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsFullBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-solo
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
%            \addlyrics \wordsWomenMidi
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-women
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
%            \addlyrics \wordsSoloMidi
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsWomenMidi
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
%            \addlyrics \wordsSoloMidi
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
%            \addlyrics \wordsWomenMidi
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Solo"
            shortInstrumentName = #"So"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \solo
%            \addlyrics \wordsSoloMidi
          >>
        \new ChoirStaff <<
                                % Single Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \soprano
%            \addlyrics \wordsWomenMidi
          >>
                                % Single Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \alto
          >>
                                % Single Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
