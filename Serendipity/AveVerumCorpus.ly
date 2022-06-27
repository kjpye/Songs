\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ave verum Corpus"
  subtitle    = "(Jesus, Saviour, we behold thee)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. A. Mozart (1756-91)"
  arranger    = "K618"
%  opus        = "opus"

  poet        = "14th-century Eucharistic hymn"
  meter       = "English version by John Rutter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
% tagline   = ##f
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
  \key d \major
  \time 2/2
}

TempoTrack = {
  \tempo 2=66
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "248a" } s1*5
  \mark \markup { \circle "248b" } s1*6
  \mark \markup { \circle "249a" } s1*6
  \mark \markup { \circle "249b" } s1*6
  \mark \markup { \circle "249c" } s1*6
  \mark \markup { \circle "250a" } s1*6
  \mark \markup { \circle "250b" } s1*5
  \mark \markup { \circle "250c" } s1*6
}

soprano = \relative {
  \global
  R1^\markup\bold Adagio
  R1
  a'2\omit\p^\markup\italic "sotto voce" d4(fis,)
  a4(gis) g2
  g4(b) a(g)
  g4(fis) fis2 % 248b
  e2. e4
  fis4 4 g g
  g2(fis4) fis
  e1
  e2. a4
  a4(gis) gis2 % 249a
  e4(gis2) b4
  b4(a) a a
  d1~
  d4(cis) b a
  a2(gis4) gis
  a1 % 249b
  R1
  R1
  R1
  a2. a4 a4(bes) bes2
  bes4(d) c(bes) % 249c
  bes4(a) a2
  g2. 4
  g4(bes) a g
  g2(f8 e) f4
  e2 r
  fis2. fis4 % 250a
  fis4(e) d(g)
  g2. 4
  g4(fis) e a
  a1~
  a4(g) a b
  fis2(e4.) fis8 % 250b
  g2 g
  d'1~
  d2(des
  e4 b cis d
  cis4 b8 a) d4 g, % 250c
  fis2(e4.) e8
  d1
  R1
  R1
  R1
  \bar "|."
}

wordsSopLatin = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  In cru -- ce pro ho -- mi -- ne:
  _ _ _ _
  per -- fo -- ra -- tum
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  In mor -- tis ex -- a -- mi -- ne.
}

wordsSopEnglish = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  Thy cross __ all our wounds __ hath healed.
  _ _ _ _
  pierced and __ bro -- ken,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  In death's __ hour of trial __ our food.
}

wordsAllLatin = \lyricmode {
  A -- ve, __ a -- ve ve -- rum __
  Cor -- pus na -- tum
  De Ma -- ri -- a Vir -- gi -- ne:
  Ve -- re pas -- sum,
  im -- mo -- la -- tum
  In cru -- ce pro ho -- mi -- ne:
  Cu -- jus la -- tus __
  per -- fo -- ra -- tum
  Un -- da flu -- xit et san -- gui -- ne:
  Es -- to no -- bis __ prae -- gus -- ta -- tum
  In mor -- tis ex -- a -- mi -- ne,
  in mor -- tis ex -- a -- mi -- ne.
}

wordsAllLatinMidi = \lyricmode {
  "A" "ve, "  a "ve " ve "rum " 
  "\nCor" "pus " na "tum "
  "\nDe " Ma ri "a " Vir gi "ne: "
  "\nVe" "re " pas "sum, "
  "\nim" mo la "tum "
  "\nIn " cru "ce " "pro " ho mi "ne: "
  "\nCu" "jus " la "tus " 
  "\nper" fo ra "tum "
  "\nUn" "da " flu "xit " "et " san gui "ne: "
  "\nEs" "to " no "bis " prae gus ta "tum "
  "\nIn " mor "tis " ex a mi "ne, "
  "\nin " mor "tis " ex a mi "ne. "
}

wordsAllEnglish = \lyricmode {
  Je -- sus, __ Sa -- viour, we __ be -- hold thee,
  Ma -- ry's Son in bread and wine __ re -- vealed:
  Born and suf -- fered, for __ us of -- fered,
  Thy cross all our wounds hath healed.

  From thy bo -- dy, __
  pierced __ and bro -- ken,
  Come forth wa -- ter and pre -- cious blood:
  Be to us __ by __ thy ex -- am -- ple
  In death's __ hour of trial __ our food,
  in death's __ hour of trial __ our food.
}

wordsAllEnglishMidi = \lyricmode {
  "Je" "sus, "  Sa "viour, " "we "  be "hold " "thee, "
  "\nMa" "ry's " "Son " "in " "bread " "and " "wine "  re "vealed: "
  "\nBorn " "and " suf "fered, " "for "  "us " of "fered, "
  "\nThy " "cross " "all " "our " "wounds " "hath " "healed. "

  "\nFrom " "thy " bo "dy, " 
  "\npierced "  "and " bro "ken, "
  "\nCome " "forth " wa "ter " "and " pre "cious " "blood: "
  "\nBe " "to " "us "  "by "  "thy " ex am "ple "
  "\nIn " "death's "  "hour " "of " "trial "  "our " "food, "
  "\nin " "death's "  "hour " "of " "trial "  "our " "food. "
}

alto = \relative {
  \global
  R1
  R1
  fis'2\omit\p fis
  e2 e
  e4(g) fis(e)
  e4(d) 2 % 248b
  cis2. 4
  d4 d e e
  e2(d4) d
  cis1
  e2. 4
  e2 e % 249a
  e2. gis4
  gis4(a) a2
  \once\partCombineApart r2 gis
  a2 fis4 fis
  e2. 4
  e1 % 249b
  R1
  R1
  R1
  e2. 4
  e2 e
  e2. 4 % 249c
  e4(f) 2
  d2. 4
  e4(f) e e
  e2(d8 cis) d4
  cis2 r
  d2. 4 % 250a
  d4(cis) b(e)
  e2. 4
  e4(d) cis fis
  fis1~
  fis4(g) fis e
  d2(cis4.) 8 % 250b
  d2 \once\partCombineApart r
  \once\partCombineApart r2 fis
  g2(fis
  e1~
  e4 d8 cis) d4 d % 250c
  d2(cis4.) cis8
  d1
  R1
  R1
  R1
  \bar "|."
}

tenor = \relative {
  \global
  R1
  R1
  a2\omit\p a
  b2 b
  a2 a
  a2 a % 248b
  a2. 4
  a4 a a a
  a2. 4
  a1
  cis2. 4
  cis4(d) 2 % 249a
  b2. d4
  d4(cis) 2
  r2 d
  e2 d4 cis
  b2. 4
  cis1 % 249b
  R1
  R1
  R1
  cis2. 4
  cis2 4(c)
  c4(bes a) g % 249c
  g4(a) 2
  b2. 4
  cis4(d) e cis
  cis2(d4) b
  e,2 r
  R1 % 250a
  b'2. 4
  b4(a) g(cis)
  cis2. 4
  cis4(b) a d
  d2 d4 d
  a2. 4 % 250b
  g2 r
  r2 c
  d2(c
  b4 d cis b
  a2^\markup{\eyeglasses}) 4 g % 250c
  a2(g4.) 8
  fis1
  R1
  R1
  R1
  \bar "|."
}

wordsBassLatin = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _
  im -- mo -- la -- tum
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  Es -- to no -- bis __ prae -- gus -- ta -- tum
  In mor -- tis ex -- a -- mi -- ne,
}

wordsBassEnglish = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _
  for us of -- fered,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  Be to us __ by __ thy ex -- am -- ple
  In death's hour of trial our food,
}

bass = \relative {
  \global
  R1
  R1
  d2\omit\p_\markup\italic "sotto voce" d
  d2 d
  cis2 cis
  d2 d % 248b
  a2. 4
  d4 d cis cis
  d2. 4
  a1
  a'2. 4
  a4(b) 2 % 249a
  \once\partCombineApart r2 e,4 e
  eis4(fis) 2
  r2 b,
  cis2 d4 d
  e2. 4
  a,1 % 249b
  R1
  R1
  R1
  a'2. 4
  a4(g) 2
  c,2. 4 % 249c
  c4(f) 2
  f2. 4
  e4(d) cis a
  bes2(a4) gis
  a2 r
  R1 % 250a
  g'2. 4
  g4(fis) e(a)
  a2. 4
  a4(g) fis b
  b2 a4 gis
  a2 a, % 250b
  b2 r
  r2 a'
  bes2(a
  gis1
  g2) fis4 b, % 250c
  a2. 4
  d1
  R1
  R1
  R1
  \bar "|."
}

pianoRHone = \relative {
  \global
  d'4\omit\p^\markup\bold Adagio (a d <cis e>)
  <d fis>4(d <d fis> <e g>)
  g4(fis) d'(fis,)
  a4(gis g) g
  <e g>(<g b> <fis a> <e g>)
  <e g>4(<d fis>) fis(a) % 248b
  a4(e) e(a)
  <fis a>4(<d' fis>) <e g> <e, g>
  q2(<d fis>)
  <cis e>4(<a cis>) q(<cis e>)
  e4(e') cis(a)
  a4(gis) gis(e) % 249a
  e4(e') d(<gis, b>)
  q4(a) a a(
  d4) 2 4~
  d4(cis) b(a)
  e4(a) d,(gis)
  r4 a(e'2)~ % 249b
  e4(d e fis)
  a,2 \grace cis8 b4.(a8)
  a4(e) cis(e)
  a4(e) cis(e)
  a4(bes) 4 4
  bes4(d c bes) % 249c
  bes4(a) a(\parenthesize a,)
  d4 d g <d g>
  <cis g'>(<f bes> <e a> <e g>)
  q2 <d f>8(<cis e> <d fis>4)
  <cis e>4 <a cis>(<b d> <cis e>)
  <d fis>2. 4 % 250a
  <d fis>4(<cis e> <b d> <e g>)
  q2. 4
  q4(<d fis> <cis e> <fis a>)
  q2. 4
  q4(g q <e b'>)
  <d fis>2 e4.(fis8) % 250b
  g4 2 4(
  d'4) 2 4~
  d4 d(dis) dis(
  e4)(b cis d)
  <e, cis'>4(<d b'>8 <cis a'>) d'4(g,) % 250c
  <d fis>2(<cis e>)
  d4(fis) a2~
  a4(d,) g2
  fis2 e4.\trill(d16 e)
  d1
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  r1
  r1
  fis'2.\omit\p d4
  e2 e
  r1
  r2 d % 248b
  cis2. e4
  r1
  r1
  r1
  r1
  r1 % 249a
  r1
  r1
  r2. gis4
  a2(fis)
  e2(d)
  r4 s2 e4 % 249b
  a4 2 4
  e4 e d(e)
  cis2 a4(cis)
  e2. 4
  e2 e
  e2. 4 % 249c
  e4(f) 2
  s1
  s1
  s1
  s1
  s1*6 % 250a
  s2 cis % 250b
  d2 \once\partCombineApart r
  s1
  s1
  e1
  s2 d % 250c
  s1
  d2 fis~
  fis4(b,) e2~
  e4(d2 cis4)
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1-\markup\italic "sotto voce"
  s1*45
}

pianoLHone = \relative {
  \global
  <fis a>2.\omit\p a4
  a4~(<fis a> a a)
  a2 a
  b2 b
  a2 a
  a2 a % 248b
  a2. cis4
  d2 a
  a1
  a4(e) e(a)
  <a cis>2 <cis e>
  <cis e>4<d e> q2 % 249a
  <b e>2. d4
  d4(cis) 2
  r4 a(gis b(
  e2 d4(cis)
  b2. 4
  <a cis>2. cis4~ % 249b
  cis4(d cis b)
  cis4(\parenthesize e) gis,2
  a2 e4(a)
  cis2. 4
  cis2.(c4)
  c4(bes a g) % 249c
  g4(a) a a
  <g b>2. b4
  g4(bes e, cis')
  c2(d4 b)
  e,4 a2 4
  a2 d, % 250a
  b'2. 4
  b4(a g cis)
  cis2. 4
  cis4(b a d)
  d2. 4
  a2 a % 250b
  d,2 r r4 b'(c fis
  g4) bes,(c fis)
  b,4(d cis b)
  a2.(g4) % 250c
  a2(g)
  fis2 r4 a(
  d2.) b4
  a2 g
  fis1
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  d1\omit\p_\markup Ped.
  d1
  d2 d
  d2 d
  cis2 cis
  d2 d % 248b
  a2. 4
  d4 d cis cis
  d4 d fis d
  a4 a' e cis
  a2 a'
  a4(b) 2 % 249a
  gis2 e
  eis4(fis) 2
  r2 b,
  cis2 d
  e1
  a,2. cis4 % 249b
  fis2 e4 dis
  e2 e,
  a1
  a2 a'
  a4(g) 2
  c,2 c % 249c
  c4(f) 2
  f2 f
  e4 d cis a
  bes4 4 a gis
  a4 a'2 g8(e)
  d1 % 250a
  g2. 4
  g4(fis e a)
  a2. 4
  a4(g fis b)
  b2 a4 gis
  a2 a, % 250b
  b2 r
  r2 a'
  bes2 a
  gis1
  g2 fis4 b, % 250c
  a1
  d2 r4 fis,(
  b2.) g4
  a1
  d1
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Lyrics = sopranoLatin
          \new Lyrics = sopranoEnglish
          \new Staff \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = alignerA \alto
            \new NullVoice = alignerS \soprano
            \new Voice \partCombine \soprano \alto
            \new Lyrics \lyricsto alignerA \wordsAllLatin
%            \new Lyrics \lyricsto alignerA \wordsAllEnglish
          >>
            \context Lyrics = sopranoLatin { \lyricsto alignerS \wordsSopLatin }
%            \context Lyrics = sopranoEnglish { \lyricsto alignerS \wordsSopEnglish }
                                % Joint tenor/bass staff
          \new Staff \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new NullVoice = alignerB \bass
            \new Voice \partCombine \tenor \bass
            \new Lyrics \lyricsto alignerB \wordsBassLatin
%            \new Lyrics \lyricsto alignerB \wordsBassEnglish
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Lyrics = sopranoLatin
          \new Lyrics = sopranoEnglish
          \new Staff \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = alignerA \alto
            \new NullVoice = alignerS \soprano
            \new Voice \partCombine \soprano \alto
            \new Lyrics \lyricsto alignerA \wordsAllLatin
%            \new Lyrics \lyricsto alignerA \wordsAllEnglish
          >>
            \context Lyrics = sopranoLatin { \lyricsto alignerS \wordsSopLatin }
%            \context Lyrics = sopranoEnglish { \lyricsto alignerS \wordsSopEnglish }
                                % Joint tenor/bass staff
          \new Staff \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new NullVoice = alignerB \bass
            \new Voice \partCombine \tenor \bass
            \new Lyrics \lyricsto alignerB \wordsBassLatin
%            \new Lyrics \lyricsto alignerB \wordsBassEnglish
          >>
        >>
        \new PianoStaff <<
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % soprano staff
          \new Staff = "soprano"
          <<
            \new Voice \TempoTrack
            \new Voice = soprano \soprano
            \new Lyrics \lyricsto soprano \wordsAllLatinMidi
%            \new Lyrics \lyricsto soprano \wordsAllEnglishMidi
          >>
                                % alto staff
          \new Staff = "alto"
          <<
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = "tenor"
          <<
            \clef "bass"
            \new Voice = tenor \tenor \bass
          >>
                                % bass staff
          \new Staff = "bass"
          <<
            \clef "bass"
            \new Voice = bass \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "accompaniment"
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % soprano staff
          \new Staff = "soprano"
          <<
            \new Voice \TempoTrack
            \new Voice = soprano \soprano
          >>
                                % alto staff
          \new Staff = "alto"
          <<
            \new Voice = alto \alto
            \new Lyrics \lyricsto alto \wordsAllLatinMidi
%            \new Lyrics \lyricsto alto \wordsAllEnglishMidi
          >>
                                % tenor staff
          \new Staff = "tenor"
          <<
            \clef "bass"
            \new Voice = tenor \tenor
          >>
                                % bass staff
          \new Staff = "bass"
          <<
            \clef "bass"
            \new Voice = bass \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "accompaniment"
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % soprano staff
          \new Staff = "soprano"
          <<
            \new Voice \TempoTrack
            \new Voice = soprano \soprano
          >>
                                % alto staff
          \new Staff = "alto"
          <<
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = "tenor"
          <<
            \clef "bass"
            \new Voice = tenor \tenor \bass
            \new Lyrics \lyricsto tenor \wordsAllLatinMidi
%            \new Lyrics \lyricsto tenor \wordsAllEnglishMidi
          >>
                                % bass staff
          \new Staff = "bass"
          <<
            \clef "bass"
            \new Voice = bass \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = "accompaniment"
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % soprano staff
          \new Staff = "soprano"
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = soprano \soprano
          >>
                                % alto staff
          \new Staff = "alto"
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = alto \alto
          >>
                                % tenor staff
          \new Staff = "tenor"
          <<
            \clef "bass"
            \new Voice = tenor \tenor
          >>
                                % bass staff
          \new Staff = "bass"
          <<
            \clef "bass"
            \new Voice = bass \bass
            \new Lyrics \lyricsto bass \wordsAllLatinMidi
%            \new Lyrics \lyricsto bass \wordsAllEnglishMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = "accompaniment"
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
