\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thou Art Coming!"
  subtitle    = "Sankey No. 282"
  subsubtitle = "Sankey 880 No. 342"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. havergal."
  meter       = \markup\smallCaps "8.7. D."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1 s2.
  \mark \markup { \box "B" } s4 s1 s2.
  \mark \markup { \box "C" } s4 s1 s2.
  \mark \markup { \box "D" } s4 s1 s2.
  \mark \markup { \box "E" } s4 s1 s2.
  \mark \markup { \box "F" } s4 s1 s2.
  \mark \markup { \box "C" } s4 s1 s2.
  \mark \markup { \box "D" } s4 s1 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8 e % A
  g16 8. 8. a16 g e8. d8 c
  c'16 8. 8. d16 c4 \bar "|" \break c8 bes
  \tag #'dash    { a8 8 8. gis16 \slurDashed a(c8.) \slurSolid 8. a16 } % B
  \tag #'(v1 v2) { a8 8 8. gis16             a c8.             8. a16 } % B
  \tag #'v3      { a8 8 8. gis16             a(c8.)            8. a16 } % B
  g8 c g8. e16 d4  \bar "|" \break

  c8 e
  g16 8. 8. a16 g e8. d8 c % C
  c'8. 16 8 d e4\fermata \bar "|" \break d8 c
  a8. c16 8. a16 g e8. g8 g % D
  a8. c16 8 d c4\fermata \bar "||" \break

  g8^\markup\smallCaps Chorus. 8
  c16 8. 8 d e16 c8. 8 bes % E
  a16 c8. 8. a16 g4 \bar "|" \break 8 8
  c16 8. 8 d e16 c8. 8 bes
  a16 c8. 8. a16 g4 \bar "|" \break
  
  c,8 e
  g16 8. 8. a16 g e8. d8 c % C
  c'8. 16 8 d e4\fermata \bar "|" \break d8 c
  a8. c16 8. a16 g e8. g8 g % D
  a8. c16 8 d c4\fermata
}

alto = \relative {
  \autoBeamOff
  c'8 8 % A
  e16 8. 8. f16 e c8. 8 8
  e16 8. 8. f16 e4 e8 g
  \tag #'dash    { f8 8 8. 16 \slurDashed 16(8.) \slurSolid 8. 16 } % B
  \tag #'(v1 v2) { f8 8 8. 16             16 8.             8. 16 } % B
  \tag #'v3      { f8 8 8. 16             16(8.)            8. 16 } % B
  e8 8 8. c16 b4

  c8 8
  e16 8. 8. f16 e c8. 8 8 % C
  e8. 16 g8 8 4\fermata f8 e
  f8. 16 8. 16 e c8. e8 8 % D
  f8. 16 e8 f e4\fermata

  e8 8
  e16 8. 8 f g16 e8. 8 g % E
  f16 8. 8. 16 e4 8 8
  e16 8. 8 f g16 e8. 8 g
  f16 8. 8. 16 e4
  
  c8 8
  e16 8. 8. f16 e c8. 8 8 % C
  e8. 16 g8 8 4\fermata f8 e
  f8. 16 8. 16 e c8. e8 8 % D
  f8. 16 e8 f e4\fermata
}

tenor = \relative {
  \autoBeamOff
  e8 g % A
  c16 8. 8. 16 16 g8. 8 e
  g16 8. 8. 16 4 8 8
  \tag #'dash    {c8 8 8. 16 \slurDashed 16(a8.) \slurSolid 8. c16 } % B
  \tag #'(v1 v2) {c8 8 8. 16             16 a8.             8. c16 } % B
  \tag #'v3      {c8 8 8. 16             16(a8.)            8. c16 } % B
  c8 g8 8. 16 4

  e8 g
  c16 8. 8. 16 16 g8. 8 e % C
  g8. 16 c8 b c4\fermata b8 c
  c8. a16 8. c16 16 g8. c8 8 % D
  c8. a16 g8 8 4\fermata

  c8 8
  g16 8. 8 8 16 8. 8 8 % E
  c16 a8. 8. c16 4 8 8
  g16 8. 8 8 16 8. 8 8 % F
  c16 a8. 8. c16 4

  e,8 g
  c16 8. 8. 16 16 g8. 8 e % C
  g8. 16 c8 b c4\fermata b8 c
  c8. a16 8. c16 16 g8. c8 8 % D
  c8. a16 g8 8 4\fermata
}

bass = \relative {
  \autoBeamOff
  c8 8 % A
  c16 8. 8. 16 16 8. 8 8
  c16 8. 8. 16 4 c8 e
  \tag #'dash    { f8 8 8. 16 \slurDashed 16(8.) \slurSolid 8. 16 } % B
  \tag #'(v1 v2) { f8 8 8. 16             16 8.             8. 16 } % B
  \tag #'v3      { f8 8 8. 16             4                 8. 16 } % B
  c8 8 8. 16 g4

  c8 8
  c16 8. 8. 16 16 8. 8 8 % C
  c8. 16 e8 g c4\fermata g8 a
  f8. 16 8. 16 c16 8. 8 8 % D
  f8. 16 g8 8 c,4\fermata

  c8 8
  c16 8. 8 8 16 8. 8 e % E
  f16 8. 8. 16 c4 8 8
  c16 8. 8 8 16 8. 8 e % F
  f16 8. 8. 16 c4
  
  c8 8
  c16 8. 8. 16 16 8. 8 8 % C
  c8. 16 e8 g c4\fermata g8 a
  f8. 16 8. 16 c16 8. 8 8 % D
  f8. 16 g8 8 c,4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Thou art com -- ing! Thou art com -- ing!
  We shall meet Thee on Thy way!
  Thou art com -- ing! we shall see Thee,
  And be like Thee on that day:
  Thou art com -- ing! Thou art com -- ing!
  Je -- sus, our be -- lov -- ed Lord!
  Oh, the joy to see Thee reign -- ing,
  Wor -- shipped, glo -- ri -- fied, a -- dored!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou art com -- ing, O my Sa -- viour!
  Thou art com -- ing, O my King!
  Ev -- 'ry tongue Thy name \nom con -- fess -- ing; \yesm
  Well may we re -- joice and sing!
  Thou art com -- ing! Rays or glo -- ry
  Through the vail Thy death has rent,
  Glad -- den now our pil -- grim path -- way,
  Glo -- ry from Thy pres -- ence sent.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou art com -- ing! Not a sha -- dow,
  Not a mist, and not a tear.
  Not a sin and not a \nom sor -- row. \yesm
  On that sun -- rise grand and clear:
  Thou art com -- ing! Je -- sus, Sa -- viour,
  No -- thing else seems worth a thought;
  Oh, how mar -- vel -- lous the glo -- ry
  And the bliss Thy pain hath bought!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou art com -- ing! We are wait -- ing
  With a "\"hope\"" that can -- not fail.
  Ask -- ing not the day or hour,
  An -- chored safe with -- in the vail.
  Thou art com -- ing! At Thy tab -- le
  We are wit -- ness -- es for this,
  As we meet Thee in com -- mu -- nion,
  Earn -- est of our com -- ing bliss.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "art " com "ing, " "O " "my " Sa "viour! "
  "\nThou " "art " com "ing, " "O " "my " "King! "
  "\nEv" "'ry " "tongue " "Thy " "name " con fess "ing; "
  "\nWell " "may " "we " re "joice " "and " "sing! "
  "\nThou " "art " com "ing! " "Rays " "or " glo "ry "
  "\nThrough " "the " "vail " "Thy " "death " "has " "rent, "
  "\nGlad" "den " "now " "our " pil "grim " path "way, "
  "\nGlo" "ry " "from " "Thy " pres "ence " "sent. "
  "\nThou " "art " com "ing! " "Thou " "art " com "ing! "
  "\nWe " "shall " "meet " "Thee " "on " "Thy " "way! "
  "\nThou " "art " com "ing! " "we " "shall " "see " "Thee, "
  "\nAnd " "be " "like " "Thee " "on " "that " "day: "
  "\nThou " "art " com "ing! " "Thou " "art " com "ing! "
  "\nJe" "sus, " "our " be lov "ed " "Lord! "
  "\nOh, " "the " "joy " "to " "see " "Thee " reign "ing, "
  "\nWor" "shipped, " glo ri "fied, " a "dored! "

  \set stanza = "2."
  "\nThou " "art " com "ing! " "Not " "a " sha "dow, "
  "\nNot " "a " "mist, " "and " "not " "a " "tear. "
  "\nNot " "a " "sin " "and " "not " "a " sor "row. "
  "\nOn " "that " sun "rise " "grand " "and " "clear: "
  "\nThou " "art " com "ing! " Je "sus, " Sa "viour, "
  "\nNo" "thing " "else " "seems " "worth " "a " "thought; "
  "\nOh, " "how " mar vel "lous " "the " glo "ry "
  "\nAnd " "the " "bliss " "Thy " "pain " "hath " "bought! "
  "\nThou " "art " com "ing! " "Thou " "art " com "ing! "
  "\nWe " "shall " "meet " "Thee " "on " "Thy " "way! "
  "\nThou " "art " com "ing! " "we " "shall " "see " "Thee, "
  "\nAnd " "be " "like " "Thee " "on " "that " "day: "
  "\nThou " "art " com "ing! " "Thou " "art " com "ing! "
  "\nJe" "sus, " "our " be lov "ed " "Lord! "
  "\nOh, " "the " "joy " "to " "see " "Thee " reign "ing, "
  "\nWor" "shipped, " glo ri "fied, " a "dored! "

  \set stanza = "3."
  "\nThou " "art " com "ing! " "We " "are " wait "ing "
  "\nWith " "a " "\"hope\" " "that " can "not " "fail. "
  "\nAsk" "ing " "not " "the " "day " "or " "hour, "
  "\nAn" "chored " "safe " with "in " "the " "vail. "
  "\nThou " "art " com "ing! " "At " "Thy " tab "le "
  "\nWe " "are " wit ness "es " "for " "this, "
  "\nAs " "we " "meet " "Thee " "in " com mu "nion, "
  "\nEarn" "est " "of " "our " com "ing " "bliss. "
  "\nThou " "art " com "ing! " "Thou " "art " com "ing! "
  "\nWe " "shall " "meet " "Thee " "on " "Thy " "way! "
  "\nThou " "art " com "ing! " "we " "shall " "see " "Thee, "
  "\nAnd " "be " "like " "Thee " "on " "that " "day: "
  "\nThou " "art " com "ing! " "Thou " "art " com "ing! "
  "\nJe" "sus, " "our " be lov "ed " "Lord! "
  "\nOh, " "the " "joy " "to " "see " "Thee " reign "ing, "
  "\nWor" "shipped, " glo ri "fied, " a "dored! "
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \keepWithTag #'v1 \soprano
                                         \keepWithTag #'v2 \soprano
                                         \keepWithTag $'v3 \soprano
                                        }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                            }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \keepWithTag #'v1 \soprano
                                         \keepWithTag #'v2 \soprano
                                         \keepWithTag $'v3 \soprano
                                        }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                            }
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
