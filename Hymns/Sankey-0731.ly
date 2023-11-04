\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Beyond our Sight."
  subtitle    = "Sankey No. 731"
  subsubtitle = "C. C. No. 34"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "D. W. Whittle."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*3
  \textMark \markup { \box \bold "B" } s1*3
  \textMark \markup { \box \bold "C" } s1*3
  \textMark \markup { \box \bold "D" } s1*2
  \textMark \markup { \box \bold "E" } s1*3
  \textMark \markup { \box \bold "F" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  r2 r8 e' e f | g4. 8 fis g c8. d16 | c4 b4. d,8 d e |
  f4. g8 b a g8. a16 | g2 r8 e e f | g4. 8 fis g c8. e16 |
  e4 d4. a8 b c | g4. c8 c b a8. b16 | c2 r8
  \section \sectionLabel \markup\smallCaps "Chorus."
  c8 b c |
  d2~8 e d g, | c2. 4 |
  c4. e,8 c'4 b | b a4. 8 b c | d2~8 c b c |
  e2. c4 | g2~8 a^\markup\italic "rit." b c | b2 c |
}

alto = \relative {
  \autoBeamOff
  r2 r8 c' c d | e4. 8 dis e e8. 16 |  f4 4. b,8 8 c |
  d4. e8 f f f8. 16 | e2 r8 c c d | e4. 8 dis e e8. g16 |
  fis4 4. 8 8 d | e4. 8 f f f8. 16 | e2 r8 \section e d e |
  f2~8 g f f | e2. 4 |
  e4. c8 e4 d | d c4. 8 d e | f2~8 e d e |
  g2. dis4 | e2~8 8 f f | 4(g8)[f] e2 |
}

tenor = \relative {
  \autoBeamOff
  r2 r8 g g g | c4. 8 a g8 8. 16 | 4 4. 8 8 8 |
  b4. 8 d c b8. 16 | c2 r8 g g g | c4. 8 a g g8. c16
  c4 a4. c8 b a | c4. 8 d d b8. g16 | 2 r8 \section r r4 |
  r8 b b b b r r4 | r8 g g g g4 4 |
  a4. 8 4 gis | 4 a4. r8 r4 | r8 b b b b r r4 |
  r8 c c c c4 a | c2~8 8 d c | d4(e8)[d] c2 |
}

bass = \relative {
  \autoBeamOff
  r2 r8 c c c | 4. 8 8 8 8. 16 | d4 4. g8 8 8 |
  4. 8 8 8 g,8. 16 | c2 r8 c c c | 4. 8 8 8 8. 16 |
  d4 4. 8 8 fis | g4. 8 8 8 g,8. 16 | c2 r8 \section r r4 |
  r8 g' g g g r r4 | r8 c, c c c4 4 |
  a4. 8 e'4 4 | 4 a,4. r8 r4 | r8 g' g g g r r4 |
  r8 c, c c c4 fis | g2~8 8 8 a | g4(g,) c2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Be -- yond our sight, __ be -- yond our night, __
  Be -- yond this world's saf sto -- ry:
  That ci -- ty bright, __ it stands in light, __
  The home of all the ho -- ly.
}

chorusMen = \lyricmode {
  \repeat unfold 42 _
  Be -- yond our sight, be -- yond our sight,
  _ _ _ _ _ _ _
  That ci -- ty bright, it stands in light,
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- yond our sight a ci -- ty four -- square li -- eth,
  A -- bove the clouds, the fogs and mists of earth;
  And none but souls that Je -- sus pu -- ri -- fi -- eth
  Can see its walls, or hear its ho -- ly mirth.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Se -- cure and strong, this heaven -- ly ci -- ty build -- ed
  By Christ the Lamb for all the nlood -- washed throng,
  Gleams fair and bright, with gold -- en glo -- ry gild -- ed,
  For ev -- er thrill -- ing with tri -- umph -- ant song.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There, on the thronem the Lamb once slain is seat -- ed,
  The Shep -- herd's joy up -- on His ho -- ly face;
  While count -- less hosts, their war -- fare all com -- plet -- ed,
  In circ -- ling bands, lift cease -- less songs of praise.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O sorrow -- ing souls, be -- neath earth's bur -- dens bend -- ing,
  Lift up your eyes to yon -- der ci -- ty fair;
  And through your tears let praise be still as -- cend -- ing
  For rest, and home, and loved ones wait -- ing there.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "yond " "our " "sight " "a " ci "ty " four "square " li "eth, "
  "\nA" "bove " "the " "clouds, " "the " "fogs " "and " "mists " "of " "earth; "
  "\nAnd " "none " "but " "souls " "that " Je "sus " pu ri fi "eth "
  "\nCan " "see " "its " "walls, " "or " "hear " "its " ho "ly " "mirth. "
  "\nBe" "yond " "our " "sight, "  be "yond " "our " "night, " 
  "\nBe" "yond " "this " "world's " "saf " sto "ry: "
  "\nThat " ci "ty " "bright, "  "it " "stands " "in " "light, " 
  "\nThe " "home " "of " "all " "the " ho "ly.\n"

  \set stanza = "2."
  "\nSe" "cure " "and " "strong, " "this " heaven "ly " ci "ty " build "ed "
  "\nBy " "Christ " "the " "Lamb " "for " "all " "the " nlood "washed " "throng, "
  "\nGleams " "fair " "and " "bright, " "with " gold "en " glo "ry " gild "ed, "
  "\nFor " ev "er " thrill "ing " "with " tri umph "ant " "song. "
  "\nBe" "yond " "our " "sight, "  be "yond " "our " "night, " 
  "\nBe" "yond " "this " "world's " "saf " sto "ry: "
  "\nThat " ci "ty " "bright, "  "it " "stands " "in " "light, " 
  "\nThe " "home " "of " "all " "the " ho "ly.\n"

  \set stanza = "3."
  "\nThere, " "on " "the " "thronem " "the " "Lamb " "once " "slain " "is " seat "ed, "
  "\nThe " Shep "herd's " "joy " up "on " "His " ho "ly " "face; "
  "\nWhile " count "less " "hosts, " "their " war "fare " "all " com plet "ed, "
  "\nIn " circ "ling " "bands, " "lift " cease "less " "songs " "of " "praise. "
  "\nBe" "yond " "our " "sight, "  be "yond " "our " "night, " 
  "\nBe" "yond " "this " "world's " "saf " sto "ry: "
  "\nThat " ci "ty " "bright, "  "it " "stands " "in " "light, " 
  "\nThe " "home " "of " "all " "the " ho "ly.\n"

  \set stanza = "4."
  "\nO " sorrow "ing " "souls, " be "neath " "earth's " bur "dens " bend "ing, "
  "\nLift " "up " "your " "eyes " "to " yon "der " ci "ty " "fair; "
  "\nAnd " "through " "your " "tears " "let " "praise " "be " "still " as cend "ing "
  "\nFor " "rest, " "and " "home, " "and " "loved " "ones " wait "ing " "there. "
  "\nBe" "yond " "our " "sight, "  be "yond " "our " "night, " 
  "\nBe" "yond " "this " "world's " "saf " sto "ry: "
  "\nThat " ci "ty " "bright, "  "it " "stands " "in " "light, " 
  "\nThe " "home " "of " "all " "the " ho "ly. "
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
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
            \addlyrics \wordsMidi
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
