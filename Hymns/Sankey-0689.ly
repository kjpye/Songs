\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Leads His Army!"
  subtitle    = "Sankey No. 689"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Alfred S. Dyer."
  meter       = \markup\smallCaps "6.5.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*5
  \textMark \markup { \box \bold "D" } s1*5
  \textMark \markup { \box \bold "E" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4. 8 e4 g | c2 g | e'4. d8 c4 a | g1 |
  e4 g c b | a2 2 | d4. e8 d4 c | b1 | c4 g e a |
  g4.(f8) e2 | f4. e8 d4 a' | g1 | e4 g c b | a2 d |
  c4. b8 a4 b | c1 |
  \section \sectionLabel \markup\smallCaps "Chorus."
  c4. 8 4 b | a2 2 | d4. e8 d4 c |
  b1 | c4 g e a | g4.(e8) c4(f) | e4. 8 f4 d | c1 |
}

alto = \relative {
  \autoBeamOff
  c'4. 8 e4 g | e4(f) g(f) | e8(g4) 8 4 f | e1 |
  c4 e e g | f2 4(g) | fis4. 8 4 4 | g1 | 4 e c c |
  c4.(b8) c2 | d4. c8 b4 4 | c1 | 4 e e g | f2 2 |
  e4. g8 f4 4 | e1 \section 4. 8 4 g | f2 4(g) | fis4. 8 4 4 |
  g1 | 4 e c c | 2 2 | 4. 8 d4 b | c1 |
}

tenor = \relative {
  \autoBeamOff
  c4. 8 e4 g | 2 c | 4. b8 c4 4 | 1 |
  g4 4 4 c | 2 4(cis) | d4. 8 4 4 | 1 | c4 4 4 4 |
  c4.(g8) 2 | 2 4(f) | e f g(e) | g g g c | 2 a |
  g4. d'8 4 4 | c1 \section | g4. 8 4 c | 2 4(cis) | d4. 8 4 4 |
  d1 | c4 c c c | 4.(g8) a2 | g4. 8 4 f | e1 |
}

bass = \relative {
  \autoBeamOff
  c4. 8 e4 g | c,4(d) e(d) | c4.(d8 e4) f8[a] | c4 g e(c) |
  c4 c c e | f4(c) f(e) | d2 2 | g4 d g(f) | e c e f |
  e4.(d8) c2 | g g | c4 d e(c) | c c c e | f(d) f(d) |
  g4. 8 4 4 | c,1 \section | 4. 8 4 e | f(c) f(e) | d2 2 |
  g4 d g(f) | e c e f | e4.(c8) a4(f) | g4. 8 4 4 | c1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Je -- sus leads His ar -- my,
  'Neath His flag un -- furled.
  All our foes de -- feat -- ing:
  Right shall sweep the world!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _
  \set stanza = "1."
  “Who will go to -- day?
  _ _ _ _ _ _
  \set stanza = "1."
  Will not say me nay?
  _ _ _ _ _ _ 
  \set stanza = "1."
 For -- ward in the fight,
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
  \set stanza = "1."
  'Neath His flag un -- furled.
  _ _ _ _ _ _
  _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark! a voice is call -- ing:
  “Who will go to -- day?
  Who, My ser -- vice seek -- ing,
  Will not say me nay?
  Who will hold My ban -- ner
  For -- ward in the fight,
  'Gainst My foes en -- ga -- ging,
  Stand for God and right?”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On God's right re -- ly -- ing
  Till the vic -- t'ry's won,
  Sa -- tan's host de -- fy -- ing,
  Gird our ar -- mour on!
  For the cause that's ho -- ly,
  For the right that's grand,
  For God's war -- fare sole -- ly.
  Join we heart and hand!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hear the tramp of le -- gions,
  March -- ing as they sing,
  “Glo -- ry to our Lead -- er,
  Glo -- ry to the King!”
  One in ho -- ly pur -- pose,
  From the near and far,
  Hear the voi -- ces ring -- ing,
  March -- ing to the war!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hark! " "a " "voice " "is " call "ing: "
  "\n“Who " "will " "go " to "day? "
  "\nWho, " "My " ser "vice " seek "ing, "
  "\nWill " "not " "say " "me " "nay? "
  "\nWho " "will " "hold " "My " ban "ner "
  "\nFor" "ward " "in " "the " "fight, "
  "\n'Gainst " "My " "foes " en ga "ging, "
  "\nStand " "for " "God " "and " "right?” "
  "\nJe" "sus " "leads " "His " ar "my, "
  "\n'Neath " "His " "flag " un "furled. "
  "\nAll " "our " "foes " de feat "ing: "
  "\nRight " "shall " "sweep " "the " "world!\n"

  \set stanza = "2."
  "\nOn " "God's " "right " re ly "ing "
  "\nTill " "the " vic "t'ry's " "won, "
  "\nSa" "tan's " "host " de fy "ing, "
  "\nGird " "our " ar "mour " "on! "
  "\nFor " "the " "cause " "that's " ho "ly, "
  "\nFor " "the " "right " "that's " "grand, "
  "\nFor " "God's " war "fare " sole "ly. "
  "\nJoin " "we " "heart " "and " "hand! "
  "\nJe" "sus " "leads " "His " ar "my, "
  "\n'Neath " "His " "flag " un "furled. "
  "\nAll " "our " "foes " de feat "ing: "
  "\nRight " "shall " "sweep " "the " "world!\n"

  \set stanza = "3."
  "\nHear " "the " "tramp " "of " le "gions, "
  "\nMarch" "ing " "as " "they " "sing, "
  "\n“Glo" "ry " "to " "our " Lead "er, "
  "\nGlo" "ry " "to " "the " "King!” "
  "\nOne " "in " ho "ly " pur "pose, "
  "\nFrom " "the " "near " "and " "far, "
  "\nHear " "the " voi "ces " ring "ing, "
  "\nMarch" "ing " "to " "the " "war! "
  "\nJe" "sus " "leads " "His " ar "my, "
  "\n'Neath " "His " "flag " un "furled. "
  "\nAll " "our " "foes " de feat "ing: "
  "\nRight " "shall " "sweep " "the " "world! "
}
  
chorusMenSingle = \lyricmode {
  \set stanza = "1."
  _ _ _ _ _ _
  “Who will go to -- day?
  _ _ _ _ _ _
  Will not say me nay?
  _ _ _ _ _ _
  For -- ward in the fight,
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
  'Neath His flag un -- furled.
  _ _ _ _ _ _
  _ _ _ _ _

  \set stanza = "2."
  _ _ _ _ _ _
  Till the vic -- t'ry's won,
  _ _ _ _ _ _
  Gird our ar -- mour on!
  _ _ _ _ _ _
  For the right that's grand,
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
  'Neath His flag un -- furled.
  _ _ _ _ _ _
  _ _ _ _ _

  \set stanza = "3."
  _ _ _ _ _ _
  March -- ing as they sing,
  _ _ _ _ _ _
  Glo -- ry to the King!”
  _ _ _ _ _ _
  From the near and far,
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
  'Neath His flag un -- furled.
  _ _ _ _ _ _
  _ _ _ _ _
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidi
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 19)

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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerB { \bass }
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \chorusMen
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
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerB { \repeat unfold \verses \bass }
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \chorusMenSingle
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
