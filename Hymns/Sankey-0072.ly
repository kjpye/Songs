\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O my Precious Saviour!"
  subtitle    = "Sankey No. 72"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. C. N. Pickop."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*3 s2.
  \mark \markup { \box "B" } s4 s1*4
  \mark \markup { \box "C" } s1*2 s2.
  \mark \markup { \box "D" } s4 s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  f'4 f e f
  g2 f4 f
  bes4 bes a bes
  c2. \bar "|" \break \partial 4 f,4
  bes4 bes a g % B
  g4 f e f
  bes4 bes d c
  bes2. r4
  d4^\markup\smallCaps Chorus. d bes bes % C
  g4 f2 4
  bes4 bes c d
  c2. \bar "|" \break \partial 4 bes8 c
  d4 d bes bes
  g4 f2 f8 f
  bes4 bes d c
  bes2. r4
}

alto = \relative {
  d'4 d cis d
  cis2 d4 f
  f4 f f f
  f2. ees4
  d4 f ees ees % B
  ees4 d cis d
  d4 d f ees
  d2. r4
  f4 f d f % C
  ees4 d2 f4
  f4 f f f
  f2. d8 ees
  f4 f e e
  e4 f2 ees8 ees
  d4 d f ees
  d2. r4
}

tenor = \relative {
  bes4 f g f
  e2 f4 bes
  bes4 bes f bes
  aes2. c4
  bes4 bes c bes % B
  bes4 bes bes bes
  bes4 d bes a
  bes2. r4
  bes4 bes f bes % C
  bes4 bes2 d4
  bes4 bes a bes
  a2. bes8 a
  bes4 bes c c % D
  bes4 a2 c8 c
  bes4 bes bes a
  bes2. r4
}

bass= \relative {
  bes,4 bes bes bes
  bes2 bes4 d
  d4 d c bes
  f'2. a4
  bes4 d, ees ees % B
  ees4 f g f
  g4 g f f
  bes,2. r4
  bes4 bes d d % C
  ees4 bes2 bes4
  d4 d c bes
  f'2. d8 f
  bes4 bes g g
  c,4 f2 a8 a
  bes4 g f f
  bes,2. r4
}

chorus = \lyricmode {
  O my pre -- cious Sa -- viour,
  So won -- der -- ful -- ly kind!
  Should I search the wide world o -- ver
  I could none like Je -- sus find.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  O Thou pre -- cious Sa -- viour,
  So kind and good to me,
  That I might live, thy blood was shed
  On Cal -- v'ry's cru -- el tree.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O Thou pre -- cious Sa -- viour,
  To whose kind, lov -- ing heart
  The bur -- dened soul may tell its grief,
  And in Thy love have part.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O Thou pre -- cious Sa -- viour,
  Who suf -- fered long for me.
  Thy pow'r a -- lone can save from guilt,
  From Sa -- tan's yoke set free.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Thou pre -- cious Sa -- viour,
  Whose love will give the prize,
  When life's toil's o'er, my soul wings on
  To realms be -- yond the skies.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  O Thou pre -- cious Sa -- viour,
  Let all my ad -- ded days
  Be spent to serve and hon -- our Thee,
  Be spent to bring Thee praise.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "Thou " pre "cious " Sa "viour, "
  "\nSo " "kind " "and " "good " "to " "me, "
  "\nThat " "I " "might " "live, " "thy " "blood " "was " "shed "
  "\nOn " Cal "v'ry's " cru "el " "tree. "
  "\nO " "my " pre "cious " Sa "viour, "
  "\nSo " won der ful "ly " "kind! "
  "\nShould " "I " "search " "the " "wide " "world " o "ver "
  "\nI " "could " "none " "like " Je "sus " "find. "

  \set stanza = "2."
  "\nO " "Thou " pre "cious " Sa "viour, "
  "\nTo " "whose " "kind, " lov "ing " "heart "
  "\nThe " bur "dened " "soul " "may " "tell " "its " "grief, "
  "\nAnd " "in " "Thy " "love " "have " "part. "
  "\nO " "my " pre "cious " Sa "viour, "
  "\nSo " won der ful "ly " "kind! "
  "\nShould " "I " "search " "the " "wide " "world " o "ver "
  "\nI " "could " "none " "like " Je "sus " "find. "

  \set stanza = "3."
  "\nO " "Thou " pre "cious " Sa "viour, "
  "\nWho " suf "fered " "long " "for " "me. "
  "\nThy " "pow'r " a "lone " "can " "save " "from " "guilt, "
  "\nFrom " Sa "tan's " "yoke " "set " "free. "
  "\nO " "my " pre "cious " Sa "viour, "
  "\nSo " won der ful "ly " "kind! "
  "\nShould " "I " "search " "the " "wide " "world " o "ver "
  "\nI " "could " "none " "like " Je "sus " "find. "

  \set stanza = "4."
  "\nO " "Thou " pre "cious " Sa "viour, "
  "\nWhose " "love " "will " "give " "the " "prize, "
  "\nWhen " "life's " "toil's " "o'er, " "my " "soul " "wings " "on "
  "\nTo " "realms " be "yond " "the " "skies. "
  "\nO " "my " pre "cious " Sa "viour, "
  "\nSo " won der ful "ly " "kind! "
  "\nShould " "I " "search " "the " "wide " "world " o "ver "
  "\nI " "could " "none " "like " Je "sus " "find. "

  \set stanza = "5."
  "\nO " "Thou " pre "cious " Sa "viour, "
  "\nLet " "all " "my " ad "ded " "days "
  "\nBe " "spent " "to " "serve " "and " hon "our " "Thee, "
  "\nBe " "spent " "to " "bring " "Thee " "praise. "
  "\nO " "my " pre "cious " Sa "viour, "
  "\nSo " won der ful "ly " "kind! "
  "\nShould " "I " "search " "the " "wide " "world " o "ver "
  "\nI " "could " "none " "like " Je "sus " "find. "
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                              { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                              { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
