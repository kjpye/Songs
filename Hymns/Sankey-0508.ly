\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "If God be for Us."
  subtitle    = "Sankey No. 508"
  subsubtitle = "Sankey 880 No. 463"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "G. M. J."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2 s2.
  \mark \markup { \box "B" } s4 s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*4
  \mark \markup { \box "E" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | b'4 8. a16 g4. 8 | a g fis e d4 4 | g4 8 8 4 \bar "|" \break fis8 g |
  a2. d,4 | b'4 8. a16 g4. 8 | a8 g fis e d4 4 |
  e8 fis g a b4 a | g2. \bar "||" r8^\markup\smallCaps Chorus. d | a'4 b c a8 d, |
  b'4 c d b8 d | 4 4 4 4 | e8. d16 c8 b c4 a | b r cis r |
  d2.~8 r | 8. 16 8 8 4 c8 b | a2 g4
}

alto = \relative {
  \autoBeamOff
  d'4 | 4 8. c16 b4. d8 | c e d c b4 d | e4 8 8 4 dis8 e |
  fis2. d4 | 4 8. 16 4. f8 | e e d c b4 4 |
  c8 8 b e d4 <\tweak font-size #-2 c d> | <\tweak font-size #-2 b d>2. r8 d | fis4 g a fis8 d |
  g4 a b g8 a | g4 fis g g | 8. 16 8 8 fis4 4 | g r e r |
  fis8. 16 8 8 g4 8 r | gis8. 16 8 8 b4 a8 g | g4(fis) g
}

tenor = \relative {
  \autoBeamOff
  d4 | g4 8. d16 4. 8 | e8 g g g g4 4 | 4 b8 8 4 8 8 |
  d2. 4 | 4 8. c16 b4. d8 | c c g g8 4 4 |
  g8 d g g g4 c | <\tweak font-size #-2 g b>2. r4 | r8 d' d d8 4 8 r |
  r8 d d d d4 8 c | b4 c d b | c8. d16 8 8 4 4 | r4 b r a |
  a8. 16 8 <a c> b4 8 r | 8. 16 8 e8 4 8 8 | 4(d8) [c] b4
}

bass = \relative {
  \autoBeamOff
  d4 | g,4 8. 16 4. b8 | c8 8 8 8 g4 b | e4 8 8 4 b8 e |
  d2. 4 | g4 8. 16 4. b,8 | c8 8 8 8 f4 4 |
  c8 a b c d4 <d \tweak font-size #-2 fis> | <g, \tweak font-size #-2 g'>2. r4 | r8 d'8 8 8 4 8 r |
  r8 g8 8 8 4 8 fis | g4 a b g | c8. b16 a8 g a4 d, | r4 g r a |
  d,8. 16 8 8 g4 8 r | e8. 16 8 8 a4 8 8 | d,2 <g, g'>4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"If" God be for us,
  if God be for us,
  If God be for us, Who can be a -- gainst us,
  Who, who, who? __
  Who can be a -- gainst us, a -- gainst "us?\""
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "\"If" God be for us, if God be for us,
  _ _ _ _ _ _ _ _ _ _ _
  Who, who, Who can be a -- gainst us!
  _ _ _ _ _ _ _ _ _
  
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Re -- jopice in the Lord! oh, let His mer -- cy cheer;
  He sun -- ders the bands that en -- thral;
  Re -- deemed by His blood, why should we ev -- er fear—
  Since Je -- sus is our "\"all" in "all\"?"
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be strong in the Lord! re -- joic -- ing in His might,
  Be loy -- al and true day by day;
  When e -- vils as -- sail, be va -- liant for the right,
  And He will be our strength, and stay.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Con -- fide in His Word— His pro -- mis -- es so sure;
  In Christ they are "\"yea," and a -- "men\";"
  Tho' earth pass a -- way, they ev -- er shall en -- dure,
  'Tis writ -- ten o'er and o'er a -- gain.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A -- bide in the Lord: se -- cure in His con -- trol,
  'Tis life ev -- er -- last -- ing be -- gun;
  To pluck from His hand the weak -- est, trem -- bling soul—
  It nev -- er, nev -- er can be done!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Re" "jopice " "in " "the " "Lord! " "oh, " "let " "His " mer "cy " "cheer; "
  "\nHe " sun "ders " "the " "bands " "that " en "thral; "
  "\nRe" "deemed " "by " "His " "blood, " "why " "should " "we " ev "er " "fear— "
  "\nSince " Je "sus " "is " "our " "\"all " "in " "all\"? "
  "\n\"If " "God " "be " "for " "us, "
  "\nif " "God " "be " "for " "us, "
  "\nIf " "God " "be " "for " "us, " "Who " "can " "be " a "gainst " "us, "
  "\nWho, " "who, " "who? " 
  "\nWho " "can " "be " a "gainst " "us, " a "gainst " "us?\"\n"

  \set stanza = "2."
  "\nBe " "strong " "in " "the " "Lord! " re joic "ing " "in " "His " "might, "
  "\nBe " loy "al " "and " "true " "day " "by " "day; "
  "\nWhen " e "vils " as "sail, " "be " va "liant " "for " "the " "right, "
  "\nAnd " "He " "will " "be " "our " "strength, " "and " "stay. "
  "\n\"If " "God " "be " "for " "us, "
  "\nif " "God " "be " "for " "us, "
  "\nIf " "God " "be " "for " "us, " "Who " "can " "be " a "gainst " "us, "
  "\nWho, " "who, " "who? " 
  "\nWho " "can " "be " a "gainst " "us, " a "gainst " "us?\"\n"

  \set stanza = "3."
  "\nCon" "fide " "in " "His " "Word— " "His " pro mis "es " "so " "sure; "
  "\nIn " "Christ " "they " "are " "\"yea, " "and " a "men\"; "
  "\nTho' " "earth " "pass " a "way, " "they " ev "er " "shall " en "dure, "
  "\n'Tis " writ "ten " "o'er " "and " "o'er " a "gain. "
  "\n\"If " "God " "be " "for " "us, "
  "\nif " "God " "be " "for " "us, "
  "\nIf " "God " "be " "for " "us, " "Who " "can " "be " a "gainst " "us, "
  "\nWho, " "who, " "who? " 
  "\nWho " "can " "be " a "gainst " "us, " a "gainst " "us?\"\n"

  \set stanza = "4."
  "\nA" "bide " "in " "the " "Lord: " se "cure " "in " "His " con "trol, "
  "\n'Tis " "life " ev er last "ing " be "gun; "
  "\nTo " "pluck " "from " "His " "hand " "the " weak "est, " trem "bling " "soul— "
  "\nIt " nev "er, " nev "er " "can " "be " "done! "
  "\n\"If " "God " "be " "for " "us, "
  "\nif " "God " "be " "for " "us, "
  "\nIf " "God " "be " "for " "us, " "Who " "can " "be " a "gainst " "us, "
  "\nWho, " "who, " "who? " 
  "\nWho " "can " "be " a "gainst " "us, " a "gainst " "us?\" "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Re" "jopice " "in " "the " "Lord! " "oh, " "let " "His " mer "cy " "cheer; "
  "\nHe " sun "ders " "the " "bands " "that " en "thral; "
  "\nRe" "deemed " "by " "His " "blood, " "why " "should " "we " ev "er " "fear— "
  "\nSince " Je "sus " "is " "our " "\"all " "in " "all\"? "
  "\n\"If " "God " "be " "for " "us, "
  "\nif " "God " "be " "for " "us, "
  "\nIf " "God " "be " "for " "us, " "Who " "can " "be " a "gainst " "us, "
  "\nWho, " "who, " "Who " "can " "be " a "gainst " "us! "
  "\nWho " "can " "be " a "gainst " "us, " a "gainst " "us?\"\n"

  \set stanza = "2."
  "\nBe " "strong " "in " "the " "Lord! " re joic "ing " "in " "His " "might, "
  "\nBe " loy "al " "and " "true " "day " "by " "day; "
  "\nWhen " e "vils " as "sail, " "be " va "liant " "for " "the " "right, "
  "\nAnd " "He " "will " "be " "our " "strength, " "and " "stay. "
  "\n\"If " "God " "be " "for " "us, "
  "\nif " "God " "be " "for " "us, "
  "\nIf " "God " "be " "for " "us, " "Who " "can " "be " a "gainst " "us, "
  "\nWho, " "who, " "Who " "can " "be " a "gainst " "us! "
  "\nWho " "can " "be " a "gainst " "us, " a "gainst " "us?\"\n"

  \set stanza = "3."
  "\nCon" "fide " "in " "His " "Word— " "His " pro mis "es " "so " "sure; "
  "\nIn " "Christ " "they " "are " "\"yea, " "and " a "men\"; "
  "\nTho' " "earth " "pass " a "way, " "they " ev "er " "shall " en "dure, "
  "\n'Tis " writ "ten " "o'er " "and " "o'er " a "gain. "
  "\n\"If " "God " "be " "for " "us, "
  "\nif " "God " "be " "for " "us, "
  "\nIf " "God " "be " "for " "us, " "Who " "can " "be " a "gainst " "us, "
  "\nWho, " "who, " "Who " "can " "be " a "gainst " "us! "
  "\nWho " "can " "be " a "gainst " "us, " a "gainst " "us?\"\n"

  \set stanza = "4."
  "\nA" "bide " "in " "the " "Lord: " se "cure " "in " "His " con "trol, "
  "\n'Tis " "life " ev er last "ing " be "gun; "
  "\nTo " "pluck " "from " "His " "hand " "the " weak "est, " trem "bling " "soul— "
  "\nIt " nev "er, " nev "er " "can " "be " "done! "
  "\n\"If " "God " "be " "for " "us, "
  "\nif " "God " "be " "for " "us, "
  "\nIf " "God " "be " "for " "us, " "Who " "can " "be " a "gainst " "us, "
  "\nWho, " "who, " "Who " "can " "be " a "gainst " "us! "
  "\nWho " "can " "be " a "gainst " "us, " a "gainst " "us?\" "
}

\book {
  \bookOutputSuffix "midi-sop"
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
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiMen
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
