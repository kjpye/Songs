\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When the King shall Come!"
  subtitle    = "Sankey No. 174"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 2/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2*3 s4
  \mark \markup { \box "B" } s4 s2*3 s4
  \mark \markup { \box "C" } s4 s2*3 s4
  \mark \markup { \box "D" } s4 s2*4
  \mark \markup { \box "E" }    s2*8
  \mark \markup { \box "F" }    s2*7 s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s2*13
  s8 \tempo 4=15 s8 \tempo 4=120 s4 % D++
  s2
  \tempo 4=30 s4 \tempo 4=120 s4
  s2 % E
  s4 \tempo 4=100 s4 \tempo 4=120
  s2
  s4 \tempo 4=100 s4 \tempo 4=120
  s2*4
  s2 % F
  s4 \tempo 4=100 s4 \tempo 4=120
  s2
  s4 \tempo 4=100 s4 \tempo 4=120
  s2*3
  \tempo 4=40 s4
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'8 bes
  c8 8 8 bes
  des8 c bes aes
  aes8 g aes f
  ees4 \bar "|" \break 8 8
  f8 g aes bes % B
  c8 aes des c
  bes8 8 8 c
  bes4 \bar "|" \break aes8 bes
  c8 8 8 bes % C
  des8 c bes aes
  aes8 g aes f
  ees4 \bar "|" \break 8 8
  f8 g aes bes % D
  c8 ees\fermata aes, des
  c4 bes
  aes4 r \bar "||" \break
  c2^\markup\smallCaps Chorus. % E
  c8 ees4. \bar "|" \mark \markup { \small \musicglyph #"scripts.ufermata" }
  aes,2
  aes8 c4. \bar "|" \mark \markup { \small \musicglyph #"scripts.ufermata" }
  bes8 aes aes f
  ees8 ees aes bes
  c4 aes
  ees'2 \break
  ees2 % F
  f8 ees4. \bar "|" \mark \markup { \small \musicglyph #"scripts.ufermata"  }
  c2
  des8 c4. \bar "|" \mark \markup { \small \musicglyph #"scripts.ufermata" }
  bes8 aes aes f
  ees8 8 aes bes
  c4 bes
  aes4\fermata
}

alto = \relative {
  \autoBeamOff
  c'8 des
  ees8 8 8 des
  f8 ees ees ees
  f8 e f des
  c4 8 8
  des8 ees ees ees % B
  ees8 8 8 8
  ees8 8 d d
  ees4 8 des
  c8 ees ees des % C
  f8 ees ees ees
  f8 e f des
  c4 8 8
  des8 ees8 8 8 % D
  ees8 aes\fermata ees f
  ees4 d
  c4\fermata r
  ees2 % E
  ees8 4.
  f2
  f8 d4.
  f8 8 8 des
  c8 8 ees ees
  e4 aes
  g2
  aes2 % F
  aes8 4.
  ees2
  f8 ees4.
  f8 8 8 des
  c8 8 ees f
  ees4 4
  ees4\fermata
}

tenor = \relative {
  \autoBeamOff
  ees8 8
  aes8 8 8 8
  aes8 8 g aes
  aes8 8 8 8
  aes4 8 8
  aes8 bes aes g % B
  aes8 c bes aes
  bes8 8 aes8 8
  g4 aes8 g
  aes8 8 8 8 % C
  aes8 8 g aes
  aes8 8 8 8
  aes4 8 8
  aes8 bes aes g
  aes8 c\fermata aes aes
  aes4 g
  aes4\fermata r
  aes2 % E
  aes8 c4. \bar "|" \mark \markup { \small \musicglyph #"scripts.ufermata"  }
  c2
  aes8 g4. \bar "|" \mark \markup { \small \musicglyph #"scripts.ufermata"  }
  f8 8 8 aes
  aes8 8 8 g
  aes4 4
  bes2
  c2 % F
  des8 c4. \bar "|" \mark \markup { \small \musicglyph #"scripts.ufermata"  }
  aes2
  aes8 4. \bar "|" \mark \markup { \small \musicglyph #"scripts.ufermata"  }
  aes8 8 8 8
  aes8 8 8 8
  aes4 des
  c4\fermata
}

bass = \relative {
  \autoBeamOff
  aes,8 8
  aes8 8 8 8
  aes8 8 bes c
  des8 8 8 8
  aes4 8 8
  des8 8 c ees % B
  aes8 8 g aes
  g8 8 f f
  ees8[des] c bes
  aes8 8 8 8 % C
  aes8  8 bes c
  des8 8 8 8
  aes4 8 8
  des8 8 c ees % D
  aes8 8\fermata c, des
  ees4 4
  aes,4\fermata r
  aes'2 % E
  aes8 4.
  f2
  f8 c4.
  des8 8 8 8
  aes8 8 c ees
  aes4 f
  ees2
  aes2 % F
  aes8 4.
  aes,2
  aes8 4.
  des8 8 8 8
  aes8 8 c des
  ees4 4
  aes,4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O Zi -- on!
  O Zi -- on!
  Great will be Thy tri -- umph
  When the King shall come;
  O Zi -- on!
  O Zi -- on!
  Thou shalt be ex -- alt -- ed
  When the King shall come!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, the wea -- ry night is wan -- ing,
  And the clouds are roll -- ing by;
  See, the long- ex -- pect -- ed morn -- ing
  Now is dawn -- ing in the sky;
  When from Zi -- on's loft -- y moun -- tain
  We shall hear the watch -- men cry,
  And re -- joi -- cing we shall gath -- er
  When the King shall come.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When the ran -- somed of Je -- ho -- vah,
  From the East and from the West,
  Shall re -- turn with joy and glad -- ness,
  To re -- ceive the prom -- ised rest—
  Then shall ev -- 'ry tribe and na -- tion
  Out of rv -- 'ry land be bless'd,
  And re -- joi -- cing they shall gath -- er
  When the King shall come.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  May He find us, when He com -- eth,
  Faith -- ful watch -- ers, day and night,
  At our roy -- al post of du -- ty,
  With our ar -- mour shi -- ning bright;
  May our lamps be trimm'd and burn -- ing
  With a clear and stead -- y light,
  And re -- joi -- cing we may gath -- er
  When the King shall come.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "the " wea "ry " "night " "is " wan "ing, "
  "\nAnd " "the " "clouds " "are " roll "ing " "by; "
  "\nSee, " "the " long ex pect "ed " morn "ing "
  "\nNow " "is " dawn "ing " "in " "the " "sky; "
  "\nWhen " "from " Zi "on's " loft "y " moun "tain "
  "\nWe " "shall " "hear " "the " watch "men " "cry, "
  "\nAnd " re joi "cing " "we " "shall " gath "er "
  "\nWhen " "the " "King " "shall " "come. "
  "\nO " Zi "on! "
  "\nO " Zi "on! "
  "\nGreat " "will " "be " "Thy " tri "umph "
  "\nWhen " "the " "King " "shall " "come; "
  "\nO " Zi "on! "
  "\nO " Zi "on! "
  "\nThou " "shalt " "be " ex alt "ed "
  "\nWhen " "the " "King " "shall " "come! "

  \set stanza = "2."
  "\nWhen " "the " ran "somed " "of " Je ho "vah, "
  "\nFrom " "the " "East " "and " "from " "the " "West, "
  "\nShall " re "turn " "with " "joy " "and " glad "ness, "
  "\nTo " re "ceive " "the " prom "ised " "rest— "
  "\nThen " "shall " ev "'ry " "tribe " "and " na "tion "
  "\nOut " "of " rv "'ry " "land " "be " "bless'd, "
  "\nAnd " re joi "cing " "they " "shall " gath "er "
  "\nWhen " "the " "King " "shall " "come. "
  "\nO " Zi "on! "
  "\nO " Zi "on! "
  "\nGreat " "will " "be " "Thy " tri "umph "
  "\nWhen " "the " "King " "shall " "come; "
  "\nO " Zi "on! "
  "\nO " Zi "on! "
  "\nThou " "shalt " "be " ex alt "ed "
  "\nWhen " "the " "King " "shall " "come! "

  \set stanza = "3."
  "\nMay " "He " "find " "us, " "when " "He " com "eth, "
  "\nFaith" "ful " watch "ers, " "day " "and " "night, "
  "\nAt " "our " roy "al " "post " "of " du "ty, "
  "\nWith " "our " ar "mour " shi "ning " "bright; "
  "\nMay " "our " "lamps " "be " "trimm'd " "and " burn "ing "
  "\nWith " "a " "clear " "and " stead "y " "light, "
  "\nAnd " re joi "cing " "we " "may " gath "er "
  "\nWhen " "the " "King " "shall " "come. "
  "\nO " Zi "on! "
  "\nO " Zi "on! "
  "\nGreat " "will " "be " "Thy " tri "umph "
  "\nWhen " "the " "King " "shall " "come; "
  "\nO " Zi "on! "
  "\nO " Zi "on! "
  "\nThou " "shalt " "be " ex alt "ed "
  "\nWhen " "the " "King " "shall " "come! "
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
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
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
          \new Staff = tenor
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
