\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thou art my Rock."
  subtitle    = "Sankey No. 525"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. C. E. Brech."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s4.*9
  \textMark \markup { \box \bold "B" }    s4.*9
  \textMark \markup { \box \bold "C" }    s4.*9 s4
  \textMark \markup { \box \bold "D" } s8 s4.*7 s4
  \textMark \markup { \box \bold "E" } s8 s4.*9
  \textMark \markup { \box \bold "F" }    s4.*11
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \global
  f'8 e f | g4. f bes8 a bes | c4. g bes8 a g | a4. g \bar "|" \break
  g8 f e | f4.~4 r8 f e f | g4. f bes8 a bes | c4. g \bar "|" \break
  bes8 a g | f4. bes a8 g a | bes4.~4 r8 \bar "||" \time 12/8 \partial 4. bes8^\markup\smallCaps Chorus. c d | c2.~4 \bar "|" \break
  bes8 a g a | bes4. f2. bes8 c d | c2.~4 \bar "|" \break
  a8 c bes g | f2.~4. 8 g f | d'2.~4 c8 bes c d \break |
  ees4. g,2. bes8 a g | f2.~4 bes8 a g a | bes2.~4.
}

alto = \relative {
  \autoBeamOff \global
  d'8 cis d | ees4. d4. 8 ees f | g4. ees g8 f ees | ees4. 4.
  ees8 d cis | d4.~4 r8 d cis d | ees4. d4. 8 ees f | g4. ees
  g8 f ees | d4. f ees8 8 8 | d4.~4 r8 d ees f | ees2. ~ 4
  d8 ees ees ees | d4. 2. 8 f bes | a2.~4
  f8 e e e | f4. c8 8 d ees4. d8 ees d | f2.~4 ees8 d ees f |
  g4. ees2. g8 f ees | d2.~4 f8 ees ees ees | d4 8 ees f ees d4.
}

tenor = \relative {
  \autoBeamOff \global
  bes8 8 8 | 4. 4. f8 8 bes | bes4. 4. 8 8 8 | f4. a
  bes8 8 g | bes4.~4 r8 8 8 8 | 4. 4. f8 8 bes | 4. 4.
  bes8 8 8 | 4. d c8 bes c | bes4.~4 r8 r4. | r a8 8 8 4
  r8 r4. | r4. bes8 8 8 4 8 r4. | r4. c8 8 8 4
  f,8 g g a | bes4. 8 8 bes c4. r | r bes8 8 8 4 r8 r4. |
  r4. bes8 8 8 4 8 r4. | r4. 8 8 8 4 d8 c bes c | bes4 f8 g a g f4.
}

bass = \relative {
  \autoBeamOff \global
  bes,8 8 8 | 4. 4. 8 c d | ees4. 4. 8 8 8 | f4. 4.
  bes,8 8 8 | 4.~4 r8 8 8 8 | 4. 4. 8 c d | ees4. 4.
  ees8 8 8 | f4. 4. 8 8 8 | bes,4.~4 r8 r4. | r4. f'8 8 8 4
  r8 r4. | r4. bes,8 8 8 4 8 r4. | r4. f'8 8 8 4
  f8 c c c | f2.~4. r | r bes8 8 8 4 r8 r4. |
  r4. ees,8 8 8 4 8 r4. | r f8 8 8 4 8 8 8 8 | bes,2.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Thou art my Rock __ O bless -- ed Re -- deem -- er: __
  Thou art my Friend __ and Thou art my Guide; __
  Thou art my Hope __ and Thou art my Sa -- viour, __
  Thou art my Trust; __ in Thee will I hide. __
}

chorusMen = \lyricmode {
  \repeat unfold 38 { _ }
  Thou art my Rock, bless -- ed Re -- deem -- er;
  Thou art my Friend, _ _ _ _ _
  Thou art my Guide; Thou art my Hope,
  Thou art my Sa -- viour,
  Thou art my Trust, _ _ _ _ _
  in Thee will I hide.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou art my Rock, O bless -- ed Re -- deem -- er;
  Thou art my Re -- fuge where I may hide;
  Thou art my Rock to shel -- ter and bless me;
  Ev -- er in Thee, I safe -- ly a -- bide.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou art my Rock when sin is in -- vi -- ting;
  Thou art my Rock when tri -- al is near;
  Thou art my Rock when sor -- row is smi -- ling,
  Thou art my rock; why then should I fear?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou art my Rock, temp -- ta -- tions de -- fy -- ing;
  Thou art my Friend un -- chang -- ing and sure;
  Whol -- ly on Thee my soul is re -- ly -- ing,
  Ev -- er to keep me faith -- ful and pure.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thou art my Rock; when King -- dom and na -- tion,
  Ru -- ler and crown, have crum -- bled to dust.
  Thou shalt re -- main my Rock of sal -- va -- tion—
  Rock ev -- er -- last -- ing, Thee will I trust.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  Thou art my Rock, O bless -- ed Re -- deem -- er;
  Thou art my Re -- fuge where I may hide;
  Thou art my Rock to shel -- ter and bless me;
  Ev -- er in Thee, I safe -- ly a -- bide.
  Thou art my Rock __ O bless -- ed Re -- deem -- er: __
  Thou art my Friend __ and Thou art my Guide; __
  Thou art my Hope __ and Thou art my Sa -- viour, __
  Thou art my Trust; __ in Thee will I hide. __

  \set stanza = "2."
  Thou art my Rock when sin is in -- vi -- ting;
  Thou art my Rock when tri -- al is near;
  Thou art my Rock when sor -- row is smi -- ling,
  Thou art my rock; why then should I fear?
  Thou art my Rock __ O bless -- ed Re -- deem -- er: __
  Thou art my Friend __ and Thou art my Guide; __
  Thou art my Hope __ and Thou art my Sa -- viour, __
  Thou art my Trust; __ in Thee will I hide. __

  \set stanza = "3."
  Thou art my Rock, temp -- ta -- tions de -- fy -- ing;
  Thou art my Friend un -- chang -- ing and sure;
  Whol -- ly on Thee my soul is re -- ly -- ing,
  Ev -- er to keep me faith -- ful and pure.
  Thou art my Rock __ O bless -- ed Re -- deem -- er: __
  Thou art my Friend __ and Thou art my Guide; __
  Thou art my Hope __ and Thou art my Sa -- viour, __
  Thou art my Trust; __ in Thee will I hide. __

  \set stanza = "4."
  Thou art my Rock; when King -- dom and na -- tion,
  Ru -- ler and crown, have crum -- bled to dust.
  Thou shalt re -- main my Rock of sal -- va -- tion—
  Rock ev -- er -- last -- ing, Thee will I trust.
  Thou art my Rock __ O bless -- ed Re -- deem -- er: __
  Thou art my Friend __ and Thou art my Guide; __
  Thou art my Hope __ and Thou art my Sa -- viour, __
  Thou art my Trust; __ in Thee will I hide. __
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  Thou art my Rock, O bless -- ed Re -- deem -- er;
  Thou art my Re -- fuge where I may hide;
  Thou art my Rock to shel -- ter and bless me;
  Ev -- er in Thee, I safe -- ly a -- bide.
  Thou art my Rock __ O bless -- ed Re -- deem -- er: __
  Thou art my Friend __ and Thou art my Guide,
  Thou art my Guide;
  Thou art my Hope and Thou art my Sa -- viour, __
  Thou art my Trust; __ in Thee will I hide,
  in Thee will I hide.

  \set stanza = "2."
  Thou art my Rock when sin is in -- vi -- ting;
  Thou art my Rock when tri -- al is near;
  Thou art my Rock when sor -- row is smi -- ling,
  Thou art my rock; why then should I fear?
  Thou art my Rock __ O bless -- ed Re -- deem -- er: __
  Thou art my Friend __ and Thou art my Guide,
  Thou art my Guide;
  Thou art my Hope and Thou art my Sa -- viour, __
  Thou art my Trust; __ in Thee will I hide,
  in Thee will I hide.

  \set stanza = "3."
  Thou art my Rock, temp -- ta -- tions de -- fy -- ing;
  Thou art my Friend un -- chang -- ing and sure;
  Whol -- ly on Thee my soul is re -- ly -- ing,
  Ev -- er to keep me faith -- ful and pure.
  Thou art my Rock __ O bless -- ed Re -- deem -- er: __
  Thou art my Friend __ and Thou art my Guide,
  Thou art my Guide;
  Thou art my Hope and Thou art my Sa -- viour, __
  Thou art my Trust; __ in Thee will I hide,
  in Thee will I hide.

  \set stanza = "4."
  Thou art my Rock; when King -- dom and na -- tion,
  Ru -- ler and crown, have crum -- bled to dust.
  Thou shalt re -- main my Rock of sal -- va -- tion—
  Rock ev -- er -- last -- ing, Thee will I trust.
  Thou art my Rock __ O bless -- ed Re -- deem -- er: __
  Thou art my Friend __ and Thou art my Guide,
  Thou art my Guide;
  Thou art my Hope and Thou art my Sa -- viour, __
  Thou art my Trust; __ in Thee will I hide,
  in Thee will I hide.
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  Thou art my Rock, O bless -- ed Re -- deem -- er;
  Thou art my Re -- fuge where I may hide;
  Thou art my Rock to shel -- ter and bless me;
  Ev -- er in Thee, I safe -- ly a -- bide.
  Thou art my Rock, bless -- ed Re -- deem -- er;
  Thou art my Friend, and Thou art my Guide,
  Thou art my Guide; Thou art my Hope,
  Thou art my Sa -- viour,
  Thou art my Trust, in Thee will I hide,
  in Thee will I hide.

  \set stanza = "2."
  Thou art my Rock when sin is in -- vi -- ting;
  Thou art my Rock when tri -- al is near;
  Thou art my Rock when sor -- row is smi -- ling,
  Thou art my rock; why then should I fear?
  Thou art my Rock, bless -- ed Re -- deem -- er;
  Thou art my Friend, and Thou art my Guide,
  Thou art my Guide; Thou art my Hope,
  Thou art my Sa -- viour,
  Thou art my Trust, in Thee will I hide,
  in Thee will I hide.

  \set stanza = "3."
  Thou art my Rock, temp -- ta -- tions de -- fy -- ing;
  Thou art my Friend un -- chang -- ing and sure;
  Whol -- ly on Thee my soul is re -- ly -- ing,
  Ev -- er to keep me faith -- ful and pure.
  Thou art my Rock, bless -- ed Re -- deem -- er;
  Thou art my Friend, and Thou art my Guide,
  Thou art my Guide; Thou art my Hope,
  Thou art my Sa -- viour,
  Thou art my Trust, in Thee will I hide,
  in Thee will I hide.

  \set stanza = "4."
  Thou art my Rock; when King -- dom and na -- tion,
  Ru -- ler and crown, have crum -- bled to dust.
  Thou shalt re -- main my Rock of sal -- va -- tion—
  Rock ev -- er -- last -- ing, Thee will I trust.
  Thou art my Rock, bless -- ed Re -- deem -- er;
  Thou art my Friend, and Thou art my Guide,
  Thou art my Guide; Thou art my Hope,
  Thou art my Sa -- viour,
  Thou art my Trust, in Thee will I hide,
  in Thee will I hide.
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  Thou art my Rock, O bless -- ed Re -- deem -- er;
  Thou art my Re -- fuge where I may hide;
  Thou art my Rock to shel -- ter and bless me;
  Ev -- er in Thee, I safe -- ly a -- bide.
  Thou art my Rock, bless -- ed Re -- deem -- er;
  Thou art my Friend, and Thou art my Guide,
  Thou art my Hope, Thou art my Sa -- viour,
  Thou art my Trust, in Thee will I hide.

  \set stanza = "2."
  Thou art my Rock when sin is in -- vi -- ting;
  Thou art my Rock when tri -- al is near;
  Thou art my Rock when sor -- row is smi -- ling,
  Thou art my rock; why then should I fear?
  Thou art my Rock, bless -- ed Re -- deem -- er;
  Thou art my Friend, and Thou art my Guide,
  Thou art my Hope, Thou art my Sa -- viour,
  Thou art my Trust, in Thee will I hide.

  \set stanza = "3."
  Thou art my Rock, temp -- ta -- tions de -- fy -- ing;
  Thou art my Friend un -- chang -- ing and sure;
  Whol -- ly on Thee my soul is re -- ly -- ing,
  Ev -- er to keep me faith -- ful and pure.
  Thou art my Rock, bless -- ed Re -- deem -- er;
  Thou art my Friend, and Thou art my Guide,
  Thou art my Hope, Thou art my Sa -- viour,
  Thou art my Trust, in Thee will I hide.

  \set stanza = "4."
  Thou art my Rock; when King -- dom and na -- tion,
  Ru -- ler and crown, have crum -- bled to dust.
  Thou shalt re -- main my Rock of sal -- va -- tion—
  Rock ev -- er -- last -- ing, Thee will I trust.
  Thou art my Rock, bless -- ed Re -- deem -- er;
  Thou art my Friend, and Thou art my Guide,
  Thou art my Hope, Thou art my Sa -- viour,
  Thou art my Trust, in Thee will I hide.
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
            \addlyrics \wordsMidiTenor
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
