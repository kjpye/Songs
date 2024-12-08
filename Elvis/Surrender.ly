\version "2.25.22"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Surrender"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "E. de Curtis"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup { \italic "Original Italian Lyrics by " "G. B. de Curtis" }
  meter       = \markup { \italic "English Words and Adaptation by " "Doc Pomus & Mort Shuman" }
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 2/2
}

TempoTrack = {
  \global
  \tempo "Moderately Bright" 4=150
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "47a" s1*4
  \repeat volta 2 {
    \textMark \markup\box "47b" s1*5
    \textMark \markup\box "47c" s1*5
    \textMark \markup\box "47d" s1*5
    \textMark \markup\box "48a" s1*5
    \textMark \markup\box "48b" s1*5
    \textMark \markup\box "48c" s1*5
    \textMark \markup\box "48d" s1*5
    \textMark \markup\box "48e" s1*5
    \textMark \markup\box "49a" s1*5
    \textMark \markup\box "49b" s1*6
    \textMark \markup\box "49c" s1*5
    \textMark \markup\box "49d" s1*4
    \alternative {
      { s1 \textMark \markup\box "49e" s1 }
      { s1*4 }
    }
  }
}

ChordTrack = \chordmode {
  s1*4 |
  \repeat volta 2 {
    c1:m s s s f:m | s1 c:m s f:m s |c:m s f:m6 g:7 c:m |
    r1 s d:m7 s g:7 | s c s s s | d:m7 s g:7 s2. g4:7+5 c1 | s2 dis:dim c r s1 d:m7 s | g:7 e:7 a:m s f:m |
    s1 c:m s g:7 aes2:7 g:7 | c1:m r s d:m7 s g:7 | s2. g4:7+5 c1 s f:m6 s | c:m s g:7 s2. f4:m6 |
    \alternative {
      { c2:m aes:7 g1:7 | }
      { c1:m f:m c:m s | }
    }
  }
}

melody = \relative {
  \global
  R1*4 \section | \break
  \repeat volta 2 {
    r2 c'4 d | ees d g ees | g2 2~ | 1 r2 f4 g |
    aes4 f aes f | c'2 2~ | 1 r2 c4 d | ees d c d |
    g,2 2~ | 1 | r2 f4 g | f ees d ees | c1 |
    r2 c'4 b | g a b g | a2 2~ | 1 | r2 b4 a | % 48a
    g4 a b g | a2 2~ | 1 | r2 e4 f | g e d c |
    f2 2~ | 1 | r2 g4 a | b a g b | e,1~ |
    e2 r | r c'4 b | g a b g | a2 2~ | 1 |
    r2 d4 c | b c d b | c2 2~ | 1 | r2 c4 d |
    ees4 d c d | g,2 2~ | 1 | r2 f4 g | f ees d ees | % 49a
    c1 | r2 c'4 d | b2. a4 | c a8 f c2~ | 1 | r4 b' c d |
    b2. a4 | g2 2~ | 1 | r2 f | aes2. c4 |
    ees2.(d4) | c1 | r2 d | b2. c4 |
    \alternative {
      { c1 | R | }
      { c1~ | c~ | c~ | 2. r4 | }
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  \repeat volta 2 {
    When we kiss my heart’s on fi -- re, __
    Burn -- ing with a strange de -- si -- re. __
    And I know each time I kiss you __
    That your heart’s on fi -- re too.
    So, my dar -- ling, please sur -- ren -- der __
    All your love so warm and ten -- der. __
    Let me hold you in my arms, dear, __
    While the moon shines bright a -- bove. __
    All the stars will tell the sto -- ry __
    of our love and all its glo -- ry. __
    Let us take this night of ma -- gic __
    And make it a night of love.
    Won’t you please su -- ren -- der to me, __
    Your lips, your arms, your heart, dear. __
    Be mine for -- ev -- er;
    Be mine to --
    \alternative { night! { night! __ } }
  }
}

midiWords = \lyricmode {
  \repeat volta 2 {
    "\nWhen " "we " "kiss " "my " "heart’s " "on " fi "re, " 
    "\nBurn" "ing " "with " "a " "strange " de si "re. " 
    "\nAnd " "I " "know " "each " "time " "I " "kiss " "you " 
    "\nThat " "your " "heart’s " "on " fi "re " "too. "
    "\nSo, " "my " dar "ling, " "please " sur ren "der " 
    "\nAll " "your " "love " "so " "warm " "and " ten "der. " 
    "\nLet " "me " "hold " "you " "in " "my " "arms, " "dear, " 
    "\nWhile " "the " "moon " "shines " "bright " a "bove. " 
    "\nAll " "the " "stars " "will " "tell " "the " sto "ry " 
    "\nof " "our " "love " "and " "all " "its " glo "ry. " 
    "\nLet " "us " "take " "this " "night " "of " ma "gic " 
    "\nAnd " "make " "it " "a " "night " "of " "love. "
    "\nWon’t " "you " "please " su ren "der " "to " "me, " 
    "\nYour " "lips, " "your " "arms, " "your " "heart, " "dear. " 
    "\nBe " "mine " for ev "er; "
    "\nBe " "mine " to
    \alternative { "night!\n" night! }
  }
}

pianoRHone = \relative {
  \global
  \vo r2 f'4(g | f ees d ees | c2) bes'4(4 | g) r r2 \section |
  \repeat volta 2 {
    r2 c,4 d | <c ees> <d f> g ees | g2 2~ | 1 r2 f4 g |
    aes4 f aes f | c'2 2~ | 1 | r2 c4 d | ees d c d |
    g,2 2~ | 1 | r2 f4 g | f ees d ees | c1~ |
    c4 r c' b | g a b g | a2 2~ | 1 | r2 b4 a | % 48a
    g4 a b g | a2 2~ | 1 | r2 e4 f | g e d c |
    f2 2~ | 1~ | 2 g4 a | b a g b | e,2 c'4(d |
    b4 c a b | g) r c b | g a b g | a2 2~ | 1 |
    r2 d4 c | b c d b | c2 2~ | 1~ | 2 4 d |
    ees4 d c d | g,2 2~ | 1~ | 2 f4 g | f ees d ees | % 49a
    c1~ | 4 r c' d | b2. a4 | c a8 f d2~ | 1 | r4 b' c d |
    b2. a4 | g2 2~ | 1 | r2 f | aes2. c4 |
    ees2. d4 | c1 | r2 d | b2. c4 |
    \alternative {
      { c2 bes4(4 | g) r r2 | }
      { c1~ | c~ | c | \ov <c, ees g c>2 <c' ees g c>4-> r | }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  r4 <aes c>2. | r4 <f b>2. | <ees g>2 <c' g'>4 4 | <b f'> r r2 \section |
  \repeat volta 2 {
    r4 <ees, g>2. | g4 r <c ees> <g c> | r <g c ees> r q | r q r q | r <aes c>2. |
    r4 q r q | r <c ees g> r q | r q r q | r <f aes>2. | r4 q r q |
    r4 <g, c ees> r q | r q r q | r <aes c>2. | r4 <f b>2. | r4 <ees g> r q |
    q4 r r2 | R1 | r4 <a c f> r q | r q r q | r <b f'> r q | % 48a
    r4 q r q | r <g c e> r q | r q r q | r q r2 | R1 |
    r4 <a c> r q | r q r q | r <g b> r <b f'> | r q r <b dis g> | <g c>2 <e' g> |
    <e g>2 <c dis> | <c e>4 r r2 | R1 | r4 <a c f> r q | r q r q |
    r4 <b f'> r <f' a> | <d e>2 r4 <d gis> | r <c e a> r q | r q r q | r <c f>2. |
    r4 <f aes> r q | r <c ees> r q | r q r q | r <b d>2. | <ges c>2 <f b> | % 49a
    r4 <ees g> r q | q r r2 | R1 | r4 <a c> r <f a c> | r q r q | r <d' f> r <d f b> |
    r4 <d f> r <b dis> | r <g c e> r q | r q r q | r <aes c> r <c d> | r q r <f aes> |
    r4 <ees g c> r <ees g> | r <c ees g> r q | r2 <d f b> | r4 <d f>2 <d f aes>4 |
    \alternative {
      { <c ees g>2 <c ges'>4 4 | <b f'>4 r r2 | }
      { r4 <c ees g> r q | r <c f aes> r q | r <c ees g> r q | s1 | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf s1*3 |
  \repeat volta 2 {
    s1\mf s1*59
    \alternative {
      { s1*2 }
      { s1*4 }
    }
  }
}

pianoLH = \relative {
  \global
  d,1 | g2 g,4 g' | c,4(g') aes4 4 | g r8 f ees4 d \section |
  \repeat volta 2 {
    c4 r ees g | c, r ees g | c, r8 d ees4 g | c, r8 d ees4 f | f r aes c |
    f,4 e aes c | c, r8 d ees4 g | c, r8 d ees4 g | f r aes c | f, r aes c |
    c,4 r8 d ees4 g | c, r8 d ees4 g | d1 | g2 g,4 g' | c, r8 d ees4 g |
    c,4 r r2 | R1 | d4 r a'4. 8 | d2 c4 a | g r g, r | % 48a
    d'4 r <g, g'> r | c r g'4. 8 | a2 g4 e | c e c d | e g f e |
    d4 r a'4. 8 | d2 d,4. 8 | g4 r g, r | d' r <g, g'> r | c(g') c'(d |
    b4 c a b | g) r r2 | R1 | d,4 r a'4. 8 | d2 c4 a |
    g4 r g r | gis2 e4 r | a r c4. 8 | e2 c4 a | aes1 |
    g4 r aes g | g r c4. ees8 | g2 ees4 c | g1 | aes2 g | % 49a
    c,4 r8 d ees4 g | c, r r2 | R1 | d4 r a'4. 8 | d2 c4 a | g r g, r |
    d'4 r <g, g'> r | c r g'4. 8 | a2 g4 e | d2 aes' | f d |
    c4 r8 d ees4 g | c, r8 d ees4 g | g, g'2 aes4 | g2 g,4 g' |
    \alternative {
      { c,4(g') aes4 4 | g r8 f ees4 d | }
      { c4 r8 d ees4 g | f r8 g aes4 c | c, r8 d ees4 g | c g <c, c'>-> r | }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
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
            \clef "bass"
            \new Voice \pianoLH
          >>
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
    output-suffix = single
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
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
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
            \clef "bass"
            \new Voice \pianoLH
          >>
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
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar \with {
          midiInstrument = "Acoustic Guitar (Nylon)"
        }
        \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsMelody
            \new Voice \melody
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
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
