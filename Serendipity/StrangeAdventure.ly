\version "2.24.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Strange Adventurey"
  subtitle    = \markup {from \italic "The Yeomen of the Guard"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Arthur Sullivan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "W. S. Gilbert"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo "Allegretto, Tempo di Gavotte" 4=120
  \set Score.tempoHideNote = ##t
  s1
  \repeat volta 2 {
    s1*25
    \alternative {
      {s1}
      {s1}
    }
  }
  s1*6
  s2. \tempo 4=30 s4
  \tempo 4=60 s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "1a" } s1
  \repeat volta 2 {
    s1*3
    \textMark \markup { \box \bold "1b" } s1*4
    \textMark \markup { \box \bold "2a" } s1*4
    \textMark \markup { \box \bold "2b" } s1*4
    \textMark \markup { \box \bold "3a" } s1*4
    \textMark \markup { \box \bold "3b" } s1*4
    \textMark \markup { \box \bold "4a" } s1*2
    \alternative {
      {s1} {s1}
    }
  }
  s1*2
  \textMark \markup { \box \bold "4b" } s1*4
}

ChordTrack = \chordmode {
}

dynamicsSop = {
  s1
  \repeat volta 2 {
    s1*3
    s2 s\f | s1 | s | s |
    s1*4 | % 2a
    s1 | s | s2 s\dim | s1 |
    s2 s\p | s1 | s2 s\cresc | s1 | % 3a
    s2 s\f | s1 | s | s\dim |
    s2 s\p | s1 | % 4a
    \alternative {
      {s1}
      {s1}
    }
  }
  s2 s\p | s1 |
  s1 | s2. s4\cresc | s1 | s2 s\dim s2. s4\p | s1 |
}

soprano = \relative {
  \global
  R1
  \repeat volta 2 {
    R1*3
    r2 b'4 d | c8(b) a4 c e | d8(c) b4 d g8(d) | c4 d8(c) b4 d8(b) |
    a1~ | a~ | 4 r a d | cis8(b) a4 cis cis | % 2a %%% CHECK original
    f8(e) d4 b e8(cis) ais4 b b aes | b1~ | b~ |
    b4 r fis fis | g a8(b) c4 4 | c a a a | b4 d8(e) f4 4 | % 3a
    f4 d d d | e8(fis) d4 fis4. e8 | 4 d8 r d4 b | b a8(g) fis4 a |
    g2 d'4 b | b a8(g) f4 a | % 4a
    \alternative {
      {g2. r4}
      {g2. r4}
    }
  }
  r2 fis4^! 4^! | g2 r |
  r2 fis4^! 4^! | g2 4 4 | g a a c | b2 d4 b | b a8(g) 4  fis\fermata | g1\fermata |
  \bar "|."
}

wordsSopOne = \lyricmode {
  Strange ad -- ven -- ture!
  Maid -- en wed -- ded
  To a __ groom she's ne -- ver seen! __
  Groom a -- bout to be be -- head -- ed,
  in an __ hour on Tow -- er Green! __
  Groom in drea -- ry __ dun -- geon ly -- ing—
  Groom as good as __ dead, or dy -- ing,
  For a pret -- ty maid -- en sigh -- ing—
  Pret -- ty maid of __ sev -- en -- teen!
  Sev -- en- sev -- en- sev -- en -- teen!

  tomb!
  Tow -- er  tomb! Tow -- er  tomb!
  Though the al -- tar be a tomb!
  Tow -- er, Tow -- er, Tow -- er tomb!
}

wordsSopTwo = \lyricmode {
  Strange ad -- ven -- ture that we're troll -- ing:
  Mod -- est maid and gal -- lant groom! __
  While the fun' -- ral bell is toll -- ing,
  In an hour on Tow -- er Green! __

  Mod -- est mai -- den __ will not tar -- ry;
  Though but six -- teen year she car -- ry,
  She must mar -- ry, she must mar -- ry—
  Though the al -- tar __ be a tomb!
  Tow -- er, Tow -- er, Tow -- er
}

wordsSopSingle = \lyricmode {
  Strange ad -- ven -- ture!
  Maid -- en wed -- ded
  To a __ groom she's ne -- ver seen! __
  Groom a -- bout to be be -- head -- ed,
  in an __ hour on Tow -- er Green! __
  Groom in drea -- ry __ dun -- geon ly -- ing—
  Groom as good as __ dead, or dy -- ing,
  For a pret -- ty maid -- en sigh -- ing—
  Pret -- ty maid of __ sev -- en -- teen!
  Sev -- en- sev -- en- sev -- en -- teen!

  Strange ad -- ven -- ture that we're troll -- ing:
  Mod -- est maid and gal -- lant groom! __
  While the fun' -- ral bell is toll -- ing,
  In an hour on Tow -- er Green! __

  Mod -- est mai -- den __ will not tar -- ry;
  Though but six -- teen year she car -- ry,
  She must mar -- ry, she must mar -- ry—
  Though the al -- tar __ be a tomb!
  Tow -- er, Tow -- er, Tow -- er tomb!

  Tow -- er  tomb! Tow -- er  tomb!
  Though the al -- tar be a tomb!
  Tow -- er, Tow -- er, Tow -- er tomb!
}

wordsSopMidi = \lyricmode {
  "Strange " ad ven "ture! "
  "\nMaid" "en " wed "ded "
  "\nTo " "a "  "groom " "she's " ne "ver " "seen! " 
  "\nGroom " a "bout " "to " "be " be head "ed, "
  "\nin " "an "  "hour " "on " Tow "er " "Green! " 
  "\nGroom " "in " drea "ry "  dun "geon " ly "ing— "
  "\nGroom " "as " "good " "as "  "dead, " "or " dy "ing, "
  "\nFor " "a " pret "ty " maid "en " sigh "ing— "
  "\nPret" "ty " "maid " "of "  sev en "teen! "
  "\nSev" "en " sev "en " sev en "teen!\n"

  "\nStrange " ad ven "ture " "that " "we're " troll "ing: "
  "\nMod" "est " "maid " "and " gal "lant " "groom! " 
  "\nWhile " "the " fun' "ral " "bell " "is " toll "ing, "
  "\nIn " "an " "hour " "on " Tow "er " "Green! " 

  "\nMod" "est " mai "den "  "will " "not " tar "ry; "
  "\nThough " "but " six "teen " "year " "she " car "ry, "
  "\nShe " "must " mar "ry, " "she " "must " mar "ry— "
  "\nThough " "the " al "tar "  "be " "a " "tomb! "
  "\nTow" "er, " Tow "er, " Tow "er " "tomb!\n"

  "\nTow" "er "  "tomb! " Tow "er "  "tomb! "
  "\nThough " "the " al "tar " "be " "a " "tomb! "
  "\nTow" "er, " Tow "er, " Tow "er " "tomb! "
}

dynamicsAlto = {
  s1
  \repeat volta 2 {
    s1*3
    s2 s\f | s1 | s | s |
    s2 s\p | s1 | s2 s\f | s1 | % 2a
    s1 | s | s2 s\p | s1 |
    s2 s\p | s1 | s2 s\cresc | s1 | % 3a
    s2 s\f | s1 | s | s\dim |
    s2 s\p | s1 | % 4a
    \alternative {
      {s1}
      {s1}
    }
  }
  s2 s\p | s1 |
  s1 | s2. s4\cresc | s1 | s2 s\dim s2. s4\p | s1 |
}

alto = \relative {
  \global
  R1
  \repeat volta 2 {
    R1*3
    r2 g'4 4 | fis4 4 4 4 | g4 4 4 4 | g fis g g |
    fis2 4-. 4-. | d-. e-. fis-. g-. | fis-. r fis d | g g g8(fis) e(a) | % 2a
    a8(g) fis4 d g | fis4 4 4 4 | b,2 fis'4-. a-. | g-. fis-. g-. e-. |
    fis4-. r dis dis | e fis g g | fis4 4 4 4 | g g c b8(a) | % 3a
    g4 g b b | c g a a | a4 8 r g4 4 | e e d fis |
    g2 d4 g | e e d d | % 4a
    \alternative {
      {d2. r4}
      {d2. r4}
    }
  }
  r2 d4^! 4^! | 2 r |
  r2 d4^! d^! | 2 4 4 | e e d fis | g2 4 4 | e e d d\fermata | d1\fermata |
  \bar "|."
}

wordsAltoOne = \lyricmode {
  Strange ad -- ven -- ture!
  Maid -- en wed -- ded
  To a __ groom she's ne -- ver seen!
  Ne -- ver, ne -- ver, ne -- ver seen!
  Groom a -- bout to be be -- head -- ed,
  in an __ hour on Tow -- er Green!
  Tow -- er, Tow -- er, Tow -- er Green!
  Groom in drea -- ry __ dun -- geon ly -- ing—
  Groom as good as __ dead, or dy -- ing,
  For a pret -- ty maid -- en sigh -- ing—
  Pret -- ty maid of __ sev -- en -- teen!
  Sev -- en- sev -- en- sev -- en -- teen!

  tomb!
  Tow -- er  tomb! Tow -- er  tomb!
  Though the al -- tar be a tomb!
  Tow -- er, Tow -- er, Tow -- er tomb!
}

wordsAltoTwo = \lyricmode {
  Strange ad -- ven -- ture that we're troll -- ing:
  Mod -- est maid and gal -- lant groom!
  Gal -- lant, gal -- lant, gal -- lant groom!
  While the fun' -- ral bell is toll -- ing,
  In an hour on Tow -- er Green!
  Tow -- er, Tow -- er, Tow -- er Green!

  Mod -- est mai -- den __ will not tar -- ry;
  Though but six -- teen year she car -- ry,
  She must mar -- ry, she must mar -- ry—
  Though the al -- tar __ be a tomb!
  Tow -- er, Tow -- er, Tow -- er
}

wordsAltoSingle = \lyricmode {
  Strange ad -- ven -- ture!
  Maid -- en wed -- ded
  To a __ groom she's ne -- ver seen!
  Ne -- ver, ne -- ver, ne -- ver seen!
  Groom a -- bout to be be -- head -- ed,
  in an __ hour on Tow -- er Green!
  Tow -- er, Tow -- er, Tow -- er Green!
  Groom in drea -- ry __ dun -- geon ly -- ing—
  Groom as good as __ dead, or dy -- ing,
  For a pret -- ty maid -- en sigh -- ing—
  Pret -- ty maid of __ sev -- en -- teen!
  Sev -- en- sev -- en- sev -- en -- teen!
  Strange ad -- ven -- ture that we're troll -- ing:
  Mod -- est maid and gal -- lant groom!
  Gal -- lant, gal -- lant, gal -- lant groom!
  While the fun' -- ral bell is toll -- ing,
  In an hour on Tow -- er Green!
  Tow -- er, Tow -- er, Tow -- er Green!

  Mod -- est mai -- den __ will not tar -- ry;
  Though but six -- teen year she car -- ry,
  She must mar -- ry, she must mar -- ry—
  Though the al -- tar __ be a tomb!
  Tow -- er, Tow -- er, Tow -- er tomb!
  
  Tow -- er  tomb! Tow -- er  tomb!
  Though the al -- tar be a tomb!
  Tow -- er, Tow -- er, Tow -- er tomb!
}

wordsAltoMidi = \lyricmode {
  "Strange " ad ven "ture! "
  "\nMaid" "en " wed "ded "
  "\nTo " "a "  "groom " "she's " ne "ver " "seen! "
  "\nNe" "ver, " ne "ver, " ne "ver " "seen! "
  "\nGroom " a "bout " "to " "be " be head "ed, "
  "\nin " "an "  "hour " "on " Tow "er " "Green! "
  "\nTow" "er, " Tow "er, " Tow "er " "Green! "
  "\nGroom " "in " drea "ry "  dun "geon " ly "ing— "
  "\nGroom " "as " "good " "as "  "dead, " "or " dy "ing, "
  "\nFor " "a " pret "ty " maid "en " sigh "ing— "
  "\nPret" "ty " "maid " "of "  sev en "teen! "
  "\nSev" "en " sev "en " sev en "teen!\n"
  "\nStrange " ad ven "ture " "that " "we're " troll "ing: "
  "\nMod" "est " "maid " "and " gal "lant " "groom! "
  "\nGal" "lant, " gal "lant, " gal "lant " "groom! "
  "\nWhile " "the " fun' "ral " "bell " "is " toll "ing, "
  "\nIn " "an " "hour " "on " Tow "er " "Green! "
  "\nTow" "er, " Tow "er, " Tow "er " "Green! "

  "\nMod" "est " mai "den "  "will " "not " tar "ry; "
  "\nThough " "but " six "teen " "year " "she " car "ry, "
  "\nShe " "must " mar "ry, " "she " "must " mar "ry— "
  "\nThough " "the " al "tar "  "be " "a " "tomb! "
  "\nTow" "er, " Tow "er, " Tow "er " "tomb! "
  
  "\nTow" "er "  "tomb! " Tow "er "  "tomb! "
  "\nThough " "the " al "tar " "be " "a " "tomb! "
  "\nTow" "er, " Tow "er, " Tow "er " "tomb! "
}

tenor = \relative {
  \global
  R1
  \repeat volta 2 {
    R1*3
    r2 d'4 4 | d d d d | d d d d | d d d d |
    d2 4-. a-. | fis-. a-. d-. e-. | d-. r a a | a8(b) cis4 d e | % 2a
    d4 a b cis | cis d cis cis | b2 dis4-. fis-. | e-. dis-. e-. cis-. |
    dis4-. r b b | b a g g | a b8(c) d4 d | e b c c | % 3a
    d4 e8(f) g4 g | e d c c | c4 8 r b4 d | d c8(b) a4 c |
    b2 g4 d' | d c8(b) a4 c | % 4a
    \alternative {
      {b2. r4}
      {b2. r4}
    }
  }
  r2 a4^! a^! | g2 r |
  r2 a4^! a^! | b2 g4 g | g g fis a | g2 4 d' | d c8(b) a(b) c4\fermata | b1\fermata |
  \bar "|."
}

dynamicsBass = {
  s1
  \repeat volta 2 {
    s1*3
    s2 s\f | s1 | s | s |
    s1\dim | s | s2 s\f | s1 | % 2a
    s1*4 |
    s2 s\p | s1 | s2 s\cresc | s1 | % 3a
    s2 s\f | s1 | s | s\dim |
    s2 s\p | s1 | % 4a
    \alternative {
      {s1}
      {s1}
    }
  }
  s2 s\p | s1 |
  s1 | s2. s4\cresc | s1 | s2 s\dim | s2. s4\p | s1 |
}

bass = \relative {
  \global
  R1
  \repeat volta 2 {
    R1*3
    r2 g4 b | a4 d, a' c | b8(a) g4 b b | a d, g b, |
    d1~ | d~ | 4 r d fis | e a b cis | % 2a
    d4 d, g e | fis4 4 4 4 | b,1~ | b~ |
    b4 r b b | e e e e | d d d d | g g a a | % 3a
    b4 b g g | c b a g | fis4 8 r g4 b, | c c d d |
    e2 b4 4 | c c d d | % 4a
    \alternative {
      {g,2. r4}
      {g2. r4}
    }
  }
  r2 d'4-! d-! | d2 r |
  r2 d4-! d-! | g2 b,4 b | c c d d | e2 b4 b | c c d d\fermata | g,1\fermata |
  \bar "|."
}

pianoRHone = \relative {
  \global
  r2 d''4(g8 d
  \repeat volta 2 {
    c4-!) c-! \appoggiatura {c16 d} c8(b c d) |
    <<{\voiceOne c4(b) d8 g(b g | d4 c) \appoggiatura {c16(d} c8 b c d | <g, b>4) \oneVoice r r2}
      \new Voice {s1 | \voiceFour b,4 a8 g s2 | s1 |}
    >>
    R1 | R | R |
    R1*4 | % 2a
    R1*4 |
    R1*4 | % 3a
    R1*4 |
    R1 | R | % 4a
    \alternative {
      {r2 d''4(g8 d) | }
      {r2 d4(g8 d | }
    }
  }
  c4) c \appoggiatura {c16(d} c8 b c d | 4 b) d8(g b g | d4 c) \appoggiatura {c16 d} c8( b c d |
  b2) r | R1 | R | R1\fermata | R\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1
  \repeat volta 2 {
    s2 \grace s8 fis'2 | g4 r d'2 | e,2(\grace s8 <d fis>2 |
    d4) r r2 | R1 | R | R |
    R1*4 | % 2a
    R1*4 |
    R1*4 | % 3a
    R1*4 |
    R1 | R | % 4a
    \alternative {
      {r2 s |}
      {r2 g~ |}
    }
  }
  g2(\grace s8 fis2) | g2 g |
  g2(\grace s8 fis2)( | g2) r | R1 | R | R\fermata | R\fermata |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2 s\p |
  \repeat volta 2 {
    s1*25
    \alternative {
      {s4 s2.\p}
      {s1}
    }
  }
  s1*8
}

pianoLHone = \relative {
  \global
  r2 <b d g>~ ( |
  \repeat volta 2 {
    <a d g>2 <d, d'>2~ |
    <g d>4) r g4.(b8) |
    <c, c'>2 d |
    g4 r r2 | R1 | R | R | % 2a
    R1*16 |
    R1 | R |
    \alternative {
      {
        \tag #'repeat {r2 <b d g>2\laissezVibrer}
        \tag #'single {r2 <b d g>2(}
      }
      {r2 <b d>(}
    }
  }
  <a d>2)~ <d, d'> | <<{d'1} \new Voice {\voiceTwo g,2 b}>> |
  <a d>2~ <d, d'> | <g d'> r | R1 | R | R\fermata | R\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s1
  \repeat volta 2 {
    s1 | s2 b,2 | s1 |
    s1 | R1 | R | R |
    R1*16 |
    R1 | R |
    \alternative {
      {r2 r}
      {<g, g'>1~}
    }
  }
  q1~ | q~ |
  q1~ | q | R | R | R\fermata | R\fermata |
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsAlto % Yes really
            \new Voice \tenor
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\keepWithTag #'repeat \pianoLHone} \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsAlto % Yes really
            \new Voice \tenor
            \addlyrics \wordsAltoSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsSopSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\keepWithTag #'single \pianoLHone} \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsAlto % Yes really
            \new Voice \tenor
            \addlyrics \wordsAltoSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsSopSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine {\keepWithTag #'single \pianoLHone} \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-st"
  \score {
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsAlto % Yes really
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice {\keepWithTag #'single \pianoLHone}
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-ab"
  \score {
   \unfoldRepeats
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsAlto % Yes really
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice {\keepWithTag #'single \pianoLHone}
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
