\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "With All My Heart"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Marjorie Spicer"
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

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key aes \major
  \time 4/4
  \tempo 4=80
%  \partial 4
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

dynamicsSop = {
}

alto = \relative c' {
  \global
  c4
  \bar "|."
}

dynamicsAlto = {
}

tenor = \relative c {
  \global
  \clef "treble_8"
  c4
  \bar "|."
}

dynamicsTenor = {
}

bass= \relative c' {
  \global
  \clef bass
  c4
  \bar "|."
}

dynamicsBass = {
}

dynamicsPiano = {
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

pianoRHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  c4
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

pianoLHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \clef bass
  \voiceTwo
  c4
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
  I'll love you Lord, with all my heart,
  and all my mind, and all my soul and strength.
  \set ignoreMelismata = ##t
  I'll praise you Lord, I wor- ship you with ev- _ ery breath,
  \unset ignoreMelismata
  and with my whole life.
  With all my heart, and all my mind;
  with all my soul, and all my strength I love you _ _ Lord.
  I love you Lord.
  I love you Lord.
}

wordsAlto = \lyricmode {
  words
}

wordsTenor = \lyricmode {
  words
}

wordsBass = \lyricmode {
  words
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSopOne
        \new Lyrics \lyricsto "soprano" \wordsSopTwo
      >>
% Single alto staff
%      \new Dynamics \dynamicsAlto
%      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
%        \new Voice = "alto" \alto
%        \new Lyrics \lyricsto "alto" \wordsAlto
%      >>
% Single tenor staff
%      \new Dynamics \dynamicsTenor
%      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
%        \new Voice = "tenor" \tenor
%        \new Lyrics \lyricsto "tenor" \wordsTenor
%      >>
% Single bass staff
%      \new Dynamics \dynamicsBass
%      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
%        \new Voice = "bass" \bass
%        \new Lyrics \lyricsto "bass" \wordsBass
%      >>
% Joint soprano/alto staff
%      \new Dynamics \dynamicsWomen
%      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
%        \new Voice \RehearsalTrack
%        \new Voice = "soprano" { \voiceOne \soprano }
%        \new Voice = "alto"    { \voiceTwo \alto    }
%        \new Lyrics \lyricsto "soprano" \words
%      >>
% Joint tenor/bass staff
%      \new Dynamics \dynamicsMen
%      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
%        \new Voice = "tenor" \tenor
%        \new Voice = "bass" \bass
%      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRH
%        \new Voice \pianoRHone
%        \new Voice \pianoRHtwo
      >>
      \new Dynamics \dynamicsPiano
      \new Staff <<
	\clef bass
        \new Voice \pianoLH
%        \new Voice \pianoLHone
%        \new Voice \pianoLHtwo
      >>
    >>
  >>
  \layout { indent = 1.5\cm }
  \midi {
    \context {
      \Score
%      tempoWholesPerMinute = #(ly:make-moment 100 4)
       RemoveAllEmptyStaves = ##t
    }
  }
}
