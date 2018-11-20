\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header{
  title = "We Three Kings"
  copyright = \today
}

global = {
  \time 3/8
  \key g \major
}

melody = \relative c'' {
  b4 a8
  g4 e8
  fis8 g fis
  e4.
				% 5
  b'4 a8
  g4 e8
  fis8 g fis
  e4.
  g8 g g
				% 10
  a4 a8
  b4 b8
  d8(c) b
  a8 b a
  g4 fis8
				% 15
  e4.
}

sopranomusic = \relative c' {
				% chorus
  \break
  fis4.(
  a4.)
  g4 g8
  g4 d8
  g4 e8
  g4.
  g4 g8
  g4 d8
  g4 e8
  g4.
  g4 g8
  a4 b8
  c4 b8
  a4 b8
  g4 g8
  g4 d8
  g4 e8
  g4.
}

altomusic = \relative c' {
% 1
    %g4 fis8
    %e4 e8
    %dis8 dis dis
    %  e4.
% 5
    %g4 fis8
    %e4 e8
    %dis8 dis dis
    %e4.
    %e8 e e
% 10
    %fis4 fis8
    %g4 g8
    %g8(fis) g
    %e8 e e
    %e4 dis8
% 15
    %e4.
    % chorus
    d4.(
    d4.)
    d4 d8
    d4 b8
    b4 e8
    d4.
    d4 d8
    d4 b8
    b4 e8
    d4.
    e4 e8
    fis4 g8
    g4 g8
    g4 fis8
    g4 d8
    b4 d8
    e4 c8
    d4.
}

tenormusic = \relative c' {
    %b4 b8
    %b4 g8
    %a8 a a
    %g4.
    %b4 b8
    %b4 g8
    %a8 b a
    %g4.
    %b8 b b
    %d4 d8
    %d4 d8
    %b8(c) d
    %c8 c c
    %b4 a8
    %g4.
    % chorus
    a4.(
    c4.)
    b4 b8
    b4 g8
    g4 c8
    b4.
    b4 b8
    b4 g8
    g4 c8
    b4.
    b4 b8
    d4 d8
    e4 d8
    d4 d8
    b4 b8
    g4 g8
    g4 c8
    b4.
}

bassmusic = \relative c {
    %e4 e8
    %e4 e8
    %b8 b b
    %e4.
    %e4 e8
    %e4 e8
    %b8 b b
    %e4.
    %e8 e e
    %d4 d8
    %g4 g8
    %b8(a) g
    %a8 a a
    %b4 b,8
    %e4.
    % chorus
    d4.(
    d4.)
    g4 g8
    g4 g8
    e4 c8
    g'4.
    g4 g8
    g4 g8
    e4 c8
    g'4.
    e4 e8
    d4 g8
    c,4 g'8
    d4 d8
    g4 g8
    g4 b,8
    c4 c8
    g4.
}

verseone = \lyricmode {
  \set stanza = "Men:"
  We three kings of o- ri- ent are
  bear- ing gifts we tra- verse a- far,
  Field _ and foun- tain, moor and moun- tain,
  fol- low- ing yon- der star.
}

versetwo = \lyricmode {
  \set stanza = "Kevin:"
  Born a king on Beth- le- "hem's" plain,
  gold I bring to crown him a- gain,
  king _ for- ev- er, ceas- ing ne- ver,
  o- ver us all to reign.
}

versethree = \lyricmode {
  \set stanza = "Carlos:"
  Frank- in- cense to of- fer have I,
  in- cense owns a de- i- ty nigh,
  prayer _ and prais- ing, all men rais- ing,
  wor- ship him, God on high.
}

versefour = \lyricmode {
  \set stanza = "Malcolm:"
  Myrrh have I, its bit- ter per- fume
  breathes a life of gath- er- ing gloom,
  sor- row- ing, sigh- ing, bleed- ing, dy- ing,
  sealed in the stone- cold tomb.
}

versefive = \lyricmode {
  \set stanza = "All:"
  Glo- rious now be- hold him a- rise,
  king and God of sac- _ ri- fice.
  Al- _ le- lu- ia, al- le- lu- ia!
  Sounds through the earth and skies.
}

chorus = \lyricmode {
  O star of won- der, star of night,
  star with roy- al beau- ty bright,
  west- ward lead- ing, still pro- ceed- ing,
  guide us to thy per- fect light.
}

Mverseone = \lyricmode {
  "/We " "three " "kings " "of " o ri "ent " are
  "/bear" "ing " "gifts " "we " tra "verse " a far,
  "/Field " _ "and " foun "tain, " "moor " "and " moun tain,
  "/fol" low "ing " yon "der " star.
}

Mversetwo = \lyricmode {
  "\Born " "a " "king " "on " Beth le "hem's " plain,
  "/gold " "I " "bring " "to " "crown " "him " a gain,
  "/king " _ for ev "er, " ceas "ing "ne ver,
  "/o" "ver " "us " "all " "to " reign.
}

Mversethree = \lyricmode {
  "\Frank" in "cense " "to " of "fer " "have " I,
  "/in" "cense " "owns " "a " de i "ty " nigh,
  "/prayer " _ "and " prais "ing, " "all " "men " rais ing,
  "/wor" "ship " "him, " "God " "on " high.
}

Mversefour = \lyricmode {
  "\Myrrh " "have " "I, " "its " bit "ter " per fume
  "/breathes " "a " "life " "of " gath er "ing " gloom,
  "/sor" row "ing, " sigh "ing, " bleed "ing, " dy ing,
  "/sealed " "in " "the " stone "cold " "tomb."
}

Mversefive = \lyricmode {
  "\Glo" "rious " "now " be "hold " "him " a rise,
  "/king " "and " "God " "of " sac _ ri fice.
  "/Al" _ le lu "ia, " al le lu ia!
 "/ Sounds " "through " "the " "earth " "and " "skies."
}

Mchorus = \lyricmode {
  "\O " "star " "of " won "der, " "star " "of " night,
  "/star " "with " roy "al " beau "ty " bright,
  "/west" "ward " lead "ing, " "still " pro ceed ing,
  "/guide " "us " "to " "thy " per "fect " "light."
}

\book
{
  \score {
    \new ChoirStaff <<
      \new Staff = "women" <<
        \override Staff.VerticalAxisGroup #'remove-first = ##t
	\new Voice = "sopranos" { \voiceOne \global \repeat volta 5 {\melody \sopranomusic}}
	\new Voice = "altos" { \voiceTwo \global \repeat volta 5 {\skip 4.*15 \altomusic}}
      >>
      \new Lyrics \lyricsto "sopranos" { \verseone\chorus}
      \new Lyrics \lyricsto "sopranos" { \versetwo }
      \new Lyrics \lyricsto "sopranos" { \versethree }
      \new Lyrics \lyricsto "sopranos" { \versefour }
      \new Lyrics \lyricsto "sopranos" { \versefive }
      \new Staff = "men" <<
        \override Staff.VerticalAxisGroup #'remove-first = ##t
	\new Voice = "tenors" { \clef "bass" \voiceOne \global \repeat volta 5 {\skip 4.*15 \tenormusic}}
	\new Voice = "basses" { \voiceTwo \global \repeat volta 5 {\skip 4.*15 \bassmusic}}
      >>
    >>
    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    }
  }
  \score {
    \context ChoirStaff <<
      \context Staff = women <<
        \set Staff.midiInstrument = #"flute"
	\context Voice =
	sopranos { \voiceOne { \global r4.
                                        \melody \sopranomusic
                                        \melody \sopranomusic
                                        \melody \sopranomusic
                                        \melody \sopranomusic
                                        \melody \sopranomusic
                                        } }
        \set Staff.midiInstrument = #"clarinet"
	\context Voice =
	altos {\voiceTwo \global r4. \unfoldRepeats {\repeat volta5 {\melody \altomusic}}}
      >>
      \context Lyrics = firstverse { s1 }
      \context Staff = men <<
        \override Staff.VerticalAxisGroup #'remove-first = ##t
	\clef bass
        \set Staff.midiInstrument = #"oboe"
	\context Voice =
	tenors {        \override Staff.VerticalAxisGroup #'remove-first = ##t
			\voiceOne \global r4. \unfoldRepeats {\repeat volta 5 {\melody \tenormusic}}}
        \set Staff.midiInstrument = #"bassoon"
	\context Voice =
	basses {        \override Staff.VerticalAxisGroup #'remove-first = ##t
			\voiceTwo \global r4. \unfoldRepeats {\repeat volta 5 {\melody \bassmusic}}}
      >>
      \context Lyrics = firstverse \lyricsto sopranos { \Mverseone \Mchorus \Mversetwo \Mchorus \Mversethree \Mchorus \Mversefour \Mchorus \Mversefive \Mchorus}
    >>
    
    \midi {
      \context {
	\Staff
	\remove "Staff_performer"
      }
      \context {
	\Voice
	\consists "Staff_performer"
      }
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
  }
}
