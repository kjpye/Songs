\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Be Prepared"
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
  \key c \major
  \time 2/4
  \partial 4
}

TempoTrack = {
  \tempo "Trustworthily, loyally, helpfully, friendlily, etc." 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s4 s2*3
  \textMark \markup { \box "1b" }    s2*4 s4
  \textMark \markup { \box "1c" } s4
  \repeat volta 2 {
    s2*4
    \textMark \markup { \box "1d" } s2*5
    \textMark \markup { \box "2a" } s2*4
    \textMark \markup { \box "2b" } s2*5
    \textMark \markup { \box "2c" } s2*4
    \textMark \markup { \box "2d" } s2*4
    \textMark \markup { \box "3a" } s2*4
    \textMark \markup { \box "3b" } s2*4
    \textMark \markup { \box "3c" } s2*4
    \alternative {
      \volta 1 {
    \textMark \markup { \box "3d" } s2*2
      }
      \volta 2 { s2 }
    }
  }
}

ChordTrack = \chordmode {
  s4 s2*7 | s4 g:13 |
  \repeat volta 2 {
    c2 | s | s | s4.. g16:dim |
    g2:7 | s | s | s | c |
    e2:7 | a:9 | s | d:7 | % 2a
    s2 | g:9 | s4 g:7+ | c2 | s |
    s2 | s4 g:dim | g2:7 | s |
    s2 | s | c4. g8:7/c | c2:7 |
    f4 c:7 | f c:m6 | d4. a8:7/d | d2:7 | % 3a
    g4 d:7 | g g:7 | c2 | f |
    d2:7 | f4:m6 g:7 | c f | c f:6 |
    \alternative {
      \volta 1 { c4 g:dim | g2:7 | }
      \volta 2 { c4 f:m6 | c2 | }
    }
  }
  
}

melodyA = \relative {
  r4 | R2*7 | r4 \section \break
  g'8. fis16 |
}

melodyB = \relative {
  g'2~ | 4 e8 f | g f e f | g4 f8. e16 |
  f2~ | 4 d8 e | f e d e | f4 g8 g | c c c c |
  c8 b gis e | b'2~ | % 2a
  \tag #'dash {<<{\voiceTwo 8 \once\tiny a} \new Voice {\voiceOne b4}>> \oneVoice g8 a |}
  \tag #'v1   {                                                   b4              g8 a |}
  \tag #'v2   {             8            a                                       g8 a |}
  b b b b |
  b8 a gis d | a'2~ | 4 g8. fis16 | g2~ |
  \tag #'dash {<<{\voiceOne g8 f} \new Voice {\voiceTwo g4}>> \oneVoice e8 f |}
  \tag #'v2   {                                         g4              e8 f |}
  \tag #'v1   {             g8 f                                        e8 f |}
  g8 f e f | g4 f8 e | f2~ | 4 d8 e |
  f8 e d e | f4 c8 d | e dis e f | g fis g c, |
  f8 e f g | a4 8 g | fis fis fis g | a fis e d | % 3a
  \tag #'dash {<<{\voiceTwo g16 g} \new Voice {\voiceOne g8}>> \oneVoice d8 g a |}
  \tag #'v1   {                                          g8              d8 g a |}
  \tag #'v2   {             g16 g                                        d8 g a |}
  b4 e,8 f | g fis f fis | a b c a |
  d2~ | 4 c8. b16 | c2~ | c~ |
}

melodyC = \relative {
  c''4 r | r g8. fis16 |
}

melodyD = \relative {
  c''4 r | r r |
}

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative {
      \volta 1 { \melodyC }
      \volta 2 { \melodyD }
    }
  }
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB
  \melodyC
  \keepWithTag #'v2 \melodyB
  \melodyD
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  Be pre -- pared! __
  That's the Boy Scouts' march -- ing song,
  Be pre -- pared! __
  As through life you march a -- long,
  Be pre -- pared to hold your li -- quor pret -- ty well. __ _
  Don't write naugh -- ty words on walls if you can't spell. __
  Be pre -- pared! __
  To hide that pack of cig -- a -- rettes,
  Don't make book __ if you can not cov -- er bets.
  Keep those reef -- ers hid -- den where you're sure that they will not be found,
  And be care -- ful not to smoke them when the scout -- _ mas -- ter's a -- round,
  For he on -- ly will in -- sist that they be shared. __
  Be pre -- pared! __
  \set stanza = "2."
  Be pre-
  __
}

wordsTwo = \lyricmode {
  Be pre -- pared! __
  That's the Boy Scouts' sol -- emn creed,
  Be pre -- pared! __
  And be clean in word and deed.
  Don't so -- lic -- it for your sis -- ter, that's not nice, __
  Un -- less you get a good per -- cent -- age of her price. __
  Be pre -- pared! __
  _ And be care -- ful not to do
  Your good deeds __ when there's no -- one watch -- ing you.
  If you're look -- ing for ad -- ven -- ture of a new and dif -- f'rent kind,
  And you come a -- cross a Girl Scout who is Si -- mi -- lar -- ly in -- clined.
  Don't be ner -- vous, don't be flus -- tered, don't be scared. __
  Be pre -- pared! __
  _ _ __
}

wordsSingle = \lyricmode {
  Be pre -- pared! __
  That's the Boy Scouts' march -- ing song,
  Be pre -- pared! __
  As through life you march a -- long,
  Be pre -- pared to hold your li -- quor pret -- ty well. __
  Don't write naugh -- ty words on walls if you can't spell. __
  Be pre -- pared! __
  To hide that pack of cig -- a -- rettes,
  Don't make book __ if you can not cov -- er bets.
  Keep those reef -- ers hid -- den where you're sure that they will not be found,
  And be care -- ful not to smoke them when the scout -- mas -- ter's a -- round,
  For he on -- ly will in -- sist that they be shared. __
  Be pre -- pared! __
  
  \set stanza = "2."
  Be pre -- pared! __
  That's the Boy Scouts' sol -- emn creed,
  Be pre -- pared! __
  And be clean in word and deed.
  Don't so -- lic -- it for your sis -- ter, that's not nice, __
  Un -- less you get a good per -- cent -- age of her price. __
  Be pre -- pared! __
  And be care -- ful not to do
  Your good deeds __ when there's no -- one watch -- ing you.
  If you're look -- ing for ad -- ven -- ture of a new and dif -- f'rent kind,
  And you come a -- cross a Girl Scout who is Si -- mi -- lar -- ly in -- clined.
  Don't be ner -- vous, don't be flus -- tered, don't be scared. __
  Be pre -- pared! __
}

wordsMidi = \lyricmode {
  "Be " pre "pared! " 
  "\nThat's " "the " "Boy " "Scouts' " march "ing " "song, "
  "\nBe " pre "pared! " 
  "\nAs " "through " "life " "you " "march " a "long, "
  "\nBe " pre "pared " "to " "hold " "your " li "quor " pret "ty " "well. " 
  "\nDon't " "write " naugh "ty " "words " "on " "walls " "if " "you " "can't " "spell. " 
  "\nBe " pre "pared! " 
  "\nTo " "hide " "that " "pack " "of " cig a "rettes, "
  "\nDon't " "make " "book "  "if " "you " "can " "not " cov "er " "bets. "
  "\nKeep " "those " reef "ers " hid "den " "where " "you're " "sure " "that " "they " "will " "not " "be " "found, "
  "\nAnd " "be " care "ful " "not " "to " "smoke " "them " "when " "the " scout mas "ter's " a "round, "
  "\nFor " "he " on "ly " "will " in "sist " "that " "they " "be " "shared. " 
  "\nBe " pre "pared!\n" 
  
  \set stanza = "2."
  "\nBe " pre "pared! " 
  "\nThat's " "the " "Boy " "Scouts' " sol "emn " "creed, "
  "\nBe " pre "pared! " 
  "\nAnd " "be " "clean " "in " "word " "and " "deed. "
  "\nDon't " so lic "it " "for " "your " sis "ter, " "that's " "not " "nice, " 
  "\nUn" "less " "you " "get " "a " "good " per cent "age " "of " "her " "price. " 
  "\nBe " pre "pared! " 
  "\nAnd " "be " care "ful " "not " "to " "do "
  "\nYour " "good " "deeds "  "when " "there's " no "one " watch "ing " "you. "
  "\nIf " "you're " look "ing " "for " ad ven "ture " "of " "a " "new " "and " dif "f'rent " "kind, "
  "\nAnd " "you " "come " a "cross " "a " "Girl " "Scout " "who " "is " Si mi lar "ly " in "clined. "
  "\nDon't " "be " ner "vous, " "don't " "be " flus "tered, " "don't " "be " "scared. " 
  "\nBe " pre "pared! " 
}

pianoRHone = \relative {
  \global
  e'8 f \section | g fis g gis | a b c a | \voiceOne d2~ |
  d4 c8. b16 | c2~ | c~ | 4 <ais, e' g>8. 16 | \oneVoice <b d f g>4 \section \break
  <e g>8. <dis f>16 |
  \repeat volta 2 {
    <e g>2~ | 4 <c e>8 <d f> | <e g> <d f> <c e> <d f> | <e g>4 <d f>8. <cis e>16 |
    <d f>2~ | 4 <b d>8 <c e> | <d f> <c e> <b d> <c e> | <d f>4 <f g>8 8 | <e c'>8 8 8 8 |
    c'8 <d, gis b> g <d e> | b' e,16(g b cis e g | <e g b>4) <cis g'>8 <cis a'> | <c fis b>8 8 8 8 | % 2a
    q8 <c fis a> <c fis> <c d> | \voiceOne a'2~ | 4 g8. fis16 \oneVoice | <c e g>2~ | 8 f <e, c' e> <f d' f> |
    <g e' g>8 <f d' f> <e c' e> <f d' f> | <g e' g>4 \voiceOne f'8 e \oneVoice | <b d f>2~ | 4 <d, b' d>8 <e c' e> |
    <f d' f>8 <e c' e> <d b' d> <e c' e> | <f d' f>4 c8 d | e dis e f | g fis g c, |
    f8 e f g | a4 8 g | fis8 8 8 g | a fis e d | % 3a
    g8 d g a | b4 e,8 f | g fis g gis | a b c a |
    \voiceOne d2~ | 4 c8. b16 | c2~ | c~ |
    \alternative {
      \volta 1 { c4 \oneVoice <aes, e' g>8. 16 | <b d f g>4 <e g>8. <dis fis>16 | }
      \volta 2 { \voiceOne c'4\repeatTie \oneVoice <d, aes' c>8.-> 16-> | <e g c>4-> r | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s4 | s2 | s | r8 <fis' a>16 16 8 8 |
  <f aes>4 <f g> | r8 <c e g> r16 c <f a> c | r8 <c e g> r16 c <d f> c | <c e>4 s | s
  s4 |
  \repeat volta 2 {
    s2*13 |
    s2 <b' f'>4 <b e>8 <bes ees> | <a d>4 <b dis> | s2 | s | % 2b
    s2 | s4 <ais cis> | s2 | s |
    s2*4 |
    s2*4 | % 3a
    s2*4 |
    r8 <fis a>16 16 8 8 | <f aes>4 <f g> | r8 <c e g> r16 d <f a> c | r8 <c e g> r16 d <d f> c |
    \alternative {
      \volta 1 { <c e>4 s | s2 | }
      \volta 2 { <a c>4 s | s2 | }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s2\omit\cresc-\markup\italic "cresc. poco a poco" | s2*5 | s4 s\dim | s
  s4\mf |
  \repeat volta 2 {
    s2*30 |
    s2 | s | s\cresc | s | % 3b
    s2*4 |
    \alternative {
      \volta 1 {s4 s\dim | s s\mf | }
      \volta 2 { s4 s\ff | s2 | }
    }
  }
}

pianoLH = \relative {
  \global
  r4 \section | e8 <g c> c, q | f <a c> c, q | r8 <fis c'>16 16 8 8 |
  <f c'>4 <g d'> | <c, c'>8 r <f, f'> r | <e e'> r <d d'> r <c c'>4 cis' | d \section
  g,4 |
  \repeat volta 2 {
    \voiceTwo
    c8 <e g> b q | a q g q | c q b q | a q g q |
    d' <f g> c q | b q g q | d' q g, q | d' q g, q e' g c, g' |
    e8 gis d gis | cis, <g' a> a, q | cis q e q | fis <a c> d, q | % 2a
    fis8 q d q | g4 d | g, g' | c,8 <e g> b q | a q g q |
    c8 q b q | a q g q | d' <f g> c q | b q g q |
    d'8 q g, q | d' q g, q | <c g' c>8-> r r <c g' b>-> | <c g' bes>-> r r q-> |
    <c f a>4-> <c g' bes>-> | <f a c>-> <ees g c>-> | <d a' d>8-> r r <d a' cis>-> | <d a' c>-> r r q | % 3a
    <d g b>4-> <d a c>-> | <g b d>-> <f b d> | e8 <g c> c, q | f <a c> c q |
    r8 <fis, c'>16 16 8 8 | <f c'>4 <g d'> | \oneVoice <c, c'>8 r <f, f'> r | <e e'> r <d d'> r |
    \alternative {
      \volta 1 { <c c'>4 cis' | d g, | }
      \volta 2 { <c, c'>4 <f f'>8.-> 16-> | <c c'>4-> r | }
    }
  }
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
            \new Lyrics \lyricsto "melody" \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
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
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "singlepage")
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
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \melodySingle
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
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
