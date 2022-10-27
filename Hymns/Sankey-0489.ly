\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Weary of Earth, and Laden."
  subtitle    = "Sankey No. 489"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "C. Goudimel."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. J. Stone."
  meter       = \markup\smallCaps "10.10.10.10."
  piece       = \markup\smallCaps "Toulon."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*5
  \mark \markup { \box "B" }    s1*5 s2
  \mark \markup { \box "C" } s2 s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2 g4 a | bes2 a | g4 f f e | f1 | a2 bes4 c |
  d2 c | bes4 a g f | g1 | c2 4 bes | a2 g | a4 c \bar "|" \break c b |
  c1 | a2 g4 f | e4 f g bes | a2 g | f1 |
}

alto = \relative {
  \autoBeamOff
  c'2 e4 f | 2 2 | e4 d d c | c1 | f2 4 4 |
  f2 2 | e4 f d d | e1 | c2 4 e | f2 g | f4 g f f |
  e1 | f2 e4 d | cis d e f | 2 e | f1 |
}

tenor = \relative {
  \autoBeamOff
  a2 c4 4 | d2 c | bes4 a bes g | a1 | c2 bes4 a |
  bes2 a | c4 4 bes b | c1 | f,2 4 g | a2 c | c4 g a g |
  g1 | a2 bes4 a | 4 4 c d | c2 bes | a1 |
}

bass = \relative {
  \autoBeamOff
  f2 c4 f | bes,2 f' | c4 d bes c | f,1 | f'2 d4 f |
  bes,2 f' | g4 f bes, d | c1 | a2 4 c | f2 e | f4 e d d |
  c1 | f2 c4 d | a d c bes | c2 2 | f,1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Wea -- ry of earth, and la -- den with my sin,
  I look at heaven, and long to en -- ter in:
  But there no e -- vil thing may find a home,
  And yet I hear a voice that bids me "\"Come!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  So vile I am, how dare I hope to stand
  In the pure glo -- ry of that ho -- ly land?
  Be -- fore the white -- ness of that throne ap -- pear?
  Yet there are hands stretched out to draw me near.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The while I fain would tread the heaven -- ly way,
  Seems e -- vil ev -- er with me day by day;
  Yet on mine ears the gra -- cious ti -- dings fail:
  "\"Re" -- pent, con -- fess, and thou art loosed from "all.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  It is the voice of Je -- sus that I hear;
  His are the hands out -- stretched to draw me near,
  And His the blood that can for ail a -- tone,
  And set me fault -- less there be -- fore the Throne.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Yea, Thou wilt a -- swer for me, right -- eous Lord;
  Thine all the me -- rits, mine the great re -- ward;
  Thine the sharp thorns, and mine the gol -- den crown;
  Mine the life won, and Thine the life laid down.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Naught can I bring Thee, Lord, for all I owe,
  Yet let my full heart what it can be -- stow;
  My -- self my gift, let my de -- vo -- tion prove,
  For -- giv -- en great -- ly, how I great -- ly love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Wea" "ry " "of " "earth, " "and " la "den " "with " "my " "sin, "
  "\nI " "look " "at " "heaven, " "and " "long " "to " en "ter " "in: "
  "\nBut " "there " "no " e "vil " "thing " "may " "find " "a " "home, "
  "\nAnd " "yet " "I " "hear " "a " "voice " "that " "bids " "me " "\"Come!\"\n"

  \set stanza = "2."
  "\nSo " "vile " "I " "am, " "how " "dare " "I " "hope " "to " "stand "
  "\nIn " "the " "pure " glo "ry " "of " "that " ho "ly " "land? "
  "\nBe" "fore " "the " white "ness " "of " "that " "throne " ap "pear? "
  "\nYet " "there " "are " "hands " "stretched " "out " "to " "draw " "me " "near.\n"

  \set stanza = "3."
  "\nThe " "while " "I " "fain " "would " "tread " "the " heaven "ly " "way, "
  "\nSeems " e "vil " ev "er " "with " "me " "day " "by " "day; "
  "\nYet " "on " "mine " "ears " "the " gra "cious " ti "dings " "fail: "
  "\n\"Re" "pent, " con "fess, " "and " "thou " "art " "loosed " "from " "all.\"\n"

  \set stanza = "4."
  "\nIt " "is " "the " "voice " "of " Je "sus " "that " "I " "hear; "
  "\nHis " "are " "the " "hands " out "stretched " "to " "draw " "me " "near, "
  "\nAnd " "His " "the " "blood " "that " "can " "for " "ail " a "tone, "
  "\nAnd " "set " "me " fault "less " "there " be "fore " "the " "Throne.\n"

  \set stanza = "5."
  "\nYea, " "Thou " "wilt " a "swer " "for " "me, " right "eous " "Lord; "
  "\nThine " "all " "the " me "rits, " "mine " "the " "great " re "ward; "
  "\nThine " "the " "sharp " "thorns, " "and " "mine " "the " gol "den " "crown; "
  "\nMine " "the " "life " "won, " "and " "Thine " "the " "life " "laid " "down.\n"

  \set stanza = "6."
  "\nNaught " "can " "I " "bring " "Thee, " "Lord, " "for " "all " "I " "owe, "
  "\nYet " "let " "my " "full " "heart " "what " "it " "can " be "stow; "
  "\nMy" "self " "my " "gift, " "let " "my " de vo "tion " "prove, "
  "\nFor" giv "en " great "ly, " "how " "I " great "ly " "love. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsSix   \chorus
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
