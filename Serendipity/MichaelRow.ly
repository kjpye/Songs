% Original from John Lemcke

\version "2.14.2"
\language "english"

\header {
  title = "Michael, Row the Boat Ashore"
  composer = "Folk Song"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
  line-width = 180\mm
  left-margin = 15\mm
  %ragged-bottom = ##t
  %check-consistency = ##t
  %two-sided = ##t
  %inner-margin = 20\mm
}

#(set-global-staff-size 18)

global = {
  \key d \major
  \time 2/2
}

dropLyrics =
{
  \override LyricText #'extra-offset = #'(0 . -1)
  \override LyricHyphen #'extra-offset = #'(0 . -1)
  \override LyricExtender #'extra-offset = #'(0 . -1)
}

raiseLyrics =
{
  \revert LyricText #'extra-offset
  \revert LyricHyphen #'extra-offset
  \revert LyricExtender #'extra-offset
}

skipFour = \repeat unfold 4 { \skip 8 }

mpmf = \markup {\dynamic mp - \dynamic mf}

voltaSecondTime = \markup { 1. \text \larger \italic \bold { "   -   To Start" } }

soprano = \relative c'' {
  \global
  % Intro
  s1 | s1 | s1 | s2 d,4 fs \bar "|:"
  \set Score.voltaSpannerDuration = #(ly:make-moment 4 4)
  %repeat 
    a4. fs8 a b4  a8~a2 fs4 a |
    b1 |
    a2 fs4 a |
    a4. fs8 g fs4 e8~ |
    e2 d4 e |
    fs2(e)
  % First time
  \set Score.repeatCommands = #'((volta "1."))
  { d2 d4 fs \bar ":|"}
  % Second and third time
  \set Score.repeatCommands = #'((volta #f))
  \set Score.repeatCommands = #'((volta "2, 3"))
  {
      d2 r2 |
      \set Score.repeatCommands = #'((volta #f))
      r4^\mpmf d'2 a4 |
      d4~d8 a8~a2 |
      r4 d2 b4 |
      a4~a8 d8~d2 |
      cs2 a2 |
      g1 |
      a4 b4 a8 g4 fs8~fs2 d4 fs |
      a8~a4 fs8 a b4  a8~a2 fs4 a |
      b1 |
      a2 fs4 a |
      a8~a4 fs8 g fs4 e8~e2 d4 e |
      fs2(e) |
      \set Score.repeatCommands = #(list(list 'volta voltaSecondTime))
      d2 d4^\mf fs \bar ":|"
      \set Score.repeatCommands = #'((volta #f))
      % Ending
      \set Score.repeatCommands = #'((volta "2."))
      d2 d4^\f fs |
      \set Score.repeatCommands = #'((volta #f))
      a4. fs8 a b4  a8~a2 fs4 a |
      b1 |
      a2 fs4 a |
      a4. fs8 g fs4 e8~e2 d4 e |
      fs2(e) |
      d2 s2
      % Alleluia
      r4 d'2 a4 |
      d4~d8 a8~a2 |
      r4 d2 b4 |
      a4~a8 d8~d2 |
      cs2 a2 |
      g2 d'4 e |
      <a, fs'>1 |
      <g e'>1 |
      << { a'1 }  \new Voice { \stemUp s2 d,4 d } >> |
      << { \once \override NoteColumn #'force-hshift = #-1.0 \shiftOnn g1 }
        \new Voice { \stemUp d8 d4 d8~d2 } >> |
      fs4 g fs8 e4 d8~d1 |
      s1

    }
}

alto = \relative c' {
  \global
  % Intro
  s1 | r1 | r1 | r2 d4^\mf fs |
  \set Score.voltaSpannerDuration = #(ly:make-moment 4 4)
  % repeat
    a4. fs8 a b4  a8~a2 fs4 a |
    b1 |
    a2 fs4 a |
    a4. fs8 g fs4 e8~e2 d4 e |
    fs2(e)
  % First time
    { d2 d4 fs }
    % Second and third time
    {
      d2 r2 |
      r4 fs2 d4 |
      fs4~fs8 d8~d2 |
      r4 g2 d4 |
      fs4~fs8 d8~d2 |
      fs2 cs2 |
      b1 |
      cs4 d4 cs8 b4 a8~ |
      a2 d4 fs |
      a8~a4 fs8 a b4  a8~ |
      a2 fs4 a |
      b1 |
      a2 fs4 a |
      a8~a4 fs8 g fs4 e8~e2 d4 e |
      fs2(e) |
      d2 d4 fs \bar ":|"
      % Ending
      d2 d4 fs |
      a4. fs8 a b4  a8~a2 fs4 a |
      b1 |
      a2 fs4 a |
      a4. fs8 g fs4 e8~e2 d4 e |
      fs2(e) |
      d2
      % Michael row
      d4 fs |
      a4. fs8 a b4  a8~ |
      a2 fs4 a |
      b1 |
      a2 fs4 a |
      a4. fs8 g fs4 e8~e2 d4 e |
      fs1 |
      e1 |
      r2 a4 a4
      b8 b4 b8~b2
      a4 b a8 g4 fs8~fs1 |
      r4 \override NoteHead #'style = #'cross d'4^"(Shouted)" r2

    }
}

tenor = \relative c' {
  \global
  % Intro
  s1 s1 s1 s2 d,4 fs |
  % repeat
    a4. fs8 a b4 a8~ |
    a2 fs4 a |
    b1 |
    a2 fs4 a |
    a4. fs8 g fs4 e8~ |
    e2 d4 e |
    fs2(e)
  % First time
    {d2 d4 fs}
    % Second and third time
    {
      d2 d4^\mpmf fs
      a8~a4 fs8 a b4 a8~ |
      a2 fs4 a |
      b1 |
      a2 fs4 a |
      a8~a4 fs8 g fs4 e8~ |
      e2 d4 e |
      fs2(e)
      d2 r2 |
      r4 d'2 a4 |
      d4~d8 a8~a2 |
      r4 d2 b4 |
      a4~a8 d8~d2 |
      cs2 a2 |
      g1 |
      a4 b4 a8 g4 fs8~fs2 d4^\mf fs |
      % Ending
      d2 d4^\f fs |
      a4. fs8 a b4  a8~a2 fs4 a |
      b1 |
      a2 fs4 a |
      a4. fs8 g fs4 e8~e2 d4 e |
      fs2(e) |
      d2 s2
      % Alleluia
      r4 d'2 cs4 |
      b4~b8 a8~a2 |
      r4 b2 g4 |
      d'4~d8 d8~d2 |
      a2 cs2 |
      b2 d4 e |
      cs1 |
      cs1 |
      s2 d4 d |
      b8 b4 b8~b2 |
      cs4 cs cs8 cs4 d8~d1 |
      r4 \override NoteHead #'style = #'cross \stemDown d4 r2
    }
}

bass = \relative c {
  \global
  % Intro
  r1 r1 r1 r2 d4 fs |
  % repeat 
    a4. fs8 a b4 a8~ |
    a2 fs4 a |
    b1 |
    a2 fs4 a |
    a4. fs8 g fs4 e8~ |
    e2 d4 e |
    fs2(e)
  % First time
    {d2 d4 fs}
    % Second and third time
    {
      d2 d4 fs
      a8~a4 fs8 a b4 a8~ |
      a2 fs4 a |
      b1 |
      a2 fs4 a |
      a8~a4 fs8 g fs4 e8~ |
      e2 d4 e |
      fs2(e)
      d2 r2 |
      r4 fs2 d4 |
      fs4~fs8 d8~d2 |
      r4 fs2 d4 |
      fs4~fs8 d8~d2 |
      fs2 cs2 |
      b1 |
      cs4 d4 cs8 b4 a8~ |
      a2 d4 fs |
      % Ending
      d2 d4 fs |
      a4. fs8 a b4  a8~a2 fs4 a |
      b1 |
      a2 fs4 a |
      a4. fs8 g fs4 e8~e2 d4 e |
      fs2(e) |
      d2
      % Michael row
      d4 fs |
      a4. fs8 a b4  a8~ |
      a2 fs4 a |
      b1 |
      a2 fs4 a |
      a4. fs8 g fs4 e8~e2 d4 e |
      a1
      g1 |
      r2 fs4 fs |
      g8 g4 g8~g2 |
      a4 a a8 a4 d,8~d1 |
      s1
    }
}

sopranoVerseOne = \lyricmode {
  % Lyrics follow here.
  \skip4
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1

  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,   Al -- le -- lu -- ia!
  Mi -- chael! %row that boat a -- shore!
}

altoVerseOne = \lyricmode {
  % Lyrics follow here.
  \dropLyrics
  Mi -- chael,
  % repeat 
    row the boat a -- shore, Al -- le -- lu -- ia!
    Mi -- chael, row the boat a -- shore, Al -- le -- lu --
    % First time
    { ia! Mi -- chael }
    % Second and third
    {
      ia!

      Al -- le -- lu -- ia!
      Al -- le -- lu -- ia!
      Mi -- chael, row, row that boat a -- shore!
      \raiseLyrics
      Jor -- dan's riv-er is deep and wide,
      \dropLyrics
      Al -- le -- lu -- ia!
      \raiseLyrics
      Jor -- dan's riv-er is deep and wide,
      \dropLyrics
      Al -- le -- lu -- ia!

      Mi -- chael,
    }
  % Ending
  ia!
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!
  \raiseLyrics
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!

  Mi -- chael, row that boat, row that boat a -- shore!

  Row!
}

altoVerseTwo = \lyricmode {
  % Lyrics follow here.
  \skip4 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1


  Mi -- chael's boat's a mu -- sic boat,
  \skip1 \skip1 \skip1 \skip1 %Al -- le -- lu -- ia!
  Mi -- chael's boat's a mu -- sic boat,
  \skip1 \skip1 \skip1 \skip1 %Al -- le -- lu -- ia!
}

tenorVerseOne = \lyricmode {
  \skip4
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1

  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,
  %Al -- le -- lu -- ia!
  %Mi -- chael row that boat, row that boat a -- shore!

}

bassVerseOne = \lyricmode {
  % Lyrics follow here.
  \dropLyrics
  \skip4
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1

  ia!

      \raiseLyrics
      Sis -- ter help to trim the sail,
      \dropLyrics
      Al -- le -- lu -- ia!
      \raiseLyrics
      Sis -- ter help to trim the sail,
      %\dropLyrics
      Al -- le -- lu -- ia!

      Al -- le -- lu -- ia!
      Al -- le -- lu -- ia!
      Mi -- chael, row, row that boat a -- shore!

      Mi -- chael,
    \skip1 %ia!

  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore,
}

bassVerseTwo = \lyricmode {
  % Lyrics follow here.
  \skip4 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1


  Jor -- dan's riv-er is chil -- ly cold,
  \skip1 \skip1 \skip1 \skip1 %Al -- le -- lu -- ia!
  Jor -- dan's riv-er is chil -- ly cold,
  \skip1 \skip1 \skip1 \skip1 %Al -- le -- lu -- ia!
}

rightOne = \relative c'' {
  \global
  % Intro
  r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
  r4 <a, d>8 <fs' a>~<fs a> <a, d> <fs' a>4 |
  r4 <cs fs a> r4 <cs e g> |
  <fs, a d fs>4 r4 r2 |

  % repeat
    r4 <fs' a>4 r4 <fs a>4 |
    r4 <fs a>4 r4 <fs a>4 |
    r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
    r4 <a, d>8 <fs' a>~<fs a> <a, d> <fs' a>4 |
    r4 <cs fs a> r <cs e g> |
    r4 <b e g>4 r4 <b e g>4  |
    r4 <cs fs a>4 r4 <cs e g>4  |
    % First time
    {  <fs, a d fs>4 r4 r2 | }
    % Second and third time
    {
        <fs a d fs>4 r4 r2 |
        r4 <fs' a>4 r4 <fs a>4 |
        r4 <fs a>4 r4 <fs a>4 |
        r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
        r4 <a, d>8 <fs' a>~<fs a> <a, d> <fs' a>4 |
        r4 <cs fs a> r <cs e g> |
        r4 <b e g>4 r4 <b e g>4  |
        r4 <cs fs a>4 r4 <cs e g>4  |
        <fs, a d fs>4 r4 r2 |
        r4 <fs' a>4 r4 <fs a>4 |
        r4 <fs a>4 r4 <fs a>4 |
        r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
        r4 <a, d>8 <fs' a>~<fs a> <a, d> <fs' a>4 |
        r4 <cs fs a> r <cs e g> |
        r4 <b e g>4 r4 <b e g>4  |
        r4 <cs fs a>4 r4 <cs e g>4  |

        {  <fs, a d fs>4 r4 r2 | }
        {
          <fs a d fs>4 r4 r2 |
          r4 <fs' a>4 r4 <fs a>4 |
          r4 <fs a>4 r4 <fs a>4 |
          r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
          r4 <a, d>8 <fs' a>~<fs a> <a, d> <fs' a>4 |
          r4 <cs fs a> r <cs e g> |
          r4 <b e g>4 r4 <b e g>4  |
          r4 <cs fs a>4 r4 <cs e g>4  |
          <fs, a d fs>4 r4 r2 |
          r4 <fs' a>4 r4 <fs a>4 |
          r4 <fs a>4 r4 <fs a>4 |
          r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
          r4 <a, d>8 <fs' a>~<fs a> <a, d> <fs' a>4 |
          r4 <cs fs a> r <cs e g> |
          r4 <b e g>4 r2  |
          <fs' a fs'>1 |
          <e g e'>1 |
          \stemDown
          r2 <d' fs a d>4 <d fs a d>4 |
          <d g b d>8 <d g b d>4 <d g b d>8~<d g b d>2 |
          r1 |
          r1 |
          r4 \ottava #1 <d' fs a d>8 r8 r2|

        }
    }
}

rightTwo = \relative c'' {
  \global
  % Intro
  s1 |
  s1 |
  a,2 g2 |
  s1 |

  % repeat
    d'4. cs8~cs4. b8~b2 a2
    s1 |
    s1 |
    a2.~a8 g8~g1 |
    a2 g2 |
  % First time
    { s1 | }
    % Second and third time
    {
        s1 |
        d'4. cs8~cs4. b8~b2 a2
        s1 |
        s1 |
        a2.~a8 g8~g1 |
        a2 g2 |
        s1 |
        d'4. cs8~cs4. b8~b2 a2
        s1 |
        s1 |
        a2.~a8 g8~g1 |
        a2 g2 |

        { s1 | }
        {
          s1 |
          d'4. cs8~cs4. b8~b2 a2
          s1 |
          s1 |
          a2.~a8 g8~g1 |
          a2 g2 |
          s1 |
          d'4. cs8~cs4. b8~b2 a2
          s1 |
          s1 |
          a2.~a8 g8~g2 s2 |
          s1 |
          s1 |
          s1 |
          s1 |
          s1 |
          s1 |
          s1 |
        }
    }
}

left = \relative c' {
  \global
  % Intro
  <g g,>4^\mp r <d d,>4 r |
  <d d,>4 r <a a,>4 r |
  <a a,>4 r <a a,>4 r |
  <d d,>4 <a a,> <b b,>4 <cs cs,> |

  % repeat
    <d d,>4^\p r <a a,>4 r |
    <d d,>4 r <a a,>4 r |
    <g' g,>4 r <d d,>4 r |
    <d d,>4 r <a a,> r |
    <fs' fs,>4 r <cs cs,>4 r |
    <e e,>4 r <b b,>4 r |
    <a a,>4 r <a a,>4 r |
  %First time
    {<d d,>4 <a a,> <b b,>4 <cs cs,>}
    % Second and third time
    {
        <d d,>4 <a a,> <b b,>4 <cs cs,>|
        <d d,>4 r <a a,>4 r |
        <d d,>4 r <a a,>4 r |
        <g' g,>4 r <d d,>4 r |
        <d d,>4 r <a a,> r |
        <fs' fs,>4 r <cs cs,>4 r |
        <e e,>4 r <b b,>4 r |
        <a a,>4 r <a a,>4 r |
        <d d,>4 <a a,> <b b,>4 <cs cs,>|
        <d d,>4 r <a a,>4 r |
        <d d,>4 r <a a,>4 r |
        <g' g,>4 r <d d,>4 r |
        <d d,>4 r <a a,> r |
        <fs' fs,>4 r <cs cs,>4 r |
        <e e,>4 r <b b,>4 r |
        <a a,>4 r <a a,>4 r |

        {<d d,>4 <a a,>^\mf <b b,>4 <cs cs,>}
        {
          <d d,>4 <a a,>^\f <b b,>4 <cs cs,>|
          <d d,>4 r <a a,>4 r |
          <d d,>4 r <a a,>4 r |
          <g' g,>4 r <d d,>4 r |
          <d d,>4 r <a a,> r |
          <fs' fs,>4 r <cs cs,>4 r |
          <e e,>4 r <b b,>4 r |
          <a a,>4 r <a a,>4 r |
          <d d,>4 <a a,> <b b,>4 <cs cs,>|
          <d d,>4 r <a a,>4 r |
          <d d,>4 r <a a,>4 r |
          <g' g,>4 r <d d,>4 r |
          <d d,>4 r <a a,> r |
          <fs' fs,>4 r <cs cs,>4 r |
          <e e,>4 r4 r2 |
          <<{<cs' a>1}\\{r4 <a, a,>2.}>> |
          <<{<cs' g>1}\\{r4 <a, a,>2.}>> |
          r2 <fs' a d>4 <fs a d>4 |
          <g b d>8 <g b d>4 <g b d>8~<g b d>2 |
          r1 |
          r1 |
          r4 <d, d,>8 r8 r2 |
        }
    }
}

chordNames = \chordmode {
  \global
  % Chords follow here.

}

choirPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    midiInstrument = "choir aahs"
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    alignAboveContext = "sa"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "soprano" \sopranoVerseOne
  \new Lyrics \lyricsto "alto" \altoVerseOne
  \new Lyrics \lyricsto "alto" \altoVerseTwo


  \new Staff = "tb" \with {
    midiInstrument = "choir aahs"
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
  \new Lyrics \with {
    alignAboveContext = "tb"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "tenor" \tenorVerseOne
  \new Lyrics \lyricsto "bass" \bassVerseOne
  \new Lyrics \lyricsto "bass" \bassVerseTwo
>>

pianoPart = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } << \rightOne \\ \rightTwo >>
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \new Voice = "left" {\left} }
>>

chordsPart = \new ChordNames \chordNames

\score {
  <<
    \choirPart
    \pianoPart
    %    \chordsPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 152 4)
    }
  }
}
