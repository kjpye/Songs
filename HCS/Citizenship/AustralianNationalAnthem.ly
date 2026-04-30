\version "2.27.0"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Australian National Anthem"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Arr. Christopher Gordon"
  arranger    = "PianoReduction: Jessica Wells"
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
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=104
%  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3
  \textMark \markup { \box "1b" } s1*5
  \textMark \markup { \box "2a" } s1*4
  \textMark \markup { \box "2b" } s1*4
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "4a" } s1*5
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "6a" } s1*4
}

dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s2. s4\f | s1*5 |
  s1*2 | s2.\dim s4\mf | s1*5 |
  s1*7 | s2. s4\f |
  s1*7 | s2.\dim s4\mf | s1 |
}

soprano = \relative {
  \global
  R1*2 | r2 r4 f' |
  bes4 f d f | bes4. 8 4 d | c bes a bes | c2. f,4 | bes f d bes |
  f'4. 8 4 d' | c bes a g | f2. 4 | g4. a8 bes4 g | % 2a
  f4. d8 4 f | g bes ees d | c2. f,4 | g4. a8 bes4 g |
  f4. bes8 4 c | d4. bes8 c4. a8 | bes2. d4 | ees d c bes | % 3a
  a4 g f bes | d4. bes8 c4. a8 | bes1~ | 2 r4 f |
  bes4 f d f | bes4. 8 4 d | c bes a bes | c2. f,4 | bes f d bes | % 4a
  f'4. 8 4 d' | c bes a g | f2. 4 | 4. a8 bes4 g |
  f4. d8 4 f | g bes ees d | c2. f,4 | g4. a8 bes4 g | % 5a
  f4. bes8 4 c8 c | d4. bes8 c4. a8 | bes2. d4 | ees d c bes |
  a4 g f bes | d4. bes8 c4. a8 | bes1~ | 2 r | % 6
}

words = \lyricmode {
  Aus -- tra -- lians all let us re -- joice,
  For we are one and free;
  We’ve gol -- den soil and wealth for toil;
  Our home is girt by sea;
  Our land a -- bounds in na -- ture’s gifts
  of beau -- ty rich and rare;
  In his -- tory’s page, let ev -- ery stage
  Ad -- vance Aus -- tra -- lia Fair.
  In joy -- ful strains then let us sing
  Ad -- vance Aus -- tra -- lia Fair.
  
  Be -- neath our rad -- iant South -- ern Cross
  We’ll toil with hearts and hands
  To make this Com -- mon -- wealth of ours
  Re -- nowned of all the lands;
  For those who’ve come a -- cross the seas
  We‘ve bound -- less plains to share;
  With cour -- age let us all com -- bine to
  Ad -- vance Aus -- tra -- lia Fair
  In joy -- ful strains then let us sing
  Ad -- vance Aus -- tra -- lia Fair.
}

wordsMidi = \lyricmode {
  "Aus" tra "lians " "all " "let " "us " re "joice, "
  "\nFor " "we " "are " "one " "and " "free; "
  "\nWe’ve " gol "den " "soil " "and " "wealth " "for " "toil; "
  "\nOur " "home " "is " "girt " "by " "sea; "
  "\nOur " "land " a "bounds " "in " na "ture’s " "gifts "
  "\nof " beau "ty " "rich " "and " "rare; "
  "\nIn " his "tory’s " "page, " "let " ev "ery " "stage "
  "\nAd" "vance " Aus tra "lia " "Fair. "
  "\nIn " joy "ful " "strains " "then " "let " "us " "sing "
  "\nAd" "vance " Aus tra "lia " "Fair.\n"
  
  "\nBe" "neath " "our " rad "iant " South "ern " "Cross "
  "\nWe’ll " "toil " "with " "hearts " "and " "hands "
  "\nTo " "make " "this " Com mon "wealth " "of " "ours "
  "\nRe" "nowned " "of " "all " "the " "lands; "
  "\nFor " "those " "who’ve " "come " a "cross " "the " "seas "
  "\nWe‘ve " bound "less " "plains " "to " "share; "
  "\nWith " cour "age " "let " "us " "all " com "bine " "to "
  "\nAd" "vance " Aus tra "lia " "Fair "
  "\nIn " joy "ful " "strains " "then " "let " "us " "sing "
  "\nAd" "vance " Aus tra "lia " "Fair. "
}

alto = \relative {
  \global
  R1*2 | r2 r4 f' |
  bes4 f d f | bes4. 8 4 f | f f f g | f(e f) f | bes f d bes |
  f'4. 8 4 4 | 4 d f e | f2. c4 | ees4. f8 g4 ees | % 2a
  d4. bes8 4 d | bes ees4 4 f | f(e f) f | ees4. 8 4 4 |
  f4. ees8 d4 ees | f4. d8 ees4. 8 | d2. f4 | f f g g | % 3a
  f4. e8 ees4 d | 4. 8 ees4. 8 | g2(ees | d) r4 f |
  bes4 f d f | bes4. 8 4 4 | g g f g | a2. f4 | bes f d bes | % 4a
  f'4. 8 4 bes | a f f e | f2. c4 | ees4. f8 g4 ees |
  d4. bes8 4 d | bes ees4 4 f | f(e f) f | ees4. 8 4 4 | % 5a
  f4. ees8 d4 ees8 8 | f4. d8 ees4. 8 | d2. f4 | 4 4 g g |
  f4. e8 ees4 d | 4. 8 ees4. 8 | d1~ | 2 r | % 6
}

tenor = \relative {
  \global
  R1*2 | r2 r4 f |
  bes4 f d f | bes4. 8 4 4 | a bes c c | a(bes c) f, | bes f d' bes |
  f4. 8 4 bes | f f f g | a(g f) a | bes4. 8 4 4 | % 2a
  bes4. a8 g4 f | ees8(f) g(a) bes(c) d(f) | c4(bes a) bes | 4. 8 4 4 |
  bes4. g8 bes4 4 | 4. 8 a4. c8 | bes2. 4 | a bes4 4 c | % 3a
  c4 bes c bes | 4. 8 a4. c8 | ees2(c | bes) r4 f |
  bes4 f' d f | bes,4. 8 4 f' | ees d c c | 2. f,4 | bes f' d bes | % 4a
  f4. 8 4 f' | f d c c | c(bes a) a | bes4. 8 4 4 |
  bes4. a8 g4 f | ees8(f) g(a) bes(c) d(f) | c4(bes a) bes | 4. 8 4 4 | % 5a
  bes4. g8 bes4 8 8 | 4. 8 a4. c8 | bes2. 4 | a bes4 4 c |
  c4 bes c bes | 4. 8 a4. c8 | bes1~ | 2 r | % 6
  \bar "|."
}

bass = \relative {
  \global
  R1*2 | r2 r4 f |
  bes4 f d f | bes4. 8 4 bes, | c d ees e | f(g a) f | bes f d bes |
  f'4. 8 4 bes, | a bes c c | f(ees d) c | bes4. 8 4 4 | % 2a
  bes4. 8 4 4 | 4 8(a) g(a) bes(d) | a'4(g f) d | ees4. f8 g4 ees |
  d4. c8 bes4 <g g'> | <f f'>4. 8 f'4. 8 | bes,2. 4 | c d ees e | % 3a
  f4 g a bes | f4. 8 4. 8 | bes,2(c | f) r4 f |
  bes4 f d f | bes4. 8 4 4 | c g f c | f2. 4 | bes f d bes | % 4a
  f'4. 8 4 bes | c f, f c'8(bes) a4(g f8 ees) d(c) | bes4. 8 4 4 |
  bes4. 8 4 4 | 4 8(a) g(a) bes(d) | a'4(g f) d | ees4. f8 g4 ees | % 5a
  d4. c8 bes4 <g g'>8 8 | <f f'>4. 8 f'4. 8 | bes,2. 4 | c d ees e |
  f4 g a bes | f4. 8 4. 8 | <bes, f'>1~ | 2 r | % 6
}

pianoRH = \relative {
  \global
  f'8 16 16 <f g>8 16 16 <f g bes>8 16 16 <f g bes c>8 \tuplet 3/2 {g16(bes c)} |
  <g bes d f>8 <f g bes c>16 16 <g bes d f>8 \tuplet 3/2 {g16(bes c)} \*2{<g bes d f>8 <f g bes c>16 16} |
  <f a c f>8 f16 16 8 8 4 4 |
  bes4 f d f | bes8 f16 f bes8 c d16(c bes c d8) 16 16 | % 1b
  <f, c'>4 <f bes> <f a> <g bes> |
  <f c'>8 bes'16(a g f e d c bes a g f ees d c |
  bes'4) f8 <f bes>16 16 2 |
  f8 16 16 <f g>8 16 16 <f g bes>8 16 16 <f bes d>8 16 16 | % 2a
  <f c'>4 <d bes'> <f a> <e g> | f8 a16 bes c(d c8) f,4 <c f> |
  r8 bes''16^\mp 16 ees8-. bes-. ees g,16(a bes c bes8) |
  f'8-.-> bes,16 16 d8-. bes-. d-. d,16(ees f g f8-.) | % 2b
  <bes,, g'>4 <ees g bes> <ees bes' ees> <f bes d> |
  c'8(a16 bes c d c8-.) f,8 16 16 8 8 |
  r bes'16^\mp 16 ees8-. bes-. ees-. g,16(a bes c bes8-.) |
  f'8-.-> bes,16 16 d8-. bes-. d-. d,16(ees f g f8-.) | % 3a
  <f, bes d>4. <d f bes>8 <ees c'> a16(bes c d c8-.) |
  <d, bes'>8 bes'16(c d c d ees f ees f g f g bes d) |
  <ees, f c' ees>4 <d f bes d> <c ees g c> <bes c g' bes> |
  <a c f a>4 <g bes g'> <f c' ees f> <bes d f bes>8 f'16 bes | % 3b
  <f d'>8-.-> bes16 16 q8-. bes-.-> <ees, c'>8-.-> a16 a q8-. <ees a>-.-> |
  <ees g bes>8-.-> ees16 f g(a g8-.) <bes, bes'>8-.-> c16 d ees(f ees8-.) |
  f8-.-> bes16 c d(ees d8) f16(ees d c bes a g f) |
  <bes,, bes'>4 \clef bass <f a c f> <d f bes d> <f bes d f> \clef treble | % 4a
  <<{\vo bes'4. 8 4 <bes d>} \new Voice {\vt ees,8 f g ees f4 f}>> | \ov
  <c ees g c>4 <bes d g bes> <a c f a> <bes c g' bes> |
  <c f a c>2. \clef bass <f, f'>4 |
  <bes d f bes>4 <f a c f> <d f bes d> <bes d f bes> \clef treble |
  f''8 16 16 <f g>8 16 16 <f g bes>8 16 16 <f bes d>4 | % 4b
  <c' f a c>4 <bes d f bes> <a c f a> <g c e g> |
  <f a c f>8 a16 bes c(d c8-.) f,8 16 16 8 8 |
  r8  bes'16 16 ees8-. bes-. ees-. g,16(a bes c bes8-.) |
  f'8-.-> bes,16 16 d8-. bes-. d-. d,16(ees f g f8-.) | % 5a
  <bes,, g'>4 <ees g bes> <ees bes' ees> <f bes d> |
  c'8(a16 bes c d c8-.) f,8 16 16 8 8 |
  r8 bes'16 16 ees8-. bes-. ees-. g,16(a bes c bes8) |
  f'8-.-> bes,16 16 d8-. bes-. d-. d,16(ees f g f8-.) | % 5b
  <f, bes d>4. <d f bes>8 <ees c'> a16(bes c d c8-.) |
  <d, bes'>8 bes'16(c d c d ees f ees f g f g bes d) |
  <ees, f c' ees>4 <d f bes d> <c ees g c> <bes c g' bes> |
  <a c f a>4 <g bes g'> <f c' ees f> <bes d f bes>8 f'16 bes | % 6
  <bes d f>8-.-> <f bes d>16 q <bes d f>8-. <f bes d>8-.-> <f a c f>-.-> <f a c>16 q <f a c f>8-. <f a c>-.-> |
  <bes bes'>8-.-> d16 ees f(g f8-.) q8-.-> d16 ees f(f f8-.) |
  q8-.-> d16 ees f(g f8-.) <bes, d f bes>-> r r4 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\omit\f-\markup{\dynamic f \italic marc.} | s1*7 |
  s1*2 | s2.\dim s4\mf | s1*2 | s1\mf | s1*2 |
  s2 s8 s4.\cresc | s1\f | s4 s2.\cresc | s1\ff | s1*4 |
  s1*8 | s8 s2..\mf |
  s1 | s\mf | s1*2 | s2 s8 s4.\cresc | s1\f | s8 s2..\cresc | s1\ff | % 5
  s1*4 |
}

pianoLH = \relative {
  \global
  R1*2 | r2 r4 f |
  bes4 f8 <f bes>16 16 2 | bes4. 8 4 <bes, bes'> | % 1b
  <c a'> <d bes'> <ees c'> <e c'> | <d a>4 <g bes e> <a c f> f |
  bes f <d d'> <bes bes'> |
  f'4. 8 4 q | <a, f'> <bes f'> <c f> <c g'> | % 2a
  <f a>4(<ees g> <d f>) <c a'> |
  <bes' ees g>4. <bes f' a>8 <bes g' bes>4 <bes ees g> |
  <bes d f>4. <a bes d>8 <g bes d>4 <f bes d f> | % 2b
  <bes, ees>8(f') <bes, g'>(<a a'>) \vo <g bes'>_(a) bes_(d) \ov |
  <a' c f>4(<g bes e> <f a c>) <d bes'> |
  <bes' ees g>4. <bes f' a>8 <bes g' bes>4 <bes ees g> |
  <bes d f>4. <a bes d>8 <g bes d>4 <f bes d f> | % 3a
  f,16 g a bes c d f g <f a>4. f8 | <bes, bes'>4. bes'16-> 16-> 4-> bes,-> |
  <c a'>4 <d bes'> <ees bes' c> <e bes' c> |
  <f c' f>4 <g bes f'>8 e' <a, c ees>4 <bes d f> | % 3b
  <f bes d>4. 8 <f a>4. <f c'>8 | <bes, bes'>2 <c ees bes' c> |
  <f bes d>2 r4 <f f'> |
  bes,4 a g8 f ees d | c d ees c bes r bes'4 | ees,8 f g bes c d ees e | % 4a
  f8 a16 bes c(d c8-.) f,4 r | d c bes8 a g f |
  ees8 f g ees d r bes d | f a, bes d c f c' bes | % 4b
  <f' a>4(<ees g> <d f>) <c a'> |
  <bes' ees g>4. <bes f' a>8 <bes g' bes>4 <bes ees g> |
  <bes d f>4. <a bes d>8 <g bes d>4 <f bes d f> | % 5a
  <bes, c>8(f') <bes, g'>(<a a'>) \vo <g bes'>_(a) bes_(d) | \ov
  <a' c f>4(<g bes e> <f a c>) <d bes'> |
  <bes' ees g>4. <bes f' a>8 <bes g' bes>4 <bes ees g> |
  <d, bes' f'>4. <c' ees g bes>8 <bes d f bes>4 <g, g'> | % 5b
  f16 g a bes c d f g <f a>4. f8 | <bes, bes'>4. bes'16-> 16-> 4-> bes,-> |
  <c a'>4 <d bes'> <ees bes' c> <e bes' c> |
  <f c' f>4 <g bes f>8 e' <a, c ees>4 <bes d f> | % 6
  <bes d>4.-> 16 16 <f a>4.-> f16 f |
  <bes, bes'>2-> q-> | q-> 8-> r r4 |
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
%            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
%            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
%            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
%            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
%            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
%            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
%            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
%            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
%            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
%            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
%            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
%            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
%            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
%            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
%            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
%            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
%            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
%            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
