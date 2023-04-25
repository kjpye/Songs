\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God's Love and Mine."
  subtitle    = "Sankey No. 604"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "10s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 3/2
  \partial 2.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2. s1.*2
  \textMark \markup { \box \bold "B" }     s1.*3 s2.
  \textMark \markup { \box \bold "C" } s2. s1.*3
  \textMark \markup { \box \bold "D" }     s1.*3
  \textMark \markup { \box \bold "E" }     s1.*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup\italic "Devotionally" 4=120
  s2. | s1.*2 |
  s1.*3 s2.
  s2. s1.*3 |
  s1.*3 |
  s1.*2 | s2. s2 \tempo \markup\italic rall 4=120 s4 s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 4 4 | bes2. d,4 ees f | a4. g8 4\fermata 4 4 4 |
  c2. g4 a bes | 4. a8 4\fermata f g f | d'2. 4 c bes | 4. a8 g4\fermata \bar "|" \break
  g4 a bes | 2. f4 g a | c4.\fermata bes8 4\fermata
  \section \sectionLabel \markup\smallCaps Chorus
  f4 4 4 | 2. g8[a] bes4 d, |
  f4. e8 4\fermata g4 4 4 | 2. a8[bes] c4 bes | a4. g8 f4\fermata f g f |
  d'2. 4 c bes | 4. a8 g4\fermata g a bes | 2. d4 ees a, | c4.\fermata bes8 4\fermata
}

alto = \relative {
  \autoBeamOff
  d'4 4 c | bes2. 4 4 4 |e4. 8 4\fermata 4 4 f |
  e2. g4 f e | f4. 8 4\fermata c c c | f2. d4 e f | g4. f8 ees4\fermata
  des4 4 4 | d2. f4 e e | e4.\fermata d8 4\fermata \section d c bes | a2. bes8[c] bes4 4 |
  c4. 8 4\fermata e e e | 2. 4 f g | f4. e8 f4\fermata c c c |
  f2. 4 fis g | fis4. 8 g4\fermata e fis g | f2. 4 4 4 | a4.\fermata bes8 4\fermata 
}

tenor = \relative {
  \autoBeamOff
  bes4 a a | f2. 4 4 4 | bes4. 8 4\fermata 4 4 b |
  c2. 4 4 4 | d4. c8 4\fermata a a a | bes2. 4 a bes | 4. 8 4
  bes4 4 4 | 2. d4 d c | a4.\fermata bes8 4\fermata \section f4 4 4 | 2. 4 4 4 |
  g4. 8 4\fermata 4 c c | 2. 4 4 4 | 4. bes8 a4\fermata a bes a |
  bes2. d4 4 4 | 4. c8 bes4\fermata 4 c cis | d2. bes4 a c | ees4.\fermata d8 4\fermata 
}

bass = \relative {
  \autoBeamOff
  bes,4 f' ees | d2. bes4 c d | e4. 8 4\fermata 4 4 d |
  c2. e4 f g | f4. 8 4\fermata f e e | bes2. 4 c d | ees4. 8 4\fermata
  e4 4 4 | f2. 4 4 4 | 4.\fermata bes,8 4\fermata \section 4 c d |
  ees2. 4 d d |
  c4. 8 4\fermata 4 4 c' | bes2. 4 a e | f4. 8 4\fermata 4 e ees |
  d2. bes4 a g | d'4. 8 ees4\fermata 4 4 e | f2. 4 4 4 | 4.\fermata bes,8 4\fermata 
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, help me, Lord, to take, by grace Di -- vine,
  Yet more and more of that great love of Thine;
  That day by day my heart may give to Thee
  A deep -- er love, and grow -- ing con -- stant -- ly.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I love Thee, Lord; yet tis no love of mine
  That go -- eth forth to that great heart of Thine:
  'Tis Thine own love which Thou hast giv -- en me
  Re -- turn -- ing back, O lov -- ing Lord, to Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The earth ab -- sorbd the soft, re -- fresh -- ing rain,
  And sends it back in flow'rs and fruits a -- gain;
  So I re -- ceive Thy love so rich and free,
  And send it back on joy and praise to Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The moon re -- ceives the sun's bright, gold -- en light,
  And gives it forth to cheer the dark -- some nightl
  So I re -- ceive the rays of love Di -- vine,
  And with them cheer this wea -- ry world of Thine.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  'Tis by Thy love that I can love and bless
  The foes who seek to blast  my hap -- pi -- ness;
  Can e'en re -- joice, when bear -- ing wrong and shame,
  Thou deem'st me meet to suf -- fer for Thy name.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Naught but Thy love can sat -- is -- fy my heart,
  Con -- strain my will from self and sin to part:
  In loev so great Thou giv'st \markup\italic Thy -- \markup\italic self to me;
  For Thou art Love— to all e -- ter -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "love " "Thee, " "Lord; " "yet " "tis " "no " "love " "of " "mine "
  "\nThat " go "eth " "forth " "to " "that " "great " "heart " "of " "Thine: "
  "\n'Tis " "Thine " "own " "love " "which " "Thou " "hast " giv "en " "me "
  "\nRe" turn "ing " "back, " "O " lov "ing " "Lord, " "to " "Thee. "
  "\nOh, " "help " "me, " "Lord, " "to " "take, " "by " "grace " Di "vine, "
  "\nYet " "more " "and " "more " "of " "that " "great " "love " "of " "Thine; "
  "\nThat " "day " "by " "day " "my " "heart " "may " "give " "to " "Thee "
  "\nA " deep "er " "love, " "and " grow "ing " con stant "ly.\n"

  \set stanza = "2."
  "\nThe " "earth " ab "sorbd " "the " "soft, " re fresh "ing " "rain, "
  "\nAnd " "sends " "it " "back " "in " "flow'rs " "and " "fruits " a "gain; "
  "\nSo " "I " re "ceive " "Thy " "love " "so " "rich " "and " "free, "
  "\nAnd " "send " "it " "back " "on " "joy " "and " "praise " "to " "Thee. "
  "\nOh, " "help " "me, " "Lord, " "to " "take, " "by " "grace " Di "vine, "
  "\nYet " "more " "and " "more " "of " "that " "great " "love " "of " "Thine; "
  "\nThat " "day " "by " "day " "my " "heart " "may " "give " "to " "Thee "
  "\nA " deep "er " "love, " "and " grow "ing " con stant "ly.\n"

  \set stanza = "3."
  "\nThe " "moon " re "ceives " "the " "sun's " "bright, " gold "en " "light, "
  "\nAnd " "gives " "it " "forth " "to " "cheer " "the " dark "some " "nightl "
  "\nSo " "I " re "ceive " "the " "rays " "of " "love " Di "vine, "
  "\nAnd " "with " "them " "cheer " "this " wea "ry " "world " "of " "Thine. "
  "\nOh, " "help " "me, " "Lord, " "to " "take, " "by " "grace " Di "vine, "
  "\nYet " "more " "and " "more " "of " "that " "great " "love " "of " "Thine; "
  "\nThat " "day " "by " "day " "my " "heart " "may " "give " "to " "Thee "
  "\nA " deep "er " "love, " "and " grow "ing " con stant "ly.\n"

  \set stanza = "4."
  "\n'Tis " "by " "Thy " "love " "that " "I " "can " "love " "and " "bless "
  "\nThe " "foes " "who " "seek " "to " "blast "  "my " hap pi "ness; "
  "\nCan " "e'en " re "joice, " "when " bear "ing " "wrong " "and " "shame, "
  "\nThou " "deem'st " "me " "meet " "to " suf "fer " "for " "Thy " "name. "
  "\nOh, " "help " "me, " "Lord, " "to " "take, " "by " "grace " Di "vine, "
  "\nYet " "more " "and " "more " "of " "that " "great " "love " "of " "Thine; "
  "\nThat " "day " "by " "day " "my " "heart " "may " "give " "to " "Thee "
  "\nA " deep "er " "love, " "and " grow "ing " con stant "ly.\n"

  \set stanza = "5."
  "\nNaught " "but " "Thy " "love " "can " sat is "fy " "my " "heart, "
  "\nCon" "strain " "my " "will " "from " "self " "and " "sin " "to " "part: "
  "\nIn " "loev " "so " "great " "Thou " "giv'st " \markup\italic Thy \markup\italic "self " "to " "me; "
  "\nFor " "Thou " "art " "Love— " "to " "all " e ter ni "ty. "
  "\nOh, " "help " "me, " "Lord, " "to " "take, " "by " "grace " Di "vine, "
  "\nYet " "more " "and " "more " "of " "that " "great " "love " "of " "Thine; "
  "\nThat " "day " "by " "day " "my " "heart " "may " "give " "to " "Thee "
  "\nA " deep "er " "love, " "and " grow "ing " con stant "ly. "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
      #(layout-set-staff-size 18)
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
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
