\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Cross of Christ I Glory."
  subtitle    = "Sankey No. 239"
  subsubtitle = "Sankey 880 No. 155"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Wm. Bruce."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Sir John Bowring."
  meter       = \markup\smallCaps "8.7."
  piece       = \markup\smallCaps "Sharon."

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
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 ees bes' g
  f4 aes aes g
  c4 bes d ees
  aes,4 g f2
  g4 ees bes' d % B
  c4 ees ees d
  ees4 c bes g
  aes8[g] f4 ees2
}

alto = \relative {
  \autoBeamOff
  ees'4 4 f ees
  ees4 d f ees
  ees4 ees aes g
  f4 ees d2
  ees4 4 f f % B
  g4 f f f
  ees4 4 d ees
  f8[ees] d4 ees2
}

tenor = \relative {
  \autoBeamOff
  bes4 g bes bes
  c4 bes bes bes
  aes4 bes aes bes
  bes4 4 2
  bes4 g bes bes % B
  bes4 a8[c] 4 bes
  bes4 aes bes bes
  c4 f,8[bes] g2
}

bass = \relative {
  \autoBeamOff
  ees4 4 d ees
  aes,4 bes ees ees
  aes4 g f ees
  d4 ees bes2
  ees4 4 d bes % B
  d4 f bes, bes
  g'4 aes f ees
  aes,4 bes ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  In the cross of Christ I glo -- ry,
  Tow -- 'ring o'er the wrecks of time;
  All the light of sa -- cred sto -- ry
  Gath -- ers round its head sub -- lime.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When the woes of life o'er -- take me,
  Hopes de -- ceive, and fears an -- noy.
  Nev -- er shall the cross for -- sake me;
  Lo! it glows with peace and joy.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When the sun of bliss is beam -- ing
  Light and loev up -- on my way,
  From the cross the ra -- diance stream -- ing
  Adds new lus -- tre to the day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Bane and bless -- ing, pain and pleas -- ure,
  By the cross are sanc -- ti -- fied;
  Peace is there that knows no mea -- sure,
  Joys that through all time a -- bide.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " "cross " "of " "Christ " "I " glo "ry, "
  "\nTow" "'ring " "o'er " "the " "wrecks " "of " "time; "
  "\nAll " "the " "light " "of " sa "cred " sto "ry "
  "\nGath" "ers " "round " "its " "head " sub "lime. "

  \set stanza = "2."
  "\nWhen " "the " "woes " "of " "life " o'er "take " "me, "
  "\nHopes " de "ceive, " "and " "fears " an "noy. "
  "\nNev" "er " "shall " "the " "cross " for "sake " "me; "
  "\nLo! " "it " "glows " "with " "peace " "and " "joy. "

  \set stanza = "3."
  "\nWhen " "the " "sun " "of " "bliss " "is " beam "ing "
  "\nLight " "and " "loev " up "on " "my " "way, "
  "\nFrom " "the " "cross " "the " ra "diance " stream "ing "
  "\nAdds " "new " lus "tre " "to " "the " "day. "

  \set stanza = "4."
  "\nBane " "and " bless "ing, " "pain " "and " pleas "ure, "
  "\nBy " "the " "cross " "are " sanc ti "fied; "
  "\nPeace " "is " "there " "that " "knows " "no " mea "sure, "
  "\nJoys " "that " "through " "all " "time " a "bide. "
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
    system-system-spacing.basic-distance = #22
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
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
