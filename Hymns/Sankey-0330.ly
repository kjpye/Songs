\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, my Soul, thy Suit prepare."
  subtitle    = "Sankey No. 330"
  subsubtitle = "Sankey 880 No. 689"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "B. Milgrove."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Newton"
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
  Come, my soul, thy suit pre -- pare;
  Je -- sus loves to ans -- wer prayer:
  He Him -- self has bid thee pray,
  There -- fore will not say thee nay.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou art com -- ing to a King:
  Large pe -- ti -- tions with thee bring;
  For His grace and power are such,
  None can ev -- er ask too much.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  With my bur -- den I be -- gin—
  Lord, re -- move this load of sin;
  Let Thy blood, for sin -- ners spilt,
  Set my con -- science free from guilt.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lord, I come to Thee for rest—
  Take pos -- sess -- ion of my breast,
  There Thy blood -- bought right main -- tain,
  And with -- out a ri -- val reign.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  While I am a oil -- grim here
  Let Thy love my spi -- rit cheer;
  As my Guide, my Gurad, my Friend,
  Lead me to my jour -- ney's end.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Show me what I have to do,
  Ev -- 'ry hour my strength re -- new;
  Let me live a life of faith,
  Let me die Thy peo -- ple's death.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "my " "soul, " "thy " "suit " pre "pare; "
  "\nJe" "sus " "loves " "to " ans "wer " "prayer: "
  "\nHe " Him "self " "has " "bid " "thee " "pray, "
  "\nThere" "fore " "will " "not " "say " "thee " "nay. "

  \set stanza = "2."
  "\nThou " "art " com "ing " "to " "a " "King: "
  "\nLarge " pe ti "tions " "with " "thee " "bring; "
  "\nFor " "His " "grace " "and " "power " "are " "such, "
  "\nNone " "can " ev "er " "ask " "too " "much. "

  \set stanza = "3."
  "\nWith " "my " bur "den " "I " be "gin— "
  "\nLord, " re "move " "this " "load " "of " "sin; "
  "\nLet " "Thy " "blood, " "for " sin "ners " "spilt, "
  "\nSet " "my " con "science " "free " "from " "guilt. "

  \set stanza = "4."
  "\nLord, " "I " "come " "to " "Thee " "for " "rest— "
  "\nTake " pos sess "ion " "of " "my " "breast, "
  "\nThere " "Thy " blood "bought " "right " main "tain, "
  "\nAnd " with "out " "a " ri "val " "reign. "

  \set stanza = "5."
  "\nWhile " "I " "am " "a " oil "grim " "here "
  "\nLet " "Thy " "love " "my " spi "rit " "cheer; "
  "\nAs " "my " "Guide, " "my " "Gurad, " "my " "Friend, "
  "\nLead " "me " "to " "my " jour "ney's " "end. "

  \set stanza = "6."
  "\nShow " "me " "what " "I " "have " "to " "do, "
  "\nEv" "'ry " "hour " "my " "strength " re "new; "
  "\nLet " "me " "live " "a " "life " "of " "faith, "
  "\nLet " "me " "die " "Thy " peo "ple's " "death. "
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
