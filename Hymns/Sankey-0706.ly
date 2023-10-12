\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Onward, Christian Soldiers!"
  subtitle    = "Sankey No. 706"
  subsubtitle = "Sankey 880 No. 611"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Sir Arthur Sullivan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Baring-Gould."
  meter       = \markup\smallCaps "11s."
  piece       = \markup\smallCaps "St. Gertrude."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*5
  \textMark \markup { \box \bold "D" } s1*4
  \textMark \markup { \box \bold "E" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 4 4 4 | c4.(d8) c2 | g4 g f g | a1 | f4 a c f |
  f2 e | d4 d a b | c1 | g4 g c g | a4.(b8) a2 |
  c4 c f c | d1 | 4 c bes c | d(c) bes(c) d c bes a |
  g1 | \section \sectionLabel \markup\smallCaps "Refrain."
  f4 f f f | f(e8 d) e4(f) g g g f8[g] |
  a1 | c4 c f e | f2 c | bes4 a g4. f8 | 1 |
}

alto = \relative {
  \autoBeamOff
  a'4 4 4 4 | bes2 2 | e,4 e d e | f1 | 4 4 4 4 |
  g2 2 | f4 f f f | e1 | 4 4 g e | f4.(g8) f2 |
  f4 f f f | 1 | 4 4 4 4 | 2 2 | 4 4 g f |
  e1 \section | c4 c c c | 2 2 | 4 4 4 4 |
  c1 | a'4 a bes4 4 | a2 f | 4 4 e4. f8 | 1 |
}

tenor = \relative {
  \autoBeamOff
  f4 a c f | 2 e | c4 c c c | 1 | 4 4 4 4 |
  c4.(d8) c2 | b4 b c d | c1 | 4 4 4 4 | 2 2 |
  a4 a c a | bes1 | 4 a bes a | bes(a) bes(a) | bes a g g |
  c1 \section | a4 4 4 4 | bes2 2 | 4 4 4 4 |
  a1 | f'4 f c c | 2 2 | d4. c8 bes4. a8 | 1 |
}

bass = \relative {
  \autoBeamOff
  f4 4 4 4 | g2 c, | bes'4 4 a g | f1 | a4 4 4 4 |
  g2 2 | 4 4 4 4 | c,1 | 4 4 e c | f2 2 |
  f4 f a f | bes1 | 4 f d f | bes(f) d(f) | bes,4 4 4 4 |
  c1 \section | f4 c f c | g'(c,) g'(c,) e c e c |
  f1 | 4 4 g g | a2 a, | bes4 4 c4. 8 | f,1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  On -- ward, Chris -- tian sol -- diers!
  march -- ing as to war,
  Look -- ing un -- to Je -- sus,
  who is gone be -- fore.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  On -- ward Chris -- tian sol -- diers! march -- ing as to war,
  Look -- ing un -- to Je -- sus, who is gone be -- fore.
  Christ, the Roy --al Mas -- ter, leads a -- gainst the foe;
  For -- ward in -- to bat -- tle see His ban -- ners go.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  At the name of Je -- sus Sa -- tan's host doth flee;
  On then, Chris -- tian sol -- diers, on to vic -- to -- ry!
  Hell's foun -- da -- tions qui -- ver at the shour of praise:
  Bro -- thers, lift your voi -- ces, loud your an -- thems raise!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Like a migh -- ty ar -- my moves the church of God:
  Bro -- thers, we are tread -- ing where the saints have trod;
  We are not di -- vi -- ded, all one bo -- dy we—
  One in hope and doc -- trine, one in cha -- ri -- ty.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Crowns and thrones may per -- ish, king -- doms rise and wane;
  But the church of Je -- sus con -- stant will re -- main:
  Gates of hell can nev -- er 'gainst that church pre -- vail;
  We have Christ's own prom -- ise— and that can -- not fail.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  On -- ward then, ye peo -- ple, join our hap -- py throng;
  Blend with ours your voi -- ces in the tri -- umph song:
  Glo -- ry, praise, and hon -- our, un -- to Christ the King,
  This thro' count -- less a -- ges men and an -- gels sing.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On" "ward " Chris "tian " sol "diers! " march "ing " "as " "to " "war, "
  "\nLook" "ing " un "to " Je "sus, " "who " "is " "gone " be "fore. "
  "\nChrist, " "the " Roy"al " Mas "ter, " "leads " a "gainst " "the " "foe; "
  "\nFor" "ward " in "to " bat "tle " "see " "His " ban "ners " "go. "
  "\nOn" "ward, " Chris "tian " sol "diers! "
  "\nmarch" "ing " "as " "to " "war, "
  "\nLook" "ing " un "to " Je "sus, "
  "\nwho " "is " "gone " be "fore.\n"

  \set stanza = "2."
  "\nAt " "the " "name " "of " Je "sus " Sa "tan's " "host " "doth " "flee; "
  "\nOn " "then, " Chris "tian " sol "diers, " "on " "to " vic to "ry! "
  "\nHell's " foun da "tions " qui "ver " "at " "the " "shour " "of " "praise: "
  "\nBro" "thers, " "lift " "your " voi "ces, " "loud " "your " an "thems " "raise! "
  "\nOn" "ward, " Chris "tian " sol "diers! "
  "\nmarch" "ing " "as " "to " "war, "
  "\nLook" "ing " un "to " Je "sus, "
  "\nwho " "is " "gone " be "fore.\n"

  \set stanza = "3."
  "\nLike " "a " migh "ty " ar "my " "moves " "the " "church " "of " "God: "
  "\nBro" "thers, " "we " "are " tread "ing " "where " "the " "saints " "have " "trod; "
  "\nWe " "are " "not " di vi "ded, " "all " "one " bo "dy " "we— "
  "\nOne " "in " "hope " "and " doc "trine, " "one " "in " cha ri "ty. "
  "\nOn" "ward, " Chris "tian " sol "diers! "
  "\nmarch" "ing " "as " "to " "war, "
  "\nLook" "ing " un "to " Je "sus, "
  "\nwho " "is " "gone " be "fore.\n"

  \set stanza = "4."
  "\nCrowns " "and " "thrones " "may " per "ish, " king "doms " "rise " "and " "wane; "
  "\nBut " "the " "church " "of " Je "sus " con "stant " "will " re "main: "
  "\nGates " "of " "hell " "can " nev "er " "'gainst " "that " "church " pre "vail; "
  "\nWe " "have " "Christ's " "own " prom "ise— " "and " "that " can "not " "fail. "
  "\nOn" "ward, " Chris "tian " sol "diers! "
  "\nmarch" "ing " "as " "to " "war, "
  "\nLook" "ing " un "to " Je "sus, "
  "\nwho " "is " "gone " be "fore.\n"

  \set stanza = "5."
  "\nOn" "ward " "then, " "ye " peo "ple, " "join " "our " hap "py " "throng; "
  "\nBlend " "with " "ours " "your " voi "ces " "in " "the " tri "umph " "song: "
  "\nGlo" "ry, " "praise, " "and " hon "our, " un "to " "Christ " "the " "King, "
  "\nThis " "thro' " count "less " a "ges " "men " "and " an "gels " "sing. "
  "\nOn" "ward, " Chris "tian " sol "diers! "
  "\nmarch" "ing " "as " "to " "war, "
  "\nLook" "ing " un "to " Je "sus, "
  "\nwho " "is " "gone " be "fore. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
