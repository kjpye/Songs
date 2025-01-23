\version "2.25.23"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lost Chord"
%  subtitle    = "subtitle"
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

  poet        = "Adelaide A. Proctor."
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \global
  \tempo "Andante Moderato" 4=108 s1*19 |
  s1*7 | \tempo "poco rall." 4=100 s1*10 | % 4
  s1*12 \tempo "tranquillo sempre." 4=100 s1*4 |
  \tempo "poco a poco più animato." 4=98 s1 \tempo 4=96 s1 \tempo 4=94 s1 \tempo 4=92 s2. \tempo "agitato." 4=90 s4 s1*7 s2. \tempo 4=108 s4 s2. \tempo "Grandioso." 4=108 s4 s1*2 | % 6
  s1*10 \tempo "ritard." 4=100 s1 s2 \tempo "con gran forza." s s1 s2 \tempo 4=50 s2 \tempo 4=100 s1*3 s2 \tempo 4=50 s2 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "3a" s1*5
  \textMark \markup\box "3b" s1*5
  \textMark \markup\box "3c" s1*5
  \textMark \markup\box "3d" s1*4
  \textMark \markup\box "4a" s1*4
  \textMark \markup\box "4b" s1*4
  \textMark \markup\box "4c" s1*5
  \textMark \markup\box "4d" s1*4
  \textMark \markup\box "5a" s1*4
  \textMark \markup\box "5b" s1*4
  \textMark \markup\box "5c" s1*4
  \textMark \markup\box "5d" s1*4
  \textMark \markup\box "6a" s1*4
  \textMark \markup\box "6b" s1*4
  \textMark \markup\box "6c" s1*3
  \textMark \markup\box "6d" s1*4
  \textMark \markup\box "7a" s1*4
  \textMark \markup\box "7b" s1*4
  \textMark \markup\box "7c" s1*4
  \textMark \markup\box "7d" s1*6
}

melody = \relative {
  \global
  R1*5 |
  R1*4 | f'4 8 8 4 8 8 |
  f4 4 r f8 8 | 4 8 8 g4. 8 | a2 r4 f8 8 | bes4. 8 4 4 | a2 g |
  f4 g8 a g4 f | e2 r4 c | d dis e f8 8 | a4 g r e |
  fis4 gis8 8 a4 b | c2 r4 c,8 8 | a'4 bes c a | f g a bes | % 4a
  a4 g8 f g4 e | f2 g4 4 | bes2 a4 f | f8(e f d) g2 |
  f2. r4 | R1*3 | r2 r4 c |
  f4 8 8 4 4 | 4 4 r f8 8 | 4 8 8 g4. 8 | a2 r4 f8 8 |
  bes4 8 8 4 4 | a2 g4 8 8 | f4 g8(a) g8. 16 f4 | e2 r4 c | % 5a
  d8 8 dis4 e f | a g r e | fis gis8 8 a4 b | c2. c,4 |
  a'8 8 bes4 c a | f(g) a bes | a g8(f) g4 e | f2 r4 f |
  f4 e8 8 4 f | e d r c8 8 | bes'2 4. 8 | a2 r4 f |
  f4 e8 8 4 f8 8 | e4 d r d | d cis8 d e4. d8 | cis2 r4 a'8 8 | % 6a
  bes4 8 8 4. 8 | 4 a r a | gis4 4 4. 8 | g2 r4 g |
  fis4 a8 8 d4 a8 f | f4 e r e | d4. 8 4 4 |
  e2. r4 | r2 r4 c | f4 8 8 4 4 | 4 2 4 |
  f4 8 8 g4. 8 | a2 r4 f | bes4 8 8 4 8 8 | a2 g4 4 | % 7a
  f4 g8(a) g4 f | e2 r4 c | c'4 8 8 a4 4 | f2 d4 4 |
  bes'4 8 8 g4 4 | c,2. f4 | f g8 8 a4 c8 8 | f2 f,4 bes |
  a2. 4 | f2 g\fermata | f1~ | 2. r4 | R1 | R |
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s1*9 | s1\p | s1*8 | s2. s4\cresc |
  s1 | s\omit\dim | s1 | s | s4 s2.\cresc | s2 s\f | s1 | s2 s\dim | s1\omit\p | s1*7 | s2. s4\cresc |
  s1 | s\dim | s1*3 | s2. s4\cresc | s1 | s2. s4\dim | s1\omit\p | s1*7 |
  s1*12 | s2. s4\f | s1*2 |
  s1*9 | s2. s4\ff | s1*8 |
}

words = \lyricmode {
  Seat -- ed one day at the or -- gan,
  I was wea -- ry and ill at ease,
  And my fin -- gers wand -- er’d i -- dly
  O -- ver the noi -- sy keys;
  I know not what I was play -- ing,
  Or what I was dream -- ing then,
  But I struck one chord of mu -- sic,
  Like the sound of a great A -- men.
  Like the sound of a great __ A -- men.

  It flood -- ed the crim -- son twi -- light,
  Like the close of an an -- gels Psalm,
  And it lay on my fe -- ver’d spi -- rit,
  With a touch of in -- fi -- nite calm.
  It qui -- et -- ed pain and sor -- row,
  Like love ov -- er -- com -- ing strife,
  It seem’d the har -- mon -- ious e -- cho,
  From our dis -- cord -- ant life,
  It link’d all per -- plex -- ed mean -- ings,
  In -- to one per -- fect peace,
  And trem -- bled a -- way in -- to  si -- lence,
  As if it were loth to cease;
  I have sought, but I seek it vain -- ly,
  That one last chord di -- vine,
  Which came from the soul of the or -- gan,
  And en -- ter’d in -- to mine.

  It may be that death’s bright An -- gel,
  Will speak in that chord a -- gain;
  It may be that on -- ly in Heav’n,
  I shall hear that grand A -- men,
  It may be that Death’s bright An -- gel,
  Will speak in that chord a -- gain,
  It may be that on -- ly in Heav’n,
  I shall hear that grand A -- men. __
}

midiWords = \lyricmode {
}

pianoRHone = \relative {
  \global \vo
  R1 | r2 r4 g' | c bes a c | f e d c | c2 d~ |
  d4 g, a c | bes a g2 | f1 | f | f |
  <f a>1 | <c f c'>2 <e g c> | <c f c'>1 | <d f bes>2 <f bes d> | <f a f'> <g c> |
  c2 b | c1 | 2 2 | a4 g r e' |
  <c e>4 <b d> <a c> <e gis b> | <a c> a bes c | a2 2 | f4 g a bes | % 4a
  a4 <bes, c g'>8 <a f'> <bes g>4 <g e'> | <bes f>2 <bes ees g>4 4 | <bes d f>2 f'4 f | 2 <bes, c e> |
  <a c f>4 r r f' | bes d g f | e <bes d> <a c> <g bes> | a f f e | <c f>2~4 r |
  \ov f'4(c f g) | a f \vo a bes | c a g c~ | c a f a |
  bes4 c d e | f c2 4~ | 4 4 b2 | c4 r r c | % 5a
  b4 a g f | <d f> e g e' | e d c b | c c, d e |
  f2 <c e> | d c4 f | c2 2 | <a c>4 \ov <f f'>4 4 4 |
  q4 q q q | q q q q | \vo bes2 2 | \ov <f a f'>4 f f f |
  f4 f f f | f f f f | \vo e e e e | \ov r8 <a, cis e>8 8 <cis e a> q <e a cis> q <a cis e> | % 6a
  \vo e'2 f4 e | d2 r4 d | 2 e4 d | cis e2 cis4 |
  d2 a'~ | 4 4 4 4 | \ov <a, a'>2 <bes d>8 8 8 8 |
  <e, bes' c e>8 8 <f d' f> q <g e' g> q <a f' a> q | % 6d
  <bes g' bes>8 8 <c a' c> q <d bes' d> q <e bes' e> q |
  <f a f'>4 <a,, c f>2 4 | <a' d f a>4 <f a>2 4 |
  <f a c>2 <e bes' c> | <f a c>4 <c f a>2 <a c f>4 | <d f bes>2 <f bes d> | <f a c f> <g c g'> | % 7a
  <a d f a>2 <b d f b> | <c e g c>4 <g c e g> <e g c e> <g c e g> | <c, e a c>2 <a c e a> | <d f> <bes d> |
  <bes d g bes>2 <d g bes d> | <c g' c>4 <c g' bes> <c f a> <f c' ees> | <f a d> <d g des'> <c f c'> <c e bes'> | <c ees a>2 <d f>4 <d f bes d> |
  <c f a c>1 | <d f c'>2 <e g c>\fermata | \vo <c f>2 <ees f> | f4 bes \ov <c, f c'> <d f d'> | <f c' f>1 | q\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  R1 | r4 d'4 g f | e2. <e g>4 | f2 <e bes'>2~ | 4 <f a> d2 |
  e4 4 f a | <e g> f f e | s1*3 |
  s1*5 |
  f4 g8 a g4 f | e2 c | d4 dis e f | f e r e |
  e2 4 d | <c e> q <d f> <c e> | <c f>2 <c e> | <a d>4 <bes d> <c f> <d f> | % 4a
  <c f>4 s c2 | s1*3 |
  s4 c f e | d a' g2~ | 4 e2 4 | f c f e | bes2(a4) r |
  s1 | s2 f'' | f2 4 e | f2 4 4 |
  <f bes>2 2 | f2 g | f4 g8 a g4 f | e g e c | % 5a
  c2 2 | b4 c r e | 2 4 gis | a c, bes2 |
  a2 a | 4 bes c bes | a2 bes | f4 s2. |
  s1*2 | <f f'>4 4 <e e'> q | s1 |
  s1*2 | <gis, d'>2 2 | s1 | % 6a
  <g' bes>2 2 | bes4 a r a | gis2 2 | a a |
  a2 a~ | 4 4 4 4 | s1 |
  s1*4 |
  s1*4 | % 7a
  s1*4 |
  s1*4 |
  s1*2 | bes,4 a g a | <bes ees> <bes d> s2 | s1*2 |
  \bar "|."
}

pianoRHthree = \relative {
  \global
  s1*4 | \vf s2 g'4 f |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s4 s2.\cresc | s2. s4\f | s1*2 |
  s1\dim | s2 s\p | s1*2 | s1\p |
  s1*5 |
  s1*3 s2 s\cresc |
  s1 | s\dim | s\p | s | % 4a
  s4 s2.\cresc | s2 s\f | s1 | s1\dim |
  s4\p s2.\cresc | s2 s\f | s1 | s4 s2.\dim | s1 |
  s1\p | s1*2 s2. s4\cresc |
  s1 | s\dim | s1*2 | % 5a
  s1 | s2. s4\cresc | s1 | s2 s\dim |
  s1\p | s1*2 s4\p s2.-\markup\italic tranquillo
  s1*4 |
  s2\cresc s-\markup\italic animato | s1*2 | s1\omit\f-\markup{\dynamic f \italic agitato} | % 6a
  s1\f | s1*3 |
  s1*3 |
  s4 s2\cresc s4-\markup\italic "molto ritard" | s2. s4\f | s1\ff | s |
  s1*2 | s1-\markup{\italic sempre \dynamic f} | s | % 7a
  s1*2 | s2\sf s\sf | s1 |
  s1 | s2. s4\fff | s1-\markup\italic ritard. | s2-\markup\italic "colla voce" s-\markup\italic "con gran forza." |
  s1*2 | s1-\markup\italic "a tempo" | s1 | s-\markup\italic rallentando | s |
}

pianoLHone = \relative {
  \global \vo
  r4 s2 f4 | bes a g2~ | 4 4 c bes | a2 bes4 g | c2 bes4 a |
  g4 c2 d4 | g, a bes2 | bes a4 g | <g c>1 | q |
  <a d>1 \ov | <c, a'>2 <c bes'> | <f, c' a'>1 | <f f'>2 <f' bes d> | <f c'> <e c'> |
  <d d'>2 <g, g'> | <c, c'>2. \vo e'4 | f fis g a | b c r c, |
  fis4 gis a s | \ov a, a' g c, | f2 c | d4 bes a g | % 4a
  c2 <c, c'> | \vo f'2 \ov <ees, ees'>4 4 | <bes bes'>2 \vo \crossStaff {<f'' a>4 <f b>} | \crossStaff <g c>2 \ov <c,, c'> |
  <f, f'>1 | s4 \vo c'''4 bes2~ | 4 g c2~ | 4 \ov <a,, a'>4 <c c'>2 | <f, f'>2~4 r \clef treble |
  <f''' a>1 | <d f a>2 \vo f4 g | a c <bes c>2 | <a c>2. ees'4 |
  f2 2 | e2 4 bes | a f d g | 2. e4 | % 5a
  f4 fis g a | a g r e | fis gis a d | c r g2 |
  f2 a, | f'2 4 4 | 2 e \clef bass \ov | f,4 r r2 |
  <d d'>2 <c c'> | <bes bes'> <a a'> | <g g'> <c g'> | <f, f'> \vo \crossStaff {f'4 f} |
  \crossStaff {f4 f f f | f f f f | e e e e |} \ov <a,, a'>4 4 4 4 | % 6a
  <a'' cis>2 2 | <a d f>8 8 8 8 8 8 8 8 | <a b e>2 2 | <a cis g'>8 8 8 8 8 8 8 8 |
  <a d fis>2 <a d f> | <g a cis e>8 8 <g a c e> q q q q q | <f a d>8 8 8 8 <bes d> q <g bes d> q |
  <c, c'>4 \clef treble \vo d'8 d e e f f | g g a a bes bes g g \clef bass | \ov <f,,, f'>4 <f' c' f>2 4 | <d d'>4 <d' a' d>2 4 |
  <c, c'>4 <c' f a c> <c, c'> <c' g' bes c> | <f,, f'> <f' c' f>2 4 | <f f'> <f' bes d> <f, f'> <f' bes d> | <f, f'> <f' a c> <e, e'> <e' g c> % 7a
  <d, d'>4 <d' f a c> <g,, g'> <d'' f g b> | <c, c'> <c' e g c>2 <bes, bes'>4 | <a a'>2 2 | \vo \crossStaff {f''2 d} |
  \ov <g,, g'>2 <f f'> | <e e'> <f f'>4 <a a'> | <bes bes'> <bes' bes'> <a a'> <g g'> | <f f'>2 <bes bes'>4 <g g'> |
  <c, c'>1 | <c' a' c>4 <c, c'> <c' bes'> <c, c'>\fermata | <f, f'>2 2 | 2 <f' f'>4 <f' bes> | <c f bes> <f,, f'> a''-> g-> | <f, c' a'>1-> |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  <f,, f'>1 | \acciaccatura f8 f'1 | <f c'> | q2 <g c> | <a c> bes |
  c1 | 2 <c, c'> | <f c'>1 | q | <f f'> |
  s1*5 |
  s1*2 | c'2 c | c b |
  a2 a | s1*3 | % 4a
  s1 | <d, d'>2 s | s <d d'>4 4 | <c c'>2 s |
  s1 | <f, f'>1 | f'' | 4 s2. | s1 |
  s1 | s2 d' | c c | f2. 4 |
  f2 2 | f e | d g, | c2. 4 | % 5a
  d4 dis e f | s2. c4 | b2 e | a g4 c, |
  f2 s | d4 bes a <g d'> | c2 c | s1 |
  s1*3 | s2 <e,, e'> |
  <d d'>2 <c c'> | <b b' a'>1 <b b'>2 <bes bes'> | s1 | % 6a
  s1*4 |
  s1*3 |
  s4 c'' c c | 2. 4 | s1*2 |
  s1*4 | % 7a
  s1*3 | <a,, a'>4 <c c'> <bes bes'> <a a'> |
  s1*4 |
  s1*5 | s2 f\fermata |
  \bar "|."
}

pianoLHthree = \relative {
  \global
  \vf s4 c f e | d c bes2 | s1*3 |
  s4 bes' a f | s1*4 |
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
