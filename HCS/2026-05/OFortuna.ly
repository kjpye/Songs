\version "2.25.31"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Fortuna"
  subtitle    = "from Carmina Burana"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Carl Orff (1895-1982)"
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

global = {
  \key f \major
  \time 3/1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \once\set Score.tempoHideNote = ##f
  \tempo Pesante 2=60
  s1*6 | s1. \tempo "poco stringendo" 2=66 s2 \tempo 2=72 s2 \tempo 2=78 s2 | \tempo 2=84 s2 \tempo 2=90 s2 \tempo 2=96 s2 \tempo 2=102 s2 \tempo 2=108 s2 \tempo 2=114 s2 |
  \set Score.tempoHideNote = ##f \tempo 2=120
  s1.*56 |
  \tempo 2=144 s1.*32 |
  \tempo 2=160 s1.*9 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "5a" } s1*12
  \textMark \markup { \box "5b" } s1.*5
  \mark \markup\circle\bold "1"
  \textMark \markup { \box "6a" } s1.*5
  \textMark \markup { \box "6b" } s1.*5
  \mark \markup\circle\bold "2"
  \textMark \markup { \box "7a" } s1.*5
  \textMark \markup { \box "7b" } s1.*5
  \mark \markup\circle\bold "3"
  \textMark \markup { \box "8a" } s1.*5
  \textMark \markup { \box "8b" } s1.*5
  \mark \markup\circle\bold "4"
  \textMark \markup { \box "9a" } s1.*5
  \textMark \markup { \box "9b" } s1.*5
  \mark \markup\circle\bold "5"
  \textMark \markup { \box "10a" } s1.*5
  \textMark \markup { \box "10b" } s1.*5
  \mark \markup\circle\bold "6"
  \textMark \markup { \box "11a" } s1.*4
  \textMark \markup { \box "11b" } s1.*5
  \textMark \markup { \box "12a" } s1.
  \mark \markup\circle\bold "7"    s1.*4
  \textMark \markup { \box "12b" } s1.*5
  \textMark \markup { \box "13a" } s1.
  \mark \markup\circle\bold "8"    s1.*4
  \textMark \markup { \box "13b" } s1.*5
  \textMark \markup { \box "14a" } s1.
  \mark \markup\circle\bold "9"    s1.*3
  \textMark \markup { \box "14b" } s1.*4
  \textMark \markup { \box "15a" } s1.*3
  \mark \markup\circle\bold "10"   s1.*2
}

dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s2 s1\ff s2*3 | s1*9 |
  s2 s1\pp | s1.*4 |
  s1.*10 | % 6
  s1.*10 |
  s1.*10 |
  s1.*10 | % 9
  s1.*10 |
  s1. | s2 s1\f | s1.*7 |
  s1.*8 | s2 s1\ff | s1. | % 12
  s1.*10 |
  s1.*2 | s1.\cresc | s1. | s\fff | s1.*3 |
  s1.*5 | % 15
}

wr = \relative {
  \repeat unfold 2 {r2 f'-.-- f-.-- | e-.-- e-.-- r |}
  r f-.-- f-.-- | e-.-- f1-- | g-- f2-.-- | e1.-- |
}

wrd = \relative {
  \repeat unfold 2 {r2 f'-.-- f-.-- | e-.-- e-.-- r |}
  r f-.-- f-.-- | e-.-- f1-- | g-- f2-.-- | d1.-- |
}

wrb = \relative {
  \repeat unfold 2 {r2 f'-.-- f-.-- | e-.-- e-.-- r |}
  r f-.-- f-.-- | e-.-- f1-- | g2-- f1-.-- | e1.-- |
}

wre = \relative {
  \repeat unfold 2 {r2 f'-> f-> | e-> e-> r |}
  r f-> f-> | e-> f1-> | g-> f2-> | e1.-> |
}

wwr = \relative {
  \repeat unfold 2 {r2 a'-.-- a-.-- | g-.-- g-.-- r | }
  r2 a-.-- a-.-- | g-.-- f1-- | g-.-- e2-- | g1.-- |
}

wwrb = \relative {
  \repeat unfold 2 {r2 a'-.-- a-.-- | g-.-- g-.-- r | }
  r2 a-.-- a-.-- | g-.-- f1-- | g2-.-- e1-- | g1.-- |
}

mr = \relative {
  \repeat unfold 2 {r2 f-.-- f-.-- | e-.-- e-.-- r |}
  r f-.-- f-.-- | e-.-- f1-- | g-- f2-.-- | e1.-- |
}

mrd = \relative {
  \repeat unfold 2 {r2 f-.-- f-.-- | e-.-- e-.-- r |}
  r f-.-- f-.-- | e-.-- f1-- | g-- f2-.-- | d1.-- |
}

mre = \relative {
  \repeat unfold 2 {r2 f-> f-> | e-> e-> r |}
  r f-> f-> | e-> f1-> | g-> f2-> | e1.-> |
}

mrb = \relative {
  \repeat unfold 2 {r2 f-.-- f-.-- | e-.-- e-.-- r |}
  r f-.-- f-.-- | e-.-- f1-- | g2-- f1-.-- | g1.-- |
}

mmr = \relative {
  \repeat unfold 2 {r2 a-.-- a-.-- | g-.-- g-.-- r | }
  r2 a-.-- a-.-- | g-.-- f1-- | g-.-- e2-- | g1.-- |
}

mmrb = \relative {
  \repeat unfold 2 {r2 a-.-- a-.-- | g-.-- g-.-- r | }
  r2 a-.-- a-.-- | g-.-- f1-- | g2-.-- e1-- | d1.-- |
}

mw = \relative {
  r2 <f' a>2-> q-> | <e g>-> q-> r | r <f a>-> q-> | <e g>-> q-> r |
  r2 <f a>-> q-> | <e g>-> <d f>1-> | <e g>-> <d f>2-> | <e g>1.-> |
}

mwb = \relative {
  r2 a-> a-> | a-> a-> r | r a-> a-> | a-> a-> r |
  r2 a-> a-> | a-> a1-> | a-> a2-> | a1.->
}

mwc = \relative {
  r2 <f' a>-> q-> | <e g>-> q-> r | r <f a>-> q-> | <e g>-> q-> r |
  r2 <f a>2-> q-> | <e g>->(<f a> <g bes> | <f a> <e g>) <d f>-> |
  <e g>2->(<d f>) <cis e>-> | 
}

mwd = \relative {
  r2 a-> a-> | a-> a-> r | r a-> a-> | a-> a-> r |
  r2 a-> a-> | a1-> a2->~ | a-> a1->~ | a2-> a1-> |
}

soprano = \relative {
  \global
  \repeat unfold 2 {r2 <d'' e>1-> <c f>2-> <c d>-> <bes d>-> \breathe |}
  r2 <f' a>1-> <e g>2-> <f a>-> <e g>-> | q-> <d f>-> e\breve->\fermata \breathe |
  \time 3/2 \wr \wr \wrb \wr \wr \wwr \wrd \transpose c c' {\wre \wre \mw \mwc}
  d1.->~ d~ d~ d~ | d~ d~ d~ d~ d\fermata |
  \bar "|."
}

words = \lyricmode {
  O For -- tu -- na, vel -- ut Lu -- na
  sta -- tu va -- ri -- a -- bi -- lis,
  sem -- per cres -- cis aut de -- cres -- cis;
  vi -- ta de -- te -- sta -- bi -- lis
  nunc ob -- du -- rat % 6a
  et tunc cu -- rat
  lu -- do men -- tis a -- ci -- em,
  e -- ge -- sta -- tem,
  pot -- es -- ta -- tem
  dis -- sol -- vit ut gla -- ci -- em. % 7b
  Sors im -- ma -- nis et in -- a -- nis,
  ro -- ta tu vo -- lu -- bi -- lis,
  sta -- tus ma -- lus,
  va -- na sa -- lus
  sem -- per dis -- so -- lu -- bi -- lis, % 9a
  ob -- um -- bra -- ta
  et ve -- la -- ta
  mi -- chi quo -- que ni -- te -- ris;
  nunc per lu -- dum % 10a
  dor -- sum nu -- dum
  fe -- ro tu -- i sce -- le -- ris.
  Sors sa -- lu -- tis % 11a
  et vir -- tu -- tis
  mi -- chi nunc con -- tra ri -- a,
  est af -- fec -- tus % 12a
  et de -- fec -- tus
  sem -- per in an -- ga -- ri -- a.
  Hac in ho -- ra
  si -- ne mo -- ra % 13a
  cor -- de pul -- sum tan -- gi te;
  quod per sor -- tem
  ster -- nit for -- tem,
  me -- cum om -- nes plan -- gi -- te! __
}

wordsMidi = \lyricmode {
  "O " For tu "na, " vel "ut " Lu "na "
  "\nsta" "tu " va ri a bi "lis, "
  "\nsem" "per " cres "cis " "aut " de cres "cis; "
  "\nvi" "ta " de te sta bi "lis "
  "\nnunc " ob du "rat " % 6a
  "\net " "tunc " cu "rat "
  "\nlu" "do " men "tis " a ci "em, "
  "\ne" ge sta "tem, "
  "\npot" es ta "tem "
  "\ndis" sol "vit " "ut " gla ci "em. " % 7b
  "\nSors " im ma "nis " "et " in a "nis, "
  "\nro" "ta " "tu " vo lu bi "lis, "
  "\nsta" "tus " ma "lus, "
  "\nva" "na " sa "lus "
  "\nsem" "per " dis so lu bi "lis, " % 9a
  "\nob" um bra "ta "
  "\net " ve la "ta "
  "\nmi" "chi " quo "que " ni te "ris; "
  "\nnunc " "per " lu "dum " % 10a
  "\ndor" "sum " nu "dum "
  "\nfe" "ro " tu "i " sce le "ris. "
  "\nSors " sa lu "tis " % 11a
  "\net " vir tu "tis "
  "\nmi" "chi " "nunc " con "tra " ri "a, "
  "\nest " af fec "tus " % 12a
  "\net " de fec "tus "
  "\nsem" "per " "in " an ga ri "a. "
  "\nHac " "in " ho "ra "
  "\nsi" "ne " mo "ra " % 13a
  "\ncor" "de " pul "sum " tan "gi " "te; "
  "\nquod " "per " sor "tem "
  "\nster" "nit " for "tem, "
  "\nme" "cum " om "nes " plan gi "te! " 
}

alto = \relative {
  \global
  \repeat unfold 2 {r2 f'1-> e2-> d-> d-> \breathe |}
  r2 a'1-> 2-> 2-> 2-> | a2-> a-> a\breve->\fermata \breathe |
  \time 3/2 \wr \wr \wrb \wr \wr \wr \wrd \wre \wre \transpose c c' {\mwb \mwd}
  d,1.->~ d~ d~ d~ | d~ d~ d~ d~ d\fermata |
}

tenor = \relative {
  \global
  \repeat unfold 2 {r2 <d' e>1-> <c f>2-> <c d>-> <bes d>-> \breathe |}
  r2 <f' a>1-> <e g>2-> <f a>-> <e g>-> | q-> <d f>-> e\breve->\fermata \breathe
  \time 3/2 \mr \mr \mrb \mr \mr \mmr \mrd \transpose c c' { \mre \mre} \mw \mwc
  d1.->~ d~ d~ d~ | d~ d~ d~ d~ d\fermata |
}

bass = \relative {
  \global
  \repeat unfold 2 {r2 f1-> e2-> d-> d-> \breathe |}
  r2 a'1-> 2-> 2-> 2-> | a2-> a-> a\breve->\fermata \breathe |
  \time 3/2 \mr \mr \mrb \mr \mr \mmr \mrd \mre \mre \mwb \mwd
  d,1.->~ d~ d~ d~ | d~ d~ d~ d~ d\fermata |
}

pianoRHone = \relative {
  \global \vo
  \repeat unfold 2 {r2 <f'' a e'>1-> <f a f'>2-> <c d a' c d>-> <d a' bes d>-> \breathe |}
  r2 <a' e' f a>1-> <g d' e g>2-> <a e' f a>-> <g d' e g>-> |
  q2-> <f a d e f>-> <e a d e>\breve->\fermata \breathe |
  \clef bass \time 3/2
                                % 5b
  \repeat unfold 2 {
    r2 <f,, f'>2-.-- q-.-- | <e e'>-.-- q-.-- r |
    r2 <f f'>-.-- q-.-- | <e e'>-.-- q-.-- r |
    r2 <f f'>-.-- q-.-- |
    <c c'>2-.-- <d d'>1-- | <e e'>-- <d d'>2-.-- | <e e'>1.-- |
  }
                                % 7a+
  \clef treble \repeat unfold 2 {r2 <a f' a>-.-- q-.-- | <g e' g>-.-- q-.-- r |}
  r2 <a f' a>-.-- q-.-- | <g e' g>-.-- <f d' f>1-- |
  <g e' g>2-.-- <e e'>1-- \clef bass |
  <d d'>1.-- |
  \repeat unfold 2 {r2 <f f'>-.-- q-.-- | <e e'>-.-- q-.-- r |}
  r2 <f f'>-.-- q-.-- | <e e'>-.-- <f f'>1-- |
  <g g'>1-- <f f'>2-.-- | <e e'>1.-- | % 8b
  \repeat unfold 2 {r2 <f f'>-.-- q-.-- | <e e'>-.-- q-.-- r |}
  r2 <f f'>-.-- q-.-- | <e e'>-.-- <f f'>1-- | <g g'>-- <f f'>2-.-- | <e e'>1.-- |
  \clef treble
  \repeat unfold 2 {r2 <a f' a>-.-- q-.-- | <g e' g>-.-- q-.-- r |}
  r2 <a f' a>2-.-- q-.-- |
  <g e' g>2-.-- <f e' f>1-- | <g e' g>-- <f e' f>2-.-- | <g e' g>1.-- | % 10a
  \repeat unfold 2 {2 <a f' a>-.-- q-.-- | <g e' g>-.-- q-.-- r |}
  r2 <a f' a>-.-- q-.-- | <g e' g>-.-- <f d' f>1-- | <g e' g>2-.-- <e e'>1-- |
  <d d'>1.-- | % 11a
  \repeat unfold 2 {r2 <f'' f'>-> q-> | <e e'>-> q-> r |}
  r2 <e e'>-> q-> | <e e'>-> <f f'>1-> | <g g'>-> <f f'>2-> | <e e'>1.-> |
  \repeat unfold 2 {r2 <f f'>-> q-> | <e e'>-> q-> r |} % 12a
  r2 <f f'>-> q-> | <e e'>-> <f f'>1-> | <g g'>-> <f f'>2-> | <e e'>1.-> |
  \repeat unfold 2 {r2 <a f' a>-> q-> | <g e' g>-> q-> r |}
  r2 <a f' a>-> q-> <g e' g>-> <f d' f>1-> | <g e' g>-> <f d' f>2-> |
  <g e' g>1.-> | % 13b
  \repeat unfold 2 {r2 <a f' a>-> q-> | <g e' g>-> q-> r |}
  r2 <a f' a>-> q-> | <g e' g>-> <a f' a>-> <bes g' bes>-> | % 14a
  <a f' a>2-> <g e' g>-> <f d' f>-> | <g e' g>-> <f d' f>-> <e cis' e>-> |
  \ov <d fis a d>4-> <c e g>-> <d fis a>-> <c e g>-> <a d fis>-> <c e g>-> | % 14b
  \repeat unfold 7 {<d fis a>4-> <c e g>-> <a d fis>-> <c e g>-> <d fis a>-> <c e g>-> |}
  <d fis a d>1.->\fermata |
}

pianoRHtwo = \relative {
  \global
  \repeat unfold 2 {r2 <f' a e'>1-> <e a e'>2-> s <d a' bes>-> \breathe |}
  r2 <e f a e'>1-> <d e g d'>2-> <e f a e'>-> <d e g d'>-> |
  q2-> <e f a e'>-> <a, e' a>\breve \breathe \clef bass |
  \repeat unfold 2 {
    \repeat unfold 3 {r4 <c d>-. r q-. r q-. | r q-. r q-. a-. q-. |}
    r4 q-. a-. q-. r q-. | r q-. r q-. a-. q-. |
  }
  \repeat unfold 3 {r4 <c d>-. r q-. r q-. | r q-. r q-. a-. q-. |}
  r4 q-. r q-. r q-. r q-. r q-. a-. q-. |
  \repeat unfold 4 {
    \repeat unfold 3 {r4 <c d>-. r q-. r q-. | r q-. r q-. a-. q-. |}
    r4 q-. a-. q-. r q-. | r q-. r q-. a-. q-. |
  }
  \breathe
  \repeat unfold 4 {
    \repeat unfold 3 {<d' a' d>4-. c'-. a-. d-. d-. c-. | a-. d-. d-. c-. a-. d-. |}
    d4-. c-. a-. d-. d-. a-. | a-. d-. d-. c-. a-. d-. |
  }
  s1.*9 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1*3\ff | s1*9 |
  s1.\pp | s1.*4 |
  s1.*10 | % 6
  s1.*9 | s1.\omit\pp-\markup{\italic sempre \dynamic pp} |
  s1.*10 |
  s1.*10 | % 9
  s1.*10 |
  s1. | s\f | s1.*7 |
  s1.*8 | s1.\ff | s | % 12
  s1.*10 |
  s1.*2 | s1.\cresc | s1. | s\fff | s1.*3 |
  s1.*5 | % 15
}

pianoLHone = \relative {
  \global
  \ottava #-1 \repeat unfold 2 {<d,, d'>1-> <c c'>-> <bes bes'>-> \breathe |}
  <a a' a'>1-> \ottava #0 <a' a'>\breve~ | 1 \appoggiatura {a16 a'}<a, a'>\breve->\fermata \breathe |
  \vo \repeat unfold 28 {d1->2->~ | 2 1-> |} % 5b-11a
  \repeat unfold 2 {
    \repeat unfold 3 {
      r4 <a'' bes>4-. <f g>-.-> <a bes>-. <a, f' a>-.-> <a' bes>-. | % 11a+
      <d, e g>4-> <a' bes>-> <e g a>-.-> <a bes>-. <a, g'>-. <a' bes>-> |
    }
    {
      <d, g a>4-.-> <a' bes>4-. <g a>-.-> <a bes>-. <a, f' a>-.-> <a' bes>-. | % 11b+4
      <d, e g>4-> <a' bes>-> <g a>-.-> <a bes>-. <a, g'>-. <a' bes>-> |
    }
  }
                                % 12b+4
  \repeat unfold 3 {
    r4 <a bes>-. <g d' f>-.-> <g a>-. <a f'>-.-> <a bes>-. |
    <a d e>4-.-> <g a>-. <g a e'>-.-> <a bes>-. <a, d>-. <g' a>-. |
  }
  <a e'>4-.-> <a bes>-. <g d'>-. <g a>-. <a d>-.-> <a bes>-. |
  <d e>4-.-> <g, a>-. q-. <a bes>-. <a, d>-. <g' a>-. |
  \repeat unfold 2 {
    r4 <a bes>-. <g d' f>-.-> <g a>-. <a f'>-.-> <a bes>-. |
    <a d e>4-.-> <g a>-. <g a e'>-.-> <a bes>-. <a, d>-. <g' a>-. |
  }
  r4 <a bes>-. <g d' f>-.-> <g a>-. <a f'>-.-> <a bes>-. | % 14a
  <d e>4-.-> <g, a>-. <g a f'>-.-> <a bes>-. <d g>-.-> <g, a>-. |
  <a d f>4-.-> <a bes>-. <g d' e>-.-> <g a>-. <a d>-.-> <a bes>-. |
  <d e>4-.-> <g, a>-. <g a d>-.-> <a bes>-. <a cis d>-.-> <g a>-. |
  \repeat unfold 9 {d4-> a-> a-> a->} % 14b
  d,4-> a'-> a,-> a'-> d,-> a'-> | a,-> a'-> d,-> a'-> a,-> a'-> |
  <d,, d'>1.->\fermata-\markup\italic attaca |
}

pianoLHtwo = \relative {
  \global \vt
  s1*12 |
  \repeat unfold 84 {d,,4-. r a''-. r}
  \repeat unfold 2 {\repeat unfold 2 {<d,, d'>1.->~1. |} q1.~q~q~q |}
  \repeat unfold 2 {\repeat unfold 2 {<d a' d>1.->~q} q~q~q~q|}
  <d' d'>2-> <c c'>1-> | <d d'>2-> <c c'>1-> | % 14b
  \repeat unfold 6 {<d d'>2-> <c c'>->} |
  <d, d'>1-> d'2->~d d1-> | s1. |
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
