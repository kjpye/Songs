\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ the Lord is Risen To-day!"
  subtitle    = "Sankey No. 158"
  subsubtitle = "Sankey 880 No. 692"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H.Carey (?)."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley"
  meter       = \markup {\smallCaps 7s., with Hallelujah.}
  piece       = \markup\smallCaps "Easter Hymn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 fis a d,
  g4 b b(a)
  fis8(g a d, g4) fis8[g]
  fis4(e) d2 \break
  g4 a b a % B
  g4 fis fis(e)
  fis8(g a d, g4) fis8[g]
  fis4(e) d2 \break
  cis'4 d e a, % C
  d4 e fis2
  cis8(d e a, d4) cis8[d]
  cis4(b) a2 \break
  a8[b] cis[a] d4 fis, % D
  g4 b b(a)
  d8(cis d a b cis) d[e]
  d4(cis) d2
}

alto = \relative {
  \autoBeamOff
  a4 d e d
  d4 g g(fis)
  d2(b8)[cis] d4
  d4(cis) d2
  d4 fis g d % B
  cis4 d d(cis)
  d2(b8)[cis] d4
  d4(cis) d2
  e4 gis a e % C
  a4 g fis2
  a2(fis8)[gis] a4
  a4(gis) a2
  e4 a a d, % D
  d4 4 2
  fis8(g a d, d e) d[g]
  fis4(e) fis2
}

tenor = \relative {
  \autoBeamOff
  fis4 a a fis
  g4 d'4 2
  a2(g4) a
  a2 fis
  g4 d' d d % B
  g,4 a4 2
  a2(g4) a
  a2 fis
  a4 d cis cis % C
  d4 cis d2
  e2(d4) e
  e2 cis
  cis8[d] e[cis] d4 a % D
  g4 4 4(fis)
  a8([g] fis4 g4) a8[b]
  a2 2
}

bass = \relative {
  \autoBeamOff
  d4 d cis d
  b4 g d'2
  d4(fis e) d
  a'4(a,) d2
  b4 d g fis % B
  e4 d a2
  d4(fis e) d
  a'4(a,) d2
  a'4 b c a8[g] % C
  fis4 e d2
  a'4(cis b) a
  e2 a,
  a'4 g fis d % D
  b4 g d'2
  d8(e fis d g[e]) fis[g]
  a4(a,) d2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

hal = \lyricmode { Hal -- le -- lu -- jah! }

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Christ" the Lord is risen to -- "day!\""
  \hal
  Sons of men and an -- gels say:
  \hal
  Raise your joy and tri -- umph hig:
  \hal
  Sing, ye heav'ns and earth re -- ply:
  \hal
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Love's re -- deem -- ing work is done:
  \hal
  Fought the fight, the bat -- tle won:
  \hal
  Lo! our Sun's e -- clipse is o'er:
  \hal
  Lo! He sets in blood no more:
  \hal
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Vain the stone, the watch, the seal:
  \hal
  Christ hath urst the gates of hell:
  \hal
  Death in vain for -- bids His rise:
  \hal
  Christ hath o -- pened Pa -- ra -- dise:
  \hal
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lives a -- gain our glo -- rious King:
  \hal
  Where, O death, is now thy sting?
  \hal
  Once He died our souls to save:
  \hal
  Where's they vic -- tory, boast -- ting grave?
  \hal
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  King of Glo -- ry! Soul of bliss!
  \hal
  Ev -- er -- last -- ing life is this:
  \hal
  Thee to know, Thy power to prove:
  \hal
  Thus to sing, and thus to love:
  \hal
}
  
hal = \lyricmode {
  "\nHal" le lu "jah! "
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Christ " "the " "Lord " "is " "risen " to "day!\" "
  \hal
  "\nSons " "of " "men " "and " an "gels " "say: "
  \hal
  "\nRaise " "your " "joy " "and " tri "umph " "hig: "
  \hal
  "\nSing, " "ye " "heav'ns " "and " "earth " re "ply: "
  \hal

  \set stanza = "2."
  "\nLove's " re deem "ing " "work " "is " "done: "
  \hal
  "\nFought " "the " "fight, " "the " bat "tle " "won: "
  \hal
  "\nLo! " "our " "Sun's " e "clipse " "is " "o'er: "
  \hal
  "\nLo! " "He " "sets " "in " "blood " "no " "more: "
  \hal

  \set stanza = "3."
  "\nVain " "the " "stone, " "the " "watch, " "the " "seal: "
  \hal
  "\nChrist " "hath " "urst " "the " "gates " "of " "hell: "
  \hal
  "\nDeath " "in " "vain " for "bids " "His " "rise: "
  \hal
  "\nChrist " "hath " o "pened " Pa ra "dise: "
  \hal

  \set stanza = "4."
  "\nLives " a "gain " "our " glo "rious " "King: "
  \hal
  "\nWhere, " "O " "death, " "is " "now " "thy " "sting? "
  \hal
  "\nOnce " "He " "died " "our " "souls " "to " "save: "
  \hal
  "\nWhere's " "they " vic "tory, " boast "ting " "grave? "
  \hal

  \set stanza = "5."
  "\nKing " "of " Glo "ry! " "Soul " "of " "bliss! "
  \hal
  "\nEv" er last "ing " "life " "is " "this: "
  \hal
  "\nThee " "to " "know, " "Thy " "power " "to " "prove: "
  \hal
  "\nThus " "to " "sing, " "and " "thus " "to " "love: "
  \hal
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
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
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
