\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "At Even, ere the Sun was Set."
  subtitle    = "Sankey No. 79"
  subsubtitle = "Sankey 880 No. 431"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Scheffler."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Canon H. Twells."
  meter       = \markup\smallCaps "l.m."
  piece       = \markup\smallCaps "Angelus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*8
  \mark \markup { \box "B" } s2.*7 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  ees'4
  ees2 f4
  g4(aes) bes
  bes2 aes4
  bes2 4
  c2 d4
  ees2 d4
  c2 4
  bes2. \break
  f4 f g % B
  aes2 4
  ees2 f4
  g2.
  d4 ees f
  g2 aes4
  f2 4
  ees2
}

alto = \relative {
  bes4
  bes2 4
  ees4(f) f
  ees2 4
  d2 f4
  f2 4
  ees4(g) f
  g4(f) ees
  d2.
  d4 d e % B
  f2 4
  ees2 c4
  d2.
  b4 c d
  ees2 4
  ees2 d4
  ees2
}

tenor = \relative {
  g4
  g2 bes4
  bes4(c) bes
  g2 f4
  f2 d'4 c2 bes4
  bes2 4
  bes4(a) a
  bes2.
  bes4 4 4 % B
  c2 4
  c2 4
  b2.
  g4 g bes
  bes2 c4
  bes2 aes4
  g2
}

bass= \relative {
  ees4
  ees2 d4
  ees2 d4
  c2 f4
  bes,2 bes'4
  a2 aes4
  g4(c,) d
  ees4(f) f
  bes,2.
  bes'4 aes g % B
  f2 4
  ees2 4
  g2.
  g4 c, bes
  ees2 aes,4
  bes2 4
  ees2
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  At e -- ven, ere the sun was set
  The sick, O Lord, a -- round Thee lay;
  Oh, in what di -- vers pains they met!
  Oh, with what joy they went a -- way!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Once more 'tis e -- ven -- tide, and we,
  Op -- press'd with va -- rious ills, draw near;
  What if Thy form we can -- not see!
  We know and feel that Thou art here.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O Sa -- viour Christ, our woes dis -- pel!
  For some are sick, and some are sad,
  And some have ne -- ver loved Thee well,
  And some have lost the love they had;
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And all, O Lord, crave per -- fect rest,
  And to be wholl -- y free from sin;
  And they who fain would servwe Thee best,
  Are con -- cious most of wroing with -- in.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  O Sa -- viour Christ, Thou too art man!
  Thou hast been troub -- led, temp -- ted, tried;
  Thy kind but search -- ing glance can scan
  The ver -- y wounds that shame would hide;
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Thy touch has still its an -- cient power;
  o word from Thee can fruit -- less fall:
  Hear in this so -- lemn even -- ing hour,
  And in Thy mer -- cy heal us all.
}
  
wordsMidi = \lyricmode {
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
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
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
