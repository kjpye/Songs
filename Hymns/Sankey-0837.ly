\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Forward be our Watchword!"
  subtitle    = "Sankey No. 837"
  subsubtitle = "Sankey 880 No. 613"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. from \smallCaps "Haydn."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dean Alford."
  meter       = \markup\smallCaps "6.5."
  piece       = \markup\smallCaps "St. Albans."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*6
  \textMark \markup { \box \bold "B" } s1*6
  \textMark \markup { \box \bold "C" } s1*6
  \textMark \markup { \box \bold "D" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 b a a | g2 d | d'4 4 e e | a,1 | c4 c b b | a2 e |
  g4 g a a | g1 | d'4 d c c | b2 e, | c'4 c e e | g,2(fis) |
  c'4 c a a | d2 b | a4 a fis4 4 | g1 | b4 b a a | g2 d |
  d'4 d e e | a,1 | c4 c b b | a2 e | g4 g a a | g1 |
}

alto = \relative {
  \autoBeamOff
  g'4 g fis4 4 | d2 d | g4 4 4 4 | fis1 | e4 d d d | e2 e |
  d4 b e fis | g1 | 4 4 4 fis | f(d) e2 | 4 4 4 4 | d1 |
  e4 e d d | 2 g | e4 e d d | 2(e) | d4 4 4 4 | d(c) g(c) |
  d4 g g g | f1 | e4 d d d | c(e) d(c) | b b c c | b1 |
}

tenor = \relative {
  \autoBeamOff
  d'4 d c c | b2 2 | 4 4 a a | d1 | g,4 a b b | c2 c |
  b4 g c c | b1 | d4 b c c | d(f) e(d) | c c c b8[a] | b2(a) |
  a4 g fis4 4 | g2 d' | c4 c a a | b2(c) | b4 g fis c' | b(c) d(c) |
  b4 b b a | d1 | g,4 a b g | e2 gis4(a) | b d, e fis | g1 |
}

bass = \relative {
  \autoBeamOff
  g4 g d d |g2 g | g,4 g c c | d1 | e4 fis g g | c,2 2 |
  d4 e c d | g1 | b4 b a a | gis2 2 | a4 4 c, c | d1 |
  a4 a d c | b2 b | c4 c d d | g1 | g,4 b d fis | g(a) b(a) |
  g4 g c, c | d1 | e4 fis g b, | c2 b4(a) | d d d d | g,1 |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  For -- ward!— be our watch -- word,
  Steps and voi -- ces joined;
  Seek the things be -- fore us,
  Not a look be -- hind:
  Burns the fie -- ry pil -- lar
  At our ar -- my's head;
  Who shall dream of shrink -- ing,
  By our Cap -- tain led?
  For -- ward thro' the des -- ert,
  Thro' the toil and fight;
  Ca -- naan lies be -- fore us,
  Zi -- on beams with light.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For -- ward! flock of Je -- sus,
  Salt of all the earth;
  Till each yearn -- ing pur -- pose
  Spring to glo -- rious birth:
  Sick, they ask for heal -- ing,
  Blind, they grope for day;
  Pour up -- on the na -- tions
  Wis -- dom's lov -- ing ray!
  For -- ward, out of er -- ror,
  Leave be -- hind the night;
  For -- ward thro' the dark -- ness,
  For -- ward in -- to light.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Glo -- ries up -- on glo -- ries
  Hath our God pre -- pared,
  By the souls that love Him
  One day to be shared:
  Eye hath not be -- held them;
  Ear hath nev -- er heard;
  Nor of those hath ut -- tered
  Thought or speech or word;
  For -- ward, ev -- er for -- ward,
  Clad in ar -- mour bright;
  Till the vail be lift -- ed,
  Till our faith be sight.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Far o'er yon ho -- ri -- zon
  Rise the ci -- ty towers,
  Where our God a -- bi -- deth;
  That fair home is ours!
  Flash the streets with jas -- perm
  Shine the gates with gold;
  Flows the glad -- dening riv -- er
  Shed -- ding joys un -- told:
  Thi -- ther, on -- ward thi -- ther,
  In the spi -- rit's might:
  Pil -- grims to your coun -- try,
  For -- ward in -- to light.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "For" "ward!— " "be " "our " watch "word, "
  "\nSteps " "and " voi "ces " "joined; "
  "\nSeek " "the " "things " be "fore " "us, "
  "\nNot " "a " "look " be "hind: "
  "\nBurns " "the " fie "ry " pil "lar "
  "\nAt " "our " ar "my's " "head; "
  "\nWho " "shall " "dream " "of " shrink "ing, "
  "\nBy " "our " Cap "tain " "led? "
  "\nFor" "ward " "thro' " "the " des "ert, "
  "\nThro' " "the " "toil " "and " "fight; "
  "\nCa" "naan " "lies " be "fore " "us, "
  "\nZi" "on " "beams " "with " "light.\n"

  \set stanza = "2."
  "\nFor" "ward! " "flock " "of " Je "sus, "
  "\nSalt " "of " "all " "the " "earth; "
  "\nTill " "each " yearn "ing " pur "pose "
  "\nSpring " "to " glo "rious " "birth: "
  "\nSick, " "they " "ask " "for " heal "ing, "
  "\nBlind, " "they " "grope " "for " "day; "
  "\nPour " up "on " "the " na "tions "
  "\nWis" "dom's " lov "ing " "ray! "
  "\nFor" "ward, " "out " "of " er "ror, "
  "\nLeave " be "hind " "the " "night; "
  "\nFor" "ward " "thro' " "the " dark "ness, "
  "\nFor" "ward " in "to " "light.\n"

  \set stanza = "3."
  "\nGlo" "ries " up "on " glo "ries "
  "\nHath " "our " "God " pre "pared, "
  "\nBy " "the " "souls " "that " "love " "Him "
  "\nOne " "day " "to " "be " "shared: "
  "\nEye " "hath " "not " be "held " "them; "
  "\nEar " "hath " nev "er " "heard; "
  "\nNor " "of " "those " "hath " ut "tered "
  "\nThought " "or " "speech " "or " "word; "
  "\nFor" "ward, " ev "er " for "ward, "
  "\nClad " "in " ar "mour " "bright; "
  "\nTill " "the " "vail " "be " lift "ed, "
  "\nTill " "our " "faith " "be " "sight.\n"

  \set stanza = "4."
  "\nFar " "o'er " "yon " ho ri "zon "
  "\nRise " "the " ci "ty " "towers, "
  "\nWhere " "our " "God " a bi "deth; "
  "\nThat " "fair " "home " "is " "ours! "
  "\nFlash " "the " "streets " "with " jas "perm "
  "\nShine " "the " "gates " "with " "gold; "
  "\nFlows " "the " glad "dening " riv "er "
  "\nShed" "ding " "joys " un "told: "
  "\nThi" "ther, " on "ward " thi "ther, "
  "\nIn " "the " spi "rit's " "might: "
  "\nPil" "grims " "to " "your " coun "try, "
  "\nFor" "ward " in "to " "light. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
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
            \addlyrics \wordsMidiMen
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
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
  \paper {
    output-suffix = single
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

\book {
  \paper {
    output-suffix = singlepage
  }
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
