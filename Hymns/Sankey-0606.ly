\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Jesus, I have Promised."
  subtitle    = "Sankey No. 606"
  subsubtitle = "Sankey 880 No. 108"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. W. Elliott."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John E. Bode."
  meter       = \markup\smallCaps "7.6. D."
  piece       = \markup\smallCaps "Day of Rest."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | a4 c d c8[b] | c2 a4 g | f g8[a] b4 d | g,2. \bar "|" \break
  g4 | a a b a8[g] | c2 e,4 f | g c d4. e8 | c2. \bar "|" \break
  c4 | bes a g bes | a4(g) f c' | bes a g fis | g2. \bar "|" \break
  g8^\markup\smallCaps Unison. [a] | bes4 f e f | g4.(a8) g4 a^\markup\smallCaps Harmony | bes4 c8[d] a4 g | f2.
}

alto = \relative {
  \autoBeamOff
  f'4 | f a aes aes | a2 f4 e | f4 4 4 4 | e2.
  e4 | f f g d | c2 4 4 | c e f4. g8 | e2.
  c4 | c c c c | c(ees) f fis | g e d d | 2.
  g8[a] | bes4 \tiny bes,2.~ | <bes c> \normalsize g'4 | f f f e | f2.
}

tenor = \relative {
  \autoBeamOff
  a4 | c f b, c8[d] | c2 4 bes | a g8[f] d'4 bes | g2.
  c4 | c c d c8[b] | c4(g) g f | e g a b | c2.
  a4 | g f e f8[g] | a4(b) c c | d c bes a | bes2.
  g8[a] | bes4 f e f | g4.(a8) g4 c | bes4 a8[g] c4 bes | a2.
}

bass = \relative {
  \autoBeamOff
  f4 | f f f f | f2 4 c | d d g, g | c2.
  c4 | f f f f | e2 a,4 4 | g g g g' | c,2.
  c4 | c c c d8[e] | f4(g) a a, | bes c d d | g,2. |
  g'8[a] | bes4 \partCombineApart \tiny des,4 a d | e4.(f8)  e4 \normalsize \partCombineAutomatic f4 | d c8[bes] c4 4 | f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  O Je -- sus I have pro -- mised
  To serve Thee to the end;
  Be Thou for ev -- er near me,
  My Mas -- ter and my Friend!
  I shall not fear the bat -- tle,
  If Thou art by my side;
  Nor wan -- der from the path -- way,
  If Thou wilt be my Guide.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, let me feel Thee near me,
  The world is ev -- er near;
  I see the sights that daz -- zle,
  The tempt -- ing sounds I hear:
  My foes are ev -- er near me,
  A -- round me and with -- ing;
  But, Je -- sus, draw Thou near -- er,
  And shield my soul from sin.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, let me hear Thee speak -- ing,
  In ac -- cents clear and still,
  A -- bove the storms of pas -- sion,
  The mur -- murs of self -- will.
  Oh speak, to re -- as -- sure me,
  To hast -- en or con -- trol;
  Oh speak, and make me list -- en,
  Thou Guar -- dian of my soul!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Je -- sus, Thou hast prom -- ised
  To all who fol -- low Thee,
  That where Thou art in glo -- ry
  There shall Thy ser -- cant be!
  And, Je -- sus I have pro -- mised
  To serve Thee to the end;
  Oh, give me grace to fol -- low
  May Mas -- ter and my Friend!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  O let me see Thy foot -- marks,
  And in them plant mine own;
  My hope to fol -- low dai -- ly
  Is in Thy strength a -- lone.
  Oh guide me, call me, draw me,
  Up -- hold me to the end;
  And tghen in heaven re -- ceive me,
  My Sa -- viour and my Friend!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " Je "sus " "I " "have " pro "mised "
  "\nTo " "serve " "Thee " "to " "the " "end; "
  "\nBe " "Thou " "for " ev "er " "near " "me, "
  "\nMy " Mas "ter " "and " "my " "Friend! "
  "\nI " "shall " "not " "fear " "the " bat "tle, "
  "\nIf " "Thou " "art " "by " "my " "side; "
  "\nNor " wan "der " "from " "the " path "way, "
  "\nIf " "Thou " "wilt " "be " "my " "Guide.\n"

  \set stanza = "2."
  "\nOh, " "let " "me " "feel " "Thee " "near " "me, "
  "\nThe " "world " "is " ev "er " "near; "
  "\nI " "see " "the " "sights " "that " daz "zle, "
  "\nThe " tempt "ing " "sounds " "I " "hear: "
  "\nMy " "foes " "are " ev "er " "near " "me, "
  "\nA" "round " "me " "and " with "ing; "
  "\nBut, " Je "sus, " "draw " "Thou " near "er, "
  "\nAnd " "shield " "my " "soul " "from " "sin.\n"

  \set stanza = "3."
  "\nOh, " "let " "me " "hear " "Thee " speak "ing, "
  "\nIn " ac "cents " "clear " "and " "still, "
  "\nA" "bove " "the " "storms " "of " pas "sion, "
  "\nThe " mur "murs " "of " self "will. "
  "\nOh " "speak, " "to " re as "sure " "me, "
  "\nTo " hast "en " "or " con "trol; "
  "\nOh " "speak, " "and " "make " "me " list "en, "
  "\nThou " Guar "dian " "of " "my " "soul!\n"

  \set stanza = "4."
  "\nO " Je "sus, " "Thou " "hast " prom "ised "
  "\nTo " "all " "who " fol "low " "Thee, "
  "\nThat " "where " "Thou " "art " "in " glo "ry "
  "\nThere " "shall " "Thy " ser "cant " "be! "
  "\nAnd, " Je "sus " "I " "have " pro "mised "
  "\nTo " "serve " "Thee " "to " "the " "end; "
  "\nOh, " "give " "me " "grace " "to " fol "low "
  "\nMay " Mas "ter " "and " "my " "Friend!\n"

  \set stanza = "5."
  "\nO " "let " "me " "see " "Thy " foot "marks, "
  "\nAnd " "in " "them " "plant " "mine " "own; "
  "\nMy " "hope " "to " fol "low " dai "ly "
  "\nIs " "in " "Thy " "strength " a "lone. "
  "\nOh " "guide " "me, " "call " "me, " "draw " "me, "
  "\nUp" "hold " "me " "to " "the " "end; "
  "\nAnd " "tghen " "in " "heaven " re "ceive " "me, "
  "\nMy " Sa "viour " "and " "my " "Friend! "
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
      #(layout-set-staff-size 17)
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
