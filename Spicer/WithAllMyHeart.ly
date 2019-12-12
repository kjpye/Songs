\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title       = "With All My Heart"
  composer    = "Marjorie Spicer"
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \tempo 4=80
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
%  \mark \markup { \circle "1a" }
%  s2 s2
}

soprano = \relative c' {
  \global
  r1
  r2. ees4
  \repeat volta 2 {
    c'2 aes
    ees2. ees4
    bes'2 g % 5
    ees2. ees4
    aes2 f
    c2. des4
    ees2. ees4
    f4(ees) ees(des) % 10
    ees1
    r2 r4 ees
    c'2 aes
    ees2. ees4
    bes'2 g % 15
    ees2. ees4
    \slurDotted aes2(f4)(f) \slurSolid
    c2. ees4
    f2. f4
    aes4(g f g) % 20
    aes1
    r2 r4 bes
    c2. c4
    c2. aes4
    bes2. bes4 % 25
    aes2(g4) aes8(bes)
    c2. c4
    c2. aes4
    bes2. bes4
    aes2(g8) aes aes g % 30
  }
  \alternative {
    {
      aes2. r4
      r2
      r4
      ees
    }
    {
      aes2. r4 % 35
      r2 r8 aes aes g
      aes2. r4
      r2 r8 aes8 aes g
      aes1
    }
  }
  \bar "|."
}

pianoRH = \relative c' {
  \global
  <c ees>1
  <bes des ees>
  \repeat volta 2 {
    <c ees c'>2 <c aes'>
    <c ees>2. ees4
    <bes ees bes'>2 <bes g'> % 5
    <bes ees>2. ees4
    <c aes'>2 f
    c2. des4
    <c ees>2. ees4
    <des f>4 <c ees> q <bes des> % 10
    <aes ees'>2 q
    <g ees'>2 r4 ees'
    <c ees c'>2 <c aes'>
    <c ees>2. ees4
    <bes ees bes'>2 <bes g'> % 15
    <bes ees>2. ees4
    <aes, c aes'>2 <aes f'>
    <aes c>2. ees'4
    <aes, des f>2. f'4
    <des aes'> g f g % 20
    <c, aes'>1 ~
    q2 <des aes' bes>4 g
    <c, ees c'>2 c8 ees aes c
    <f, aes c>2 c8 f aes c
    <des f bes>2 des,8 f bes des % 25
    <des, f aes>2 g4 aes8 bes
    <c, ees c'>2 c8 ees aes c
    <f, aes c>2 c8 f aes c
    <des, f bes>2 des8 f bes des
    <des, f aes>2 g8 aes aes g % 30
  }
  \alternative {
    {
      aes2. r4
      r2 r4 ees
    }
    {
      <c aes'>2. c4
      <des f aes>2 r8 aes' aes g
      <c, aes'>2. c4
      <des f aes>2 r8 aes' aes g
      <c, ees aes>1
    }
  }
  \bar "|."
}

pianoLH = \relative c {
  \global
  \oneVoice
  <aes aes'>1
  q1
  \repeat volta 2 {
    q2 aes'~
    aes2 aes
    <g,g'>2 g'~ % 5
    g2 g
    <f, f'>2 f'
    f2 e
    <ees, ees'>2 ees'
    <des, des'>2 des' % 10
    <ees, ees'>2. ees'4
    ees2 ees
    <aes, aes'>2 aes'~
    aes2 aes
    <g, g'>2 g'~ % 15
    g2 g
    <f, f'>2. f'4
    <ees, ees'>2 ees'
    <des, des'>2 des'
    <ees, ees'>2 ees' % 20
    <aes, aes'>2 aes'4 aes
    aes2 aes
    <aes, aes'>4 aes'2 aes4
    <f, f'>4 f'2 f4
    <bes, bes'>4 bes'2 bes4 % 25
    <ees,, ees'>4 ees'2 ees4
    <aes, bes'>4 aes'2 aes4
    <f, f'>4 f'2 f4
    <bes, bes'>4 bes'2 bes4
    <ees,, ees'>4 ees'2 ees4
  }
  \alternative {
    {
      <aes, aes'>4 ees' aes aes,~
      aes2. r4
    }
    {
      <aes aes'>4 ees' aes aes
      <aes, aes'> f' aes2
      <aes, aes'>4 ees' aes aes
      <aes, aes'> f' aes2
      <aes, aes'>1
    }
  }
  \bar "|."
}

wordsSopOne = \lyricmode {
  I love you Lord, with all my heart,
  and all my mind, and all my soul and strength.
  \set ignoreMelismata = ##t
  I praise you Lord, I wor- ship you with ev- ery _ breath,
  \unset ignoreMelismata
  and with my whole life.
  With all my heart, and all my mind;
  with all my soul, and all my strength I love you Lord.
  I'll
}

wordsSopTwo = \lyricmode {
  love you Lord, with all my heart,
  and all my mind, and all my soul and strength.
  \set ignoreMelismata = ##t
  I'll praise you Lord, I wor- ship you with ev- _ ery breath,
  \unset ignoreMelismata
  and with my whole life.
  With all my heart, and all my mind;
  with all my soul, and all my strength I love you
}

wordsSopThree = \lyricmode {
  Lord.
  I love you Lord.
  I love you Lord.
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSopOne { \lyricmode { _ _ } }
        \new Lyrics \lyricsto "soprano" { \lyricmode { _ } \wordsSopTwo \lyricmode { _ _ } \wordsSopThree }
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRH
      >>
      \new Staff <<
	\clef bass
        \new Voice \pianoLH
      >>
    >>
  >>
  \layout { indent = 1.5\cm }
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice = "soprano" \unfoldRepeats \soprano
        \new Lyrics \lyricsto "soprano" { \wordsSopOne \wordsSopTwo \wordsSopThree }
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \unfoldRepeats \pianoRH
      >>
      \new Staff <<
	\clef bass
        \new Voice \unfoldRepeats \pianoLH
      >>
    >>
  >>
  \layout {
    indent = 1.5\cm
    \context {
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {
  }
}
