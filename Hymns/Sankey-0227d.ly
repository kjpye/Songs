\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Lover of my Soul."
  subtitle    = "Sankey No. 227 (Fourth tune)"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Joseph Parry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "Aberystwyth"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key g \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*8
  \mark \markup { \box "B" } s1*8
  \mark \markup { \box "C" } s1*8
  \mark \markup { \box "D" } s1*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'2\omit\mf e4^\cresc (fis)
  g4(a) b2
  g2 fis^\dim
  e1
  g2 fis
  e2 dis
  e4(fis) g2
  fis1
  e2 4^\cresc (fis) % B
  g4(a) b2
  g2 fis^\dim
  e1
  fis2 g4(a)
  b2 a
  g2 fis
  e1
  e2^\f d % C
  e2 fis
  g2 b4(a)
  g1
  g2^\cresc fis
  g2 a
  b2 d4(cis)
  b1
  e2^\ff e % D
  d2 b
  g2 a
  b1
  e,2 4(fis)
  g4(a) b2
  g2 fis
  e1
}

alto = \relative {
  \autoBeamOff
  b2\omit\mf e4^\omit\cresc (dis)
  e4(fis) g2
  e2 dis^\omit\dim
  b1
  e2 dis
  e2 b
  b2 e
  dis1 \break
  b2 4^\omit\cresc (dis) % B
  e4(fis) g2
  e2 dis^\omit\dim
  b1
  dis2 e4(f)
  g2 fis
  e2 dis
  b1 \break
  c2^\omit\f b % C
  c2 2
  d2 fis
  d1
  e2 dis
  e2 fis4(d)
  d2 fis4(e)
  d1 \break
  c2^\omit\ff 4(fis) % D
  g2 d
  e2 2
  fis1
  e2 4(dis)
  e4(fis) g2
  e2 dis
  b1
}

tenor = \relative {
  \autoBeamOff
  g2\omit\mf a\omit\cresc
  b2 2
  b2 4\omit\dim (a)
  g1
  b2 2
  b2 2
  b2 2
  b1
  g4(a) b2\omit\cresc % B
  b2 2
  b2 fis4(a)
  g1
  b2 4(d)
  d2 c
  b2 4(a)
  g1
  g2\omit\ff 2 % C
  g2 a
  b2 d4(c)
  b1
  b2\omit\cresc 2
  b2 d4(f,)
  g4(b2) ais4
  b1
  c2\omit\ff 2 % D
  d2 g,
  b2 e
  dis1
  b4(c) b(a)
  b2 2
  b2 fis8([g]b4)
  g1
}

bass = \relative {
  \autoBeamOff
  e2\omit\mf b\omit\cresc
  e2 g,4(a)
  bes2 2\omit\dim
  e1
  e2 fis
  g2 a
  g4(fis) e2
  b1
  e4(fis) g(fis) % B
  e2 g,4(a)
  b2 2
  e1
  b2 e4(d)
  g2 a
  b2 b,
  e1
  c2\omit\f g % C
  c4(b) a2
  g2 d'
  g,1
  e'2\omit\cresc b
  e2 d
  g2 fis
  b,1
  c2\omit\ff c' % D
  b2 g
  e2 c
  b1
  g'4(a) g(fis)
  e2 g,4(a)
  b2 2
  e1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Lov -- er of my soul,
  Let me to Thy bo -- som fly,
  While the near -- er wa -- ters roll,
  While the tem -- pest still is high:
  Hide me, O my Sa -- viour, hide,
  Till the storm of life is past;
  Safe in -- to the ha -- ven guide,
  Oh, re -- ceive my soul at last!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oth -- er re -- fuge have I none,
  Hangs my help -- less soul on Thee;
  leave, oh, leave me not a -- lone,
  Still sup -- port and com -- fort me:
  All my trust on Thee is stayed,
  All my help from Thee I bring;
  Cov -- er my de -- fence -- less head
  With the sha -- dow of Thy wing.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou, O Christ, art all I want;
  More than all in Thee I find:
  Raise the fal -- len, cheer the faint,
  Heal the sick, and lead the blind:
  Just and ho -- ly is Thy name,
  I am all un -- righ -- teous -- ness;
  Vile and full of sin I am,
  Thou art full of truth and grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Plen -- teous grace with Thee is found—
  Grace to co -- ver all my sin:
  Let the heal -- ing streams a -- bound;
  Make me, keep me, pure with -- in:
  Thou of life the Foun -- tain art,
  Free -- ly let me take of Thee;
  Spring Thou up with -- in my heart,
  Rise to all e -- ter -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " Lov "er " "of " "my " "soul, "
  "\nLet " "me " "to " "Thy " bo "som " "fly, "
  "\nWhile " "the " near "er " wa "ters " "roll, "
  "\nWhile " "the " tem "pest " "still " "is " "high: "
  "\nHide " "me, " "O " "my " Sa "viour, " "hide, "
  "\nTill " "the " "storm " "of " "life " "is " "past; "
  "\nSafe " in "to " "the " ha "ven " "guide, "
  "\nOh, " re "ceive " "my " "soul " "at " "last! "

  \set stanza = "2."
  "\nOth" "er " re "fuge " "have " "I " "none, "
  "\nHangs " "my " help "less " "soul " "on " "Thee; "
  "\nleave, " "oh, " "leave " "me " "not " a "lone, "
  "\nStill " sup "port " "and " com "fort " "me: "
  "\nAll " "my " "trust " "on " "Thee " "is " "stayed, "
  "\nAll " "my " "help " "from " "Thee " "I " "bring; "
  "\nCov" "er " "my " de fence "less " "head "
  "\nWith " "the " sha "dow " "of " "Thy " "wing. "

  \set stanza = "3."
  "\nThou, " "O " "Christ, " "art " "all " "I " "want; "
  "\nMore " "than " "all " "in " "Thee " "I " "find: "
  "\nRaise " "the " fal "len, " "cheer " "the " "faint, "
  "\nHeal " "the " "sick, " "and " "lead " "the " "blind: "
  "\nJust " "and " ho "ly " "is " "Thy " "name, "
  "\nI " "am " "all " un righ teous "ness; "
  "\nVile " "and " "full " "of " "sin " "I " "am, "
  "\nThou " "art " "full " "of " "truth " "and " "grace. "

  \set stanza = "4."
  "\nPlen" "teous " "grace " "with " "Thee " "is " "found— "
  "\nGrace " "to " co "ver " "all " "my " "sin: "
  "\nLet " "the " heal "ing " "streams " a "bound; "
  "\nMake " "me, " "keep " "me, " "pure " with "in: "
  "\nThou " "of " "life " "the " Foun "tain " "art, "
  "\nFree" "ly " "let " "me " "take " "of " "Thee; "
  "\nSpring " "Thou " "up " with "in " "my " "heart, "
  "\nRise " "to " "all " e ter ni "ty. "
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
            \new NullVoice = "aligner" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \alto \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \alto \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
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
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
