\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come Ye Yourselves Apart."
  subtitle    = "Sankey No. 279"
  subsubtitle = "Sankey 880 No. 732"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. W. H. Monk."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Rt. Rev. E. H. Bickersteth, D.D."
  meter       = \markup "10s."
  piece       = \markup\smallCaps "Eventide."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 4 f
  ees2 bes'
  c4 bes bes aes
  g1
  g2 aes4 bes
  c2 bes % B
  aes4 f g a
  bes1
  g2 4 f
  ees2 bes'
  bes4 aes aes g % C
  f1
  f2 g4 aes
  g4 f ees aes
  g2 f
  ees1
}

alto = \relative {
  \autoBeamOff
  ees'2 d4 4
  ees2 2
  ees4 d ees f
  ees1
  ees2 4 4
  ees2 2 % B
  ees4 f ees ees
  d1
  ees2 d4 4
  ees2 2
  ees4 4 e e % C
  f1
  d2 ees4 d
  ees4 d ees f
  ees2 d
  ees1
}

tenor = \relative {
  \autoBeamOff
  bes2 4 aes
  g2 ees
  ees4 bes' bes bes
  bes1
  bes2 aes4 g
  aes2 g % B
  c4 bes bes ees,
  f1
  g4(aes) bes aes
  g2 ees'4(d)
  c4 4 4 bes % C
  aes1
  bes2 4 4
  bes4 aes g c
  bes2. aes4
  g1
}

bass = \relative {
  \autoBeamOff
  ees2 bes4 4
  c2 g
  aes4 bes c d
  ees1
  ees4(d) c bes
  aes2 ees' % B
  f4 d ees c
  bes1
  ees2 bes4 4
  c2 g
  aes4. bes8 c4 4 % C
  f1
  aes2 g4 f
  ees4 bes c aes
  bes2 2
  ees1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Come ye your -- selves a -- part and rest a -- while,
  Wea -- ry, I know it, of the press and throng;
  Wipe from your brow the sweat and dust of toil,
  And in My qui -- et strength a -- gain be strong.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come ye a -- side from all the world holds dear,
  For con -- verse which the world has nev -- er known;
  A -- lone with Me and with My a -- ther here,
  With Me and with My Fa -- ther not a -- lone.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, tell Me all that ye have said and done,
  Your vic -- to -- ries and fail -- ures, hopes and fears;
  I know how hard -- ly souls are wooed and won;
  My choi -- cest wreaths are al -- ways wet with tears.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come ye and rest; the jour -- ney is too great,
  And ye will faint be -- side the way, and sink:
  The bread of life is here for you to eat,
  And here for you the wine of love to drink.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Then, fresh from con -- verse with your Lord, re -- turn
  And work till day -- light sof -- tens in -- to even:
  The brief hours are not lost in which ye learn
  More of your mas -- ter and His rest in heaven,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come " "ye " your "selves " a "part " "and " "rest " a "while, "
  "\nWea" "ry, " "I " "know " "it, " "of " "the " "press " "and " "throng; "
  "\nWipe " "from " "your " "brow " "the " "sweat " "and " "dust " "of " "toil, "
  "\nAnd " "in " "My " qui "et " "strength " a "gain " "be " "strong. "

  \set stanza = "2."
  "\nCome " "ye " a "side " "from " "all " "the " "world " "holds " "dear, "
  "\nFor " con "verse " "which " "the " "world " "has " nev "er " "known; "
  "\nA" "lone " "with " "Me " "and " "with " "My " a "ther " "here, "
  "\nWith " "Me " "and " "with " "My " Fa "ther " "not " a "lone. "

  \set stanza = "3."
  "\nCome, " "tell " "Me " "all " "that " "ye " "have " "said " "and " "done, "
  "\nYour " vic to "ries " "and " fail "ures, " "hopes " "and " "fears; "
  "\nI " "know " "how " hard "ly " "souls " "are " "wooed " "and " "won; "
  "\nMy " choi "cest " "wreaths " "are " al "ways " "wet " "with " "tears. "

  \set stanza = "4."
  "\nCome " "ye " "and " "rest; " "the " jour "ney " "is " "too " "great, "
  "\nAnd " "ye " "will " "faint " be "side " "the " "way, " "and " "sink: "
  "\nThe " "bread " "of " "life " "is " "here " "for " "you " "to " "eat, "
  "\nAnd " "here " "for " "you " "the " "wine " "of " "love " "to " "drink. "

  \set stanza = "5."
  "\nThen, " "fresh " "from " con "verse " "with " "your " "Lord, " re "turn "
  "\nAnd " "work " "till " day "light " sof "tens " in "to " "even: "
  "\nThe " "brief " "hours " "are " "not " "lost " "in " "which " "ye " "learn "
  "\nMore " "of " "your " mas "ter " "and " "His " "rest " "in " "heaven, "
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
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
