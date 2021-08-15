\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Virgin Most Pure"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "English Tradional Carol"
  arranger    = \markup { arranged by \smallCaps "Charles Wood" }
%  opus        = "opus"


% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*4
  \mark \markup { \box "D" }    s2.*4
  \mark \markup { \box "E" }    s2.*4
  \mark \markup { \box "F" }    s2.*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s2.*25
  \tempo 4=60 s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8[bes]
  c8[d] ees[d] c[bes]
  a4 g c
  bes4. a8 g4
  f2 a8[bes]
  c8[d] ees[d] c[bes] % B
  a4 g c
  bes4. a8 g4
  f2 e4
  f4. g8 \tuplet 3/2 {a[bes c]}
  bes8[a] g4 d' % C
  c4 f8[e] d4
  \tag #'dash  { c2 \slurDashed a8(bes) \slurSolid }
  \tag #'solid { c2             a8(bes)            }
  \tag #'none  { c2             a8 bes             }
  c8[d] ees[d] c[bes]
  a4 g c % D
  bes4. a8 g4
  c2 \bar "||" a8^\markup\smallCaps Chorus. c
  bes[a] g[bes] a[g]
  f4 4 e % E
  f4. g8 a c
  bes8[a] g4 d'
  c4 f8[e] d4
  c2 a8[bes] % F
  c8[d] ees[d] c[bes]
  a4 g c
  bes4. a8 g4
  f2\fermata
}

sopranoSingle = {
  \keepWithTag #'solid \soprano \nl
  \keepWithTag #'solid \soprano \nl
  \keepWithTag #'solid \soprano \nl
  \keepWithTag #'none  \soprano \nl
  \keepWithTag #'solid \soprano \nl
  \keepWithTag #'solid \soprano \nl
  \keepWithTag #'solid \soprano \nl
}

alto = \relative {
  \autoBeamOff
  f'4
  f4 4 4
  f4 e f
  f4 g e
  f2 4
  f4 4 4 % B
  f4 e f
  f4 g e
  f2 e4
  c4 d f
  f4 e f8[g] % C
  a4 f g8[f]
  \tag #'dash  {e2 \slurDashed f8(8) \slurSolid}
  \tag #'solid {e2             f4              }
  \tag #'none  {e2             f8 8            }
  ees8[f] g[f] 4
  f4 e f8[e] % D
  d4 bes c8[bes]
  a2 \bar "||" f'8 f
  f4 e e
  f4 c c % E
  c4 d c8 8
  d4 e d8[e]
  f4 4 g8[f]
  e2 f4 % F
  f4 4 4
  f4 e f8[e]
  d8[c] bes4 c8[bes]
  a2\fermata
}

altoSingle = {
  \keepWithTag #'solid \alto
  \keepWithTag #'solid \alto
  \keepWithTag #'solid \alto
  \keepWithTag #'none  \alto
  \keepWithTag #'solid \alto
  \keepWithTag #'solid \alto
  \keepWithTag #'solid \alto
}

tenor = \relative {
  \autoBeamOff
  f8[g]
  a8[bes] c[d] ees[d]
  c4 4 4
  d4. c8 bes4
  a2 f8[g]
  a[bes] c[d] ees[d] % B
  c4 4 4
  d4. c8 bes4
  a2 bes4
  c4 bes c
  d4 e d8[e] % C
  f8[e] d[c] b4
  \tag #'dash  {c2 \slurDashed f,8(g) \slurSolid}
  \tag #'solid {c2             f,8(g)           }
  \tag #'none  {c2             f,8 g            }
  a4 bes f8[g]
  a8[bes] c4 f, % D
  f4 4 e
  f2 \bar "||" c'8[a]
  g8[a] bes[g] c[bes]
  a4 4 g % E
  f4 4 8[a]
  bes4 c f,8[g]
  a4 4 b
  c2 4 % F
  c4 bes d
  c4 4 f,
  f4 4 e
  f2\fermata
}

tenorSingle = {
  \keepWithTag #'solid \tenor
  \keepWithTag #'solid \tenor
  \keepWithTag #'solid \tenor
  \keepWithTag #'none  \tenor
  \keepWithTag #'solid \tenor
  \keepWithTag #'solid \tenor
  \keepWithTag #'solid \tenor
}

bass = \relative {
  \autoBeamOff
  f4
  f4 4 4
  f4 c a
  bes4 4 c
  f2 4
  f4 4 4 % B
  f4 c a
  bes4 4 c
  f2 g4
  a4 bes a
  g4 c bes % C
  a4 d, g
  \tag #'dash  {c,2 \slurDashed d8(8) \slurSolid}
  \tag #'solid {c2              d4              }
  \tag #'none  {c2              d8 8            }
  c4 bes d
  c4 4 a % D
  bes4 g c
  f,2 \bar "||" f'8 8
  f4 4 4
  f4 4 c8[bes] % E
  a4 bes a8 8
  g4 c bes
  a4 d g,
  c2 f8[g] % F
  a4 bes g
  c4 4 a,
  bes8[a] g4 c
  f,2\fermata
}

bassSingle = {
  \keepWithTag #'solid \bass
  \keepWithTag #'solid \bass
  \keepWithTag #'solid \bass
  \keepWithTag #'none  \bass
  \keepWithTag #'solid \bass
  \keepWithTag #'solid \bass
  \keepWithTag #'solid \bass
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Aye, and there -- fore be mer -- ry;
  Re -- joice, and be you mer -- ry;
  Set sor -- row a -- side;
  Christ Je -- sus our Sa -- viour was born at this tide.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  A vir -- gin most pure, as the pro -- phets do tell,
  Hath brought forth a ba -- by, as it hath be -- fell;
  To be our Re -- deem -- er from death, hell, and sin,
  Which A -- dam's trans -- gres -- sion had wrap -- ped us in.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In Beth -- le -- hem Jew -- ry a ci -- ty there was,
  Where Jo -- seph and Ma -- ry to -- geth -- er did pass,
  And there to be tax -- ed with ma -- ny one mo,
  For Cae -- sar __ com -- mand -- ed the same should be so.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  But when they had en -- ter'd the ci -- ty so fair,
  A num -- ber of peo -- ple so migh -- ty was there,
  That Jo -- speh and Ma -- ry, whose subst -- ance was small,
  Could find in the inn there no lodg -- ing at all.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then they were co -- strain'd in a sta -- ble to lie,
  Where hors -- es and ass -- es they used for to tie;
  Teir lodg -- ing so sim -- ple they took it no scorn,
  \nom But a -- \yesm gainst the next morn -- ing our Sa -- viour was born
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  The King of all kings to this world be -- ing brought,
  Small store of fine lin -- en to wrap Him was sought;
  And when she had swad -- dled her young son so sweet,
  With -- in and ox- -- man -- ger she laid Him to sleep.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Then God sent an an -- gel from hea -- ven so high,
  To cer -- tain poor shep -- herds in fields where they lie,
  And bade them no lon -- ger in sor -- row to stay,
  Be -- cause that our Sa -- viour was born on this day.
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  Then pre -- sent -- ly af -- ter the shep -- herds did spy
  A num -- ber of an -- gels that stood in the sky;
  They joy -- ful -- ly talk -- ed and sweet -- ly did sing,
  'To God be the glo -- ry our heav -- en -- ly King.'
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  A vir -- gin most pure, as the pro -- phets do tell,
  Hath brought forth a ba -- by, as it hath be -- fell;
  To be our Re -- deem -- er from death, hell, and sin,
  Which A -- dam's trans -- gres -- sion had wrap -- ped us in.
  Aye, and there -- fore be mer -- ry;
  Re -- joice, and be you mer -- ry;
  Set sor -- row a -- side;
  Christ Je -- sus our Sa -- viour was born at this tide.

  \set stanza = "2."
  In Beth -- le -- hem Jew -- ry a ci -- ty there was,
  Where Jo -- seph and Ma -- ry to -- geth -- er did pass,
  And there to be tax -- ed with ma -- ny one mo,
  For Cae -- sar __ com -- mand -- ed the same should be so.
  Aye, and there -- fore be mer -- ry;
  Re -- joice, and be you mer -- ry;
  Set sor -- row a -- side;
  Christ Je -- sus our Sa -- viour was born at this tide.

  \set stanza = "3."
  But when they had en -- ter'd the ci -- ty so fair,
  A num -- ber of peo -- ple so migh -- ty was there,
  That Jo -- speh and Ma -- ry, whose subst -- ance was small,
  Could find in the inn there no lodg -- ing at all.
  Aye, and there -- fore be mer -- ry;
  Re -- joice, and be you mer -- ry;
  Set sor -- row a -- side;
  Christ Je -- sus our Sa -- viour was born at this tide.

  \set stanza = "4."
  Then they were co -- strain'd in a sta -- ble to lie,
  Where hors -- es and ass -- es they used for to tie;
  Teir lodg -- ing so sim -- ple they took it no scorn,
  But a -- gainst the next morn -- ing our Sa -- viour was born
  Aye, and there -- fore be mer -- ry;
  Re -- joice, and be you mer -- ry;
  Set sor -- row a -- side;
  Christ Je -- sus our Sa -- viour was born at this tide.

  \set stanza = "5."
  The King of all kings to this world be -- ing brought,
  Small store of fine lin -- en to wrap Him was sought;
  And when she had swad -- dled her young son so sweet,
  With -- in and ox- -- man -- ger she laid Him to sleep.
  Aye, and there -- fore be mer -- ry;
  Re -- joice, and be you mer -- ry;
  Set sor -- row a -- side;
  Christ Je -- sus our Sa -- viour was born at this tide.

  \set stanza = "6."
  Then God sent an an -- gel from hea -- ven so high,
  To cer -- tain poor shep -- herds in fields where they lie,
  And bade them no lon -- ger in sor -- row to stay,
  Be -- cause that our Sa -- viour was born on this day.
  Aye, and there -- fore be mer -- ry;
  Re -- joice, and be you mer -- ry;
  Set sor -- row a -- side;
  Christ Je -- sus our Sa -- viour was born at this tide.

  \set stanza = "7."
  Then pre -- sent -- ly af -- ter the shep -- herds did spy
  A num -- ber of an -- gels that stood in the sky;
  They joy -- ful -- ly talk -- ed and sweet -- ly did sing,
  'To God be the glo -- ry our heav -- en -- ly King.'
  Aye, and there -- fore be mer -- ry;
  Re -- joice, and be you mer -- ry;
  Set sor -- row a -- side;
  Christ Je -- sus our Sa -- viour was born at this tide.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " vir "gin " "most " "pure, " "as " "the " pro "phets " "do " "tell, "
  "\nHath " "brought " "forth " "a " ba "by, " "as " "it " "hath " be "fell; "
  "\nTo " "be " "our " Re deem "er " "from " "death, " "hell, " "and " "sin, "
  "\nWhich " A "dam's " trans gres "sion " "had " wrap "ped " "us " "in. "
  "\nAye, " "and " there "fore " "be " mer "ry; "
  "\nRe" "joice, " "and " "be " "you " mer "ry; "
  "\nSet " sor "row " a "side; "
  "\nChrist " Je "sus " "our " Sa "viour " "was " "born " "at " "this " "tide. "

  \set stanza = "2."
  "\nIn " Beth le "hem " Jew "ry " "a " ci "ty " "there " "was, "
  "\nWhere " Jo "seph " "and " Ma "ry " to geth "er " "did " "pass, "
  "\nAnd " "there " "to " "be " tax "ed " "with " ma "ny " "one " "mo, "
  "\nFor " Cae "sar "  com mand "ed " "the " "same " "should " "be " "so. "
  "\nAye, " "and " there "fore " "be " mer "ry; "
  "\nRe" "joice, " "and " "be " "you " mer "ry; "
  "\nSet " sor "row " a "side; "
  "\nChrist " Je "sus " "our " Sa "viour " "was " "born " "at " "this " "tide. "

  \set stanza = "3."
  "\nBut " "when " "they " "had " en "ter'd " "the " ci "ty " "so " "fair, "
  "\nA " num "ber " "of " peo "ple " "so " migh "ty " "was " "there, "
  "\nThat " Jo "speh " "and " Ma "ry, " "whose " subst "ance " "was " "small, "
  "\nCould " "find " "in " "the " "inn " "there " "no " lodg "ing " "at " "all. "
  "\nAye, " "and " there "fore " "be " mer "ry; "
  "\nRe" "joice, " "and " "be " "you " mer "ry; "
  "\nSet " sor "row " a "side; "
  "\nChrist " Je "sus " "our " Sa "viour " "was " "born " "at " "this " "tide. "

  \set stanza = "4."
  "\nThen " "they " "were " co "strain'd " "in " "a " sta "ble " "to " "lie, "
  "\nWhere " hors "es " "and " ass "es " "they " "used " "for " "to " "tie; "
  "\nTeir " lodg "ing " "so " sim "ple " "they " "took " "it " "no " "scorn, "
  "\nBut " a "gainst " "the " "next " morn "ing " "our " Sa "viour " "was " "born "
  "\nAye, " "and " there "fore " "be " mer "ry; "
  "\nRe" "joice, " "and " "be " "you " mer "ry; "
  "\nSet " sor "row " a "side; "
  "\nChrist " Je "sus " "our " Sa "viour " "was " "born " "at " "this " "tide. "

  \set stanza = "5."
  "\nThe " "King " "of " "all " "kings " "to " "this " "world " be "ing " "brought, "
  "\nSmall " "store " "of " "fine " lin "en " "to " "wrap " "Him " "was " "sought; "
  "\nAnd " "when " "she " "had " swad "dled " "her " "young " "son " "so " "sweet, "
  "\nWith" "in " "and " ox- man "ger " "she " "laid " "Him " "to " "sleep. "
  "\nAye, " "and " there "fore " "be " mer "ry; "
  "\nRe" "joice, " "and " "be " "you " mer "ry; "
  "\nSet " sor "row " a "side; "
  "\nChrist " Je "sus " "our " Sa "viour " "was " "born " "at " "this " "tide. "

  \set stanza = "6."
  "\nThen " "God " "sent " "an " an "gel " "from " hea "ven " "so " "high, "
  "\nTo " cer "tain " "poor " shep "herds " "in " "fields " "where " "they " "lie, "
  "\nAnd " "bade " "them " "no " lon "ger " "in " sor "row " "to " "stay, "
  "\nBe" "cause " "that " "our " Sa "viour " "was " "born " "on " "this " "day. "
  "\nAye, " "and " there "fore " "be " mer "ry; "
  "\nRe" "joice, " "and " "be " "you " mer "ry; "
  "\nSet " sor "row " a "side; "
  "\nChrist " Je "sus " "our " Sa "viour " "was " "born " "at " "this " "tide. "

  \set stanza = "7."
  "\nThen " pre sent "ly " af "ter " "the " shep "herds " "did " "spy "
  "\nA " num "ber " "of " an "gels " "that " "stood " "in " "the " "sky; "
  "\nThey " joy ful "ly " talk "ed " "and " sweet "ly " "did " "sing, "
  "\n'To " "God " "be " "the " glo "ry " "our " heav en "ly " "King.' "
  "\nAye, " "and " there "fore " "be " mer "ry; "
  "\nRe" "joice, " "and " "be " "you " mer "ry; "
  "\nSet " sor "row " a "side; "
  "\nChrist " Je "sus " "our " Sa "viour " "was " "born " "at " "this " "tide. "
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
            \new NullVoice = "aligner" \keepWithTag #'dash { \soprano }
            \new Voice = "women" \partCombine
            { \global \keepWithTag #'dash \soprano \bar "|." }
            { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine
            { \global \keepWithTag #'dash \tenor }
            { \global \keepWithTag #'dash \bass }
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
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine
            { \global \sopranoSingle \bar "|." }
            { \global \altoSingle }
            \new Lyrics \lyricsto aligner \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine
            { \global \tenorSingle }
            { \global \bassSingle }
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
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine
            { \global \sopranoSingle \bar "|." }
            { \global \altoSingle }
            \new Lyrics \lyricsto aligner \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine
            { \global \tenorSingle }
            { \global \bassSingle }
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
  \bookOutputSuffix "midi-sop"
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
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
            \addlyrics \wordsMidi
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
            \addlyrics \wordsMidi
          >>
        >>
    \midi {}
  }
}
