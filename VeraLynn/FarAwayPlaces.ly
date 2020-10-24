\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Far Away Places"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Alex Kramer & Joan Whitney"
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
  \time 3/4
  \tempo "Slowly and Sweetly" 4=88
}

TempoTrack = {
  \global
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "26a" } s2.*4
  \mark \markup { \circle "26b" } s2.*5
  \mark \markup { \circle "26c" } s2.*4
  \mark \markup { \circle "27a" } s2.*5
  \mark \markup { \circle "27b" } s2.*5
  \mark \markup { \circle "27c" } s2.*5
  \mark \markup { \circle "27d" } s2.*5
  \mark \markup { \circle "28a" } s2.*5
  \mark \markup { \circle "28b" } s2.*5
  \mark \markup { \circle "28c" } s2.*4
  \mark \markup { \circle "28d" } s2.*3
  \mark \markup { \circle "29a" } s2.*4
  \mark \markup { \circle "29b" } s2.*4
  \mark \markup { \circle "29c" } s2.*4
  \mark \markup { \circle "29d" } s2.*6
}

ChordTrack = \chordmode {
  c2.:6
  d:m7/c
  c:6
  d:m7/c
  c:6 % 26b
  d:m7/c
  c:6
  c:6.9/g
  d:m7
  g:9 % 26c
  c:13
  c:7
  f:maj9
  d:m7.5- % 27a
  c:6/g
  g:9
  c:6
  d2:m7 g4:9
  c2.:6 % 27b
  d:m7/c
  c:6
  d:m7/c
  c:6
  c:6.9/g % 27c
  d:m7
  g:9
  c:13
  c:9
  f:maj9 % 27d
  d:m7.9-
  c:6/g
  g:7
  c2:6 b4/c
  g2:m7 c4:9 % 28a
  f2.:6
  d:m7.5-
  c:6/g
  e2:m7 ees2:m7
  d2.:m7 % 28b
  g:9
  c:6
  c:13
  f:6
  d:m7.5- % 28c
  c:6/g
  c2:6 ees4:7
  d2.:7
  a2:m7 d4:7 % 28d
  g2.
  s4 g2:aug7
  c2.:6 % 29a
  d:m7/c
  c:6
  d:m7/c
  c:6 % 29b
  c:6.9/g
  d:m7
  g:9
  c:13 % 29c
  c:7
  f:maj9
  d:m7.5-
  c:6.9 % 29d
  g:13
  c:5.9
  s2.*3
}

melody = \relative {
  \global
  R2.*2
  e'2~e16 f e8
  c8 g4. r8 c8
  e2~ \tuplet 3/2 {e8 f e} % 26b
  c2 r4
  e2 f8 e
  c4. g8~g e'
  d2.
  r4 r g, % 26c
  e'4. f8 e4
  c8 g4. \tuplet 3/2 {r8 c e}
  g2 f8. e16
  d2 r8 f % 27a
  e8 g,~g2
  d'4 g,2
  c2.
  R2.
  e4. f8 e4 % 27b
  c8 g4. r8 c
  e2 f8. e16
  c2 r4
  e2 f8 e
  c4. g8~g e' % 27c
  d2.
  r4 r g,
  e'4. f8 e4
  c8 g4. \tuplet 3/2 {r8 c e}
  g8 f~f4 e8 d~ % 27d
  d2 r8 e16 f
  e4 r r8 g,16 g
  d'4 r r8 g,16 g
  c2.
  r4 r c % 28a
  f2 f8 f
  f4 g r8 f
  f8 e~4 dis
  e2 r8 dis
  d8 g,~2 % 28b
  d'2~8 g,
  e'2.
  r4 r r8 c
  f2 f8. f16
  f2 g8 f~ % 28c
  f4 f16 e8.~8 dis
  e2 r8 f
  fis4 r8 e d4
  a'8 e~e4 r8 fis % 28d
  g2.
  r4 r r8 g,
  e'2~8 f16 e % 29a
  c8 g4. r8 g
  r4 e' \tuplet 3/2 {f8 e c~}
  c2 r8 g16 g
  e'2 f16 e8. % 29b
  c8 g~g4~g8 e'
  d2.
  r4 r g,
  e'4. f8 e4 % 29c
  c8 g4. \tuplet 3/2 {r8 c e}
  g2 f8. e16
  d2 r4
  e8 g,~g2
  d'4 g,2
  c2.
  R2.*3
  \bar "|."
}

wordsOne = \lyricmode {
  Far __ a -- way pla -- ces,
  with strange __ sound -- in' names,
  far a -- way o -- ver __ the sea.
  Those far a -- way pla -- ces
  with the strange __ sound -- in' names,
  are call -- in', __ call -- in' me.
  Go -- in' to Chi -- na or may -- be Si -- am,
  I want to see for __ my -- self
  those far a -- way pla -- ces
  I've been read -- in' __ a -- bout __ in a book
  that I took from a shelf.
  I start get -- ting rest -- less
  when -- ev -- er __ I hear
  the whist -- le __ of a train.
  I pray for the day I can __ get un -- der way
  and look for those cast -- les __ in Spain.
  They call __ me a dream -- er,
  well may -- be I am __
  but I know that I'm burn -- ing __ to see
  those far a -- way pla -- ces
  with the strange sound -- in' names.
  call -- in', __ call -- in' me.
}

midiWords = \lyricmode {
  "Far "  a "way " pla "ces, "
  "\nwith " "strange "  sound "in' " "names, "
  "\nfar " a "way " o "ver "  "the " "sea. "
  "\nThose " "far " a "way " pla "ces "
  "\nwith " "the " "strange "  sound "in' " "names, "
  "\nare " call "in', "  call "in' " "me. "
  "\nGo" "in' " "to " Chi "na " "or " may "be " Si "am, "
  "\nI " "want " "to " "see " "for "  my "self "
  "\nthose " "far " a "way " pla "ces "
  "\nI've " "been " read "in' "  a "bout "  "in " "a " "book "
  "\nthat " "I " "took " "from " "a " "shelf. "
  "\nI " "start " get "ting " rest "less "
  "\nwhen" ev "er "  "I " "hear "
  "\nthe " whist "le "  "of " "a " "train. "
  "\nI " "pray " "for " "the " "day " "I " "can "  "get " un "der " "way "
  "\nand " "look " "for " "those " cast "les "  "in " "Spain. "
  "\nThey " "call "  "me " "a " dream "er, "
  "\nwell " may "be " "I " "am " 
  "\nbut " "I " "know " "that " "I'm " burn "ing "  "to " "see "
  "\nthose " "far " a "way " pla "ces "
  "\nwith " "the " "strange " sound "in' " "names. "
  "\ncall" "in', "  call "in' " "me. "
}

pianoRH = \relative {
  \global
  r4 <c' e g a>2
  r4 <c d f a>2 \bar "||"
  s2.
  <d f a c>8 <c d f g>4. r8 c'
  s2. % 26b
  <d, f a c>2.
  s2.
  <e g a c>4. <c d e g>8~q8 e'
  s2.
  <b, f' a>2 <b f' g>4 % 26c
  s2.
  c'8 g4. \tuplet 3/2 {r8 c e}
  s2.
  s2. % 27a
  e8 g,~g2
  d'4 <f, g>2
  <e g a c>4 <g a c e> <a c e g>
  s2.
  s2. % 27b
  <d, f a c>8 <c d f g>4. r8 c'
  s2.
  <d, f a c>2.
  s2.
  <e g a c>4. <c d e g>8~q e' % 27c
  s2.
  <b, f' a>2 <b f' g>4
  s2.
  c'8 g4. \tuplet 3/2 {r8 c e}
  s2. % 27d
  s2.
  e4 <a, c e g>~q8 g16 g
  d'4 <b d g>~q8 g16 g
  <e g a c>4 <g a c e> <fis b dis>
  <f a bes d>4 <bes d f a> <bes d e g> \bar "||" % 28a
  s2.
  s2.
  s2.
  e4 <d, g b> <des ges bes>8 ees'
  d8 g,~g2 % 28b
  d'2~8 g,
  <g a c e>4 g'8 e c b
  bes4 <bes e a> <bes c e g>8 c
  s2.
  s2. % 28c
  s2.
  s2.
  s2.
  a'8 e~4 r8 fis % 28d
  s2.
  <b, d>4 <f b dis> r8 g
  s2. % 29a
  <d f a c>8 <c d f g>4. r8 g'
  s2.
  s2.
  s2. % 29b
  <e g a c>8 <c d e g>~4~8 e'
  s2.
  <b, f' a>2 <b f' g>4
  s2. % 29c
  c'8 g4. \tuplet 3/2 {r8 c e}
  s2.
  s2.
  e8 <a,, d e g>~2 % 29d
  d'4 <a, c e f>2
  s2.*4
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s2.
  s2.
  e''2~e16 f e8
  s2.
  e2~ \tuplet 3/2 {e8 f e} % 26b
  s2.
  e2 f8 e
  s2.
  d2.
  s2. % 26c
  e4. f8 e4
  s2.
  g2 f8. e16
  d2~8 f % 27a
  s2.
  s2.
  s2.
  a8 f d2 \bar "||"
  e4. f8 e4 % 27b
  s2.
  e2(f8.) e16
  s2.
  e2 f8 e
  s2. % 27c
  d2.
  s2.
  e4. f8 e4
  s2.
  g8 f~4 e8 d~ % 27d
  d2~8 e16 f
  s2.
  s2.
  s2.
  s2. % 28a
  f2 8 8
  f4 g r8 f
  f8 e~4 dis
  s2.
  s2. % 28b
  s2.
  s2.
  s2.
  f2 8. 16
  f2 g8 f~ % 28c
  f4 16 e8.~8 dis
  e2~8 f
  fis4. e8 d4
  a'8 e~4 r8 fis % 28d
  g2.
  s2.
  e2~8 f16 e % 29a
  s2.
  e4 e \tuplet 3/2 {f8 e c~}
  c2~8 g16 g
  e'2 f16 e8. % 29b
  s2.
  d2.
  s2.
  e4. f8 e4 % 29c
  s2.
  g2 f8. e16
  d2.
  s2.  % 29d
  s2.
  <g,, d' g>2.~
  q2.
  q2.
  r4 <g' c e g>2\arpeggio
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s2.
  s2.
  <g' a c>2.
  s2.
  <g a c>2. % 26b
  s2.
  r4 <g a c>2
  s2.
  r4 <f a c>2
  s2. % 26c
  r4 a2
  s2.
  r4 <a c>2
  r4 <f aes>2 % 27a
  s2.
  s2.
  s2.
  <c' d f>4 <f, a b>2 \bar "||"
  <g a c>2. % 27b
  s2.
  <g a c>2.
  s2.
  r4 q2
  s2. % 27c
  r4 <f a c>2
  s2.
  r4 a2
  s2.
  r4 <a c>2 % 27d
  r4 <f aes>2
  s2.
  s2.
  s2.
  s2. \bar "||" % 28a
  a2.
  aes2.
  g2.
  s2.
  s2.*4 % 28b
  a2.
  aes2. % 28c
  g2.
  r4 <g a c> <g des'>
  a2.
  s2. % 28d
  b4 <a c> <ais cis>
  s2.
  <g a c>2. % 29a
  s2.
  q2.
  r4 <d f a>2
  r4 <g a c>2 % 29b
  s2.
  r4 <f a c>2
  s2.
  r4 a2 % 29c
  s2.
  r4 <a c>2
  r4 <f aes>2
  s2. % 29d
  s2.
  e4. f8 e4
  c4 g c
  e4. f8 e4
  c2.
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp
  s2.*15
  s2.\<
  s2.\>
  s2.\!
  s2.*45
  s2.\>
  s2.
  s2.
  s2.\p
}

pianoLH = \relative {
  \global
  \oneVoice
  c,8 g' e'2
  c,8 g' f'2
  c,8 g' e'2
  c,8 g' f'2
  c,8 g' e'2 % 26b
  c,8 g' f'4 g,
  c,2.
  g'2.
  d4 <f' a c>2
  g,2. % 26c
  c,4 <bes'' e>2
  c,,4 q2
  f4 <a' c e>2
  d,,4 <c'' d>2 % 27a
  g,4 <g' a c e>2
  g,4 <a' b d>2
  c,,2.
  d2 g4 \bar "||"
  c,8 g' e'2 % 27b
  c,8 g' f'2
  c,8 g' e'2
  c,8 g' f'4 g,
  c,2.
  g'2. % 27c
  d4 <f' a c>2
  g,2.
  c,4 <bes'' e>2
  c,,4 q2
  f4 <a' c e>2 % 27d
  d,,4 <c'' d>2
  g,4 <g' a c e>2
  g,4 <b' d f>2
  c,,2.
  g'2 c,4 \bar "||" % 28a
  f4 <f' a c d>2
  d,4 <f' aes c e>2
  g,4 <g' a c e>2
  e,4 <e' b'> <ees bes'>
  d,4 <f' a c d>2 % 28b
  g,4 <f' a b d>2
  c,4 r r
  c4 r r
  f4 <f' a c d>2
  d,4 <f' aes c d>2 % 28c
  g,4 <g' a c e>2
  c,,4 r ees
  d4 <fis' c' d>2
  a,4 <g' a c e> d, % 28d
  g2.
  g4 r r
  c,8 g' e'2 % 29a
  c,8 g' f'2
  c,8 g' e'2
  c,8 g' f'4 g,
  c,2. % 29b
  g'2.
  d4 <f' a c>2
  g,2.
  c,4 <bes'' e>2 % 29c
  c,,4 q2
  f4 <a' c e>2
  d,,4 <c'' d>2
  <c,, g'>2. % 29d
  <g' f'>2.
  <c, g'>2.~
  q2.
  q2.~
  q2.
  \bar "|."
}

\book {
  #(define output-suffix "single")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
