\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Someone to Watch over me"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
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

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=73
  s1*16
  \set Score.tempoHideNote = ##t
  \tempo "Somewhat faster" 4=77
  s1*6
  \tempo 4=73
  s1^\markup\italic rit.
  \tempo "Tempo as before" 4=73
  s1*7
  s2 \tempo 4=70 s^\markup\italic rit.
  s2 \tempo 4=35 s \tempo Slower 4=65
  s1
  s2 \tempo Freely 4=65 s
  s1*3
}

RehearsalTrack = {
  \set Score.currentBarNumber = #27
  \textMark \markup { \box \bold "5a" } s1*3
  \textMark \markup { \box \bold "5b" } s1*3
  \textMark \markup { \box \bold "5c" } s1*3
  \textMark \markup { \box \bold "6a" } s1*3
  \textMark \markup { \box \bold "6b" } s1*4
  \textMark \markup { \box \bold "6c" } s1*4
  \textMark \markup { \box \bold "7a" } s1*4
  \textMark \markup { \box \bold "7b" } s1*3
  \textMark \markup { \box \bold "7c" } s1*3
  \textMark \markup { \box \bold "8a" } s1*3
  \textMark \markup { \box \bold "8b" } s1*4
}

auto   = { \partCombineAutomatic }
apart  = { \partCombineApart     }
pcchords = { \partCombineChords    }

solo = \relative {
  R1*31
  r2 r2\fermata |
  r4 a'^\mp^\markup "FEMALE SOLO" g f | % 8a++
  c'2\fermata \breathe c,4 d | c1~ | 2 r | r r\fermata |
}

wordsSolo = \lyricmode {
  Some -- one to watch o -- ver me. __
}

wordsSoloMidi = \lyricmode {
  "\nSome" "one " "to " "watch " o "ver " "me. " 
}

dynamicsVocal = {
  s1\omit\mf
  s1*23
  s4 s2.^\f
  s1*5
  s2 s^\> % 8a
  s s\! | s1 | s1 | s2 s^\p | s1 | s1
}

soprano = \relative {
  \global
  r4 c'8 d e g a c | d d4 c8 b2 | c8 4 b8 a2 |
  b8 4 a8 g2 | r4 a g f | c'2 c,4 d |
  e1~ | 2 r | r4 c8 d e g a c |
  d8 4 c8 b2 | c8 4 b8 a2 | b8 4 a8 g2 | % 6a
  r4 a g f | c'2 c,4 d | c1 | r4 d e g |
  b4 c b4. c8 | d4 c2 b4 | d c2 b4 | d4 c2 a4 |
  c4 b2 a4 | c b2 gis4 | e1~ | 2^\markup\italic rit. r | % 7a
  r4 c8 d e g a c | d d4 c8 b2 | c8 4 b8 a2 |
  b8 4 a8 g2 | r4 a g f | c' r c, d |
  e1~ | 2~ 2\fermata | R1 | % 8a
  r2\fermata \breathe r | r c8(d e g | a2 <aes c> ~ | <g c>2~ 2\fermata) |
  \bar "|."
}

words = \lyricmode {
  There's a some -- bod -- y I'm long -- ing to see.
  I hope that he turns out to be
  some -- one who'll watch o -- ver me. __
  I'm a lit -- tle lamb who's lost in the wood.
  I know I could al -- ways be good
  to one who'll watch o -- ver me.
  Al -- though he may not be the man some girls think of as hand -- some,
  to my heart, he car -- ries the key. __
  Won't you tell him please,
  to put on some speed,
  fol -- low my lead.
  Oh, how I need some -- one to watch o -- ver me. __
  Oo __
}

wordsMidi = \lyricmode {
  "There's " "a " some bod "y " "I'm " long "ing " "to " "see. "
  "\nI " "hope " "that " "he " "turns " "out " "to " "be "
  "\nsome" "one " "who'll " "watch " o "ver " "me. " 
  "\nI'm " "a " lit "tle " "lamb " "who's " "lost " "in " "the " "wood. "
  "\nI " "know " "I " "could " al "ways " "be " "good "
  "\nto " "one " "who'll " "watch " o "ver " "me. "
  "\nAl" "though " "he " "may " "not " "be " "the " "man " "some " "girls " "think " "of " "as " hand "some, "
  "\nto " "my " "heart, " "he " car "ries " "the " "key. " 
  "\nWon't " "you " "tell " "him " "please, "
  "\nto " "put " "on " "some " "speed, "
  "\nfol" "low " "my " "lead. "
  "\nOh, " "how " "I " "need " some "one " "to " "watch " o "ver " "me. " 
  "\nOo " 
}

alto = \relative {
  \global
  r4 c'8 d e e e e | a8 4 8 gis2 | g8 4 8 fis2 |
  f8 4 8 e2 | r4 f e d | e2 c4 d |
  e1~ | 2 r | r4 c8 d e e e e |
  a8 4 8 gis2 | g8 4 8 fis2 | f8 4 8 e2 | % 6a
  r4 f e d | e2 c4 d | c1 | r4 d e g |
  gis4 a gis4. a8 | b4 a2 gis4 | b4 a2 \pcchords <f gis>4 | <d g>4 <e g>2 <c e>4 |
  <dis a'>4 <dis g>2 <d fis>4 | <d f> <d e>2 \auto d4 | cis1~ | 2 r | % 7a
  r4 c8 d e g a c | d d4 c8 b2 | c8 4 b8 a2 |
  b8 4 a8 g2 | r4 f e d | e r c d |
  d1( | cis2~ 2\fermata) | R1 | % 8a
  r2\fermata \breathe r | r c8(d e4~ | e2 f | e~e\fermata) |
  \bar "|."
}

tenor = \relative {
  \global
  r4 c'8 b c c c c | d8 4 8 2 | c8 4 8 2 |
  b8 4 8 bes2 | r4 c b a | a2 4 b |
  c1~ | 2 r | r4 c8 b c c c c |
  d8 4 8 2 | c8 4 8 2 | b8 4 8 bes2 | % 6a
  r4 c b a | a2 4 b | c1 | R1 |
  R1*4 |
  R1*4 | % 7a
  r4 c,8 d e g a c | d8 4 c8 b2 | c8 4 b8 a2 |
  b8 4 a8 g2 | r4 c b a | a r a b |
  bes1( | a2~2\fermata) | R1 | % 8a
  r2\fermata \breathe r | r c8(b c4~ | 2 d~ | 2 c2\fermata) |
  \bar "|."
}

bass = \relative {
  \global
  r4 c'8 b a a g g | fis8 4 8 f2 | e8 4 8 ees2 |
  d8 4 8 cis2 | r4 d e f | fis2 a4 b |
  c1~ | 2 r | r4 c8 b a a g g |
  fis8 4 8 f2 | e8 4 8 ees2 | d8 4 8 cis2  % 6a
  r4 d e f | fis2 a4 b | c1 | R1 |
  R1*4 |
  R1*4 % 7a
  r4 c,8 d e g a c | d8 4 c8 b2 | c8 4 b8 a2 |
  b8 4 a8 g2 | r4 d e f | fis r a b |
  g1~ | 2~ 2\fermata | R1 | % 8a
  r2\fermata \breathe r | r c8(b a g | fis2 f | <c g'>2~2\fermata) |
  \bar "|."
}

pianoRHone = \relative {
  \global
  <c' e>4 r r2 | <d a'>4 d <b d gis> d | <c g> c <a c fis> c |
  <f g>2 <bes, e g>4 \ottava #1 <bes'' bes'>8 <e, e'> | <f f'>4 \ottava #0 <c, f a> <b e g> <a d f> | <e' a c> \voiceOne <e' a c> \oneVoice <a,, c> <b d> |
  <g c e>8 g c e <gis, c e>4 gis8 e' | <a, c e> a c e q4 <aes, b d> | <e g c>4 r r2 |
  <c' d a'>2 <b d gis>4 \ottava #1 <gis'' gis'> \ottava #0 | <g,, c g'>2 <a c fis>4 \ottava #1 <a'' a'>4 \ottava #0 | <b,, f' g>2 <g bes e>4 \ottava #1 <bes'' bes'>8 <e, e'> | % 6a
  <f f'>4 \ottava #0 <c, f a> <b e g> <a d f> | <e' a c> \voiceOne <e' a c> \oneVoice <a,, c> <b d> | <e, g c> a'8 g <g, a c>4 <f a c> | <e g c> <e' g d'> <g c e> <e g c> |
  <b gis' b>4 <c a' c> <b g' b>4. <c a' c>8 | <d b' d>4 <c a' c>2 <b gis' b>4 | <d b' d> <c a' c>2 <b fis' g b>4 | <d g d'> <c g' c>2 <c e a>4 |
  \voiceOne <a' c>4 <g b>2 <fis a>4 | <f c'> <e b'>2 <d gis>4 \oneVoice | e8 e, a e'~8 g, cis e | <c e> fis, a c <a c e>4 <b d> | % 7a
  <e, g c>4 c'8 d <c e> <d g> <c e a> <c e g c> | \voiceOne d'4. c8 <d, f gis b>2 | c'4. b8 <c, ees fis a>2 |
  b'4. a8 <bes, cis e g>8 <g bes>-- <bes c>-- <c e>-- \oneVoice | <a c f>4-> <c f a> <b e g> <a d f> | <e' a c> \voiceOne <e' a c> \oneVoice <a,, c> <g b d> |
  <g bes d e>8-> <d' e g>-> q-> <e g bes>-> \voiceOne q-> <g bes d> <bes d e> <d e g> \oneVoice | <cis e a>2 \ottava #1 <a' a'>\fermata \ottava #0 | <a,, c f> <g b e>4 <a c d> | % 8a
  <a c e>2\fermata \breathe <a c>4 <b d> | R1 | R1 | R1\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s1 | c'2 s | g2 s |
  b4 4 s2 | s1 | s1 |
  s1*3 |
  s1*3 | % 6a
  s1 | s1 | s4 <bes d> s2 | s1 |
  s1*4 |
  dis1 | d2. s4 | s1 | s1 | % 7a
  s1 | <d a'>2 s | <c g'> s |
  <d f>2 s | s1 | s1 |
  s1*3 | % 8a
  s1*4 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\omit\mf
  s1*22
  s2-\markup\italic rit. s\<
  s1\f % 51
  s1*5
  s2 s\omit\decresc-\markup\italic "rit. e decresc." % 57
  s1
  s1\mp
  s1*4
}

pianoLHone = \relative {
  \global
  <c g'>4 r r2 | fis,2 f | e ees |
  \showStaffSwitch
  d2 cis | <d d'>4 <d' a'> <e, e'> <f f'> | <fis fis'> \change Staff = rh \voiceTwo <e'' a c> \change Staff = lh \oneVoice <g,, f'>2 |
  \voiceOne c4 4 e e | f f f f \oneVoice | <c, c'> r r2 |
  fis8 d' fis4 \apart \voiceOne r \auto f \oneVoice | e,8 c' e4 \apart \voiceOne r \auto ees \oneVoice | d,8 d' g4 \apart r \auto cis, | % 6a
  <d, d'>4 <d' a'> <e, e'> <f f'> | <fis fis'> \change Staff = rh \voiceTwo <e'' a c> \change Staff = lh \oneVoice <g,, g'>2 | c,8 g' e'4 <f, c'>4 g | <c, c'>4 d'' e c |
  f,,8 c' f2 c,4 | f8 c' f g a4 c,, | f8 c' f g a4 f, | e8 c' e c g'4 a |
  <b, a'>2 b, | <e' gis> e, | cis' a | d, <g f'> | % 7a
  c,8 g' e' g <c, g'> <b g'> <a a'> <g g'> | fis4 <fis' a> f, <f' gis b> | e, <e' g> ees, <ees' fis a> |
  d,4 <f' g b > cis,8 e'-- g-- bes-- | <d,, d'>4-> <d' a'> <e, e'> <f f'> | <fis fis'> \change Staff = rh \voiceTwo <e'' a c> \change Staff = lh \oneVoice <g,, f'> f |
  <e e'>8-> <g' bes>-> q-> <bes d>-> q-> _[<d e> <e g> \hideStaffSwitch \change Staff = rh <g bes>] \change Staff = lh \clef treble | <g a>2~2\fermata \clef bass | <d,, d'> <e e'>4 <f f'> | % 8a
  <fis fis'>2\fermata <g f'> | R1 | R1 | R1\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo 
  s1*3 |
  s1*3 |
  c,2 e | f g | s1 |
  s2 e | s ees | s cis | % 6a
  s1*4 |
  s1*4 |
  s1*10 | % 7
  s1*7 | % 8
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new Voice \dynamicsVocal
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \dynamicsVocal
            \new Voice \partCombine #'(2 . 88) \tenor \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            shortInstrumentName = #"Solo"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new Voice \dynamicsVocal
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \dynamicsVocal
            \new Voice \partCombine #'(2 . 88) \tenor \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
                                % Solo staff
          \new Staff = solo \with {
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \dynamicsVocal
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \new Voice \dynamicsVocal
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \dynamicsVocal
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \dynamicsVocal
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = rh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
