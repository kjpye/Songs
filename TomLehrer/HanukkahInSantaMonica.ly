\version "2.25.27"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
  dedication  = "(I'm Spending)"
  title       = "Hanukkah in Santa Monica"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Tom Lehrer"
%  arranger    = "arranger"
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
  \time 2/4
}

TempoTrack = {
  \tempo Brightly 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s2*4
  \textMark \markup { \box "1b" } s2*5
  \textMark \markup { \box "2a" } s2*5
  \textMark \markup { \box "2b" } s2*5
  \textMark \markup { \box "2c" } s2*5
  \textMark \markup { \box "2d" } s2*4
  \textMark \markup { \box "3a" } s2*5
  \textMark \markup { \box "3b" } s2*5
  \textMark \markup { \box "3c" } s2*5
  \textMark \markup { \box "3d" } s2*5
  \textMark \markup { \box "4a" } s2*4
  \textMark \markup { \box "4b" } s2*4
  \textMark \markup { \box "4c" } s2*4
}

ChordTrack = \chordmode {
  s2*2 s4 f:7 s2 \section | bes2 s2*3 bes2 |
  b2:dim7 c:m7 f:7 c:m7 s | s2*2 f2:7 s bes4 b:dim7 | f2:7 bes:7 s2*3 | ees2 s c:9 f:7 |
  bes2 s g:7 s c:7 | c4:7/g ees:m/ges f2:7 f/ees bes4/d bes s d:m7 | g2:7 s ees s g:7/d | s c:m s cis:dim7 s4 e:dim7 |
  bes2/f s g:7 s | c:m7 s f:13 aes4:7.11 f:13.9-/a | bes2 s2*3 |
}

melody = \relative {
  \global
  R2*2 | r4 f' | g a \section |
  c16 ces bes4.~ | 8 8 a bes | a16 aes g4.~ | 8 r f fis | g fis cis d |
  g8 f cis d | ees2~ | 8 8 f g | c bes4.~ | 8 8 a bes | % 2a
  a8 g4.~ | 8 c, d ees | g c, d ees | a c, d ees | f2~ |
  f8 r r f | bes4 c8 8~ | 8 bes4 f8 | bes4 c8 8~ | 8 bes4 c8 |
  d8 c bes g | d' c bes g | d' c d c | d c e, f |
  c'8 bes4 8 | a bes a bes | a g4.~ | 8 r^\markup\italic "(Southern accent)" fis g | d' c4 8 | % 3a
  bes8 c bes c | bes a4.~ | 8 f g a | c bes4 8 | a bes a aes |
  g2~ | 8 8 fis g | bes g fis g | bes g fis g | b g fis g |
  b8 g fis g | c g fis g | c g fis g | cis g fis g | cis g fis g |
  d'8 g, fis g | d' g, fis g | d' g, fis g | d' g, fis g | % 4a
  d'16 d g,4.~ | 8 8 fis g | d'16 d a4. | d4 d |
  bes2~ | 2~ | 4 r | R2 |
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

words = \lyricmode {
  I’m spend -- ing Han -- uk -- kah __ in San -- ta Mon -- i -- ca, __
  Wear -- ing san -- dals, light -- ing can -- dles by the sea. __
  I spent She -- vu -- os __ in East St. Lou -- is, __
  A charm -- ing spot, but clear -- ly not the spot for me. __
  Those East -- ern win -- ters, I can’t en -- dure __ ’em,
  So ev -- ’ry year I pack my gear and come out here till Pu -- rim.
  Rosh -- Ha -- shon -- ah I spend in Ar -- i -- zon -- ah, __
  And Yom Kip -- puh way down in Mis -- sis -- si- -- puh. __
  But in De -- cem -- ber there’s just one place for me, __
  A -- mid the Ca -- li -- for -- nia flo -- ra
  I’ll be light -- ing my me -- no -- rah,
  Like a ba -- by in his cra -- dle
  I’ll be play -- ing with my drei -- del,
  Here’s to Ju -- das Mac -- ca -- be -- us,
  Boy, if he could on -- ly see us
  Spend -- ing Han -- uk -- kah __ in San -- ta Mo -- ni -- ca by the sea. __
}

wordsMidi = \lyricmode {
  "I’m " spend "ing " Han uk "kah "  "in " San "ta " Mon i "ca, " 
  "\nWear" "ing " san "dals, " light "ing " can "dles " "by " "the " "sea. " 
  "\nI " "spent " She vu "os "  "in " "East " "St. " Lou "is, " 
  "\nA " charm "ing " "spot, " "but " clear "ly " "not " "the " "spot " "for " "me. " 
  "\nThose " East "ern " win "ters, " "I " "can’t " en "dure "  "’em, "
  "\nSo " ev "’ry " "yeat " "I " "pack " "my " "gear " "and " "come " "out " "here " "till " Pu "rim. "
  "\nRosh" Ha shon "ah " "I " "spend " "in " Ar i zon "ah, " 
  "\nAnd " "Yom " Kip "puh " "way " "down " "in " Mis sis si- "puh. " 
  "\nBut " "in " De cem "ber " "there’s " "just " "one " "place " "for " "me, " 
  "\nA" "mid " "the " Ca li for "nia " flo "ra "
  "\nI’ll " "be " light "ing " "my " me no "rah, "
  "\nLike " "a " ba "by " "in " "his " cra "dle "
  "\nI’ll " "be " play "ing " "with " "my " drei "del, "
  "\nHere’s " "to " Ju "das " Mac ca be "us, "
  "\nBoy, " "if " "he " "could " on "ly " "see " "us "
  "\nSpend" "ing " Han uk "kah "  "in " San "ta " Mo ni "ca " "by " "the " "sea. " 
}

pianoRHone = \relative {
  \global \ov
  g'16-> ges f8 c'-. bes-. | a16-> gis a8 d-. c-. | <a f'>8-. r f4 | g a \section |
  \vo c16 ces bes4.~ | 8 8 a bes | a16 aes g4.~ | 4 f8 fis | <d g> fis cis d |
  q8 f cis d | ees2~ | 8 8 f g | c bes4.~ | 8 8 a bes | % 2a
  a8 g4.~ | 8 c, d ees | g c, d ees | a c, d ees | f2~ |
  f4 r8 f | bes4 \ov <d, aes' c>8 8~ | 8 <d aes' bes>4 <d f>8 | \vo bes'4 \ov <d, aes' c>8 8~ | 8 <d aes' bes>4 <f aes c>8 |
  \vo d'8 c bes g | d' c bes g | d' c d c | \ov <f, a d> <ees a c> e f |
  \vo c'8 bes4 8 | a bes a bes | a g4.~ | 8 r fis g | d' c4 8 | % 3a
  bes8 c bes c | bes a4.~ | 8 f g a | c bes4 8 | a bes a aes |
  g4 \ov <f d'>8-> <bes, f' g>-> ~ | \vo g'8 8 fis g | bes g fis g | bes g fis g | b g fis g |
  b8 g fis g | c g fis g | c g fis g | cis g fis g | cis g fis g |
  d'8 g, fis g | d' g, fis g | d' g, fis g | d' g, fis g | % 4a
  \ov <ees g bes d>16 q <ees g>4.~ | 8 8 <d fis> <ees g> | <ees g a d>16 q <ees g a>4. | <ees ges d'>4 4 |
  \vo bes'2~ | 2~ | 4 \ov r | <bes d f bes>\shortfermata r |
}

pianoRHtwo = \relative {
  \global \vt
  s2*4 \section |
  <d' fis>4 r8 d | r q r q | q4 r8 q | r q r q | bes2 |
  aes2 | <g c>8(bes c bes | a4) <c ees> | r8 <ees g> r q | r q r q | % 2a
  r8 <bes ees> r q | r g r <g bes> | <a ees> r r <a c> | <c ees> r r <a c> | r <bes d> r <aes d> |
  r8 <a ees'> r4 | r8 <d aes'> s4 | s2 | r8 q s4 | s2 |
  <g bes>8 r r ees | <g bes> r r ees | <e bes'> r q r | s2 |
  r8 <d f> r q | r q r q | r <b f'> r q | r q r q | r <e bes'> r q | % 3a
  r8 q r q | r <ees f> r q | r c r c | f4 r8 <d f> | r q r <c f> |
  r8 <b f'> s \once\hideNotes q ~ | q b r b | r <bes ees> r q | r q r q | r <b f'> r q |
  r8 q r q | r <c ees> r q | r q r q | r <bes e> r q | r q r q |
  r8 <bes d> r q | r q r q | r <b f'> r q | r q r q | % 4a
  s2*4 |
  <d f>4 <c ees>8 <d f>~ | q <c ees> <d f> <c ees> | <d f>4 s | s2 |
}

dynamicsPiano = {
  s2\ff | s | s4 s\f | s2*6 |
  s2*14 | s8 s4.\< | s2\! | s2*2 | s8\> s4.\! | % 2
  s2*20 |
  s2\omit\cresc-\markup\italic "cresc. poco a poco" | s2*3 | s2\ff | s2*2 | s2\< | s2\fff | s2*2 | s2\sfz |
}

pianoLH = \relative {
  \global \ov
  g16-> ges f8 c'-. bes-. | a16-> gis a8 d-. c-. | <f, ees'>-> r r4 | R2 \section |
  \repeat unfold 5 {bes,8 r f r |}
  b8 r f r | c' r c, r | f r f r | c r g' r | c, r g' r | % 2a
  c8 r g r | c r g r | f r c r | f r c r | bes'4--(b-- |
  c8--)f, g a | bes r f r | bes r f r | bes r f r | bes r c, d |
  ees8-> r bes' r | ees,-> r bes' r | g r c r | f, r g a |
  bes8 r f r | bes r f r | g r d r | g r d r | c r c' r | % 3a
  g8 r ges r | f r f r | ees r ees r | d r bes r | f' r d r |
  g8 r d r | g r fis f | ees r bes' r | ees, r bes' r | d, r g r |
  d8 r g r | c, r ees r | g r ees r | cis r e r | g r e r |
  f4 bes, | f' bes, | g' d | g d | % 4a
  <c c'>4-> <d d'>-> | <ees ees'>-> <e e'>-> | <f f'>-> <g g'>-> | <aes aes'>-> <a a'>-> |
  <bes bes'>4-> <f f'>8 <bes bes'>->~ | q <f f'> <bes bes'>-> <f f'> | <bes bes'>4-. r | <bes, bes'>\shortfermata r |
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
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
      >>
      \new PianoStaff \with {
      }
      <<
        \new Staff = pianorh \with {
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh \with {
        }
        <<
          \clef bass
          \new Voice \pianoLH
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsMidi
          >>
        >>
      >>
      \new PianoStaff \with {
      }
      <<
        \new Staff = piano \with {
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLH
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
