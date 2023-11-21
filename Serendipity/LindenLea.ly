\version "2.25.9"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Linden Lea"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ralph Vaughan Williams"
  arranger    = "Arr. Arthur Somervell"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/4
}

TempoTrack = {
  \tempo "Andante con moto." 4=100
%  \set Score.tempoHideNote = ##t
  s2.*16
  \tempo 4=33 s4 \tempo 4=100 s2 % 4a
  s2.*15
  \tempo 4=33 s4 \tempo 4=100 s2 % 5b+4
  s2.*18
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s2.*4
  \mark \markup { \box "2b" } s2.*4
  \mark \markup { \box "3a" } s2.*4
  \mark \markup { \box "3b" } s2.*4
  \mark \markup { \box "4a" } s2.*4
  \mark \markup { \box "4b" } s2.*4
  \mark \markup { \box "5a" } s2.*4
  \mark \markup { \box "5b" } s2.*5
  \mark \markup { \box "6a" } s2.*4
  \mark \markup { \box "6b" } s2.*5
  \mark \markup { \box "7a" } s2.*4
  \mark \markup { \box "7b" } s2.*5
}

soprano = \relative {
  \global
  r4 r8 ees'^\p aes bes
  c4 ees f8 ees
  des4 c bes8 aes
  f8 aes aes4 bes
  aes4. ees8 aes bes % 2b
  c4 ees f8 ees
  des4 c f,8 g
  aes8 bes c4 bes
  bes4. 8 ees c % 3a
  f4. ees8 c aes
  bes4. 8 ees c
  f4. ees8 des c
  bes4. ees,8 aes bes % 3b
  c4. ees8 f ees
  des8 c bes4 aes
  f8 aes8 4 bes
  aes4\fermata r8 ees^\pp ees' des % 4a
  c8(bes aes) ees' des c
  bes4 aes bes8 c
  bes8 aes8 4. g8
  aes4. ees8 ees' des % 4b
  c8(bes aes) ees' des c
  bes4 aes ees'8 des
  c8 bes aes(f) g(aes)
  aes4(g8) 8 aes c % 5a
  bes4. aes8 c des
  ees4. 8 8 aes
  f8(ees des) c bes a
  bes(aes g) ees ees' des % 5b
  c8(bes aes) g f ges
  f8 a bes4 ees
  ees8 des aes4. g8
  aes4\fermata r8 ees^\f aes bes
  c4 ees f8 ees % 6a
  des4 c bes8 aes
  f8 aes8 4 bes
  aes4. r8 aes bes
  c4 ees f8 ees % 6b
  des4 c f,8 g
  aes8 bes c4 bes
  bes4. r8 ees c
  f4. ees8 c aes
  bes4.^\> 8^\p ees c % 7a
  f4. ees8 des c
  bes4. ees,8 aes bes
  c4. ees8 f ees
  des8 c bes4 aes % 7b
  f8 aes8 4 bes
  aes2.~
  aes2.~
  aes2.
  \bar "|."
}

words = \lyricmode {
  With -- in the wood -- lands, flow -- 'ry glad -- ed,
  By the oak trees' mos -- sy moot,
  The shin -- ing grass blades, tim -- ber sha -- ded,
  Now do qui  -- ver un -- der foot;
  And birds do whis -- tle o -- ver -- head,
  And wa -- ter's bub -- bling in its bed;
  And there for me, the ap -- ple tree
  Do lean down low in Lin -- den Lea.

  When leaves, that late -- ly were a -- spring -- ing,
  Now do fade with -- in the copse,
  And paint -- ed birds do hush their sing -- ing,
  Up up -- on the tim -- ber tops;
  And brown -- leav'd fruit's a -- turn -- ing red,
  In cloud -- less sun -- shine o -- ver -- head,
  With fruit for me the ap -- ple tree
  Do lean down low in Lin -- den Lea.

  Let oth -- er folk make mon -- ey fast -- er,
  In the air of dark -- room'd towns;
  I don't dread a peev -- ish mas -- ter,
  Tho' no man may heed my frowns.
  I be free to go a -- broad,
  Or take a -- gain my home -- ward road,
  To where, for me, the ap -- ple tree
  Do lean down low in Lin -- den Lea. __
}

wordsMidi = \lyricmode {
  "With" "in " "the " wood "lands, " flow "'ry " glad "ed, "
  "\nBy " "the " "oak " "trees' " mos "sy " "moot, "
  "\nThe " shin "ing " "grass " "blades, " tim "ber " sha "ded, "
  "\nNow " "do " qui "ver " un "der " "foot; "
  "\nAnd " "birds " "do " whis "tle " o ver "head, "
  "\nAnd " wa "ter's " bub "bling " "in " "its " "bed; "
  "\nAnd " "there " "for " "me, " "the " ap "ple " "tree "
  "\nDo " "lean " "down " "low " "in " Lin "den " "Lea. "

  "\nWhen " "leaves, " "that " late "ly " "were " a- spring "ing, "
  "\nNow " "do " "fade " with "in " "the " "copse, "
  "\nAnd " paint "ed " "birds " "do " "hush " "their " sing "ing, "
  "\nUp " up "on " "the " tim "ber " "tops; "
  "\nAnd " brown- "leav'd " "fruit's " a- turn "ing " "red, "
  "\nIn " cloud "less " sun "shine " o ver "head, "
  "\nWith " "fruit " "for " "me " "the " ap "ple " "tree "
  "\nDo " "lean " "down " "low " "in " Lin "den " "Lea. "

  "\nLet " oth "er " "folk " "make " mon "ey " fast "er, "
  "\nIn " "the " "air " "of " dark- "room'd " "towns; "
  "\nI " "don't " "dread " "a " peev "ish " mas "ter, "
  "\nTho' " "no " "man " "may " "heed " "my " "frowns. "
  "\nI " "be " "free " "to " "go " a "broad, "
  "\nOr " "take " a "gain " "my " home "ward " "road, "
  "\nTo " "where, " "for " "me, " "the " ap "ple " "tree "
  "\nDo " "lean " "down " "low " "in " Lin "den " "Lea. " 
}

alto = \relative {
  \global
  r4 r8 ees'^\p ees ees
  ees4. aes8 f g
  aes8(bes) aes4 ees8 8
  f8 des ees4 4
  c4. ees8 f g % 2b
  aes8(bes) aes(g) f g
  aes8(bes) aes4 ees8 8
  ees8 8 4 d
  ees4. 8 8 aes % 3a
  f4. aes8 8 8
  aes4(g8) 8 aes aes
  aes4. c8 bes a
  bes8(aes g) ees f g % 3b
  aes8(ees) aes(g) f ges
  f8 ees des4 ees
  f8 des ees4 4
  ees4\fermata r8 8^\pp 8 8 % 4a
  ees4 aes aes8 g
  f8(ees) 4 8 8
  f8 8 ees4 4
  c4. ees8 8 g % 4b
  aes4 ees aes8 g
  f8(ees) 4 8 8
  ees8 8 4 d
  ees4. 8 8 aes % 5a
  f4(g8) aes aes aes
  aes8(f g) g aes aes
  aes4. ges8 f ees
  d4(ees8) 8 f g % 5b
  aes4 ees des8 8
  f8 ees des4 ees
  f8 8 ees4 4
  c4\fermata r8 ees^\f ees ees
  ees4. aes8 f g % 6a
  aes8(bes) aes4 ees8 8
  f8 des ees4 4
  c4. ees8(f) g
  aes8(bes) aes(g) f g % 6b
  aes8(bes) aes4 ees8 8
  ees8 8 4 d
  ees2 8 aes
  f4. aes8 8 8
  aes4^\> (g8) 8^\p aes aes % 7a
  aes4. c8 bes a
  bes8(aes g) ees f g
  aes8(ees aes) g f ges
  f8 ees des4 ees % 7b
  f8 des ees4 4
  f4(ees des
  f4 ees des
  c2.)
  \bar "|."
}

tenor = \relative {
  \global
  r4 r8 ees^\p ees' ees
  ees4 4 des8 bes
  f'4 ees4 8 8
  des8 f, aes4 g
  aes4. bes8 c ees % 2b
  ees4 4 des8 bes
  f'4 ees c8 ees
  c8 bes aes4 4
  aes4(g8) 8 aes c % 3a
  des4. ees8 8 c
  ees4. 8 8 8
  des4. ges8 f ees
  des4(ees8) 8 8 des % 3b
  c4 ees des8 c
  bes8 a f4 aes
  aes8 f aes4 g
  <ees aes>4\fermata r8 ees8^\mf aes bes % 4a
  c4 ees f8 ees
  d4 c bes8 aes
  f8 aes8 4 bes
  aes4. ees8 aes bes % 4b
  c4 ees f8 ees
  des4 c f,8 g
  aes8 bes c4 bes
  bes4. 8 ees c % 5a
  f4. ees8 c aes
  bes4. 8 ees c
  f4. ees8 d c
  bes4. ees,8 aes bes % 5b
  c4. ees8 f ees
  des8 c bes4 aes
  f8 aes8 4 bes
  aes4\fermata r8 ees^\f ees' ees
  ees4 4 des8 bes % 6a
  f'4 ees4 8 8
  des8 f, aes4. g8
  aes4. bes8(c) ees
  ees4 4 des8 bes % 6b
  f'4 ees c8 ees
  c8 bes aes4 4
  aes4(g) aes8 c
  des4. ees8 8 c
  ees4.^\> 8^\p 8 8 % 7a
  des4. ges8 f ees
  des4(ees8) 8 8 des
  c4 ees des8 c
  bes8 a f4 aes % 7b
  aes8 f aes4 g
  des'4(c bes
  des4 c bes
  aes2.)
  \bar "|."
}

bass = \relative {
  \global
  r4 r8 ees^\p f g
  aes4 c, des8 ees
  f8(g) aes4 c,8 8
  des8 8 c4 ees
  aes4. g8 f ees % 2b
  aes4 c, des8 ees
  f8(g) aes4 c8 bes
  aes8 g f4 bes,
  ees4. des8 c aes % 3a
  des4. c8 aes f'
  ees4. des'8 c aes
  des,4. ees8 f f
  bes4(ees,8) des c bes % 3b
  aes4 c des8 ees
  f8 8 bes,4 c
  des8 8 c4 ees
  aes,4\fermata r8 ees'8^\pp f g % 4a
  aes4 c, des8 ees
  f8(g) aes4 c,8 8
  des8 8 c4 ees
  f4. g8 f ees % 4b
  aes4 c, des8 ees
  f8(g) aes4 c,8 bes
  aes8 g f4 bes
  ees4. des8 c aes % 5a
  des4. c8 aes f'
  ees4. des8 c aes
  des4. ees8 f f
  bes,4(ees8) des c bes % 5b
  aes4 c des8 ees
  f8 8 bes,4 c
  des8 8 c4 ees
  aes4\fermata r8 ees^\f f g
  aes4 c, des8 ees % 6a
  f8(g) aes4 c,8 8
  des8 8 c4 ees
  aes4. g8(f) ees
  aes4 c, des8 ees % 6b
  f8(g) aes4 c8 bes
  aes8 g f4 bes,
  ees4.(des8) c aes
  des4. c8 aes f'
  ees4.^\> des'8^\p c aes % 7a
  des,4. ees8 f f
  bes4(ees,8) des c bes
  aes4 c des8 ees
  f8 8 bes,4 c % 7b
  des8 8 c4 ees
  aes2(ees4
  aes2 ees4
  aes,2.)
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single-noacc"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-sop"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-alto"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-tenor"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \words
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}
