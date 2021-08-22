\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Holy Ghost, with Light Divine."
  subtitle    = "Sankey No. 199"
  subsubtitle = "N.H. No. 41"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "L. M. Gottschalk."
  arranger    = "arr. by H. P. M."
%  opus        = "opus"

  poet        = \markup\smallCaps "Dr. A. Reed."
  meter       = \markup\smallCaps "7s"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2 g4
  f4(bes) d
  d2 c4
  bes2 r4
  bes4(a) bes
  bes4(f') d
  c2 d8[c]
  c2(f,4) \break
  f2 g4 % B
  f4(bes) d
  d2 ees8[d]
  d2.
  bes4(a) g
  f4(ees') d
  d2 c4
  bes2.
}

alto = \relative {
  \autoBeamOff
  d'2 cis4
  d4(f) f
  f2 ees4
  d2 r4
  e2 4
  f2 4
  e2 4
  ees2.
  d2 cis4 % B
  d4(f) f
  fis2 4
  g2(d4)
  cis2 4
  d4(f) f
  f2 ees4
  d2.
}

tenor = \relative {
  \autoBeamOff
  bes4(f) ees
  f4(d') bes
  a2 4
  bes2 r4
  c2 cis4
  d2 bes4
  bes2 8[g]
  a2.
  bes4(f) e % B
  f4(d') bes
  c2 a4
  bes2.
  g4(a) bes
  bes4(c) bes
  bes4(a) a
  bes2.
}

bass = \relative {
  \autoBeamOff
  bes,2 4
  bes2 4
  f'2 fis4
  g2 r4
  g2 ges4
  f2 4
  g2 c,4
  f2.
  bes,2 4 % B
  bes2 bes'4
  a4(d,) d
  g2.
  e2 4
  f4(a) bes
  f2 f,4
  bes2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Ho -- ly Ghost, with Light Di -- vine,
  Shine up -- on this heart of mine;
  Chase the shades of night a -- way,
  Turn my dark -- ness in -- to day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ho -- ly Ghost, with power Di -- vine,
  Cleanse this guil -- ty heart of mine;
  Long hath sin, with -- out con -- trol,
  Held do -- min -- ion o'er my soul.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ho -- ly Ghost, with joy Di -- vine,
  Cheer this sad -- dened heart of mine;
  Bid my ma -- ny woes de -- part,
  Heal my wound -- ed, bleed -- ing heart.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ho -- ly Spi -- rit, all Di -- vine,
  Dwell with -- in this heart of mine;
  Cast down ev -- 'ry i -- dol- -- throne,
  Reign su -- preme— and reign a -- lone!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ho" "ly " "Ghost, " "with " "Light " Di "vine, "
  "\nShine " up "on " "this " "heart " "of " "mine; "
  "\nChase " "the " "shades " "of " "night " a "way, "
  "\nTurn " "my " dark "ness " in "to " "day. "

  \set stanza = "2."
  "\nHo" "ly " "Ghost, " "with " "power " Di "vine, "
  "\nCleanse " "this " guil "ty " "heart " "of " "mine; "
  "\nLong " "hath " "sin, " with "out " con "trol, "
  "\nHeld " do min "ion " "o'er " "my " "soul. "

  \set stanza = "3."
  "\nHo" "ly " "Ghost, " "with " "joy " Di "vine, "
  "\nCheer " "this " sad "dened " "heart " "of " "mine; "
  "\nBid " "my " ma "ny " "woes " de "part, "
  "\nHeal " "my " wound "ed, " bleed "ing " "heart. "

  \set stanza = "4."
  "\nHo" "ly " Spi "rit, " "all " Di "vine, "
  "\nDwell " with "in " "this " "heart " "of " "mine; "
  "\nCast " "down " ev "'ry " i dol- "throne, "
  "\nReign " su "preme— " "and " "reign " a "lone! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
    system-separator-markup = \slashSeparator
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
