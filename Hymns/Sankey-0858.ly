\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Complete in Him."
  subtitle    = "Sankey No. 858"
  subsubtitle = "Sankey 880 No. 629"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. R. Murray."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. C. Green."
  meter       = \markup\smallCaps "7.6. d."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*5
  \textMark \markup { \box \bold "B" }    s1*5 s2
  \textMark \markup { \box \bold "C" } s2 s1*4 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2
  \textMark \markup { \box \bold "E" } s2 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  g'4 | c4. g8 e4 g | a2 g4 c | d4. b8 g4 f | e2. g4 | c4. g8 e4 g |
  a2 g4 a | b4. c8 b4 a | g2. b4 | d4. b8 a4 g | 2 e4 g | a4. 8 \bar "|" \break
  b4 c | b2. g4 | c4. 8 4 4 | 2 4 d | e c d4. c8 | c2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  g4 | a \apart r r \auto f'4 | e \apart r r \auto c | d4 8 8 e d c b | c4 d \bar "|" \break
  e4 g, | a \apart r r \auto f' | e \apart r r \auto c | d4. 8 e4 d | c2.
}

alto = \relative {
  g'4 | e4. 8 c4 e | f2 e4 4 | f4. 8 d4 4 | c2. e4 | 4. 8 c4 e |
  f2 e4 4 | d4. 8 4 c | b2. d4 | f4. 8 4 4 | e2 c4 e | 4. 8
  fis4 4 | g2. f4 | e4. 8 f4 g | a2 4 4 | g e f4. e8 | 2. \section
  e4 | f f f a | g e e e | g4 8 8 8 8 8 8 | e4 f
  g4 e | f f f a | g e e e | f4. 8 g4 f | e4 4 4
}

tenor = \relative {
  g4 | 4. c8 g4 c | c2 4 4 | b4. d8 b4 g | 2. c4 | g4. c8 g4 c |
  c2 4 a | g4. a8 g4 fis | g2. 4 | 4. 8 4 4 | 2 4 c | 4. 8
  a4 d | 2. 4 | c4. 8 4 4 | 2 4 4 | 4 g b4. g8 | 2. \section
  c4 | c a a c | c g g c | b4 8 8 8 8 c d | c4 4
  c4 4 | c a a c | c g g c | b4. 8 c4 b | c g g
}

bass = \relative {
  g4 | c,4. 8 4 4 | f2 c4 4 | g'4. 8 g,4 4 | c2. 4 | 4. 8 4 4 |
  f2 c4 4 | d4. 8 4 4 | g,2. g'4 | 4. 8 4 4 | c,2 4 4 | a4. 8
  d4 4 | g2. 4 | c,4. 8 d4 e | f2 fis4 4 | g4 4 4. 8 | c,2. \section
  c4 | f f f f | c c c c | g'4 8 8 8 8 8 8 | c4 4
  c4 c, | f f f f | c c c c | g'4. 8 4 4 | c,4 4 4
}

chorus = \lyricmode {
  In Him! In Him!
  There‘s ful -- ness of bless -- ing in His ser -- vice sweet;
  In Him! In Him!
  I am in Him com -- plete!
}

chorusMen = \lyricmode {
  \repeat unfold 54 \skip 1
  in Him! _ _ in Him!
  \repeat unfold 13 \skip 1
  in Him! _ _ in Him!
  _ _ _ _ _ _ com -- plete!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In Christ is love a -- bound -- ing,
  In Him re -- deem -- ing grace;
  In Him my dai -- ly man -- na,
  In Him my hi -- ding place.
  In Him there is a -- tone -- ment,
  In Him e -- ter -- nal life;
  In Him a full sal -- va -- tion,
  In Him an end of strife.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In Him I now am rest -- ing;
  The half I can -- not tell
  of all the price -- less bles -- sings
  Which make my heart to swell
  With thank -- ful ad -- o -- ra -- tion,
  As day by day I find
  His peace and grace suf -- fi -- cient
  To keep both heart and mind.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  But when I see Thee, Je -- sus,
  When face to face we meet—
  Then in Thine own dear im - -age
  It will be far more sweet:
  Oh, then I‘ll sing my prais -- es
  For all I’ve found in Thee;
  And give to Him the glo -- ry
  Who has re -- deemed me.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "Christ " "is " "love " a bound "ing, "
  "\nIn " "Him " re deem "ing " "grace; "
  "\nIn " "Him " "my " dai "ly " man "na, "
  "\nIn " "Him " "my " hi "ding " "place. "
  "\nIn " "Him " "there " "is " a tone "ment, "
  "\nIn " "Him " e ter "nal " "life; "
  "\nIn " "Him " "a " "full " sal va "tion, "
  "\nIn " "Him " "an " "end " "of " "strife. "
  "\nIn " "Him! " "In " "Him! "
  "\nThere‘s " ful "ness " "of " bless "ing " "in " "His " ser "vice " "sweet; "
  "\nIn " "Him! " "In " "Him! "
  "\nI " "am " "in " "Him " com "plete!\n"

  \set stanza = "2."
  "\nIn " "Him " "I " "now " "am " rest "ing; "
  "\nThe " "half " "I " can "not " "tell "
  "\nof " "all " "the " price "less " bles "sings "
  "\nWhich " "make " "my " "heart " "to " "swell "
  "\nWith " thank "ful " ad o ra "tion, "
  "\nAs " "day " "by " "day " "I " "find "
  "\nHis " "peace " "and " "grace " suf fi "cient "
  "\nTo " "keep " "both " "heart " "and " "mind. "
  "\nIn " "Him! " "In " "Him! "
  "\nThere‘s " ful "ness " "of " bless "ing " "in " "His " ser "vice " "sweet; "
  "\nIn " "Him! " "In " "Him! "
  "\nI " "am " "in " "Him " com "plete!\n"

  \set stanza = "3."
  "\nBut " "when " "I " "see " "Thee, " Je "sus, "
  "\nWhen " "face " "to " "face " "we " "meet— "
  "\nThen " "in " "Thine " "own " "dear " "im "  "-age "
  "\nIt " "will " "be " "far " "more " "sweet: "
  "\nOh, " "then " "I‘ll " "sing " "my " prais "es "
  "\nFor " "all " "I’ve " "found " "in " "Thee; "
  "\nAnd " "give " "to " "Him " "the " glo "ry "
  "\nWho " "has " re "deemed " "me. "
  "\nIn " "Him! " "In " "Him! "
  "\nThere‘s " ful "ness " "of " bless "ing " "in " "His " ser "vice " "sweet; "
  "\nIn " "Him! " "In " "Him! "
  "\nI " "am " "in " "Him " com "plete! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "In " "Christ " "is " "love " a bound "ing, "
  "\nIn " "Him " re deem "ing " "grace; "
  "\nIn " "Him " "my " dai "ly " man "na, "
  "\nIn " "Him " "my " hi "ding " "place. "
  "\nIn " "Him " "there " "is " a tone "ment, "
  "\nIn " "Him " e ter "nal " "life; "
  "\nIn " "Him " "a " "full " sal va "tion, "
  "\nIn " "Him " "an " "end " "of " "strife. "
  "\nIn " "Him! " "in " "Him! " "In " "Him! " "in " "Him! "
  "\nThere‘s " ful "ness " "of " bless "ing " "in " "His " ser "vice " "sweet; "
  "\nIn " "Him! " "in " "Him! " "In " "Him! " "in " "Him! "
  "\nI " "am " "in " "Him " com "plete, " com "plete!\n"

  \set stanza = "2."
  "\nIn " "Him " "I " "now " "am " rest "ing; "
  "\nThe " "half " "I " can "not " "tell "
  "\nof " "all " "the " price "less " bles "sings "
  "\nWhich " "make " "my " "heart " "to " "swell "
  "\nWith " thank "ful " ad o ra "tion, "
  "\nAs " "day " "by " "day " "I " "find "
  "\nHis " "peace " "and " "grace " suf fi "cient "
  "\nTo " "keep " "both " "heart " "and " "mind. "
  "\nIn " "Him! " "in " "Him! " "In " "Him! " "in " "Him! "
  "\nThere‘s " ful "ness " "of " bless "ing " "in " "His " ser "vice " "sweet; "
  "\nIn " "Him! " "in " "Him! " "In " "Him! " "in " "Him! "
  "\nI " "am " "in " "Him " com "plete, " com "plete!\n"

  \set stanza = "3."
  "\nBut " "when " "I " "see " "Thee, " Je "sus, "
  "\nWhen " "face " "to " "face " "we " "meet— "
  "\nThen " "in " "Thine " "own " "dear " "im "  "-age "
  "\nIt " "will " "be " "far " "more " "sweet: "
  "\nOh, " "then " "I‘ll " "sing " "my " prais "es "
  "\nFor " "all " "I’ve " "found " "in " "Thee; "
  "\nAnd " "give " "to " "Him " "the " glo "ry "
  "\nWho " "has " re "deemed " "me. "
  "\nIn " "Him! " "in " "Him! " "In " "Him! " "in " "Him! "
  "\nThere‘s " ful "ness " "of " bless "ing " "in " "His " ser "vice " "sweet; "
  "\nIn " "Him! " "in " "Him! " "In " "Him! " "in " "Him! "
  "\nI " "am " "in " "Him " com "plete, " com "plete! "
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 18)

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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
