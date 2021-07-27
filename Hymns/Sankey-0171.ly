\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am He that Liveth."
  subtitle    = "Sankey No. 171"
  subsubtitle = "N.H. No. 127"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Russell Hurditch."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 20)

global = {
  \key des \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*4
  \mark \markup { \box "B" }    s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*4
  \mark \markup { \box "E" }    s1*4
  \mark \markup { \box "F" }    s1*3 s2.
  \mark \markup { \box "G" } s4 s1*2 s2.
  \mark \markup { \box "H" } s4 s1*3
  \mark \markup { \box "I" }    s1*4
  \mark \markup { \box "J" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  aes2. ges4
  f2. ees4
  des4. ees8 f4 bes
  aes4.(ges8) ees2
  ees2 4 f % B
  ges2. bes4
  bes4 aes aes ges
  f2. \bar "|" \break f4
  aes2. ges4 % C
  f2. ees4
  des4. ees8 f4 bes
  bes2 4 \bar "|" \break aes4
  des2. c4 % D
  ees4 des c bes
  aes2(bes4) c
  des2. r4 \break
  f,4.^\markup\smallCaps Chorus. ges8 aes4 f % E
  ees2 des4 ees
  f4. bes8 aes4 f
  ees2. r4 \break
  ees4. f8 ges4 bes % F
  bes2 aes4 des
  c4. 8 des4 bes
  aes2. \bar "|" \break aes8 8
  des2~8 8 8 8 % G
  f2~8 des c des
  bes2. \bar "|" \break 4
  bes2~8 8 8 8 % H
  ees2~8 des bes c
  aes1 \break
  aes4 f ees des % I
  bes'2 4 4
  c4. 8 bes4 aes
  des2. aes8 8 \break
  f'2~8 ees des8. f,16 % J
  bes2. ges4
  f2(ges4) ees
  des2.
}

alto = \relative {
  \autoBeamOff
  des'4
  f2. ees4des2. c4
  des4. c8 des4 4
  c2 2
  c2 4 des % B
  ees2. ges4
  ges4 f ees ees
  des2. 4
  des2. 4% C
  des2. 4
  des4. 8 4 4
  des2 4 ges
  f2. aes4 % D
  ges4 4 aes ges
  ges2. 4
  f2. r4
  des4. 8 f4 des % E
  c2 des4 c
  des4. 8 4 4
  c2. r4
  c4. des8 ees4 ges % F
  ges2 r4 4
  ees4. 8 4 des
  c2. ges'8 8
  f2~8 8 8 8 % G
  aes2~8 f8 8 8
  ges2. 4
  g2~8 8 8 8 % H
  g2~8 8 8 8
  aes4(f ges2)
  f4 des c des % I
  des4(d) ees ees
  ees4. ges8 4 4
  f2. 8 8
  aes2~8 ges f8. 16 % J
  ges2. ees4
  des2(c4) 4
  des2.
}

tenor = \relative {
  \autoBeamOff
  aes4
  aes2. 4
  aes2. ges4
  f4. aes8 4 ges
  ees2 aes
  aes2 4 4 % B
  c2. 4
  c4 4 4 4
  des2. aes4
  f2. bes4 % C
  aes2. ges4
  f4. ges8 aes4 ges
  ges2 aes4 4
  aes2. 4 % D
  bes4 4 ees des
  c2(des4) ees
  des2. r4
  aes4. 8 4 4 % E
  aes4(ges) f aes
  aes4. ges8 f4 aes
  aes2. r4
  aes4. 8 c4 4 % F
  des2 4 aes
  aes4. 8 g4 4
  aes2. c8 8
  des4 4 4 4 % G
  des4 4 4 4
  des4 4 4 4
  ees4 4 4 4 % H
  bes4 4 4 4
  c4 des ees2
  des4 aes4 4 4 % I
  ges4(aes) g4 4
  aes4. ees'8 des4 c
  des2. 8 8
  des4 4 4 4 % J
  des4 4 4 bes
  aes4 4 4 ges
  f2.
}

bass = \relative {
  \autoBeamOff
  des4
  des2. 4
  des2. aes4
  bes4. aes8 des4 ges,
  aes2 2
  aes2 4 4 % B
  aes2. 4
  aes4 4 4 4
  des2. 4
  des2. 4 % C
  des2. 4
  des4. 8 4 ges
  ges2 f4 ees
  des2. f4 % D
  ges4 4 4 4
  aes2. 4
  des,2. r4
  des4. 8 4 4 % E
  aes2 des4 aes
  des4. 8 4 4
  aes2. r4
  aes4. 8 4 4 % F
  des2 4 4
  ees4. 8 4 4
  aes2. 8 8
  des,4 4 4 4 % G
  des4 4 4 4
  ges4 4 4 4
  ees4 4 4 4 % H
  ees4 4 4 4
  aes4 4 2
  des,4 4 ees f % I
  ges4(f) ees ees
  aes4. 8 4 4
  des,2. 8 8
  des4 4 4 4 % J
  ges4 4 4 4
  aes4 4 aes,4 4
  des2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"I" am He that liv -- eth, that liv -- eth, and was dead;
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold __ I am a -- live  __ for ev -- er -- more,
  Be -- hold __ I am a -- live  __ for ev -- er -- more,
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold __ I am a -- live  __ for ev -- er -- "more.\""
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ % E
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ I am, I am a -- live for ev -- er -- more;
  _ _ I am, I am a -- live for ev -- er -- more;
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ hold, I am, I am a -- live for ev -- er, ev -- re  -- "more.\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  He dies! He dies!
  the low -- ly Man of Sor -- rows,
  On whom were laid our ma -- ny griefs and woes;
  Our sins He bore, be -- neath God's aw -- ful bil -- lows,
  And He hath tri -- umphed o -- ver all our foes.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He lives! He lives!
  what glo -- rious con -- so -- la -- tion
  Ex -- alt -- ed at His Fa -- ther's own right hand;
  He pleads for us, and by His in -- ter -- ces -- sion,
  En -- a -- bles all His saints by grace to stand.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He comes! He comes!
  Oh, blest an -- ti -- ci -- pa -- tion!
  In keep -- ing with His true and faith -- ful word;
  To call us to our heav'n -- ly con -- sum -- ma -- tion—
  Caught up, to be \markup\italic "\"for" \markup\italic ev -- \markup\italic er \markup\italic with \markup\italic the \markup\italic "Lord.\""
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  He dies! He dies!
  the low -- ly Man of Sor -- rows,
  On whom were laid our ma -- ny griefs and woes;
  Our sins He bore, be -- neath God's aw -- ful bil -- lows,
  And He hath tri -- umphed o -- ver all our foes.
  "\"I" am He that liv -- eth, that liv -- eth, and was dead;
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold __ I am a -- live  __ for ev -- er -- more,
  Be -- hold __ I am a -- live  __ for ev -- er -- more,
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold __ I am a -- live  __ for ev -- er -- "more.\""

  \set stanza = "2."
  He lives! He lives!
  what glo -- rious con -- so -- la -- tion
  Ex -- alt -- ed at His Fa -- ther's own right hand;
  He pleads for us, and by His in -- ter -- ces -- sion,
  En -- a -- bles all His saints by grace to stand.
  "\"I" am He that liv -- eth, that liv -- eth, and was dead;
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold __ I am a -- live  __ for ev -- er -- more,
  Be -- hold __ I am a -- live  __ for ev -- er -- more,
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold __ I am a -- live  __ for ev -- er -- "more.\""

  \set stanza = "3."
  He comes! He comes!
  Oh, blest an -- ti -- ci -- pa -- tion!
  In keep -- ing with His true and faith -- ful word;
  To call us to our heav'n -- ly con -- sum -- ma -- tion—
  Caught up, to be "\"for" ev -- er with the "Lord.\""
  "\"I" am He that liv -- eth, that liv -- eth, and was dead;
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold __ I am a -- live  __ for ev -- er -- more,
  Be -- hold __ I am a -- live  __ for ev -- er -- more,
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold __ I am a -- live  __ for ev -- er -- "more.\""
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  He dies! He dies!
  the low -- ly Man of Sor -- rows,
  On whom were laid our ma -- ny griefs and woes;
  Our sins He bore, be -- neath God's aw -- ful bil -- lows,
  And He hath tri -- umphed o -- ver all our foes.
  "\"I" am He that liv -- eth, that liv -- eth, and was dead;
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold, I am,  I am a -- live  __ for ev -- er -- more,
  Be -- hold I am, I am a -- live  __ for ev -- er -- more,
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold I am, I am, a -- live  __ for ev -- er, ev -- er -- "more.\""

  \set stanza = "2."
  He lives! He lives!
  what glo -- rious con -- so -- la -- tion
  Ex -- alt -- ed at His Fa -- ther's own right hand;
  He pleads for us, and by His in -- ter -- ces -- sion,
  En -- a -- bles all His saints by grace to stand.
  "\"I" am He that liv -- eth, that liv -- eth, and was dead;
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold, I am,  I am a -- live  __ for ev -- er -- more,
  Be -- hold I am, I am a -- live  __ for ev -- er -- more,
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold I am, I am, a -- live  __ for ev -- er, ev -- er -- "more.\""

  \set stanza = "3."
  He comes! He comes!
  Oh, blest an -- ti -- ci -- pa -- tion!
  In keep -- ing with His true and faith -- ful word;
  To call us to our heav'n -- ly con -- sum -- ma -- tion—
  Caught up, to be "\"for" ev -- er with the "Lord.\""
  "\"I" am He that liv -- eth, that liv -- eth, and was dead;
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold, I am,  I am a -- live  __ for ev -- er -- more,
  Be -- hold I am, I am a -- live  __ for ev -- er -- more,
  I am He that liv -- eth, that liv -- eth, and was dead;
  And be -- hold I am, I am, a -- live  __ for ev -- er, ev -- er -- "more.\""
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
            \new NullVoice \tenor
            \addlyrics \chorusMen
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
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics {\chorusMen \chorusMen \chorusMen }
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
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics {\chorusMen \chorusMen \chorusMen }
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
            \addlyrics \wordsMidiWomen
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
            \addlyrics \wordsMidiMen
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
