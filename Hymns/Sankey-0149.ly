\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hark! Ten Thousand Harps and Voices"
  subtitle    = "Sankey No. 149"
  subsubtitle = "Sankey 880 No. 677"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Lowell Mason."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. Kelly."
  meter       = \markup\smallCaps "8.7."
  piece       = \markup\smallCaps "Harwell."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \mark \markup { \box "A" } s4 s2.*3 s2
  }
  \mark \markup { \box "B" } s4 s2.*3
  \mark \markup { \box "C" } s2.*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \repeat volta 2 {
    d'8. 16
    g4. d8 g b
    a4 4 d8. 16
    d4. g,8 b a
    g2 \bar "|" \break
  } r4
  c8. b16 a8 b c d % B
  c4(a) r
  d8. c16 b8 c d e
  d4(b) d,8. 16 % C
  g4 4 8 b
  a4 4 d8. 16
  d4. g,8 b a
  g2
}

alto = \relative {
  \autoBeamOff
  \repeat volta 2 {
    b8. 16
    d4. 8 8 g
    fis4 4 8. 16
    g4. d8 d fis
    g2
  } r4
  a8. g16 fis8 g a b % B
  a4(fis) r
  b8. a16 g8 a b c
  b4(g) d8. 16 % C
  d4 4 8 g
  fis4 4 8. 16
  g4. d8 d fis
  g2
}

tenor = \relative {
  \autoBeamOff
  \repeat volta 2 {
    g8. 16
    b4. 8 d d
    d4 4 a8. 16
    b4. 8 d c
    b2
  } d8 8
  d4. 8 8 8 % B
  d2 g,8 8
  g4. 8 8 8
  g2 b8. 16 % C
  b4 4 d8 8
  d4 4 a8. 16
  b4. 8 d c
  b2
}

bass = \relative {
  \autoBeamOff
  \repeat volta 2 {
    g8. 16
    g4. 8 b g
    d4 4 8. 16
    g4. b,8 d d
    g,2
  } d'8 8
  d4. 8 8 8 % B
  d2 g8 8
  g4. 8 8 8
  g2 8. 16 % C
  g4 4 b8 g
  d4 4 8. 16
  g4. g,8 d'8 8
  <g, g'>2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1a."
  Hark! ten thou -- sand harps and voi -- ces
  Sound the note of praise a -- bove:
}
  
wordsOneB = \lyricmode {
  \set stanza = "1b."
  Je -- sus reigns. and heav'n re -- joic -- es;
  Je -- sus reigns, the God of love:

  \set stanza = "1."
  See, He sits on yon -- der throne;
  Je -- sus rules the world a -- lone.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Je -- sus rules the world a -- lone.
}
  
wordsOneMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1."
  See, He sits on yon -- der throne;
  Je -- sus rules the world a -- lone.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Je -- sus rules the world a -- lone.
}

wordsTwo = \lyricmode {
  \set stanza = "2a."
  King of glo -- ry! reign for ev -- er—
  Thine an ev -- er -- last -- ing crown;
}
  
wordsTwoB = \lyricmode {
  \set stanza = "2b."
  No -- thing from Thy love shall se -- ver
  Those whom Thou hasy made Thine own:

  \set stanza = "2."
  Hap -- py ob -- jects of Thy grace,
  Des -- tined to be -- hold Thy face.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Des -- tined to be -- hold Thy face.
}
  
wordsTwoMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1."
  Hap -- py ob -- jects of Thy grace,
  Des -- tined to be -- hold Thy face.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Des -- tined to be -- hold Thy face.
}

wordsThree = \lyricmode {
  \set stanza = "3a."
  Sa -- viour! has -- ten Thine ap -- pear -- ing;
  Bring, oh bring the glo -- rious day,
}
  
wordsThreeB = \lyricmode {
  \set stanza = "3b."
  When, the aw -- ful sum -- mons hear -- ing,
  Heaven and earth shall pass a -- way;

  \set stanza = "3."
  Then, with gol -- den harps we'll sing,
  "\"Glo" -- ry, glo -- ry to our King!
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Glo -- ry, glo -- ry to our "King!\""
}

wordsThreeMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "3."
  Then, with gol -- den harps we'll sing,
  "\"Glo" -- ry, glo -- ry to our King!
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Glo -- ry, glo -- ry to our "King!\""
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Hark! ten thou -- sand harps and voi -- ces
  Sound the note of praise a -- bove:
  Je -- sus reigns. and heav'n re -- joic -- es;
  Je -- sus reigns, the God of love:
  See, He sits on yon -- der throne;
  Je -- sus rules the world a -- lone.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Je -- sus rules the world a -- lone.

  \set stanza = "2."
  King of glo -- ry! reign for ev -- er—
  Thine an ev -- er -- last -- ing crown;
  No -- thing from Thy love shall se -- ver
  Those whom Thou hasy made Thine own:
  Hap -- py ob -- jects of Thy grace,
  Des -- tined to be -- hold Thy face.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Des -- tined to be -- hold Thy face.

  \set stanza = "3."
  Sa -- viour! has -- ten Thine ap -- pear -- ing;
  Bring, oh bring the glo -- rious day,
  When, the aw -- ful sum -- mons hear -- ing,
  Heaven and earth shall pass a -- way;
  Then, with gol -- den harps we'll sing,
  "\"Glo" -- ry, glo -- ry to our King!
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Glo -- ry, glo -- ry to our "King!\""
}

wordsSingleMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "1."
  See, He sits on yon -- der throne;
  Je -- sus rules the world a -- lone.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Je -- sus rules the world a -- lone.

  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "2."
  Hap -- py ob -- jects of Thy grace,
  Des -- tined to be -- hold Thy face.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Des -- tined to be -- hold Thy face.

  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "3."
  Then, with gol -- den harps we'll sing,
  "\"Glo" -- ry, glo -- ry to our King!
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Glo -- ry, glo -- ry to our "King!\""
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  Hark! ten thou -- sand harps and voi -- ces
  Sound the note of praise a -- bove:
  Je -- sus reigns. and heav'n re -- joic -- es;
  Je -- sus reigns, the God of love:
  See, He sits on yon -- der throne;
  Je -- sus rules the world a -- lone.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Je -- sus rules the world a -- lone.

  \set stanza = "2."
  King of glo -- ry! reign for ev -- er—
  Thine an ev -- er -- last -- ing crown;
  No -- thing from Thy love shall se -- ver
  Those whom Thou hasy made Thine own:
  Hap -- py ob -- jects of Thy grace,
  Des -- tined to be -- hold Thy face.
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Des -- tined to be -- hold Thy face.

  \set stanza = "3."
  Sa -- viour! has -- ten Thine ap -- pear -- ing;
  Bring, oh bring the glo -- rious day,
  When, the aw -- ful sum -- mons hear -- ing,
  Heaven and earth shall pass a -- way;
  Then, with gol -- den harps we'll sing,
  "\"Glo" -- ry, glo -- ry to our King!
  Hal -- le -- lu -- jah! hal -- le -- lu -- jah!
  Glo -- ry, glo -- ry to our "King!\""
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" \wordsOne
            \new Lyrics \lyricsto "aligner" \wordsOneB
            \new Lyrics \lyricsto "aligner" \wordsTwo
            \new Lyrics \lyricsto "aligner" \wordsTwoB
            \new Lyrics \lyricsto "aligner" \wordsThree
            \new Lyrics \lyricsto "aligner" \wordsThreeB
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice \tenor
            \addlyrics \wordsOneMen
            \addlyrics \wordsTwoMen
            \addlyrics \wordsThreeMen
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
  
\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new NullVoice { \soprano \soprano \soprano }
            \addlyrics \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics \wordsSingleMen
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new NullVoice { \soprano \soprano \soprano }
            \addlyrics \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics \wordsSingleMen
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
  
\book {
  \bookOutputSuffix "midi-women"
  \score {
    \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor\with { printPartCombineTexts = ##f }
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "midi-men"
  \score {
    \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor\with { printPartCombineTexts = ##f }
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
            \addlyrics \wordsMidi
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
