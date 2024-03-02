\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I'm a Pilgrim."
  subtitle    = "Sankey No. 827"
  subsubtitle = "Sankey 880 No. 364"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mary Dana Shindler."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2
  \textMark \markup { \box \bold "C" }    s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1   s2.
  \textMark \markup { \box \bold "E" } s4 s1   s2.
  \textMark \markup { \box \bold "F" } s4 s1   s2.
  \textMark \markup { \box \bold "G" } s4 s1   s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8. des16 | c4 bes4. a8 bes c |  bes4 aes2 8 bes | aes g g g \bar "|" \break
  g8 des' c8. bes16 | c2 r8 c des c | 4 bes4. 8 c bes |
  bes4 aes4. 8 c aes | g4 bes4. ees8 c d | d4 ees2
  \section \sectionLabel \markup\smallCaps Chorus. \break
  des8. c16 | 4 bes4. des8 c8. bes16 | c4 aes2 \bar "|" \break
  aes8 bes | 8 aes8 8 des8 8 aes8 8. bes16 | c2. \bar "|" \break
  c8. ees16 | 4 bes4. des8 c8. b16 | c4 aes2 \bar "|" \break
  aes8 8 | ees8 8 8 8 8 8 bes'8. c16 | aes2.\fermata
}

alto = \relative {
  \autoBeamOff
  ees'8. f16 | ees4 des4. c8 des ees | des4 c2 8 8 | des8 8 8 8
  des8 f ees8. des16 | ees2 r8 ees f ees | 4 des4. 8 ees des |
  des4 c4. 8 ees8 8 | 4 4. g8 aes8 8 | 4 g2 \section
  f8. ees16 | 4 des4. f8 ees8. des16 | ees2 \chord <ees ges>4 \auto
  ges8 8 | f8 8 8 8 8 8 8. 16 | ees2.
  ees8. aes16 | g4 4. 8 8. 16 | ges4 2
  f8 8 | ees c c ees des8 8 8. 16 | c4 des8. 16 c4^\fermata
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 | g4 4. 8 8 ees | 4 2 8 8 | 8 bes'8 8 8
  bes8 g8 8. 16 | aes2 r8 8 8 8 | g4 4. 8 8 ees |
  ees4 4. 8 aes c | bes4 g4. bes8 8 8 | 4 2 \section
  g8. aes16 | g8 8 8 8 8 8 8. 16 | aes8 8 c c c c
  ees8 8 | des8 8 8 aes8 8 des8 8. aes16 | 4 8. 16 4
  aes8. c16 | des8 8 8 8 8 f ees8. 16 | 8 8 c c c c
  des8 8 | c aes8 8 c bes f g8. 16 | aes4 f8. 16 ees4_\fermata
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 | ees'4 4. 8 8 8 |aes,4 2 8 8 | ees'8 8 8 8
  ees8 8 8. 16 | aes,2 r8 8 8 8 | ees'4 4. 8 8 8 |
  aes,4 4. 8 8 8 | bes4 4. 8 8 8 | 4 ees2 \section
  ees8. 16 | 8 8 8 8 8 8 8. 16 | aes,8 8 8 8 8 8
  c8 8 | des8 8 8 8 8 8 8. 16 | aes4 8. 16 4
  aes'8. 16 | bes8 8 ees,8 8 8 8 8. 16 | aes8 8 aes,8 8 8 8
  des8 8 | ees8 8 8 8 8 8 8. 16 |
  aes,2._\fermata
}

chorus = \lyricmode {
  I'm a pil -- grim, and I'm a stran -- ger,
  I can tar -- ry, I can tar -- ry but a night;
  I'm a pil -- grim, __ and I'm a stran -- ger, __
  I can tar -- ry, I can tar -- ry but a night. __
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 40 \skip 1
  I'm a pil -- grim, I'm a pil -- grim,
  and a stran -- ger, and a stran -- ger,
  _ _ _ _ _ _ _ _ _ _ _ but a night;
  I'm a pil -- grim, I'm a pil -- grim,
  and a stran -- ger, and a stran -- ger,
  _ _ _ _ _ _ _ _ _ _ _ but a night;
  
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  I'm a pil -- grim and I'm a stran -- ger,
  I can tar -- ry, I can tar -- ry but a night;
  Do not de -- tain me, for I am go -- ing
  To where the stream -- lets are ev -- er flow -- ing.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Of that ci -- ty to which I jour -- ney,
  My re -- deem -- er, my re -- deem -- er is the light;
  There is no sor -- row, nor a -- ny sigh -- ing,
  Nor a -- ny tears there, nor a -- ny dy -- ing.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There the sun -- beams are ev -- er shi -- ning;
  Oh, my long -- ing heart, my long -- ing heart is there;
  Here in this coun -- try, so dark and drea -- ry,
  I long have wan -- dered for -- lorn and wea -- ry.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "I'm " "a " pil "grim " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nDo " "not " de "tain " "me, " "for " "I " "am " go "ing "
  "\nTo " "where " "the " stream "lets " "are " ev "er " flow "ing. "
  "\nI'm " "a " pil "grim, " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nI'm " "a " pil "grim, "  "and " "I'm " "a " stran "ger, " 
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night.\n" 

  \set stanza = "2."
  "\nOf " "that " ci "ty " "to " "which " "I " jour "ney, "
  "\nMy " re deem "er, " "my " re deem "er " "is " "the " "light; "
  "\nThere " "is " "no " sor "row, " "nor " a "ny " sigh "ing, "
  "\nNor " a "ny " "tears " "there, " "nor " a "ny " dy "ing. "
  "\nI'm " "a " pil "grim, " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nI'm " "a " pil "grim, "  "and " "I'm " "a " stran "ger, " 
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night.\n" 

  \set stanza = "3."
  "\nThere " "the " sun "beams " "are " ev "er " shi "ning; "
  "\nOh, " "my " long "ing " "heart, " "my " long "ing " "heart " "is " "there; "
  "\nHere " "in " "this " coun "try, " "so " "dark " "and " drea "ry, "
  "\nI " "long " "have " wan "dered " for "lorn " "and " wea "ry. "
  "\nI'm " "a " pil "grim, " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nI'm " "a " pil "grim, "  "and " "I'm " "a " stran "ger, " 
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night. " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "I'm " "a " pil "grim " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nDo " "not " de "tain " "me, " "for " "I " "am " go "ing "
  "\nTo " "where " "the " stream "lets " "are " ev "er " flow "ing. "
  "\nI'm " "a " pil "grim, " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nI'm " "a " pil "grim, "  "and " "I'm " "a " stran "ger, " 
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night.\n"

  \set stanza = "2."
  "\nOf " "that " ci "ty " "to " "which " "I " jour "ney, "
  "\nMy " re deem "er, " "my " re deem "er " "is " "the " "light; "
  "\nThere " "is " "no " sor "row, " "nor " a "ny " sigh "ing, "
  "\nNor " a "ny " "tears " "there, " "nor " a "ny " dy "ing. "
  "\nI'm " "a " pil "grim, " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nI'm " "a " pil "grim, "  "and " "I'm " "a " stran "ger, " 
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night.\n"

  \set stanza = "3."
  "\nThere " "the " sun "beams " "are " ev "er " shi "ning; "
  "\nOh, " "my " long "ing " "heart, " "my " long "ing " "heart " "is " "there; "
  "\nHere " "in " "this " coun "try, " "so " "dark " "and " drea "ry, "
  "\nI " "long " "have " wan "dered " for "lorn " "and " wea "ry. "
  "\nI'm " "a " pil "grim, " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nI'm " "a " pil "grim, "  "and " "I'm " "a " stran "ger, " 
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night. "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "I'm " "a " pil "grim " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nDo " "not " de "tain " "me, " "for " "I " "am " go "ing "
  "\nTo " "where " "the " stream "lets " "are " ev "er " flow "ing. "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night; "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night.\n"

  \set stanza = "2."
  "\nOf " "that " ci "ty " "to " "which " "I " jour "ney, "
  "\nMy " re deem "er, " "my " re deem "er " "is " "the " "light; "
  "\nThere " "is " "no " sor "row, " "nor " a "ny " sigh "ing, "
  "\nNor " a "ny " "tears " "there, " "nor " a "ny " dy "ing. "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night; "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night.\n"

  \set stanza = "3."
  "\nThere " "the " sun "beams " "are " ev "er " shi "ning; "
  "\nOh, " "my " long "ing " "heart, " "my " long "ing " "heart " "is " "there; "
  "\nHere " "in " "this " coun "try, " "so " "dark " "and " drea "ry, "
  "\nI " "long " "have " wan "dered " for "lorn " "and " wea "ry. "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night; "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night. "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "I'm " "a " pil "grim " "and " "I'm " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night; "
  "\nDo " "not " de "tain " "me, " "for " "I " "am " go "ing "
  "\nTo " "where " "the " stream "lets " "are " ev "er " flow "ing. "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night; "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night.\n" 

  \set stanza = "2."
  "\nOf " "that " ci "ty " "to " "which " "I " jour "ney, "
  "\nMy " re deem "er, " "my " re deem "er " "is " "the " "light; "
  "\nThere " "is " "no " sor "row, " "nor " a "ny " sigh "ing, "
  "\nNor " a "ny " "tears " "there, " "nor " a "ny " dy "ing. "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night; "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night.\n" 

  \set stanza = "3."
  "\nThere " "the " sun "beams " "are " ev "er " shi "ning; "
  "\nOh, " "my " long "ing " "heart, " "my " long "ing " "heart " "is " "there; "
  "\nHere " "in " "this " coun "try, " "so " "dark " "and " drea "ry, "
  "\nI " "long " "have " wan "dered " for "lorn " "and " wea "ry. "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night, " "but " "a " "night; "
  "\nI'm " "a " pil "grim, " "I'm " "a " pil "grim, "
  "\nand " "a " stran "ger, " "and " "a " stran "ger, "
  "\nI " "can " tar "ry, " "I " "can " tar "ry " "but " "a " "night. " 
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
