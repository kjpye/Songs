\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lord, we Come before Thee."
  subtitle    = "Sankey No. 331"
  subsubtitle = "Sankey 880 No. 691"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "B. Milgrove."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Rev. Wm. Hammond."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "Hart's."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
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
  e'4 4 a a
  b4 4 cis2
  a4 4 d cis8[b]
  a4 cis b2
  e4 4 cis cis % B
  d4 4 b2
  cis4 d e d
  cis4 b a2
}

alto = \relative {
  \autoBeamOff
  cis'4 b cis e
  fis4 e4 2
  fis4 e d e8[d]
  cis4 e4 2
  e4 4 fis4 4 % B
  fis4 4 e2
  a4 4 e fis
  e4 8[d] cis2
}

tenor = \relative {
  \autoBeamOff
  a4 b a a
  a4 gis a2
  a4 4 gis a8[gis]
  a4 4 gis2
  a4 4 4 ais % B
  b4 4 gis2
  e'4 d cis a
  a4 gis a2
}

bass = \relative {
  \autoBeamOff
  \once\partCombineApart a4 gis fis cis
  d4 e \once\partCombineApart a2
  d,4 cis b a8[b]
  cis4 a e'2
  cis4 4 fis4 4 % B
  b,4 4 e2
  a4 fis cis d
  e4 4 a2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord, we come be -- fore Thee now,
  At Thy feet we hum -- bly bow;
  Oh, do not our suit dis -- dain:
  Shall we seek Thee, Lord, in vain?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Lord, on Thee our souls de -- pend;
  In com -- pas -- sion now des -- cend:
  Fill our hearts with Thy rich grace,
  Tune our lips to sing Thy praise.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In Thine own ap -- point -- ed way
  Now we seek Thee; here we stay:
  Lord, we know not how to go,
  Till a bless -- ing Thou be -- stow.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Send some mes -- sage from Thy Word
  That may joy and peace af -- ford;
  Let Thy Spi -- rit now im -- part
  Full sal -- va -- tion to each heart.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Com -- fort those who weep and mourn,
  Let the time of joy re -- turn;
  Those that are cast down lift up;
  Make them strong in faith and hope.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Grant that all may seek and find
  Thee a God su -- preme -- ly kind:
  Heal the sick; the cap -- tive free;
  Let us all re -- joice in Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord, " "we " "come " be "fore " "Thee " "now, "
  "\nAt " "Thy " "feet " "we " hum "bly " "bow; "
  "\nOh, " "do " "not " "our " "suit " dis "dain: "
  "\nShall " "we " "seek " "Thee, " "Lord, " "in " "vain? "

  \set stanza = "2."
  "\nLord, " "on " "Thee " "our " "souls " de "pend; "
  "\nIn " com pas "sion " "now " des "cend: "
  "\nFill " "our " "hearts " "with " "Thy " "rich " "grace, "
  "\nTune " "our " "lips " "to " "sing " "Thy " "praise. "

  \set stanza = "3."
  "\nIn " "Thine " "own " ap point "ed " "way "
  "\nNow " "we " "seek " "Thee; " "here " "we " "stay: "
  "\nLord, " "we " "know " "not " "how " "to " "go, "
  "\nTill " "a " bless "ing " "Thou " be "stow. "

  \set stanza = "4."
  "\nSend " "some " mes "sage " "from " "Thy " "Word "
  "\nThat " "may " "joy " "and " "peace " af "ford; "
  "\nLet " "Thy " Spi "rit " "now " im "part "
  "\nFull " sal va "tion " "to " "each " "heart. "

  \set stanza = "5."
  "\nCom" "fort " "those " "who " "weep " "and " "mourn, "
  "\nLet " "the " "time " "of " "joy " re "turn; "
  "\nThose " "that " "are " "cast " "down " "lift " "up; "
  "\nMake " "them " "strong " "in " "faith " "and " "hope. "

  \set stanza = "6."
  "\nGrant " "that " "all " "may " "seek " "and " "find "
  "\nThee " "a " "God " su preme "ly " "kind: "
  "\nHeal " "the " "sick; " "the " cap "tive " "free; "
  "\nLet " "us " "all " re "joice " "in " "Thee. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFour \chorus
                                              \wordsFive \chorus
                                              \wordsSix \chorus
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
    page-breaking = #ly:one-page-breaking
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
                                              \wordsSix   \chorus
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
