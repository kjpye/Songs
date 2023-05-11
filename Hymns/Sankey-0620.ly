\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It Passeth Knowledge."
  subtitle    = "Sankey No. 620"
  subsubtitle = "Sankey 880 No. 103"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mary Shekleton."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 | c4. 8 b4 a | 8 g fis g e4. g8 | 4 d e4. f8 |
  a8 g fis g e4. g8 | c4. 8 d c b a | 4 c g4. 8 |
  c4. 8 d4. 8 | e4 4 f8 e d c | 2 b | c2.
}

alto = \relative {
  \autoBeamOff
  e'4  | 4. 8 g4 f | 8 e dis e c4. e8 | 4 b c4. d8 |
  f8 e dis e c4. e8 | 4. g8 b a g f | 4 4 e4. 8 |
  4. 8 g4. 8 | 4 4 8 8 a a | g2 4(f) | e2.
}

tenor = \relative {
  \autoBeamOff
  g4 | 4. 8 c4 c | 8 8 a g8 4. 8 | 4 4 4. 8 |
  g8 8 a g8 4. 8 | 4. c8 8 8 8 8 | 4 4 4. 8 |
  g4. 8 b4. 8 | c4 4 d8 c c d | e2 d | c2.
}

bass = \relative {
  \autoBeamOff
  c4 | 4. 8 4 4 | 8 8 8 8 4. 8 | g4 4 4. 8 |
  c8 8 8 8 4. 8 | 4. e8 f f f f | 4 a c4. c,8 |
  c4. 8 g'4. 8 | c4 4 b8 c f, fis | g2 2 | c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 7

wordsOne = \lyricmode {
  \set stanza = "1."
  It pass -- eth know -- ledge, that dear love of Thine,
  My Je -- sus, Sa -- viour: yet this soul of mine
  Would of Thy love, in all its breadth and length,
  Its height and depth, its ev -- er -- last -- ing strength,
  Know more and more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  It pass -- eth tell -- ing, that dear love of Thine,
  My Je -- sus, Sa -- viour: yet these lips of mine
  Would fain pro -- claim to sin -- ners, far and near,
  A love which can re -- move all guil -- ty fear,
  And love be -- get.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  It pass -- eth prais -- es, that dear love of Thine,
  My Je -- sus, Sa -- viour: yet this heart of mine
  Would sing that love, so full, so rich, so free,
  Which brings a re -- bel sin -- ner, such as me,
  Nigh un -- to God.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  But though I can -- not sing, or tell, or know
  The ful -- ness of Thy love, while here be -- low,
  My emp -- ty ves - -sel I may free -- ly bring:
  O Thou, who art love the liv -- ing spring,
  My ves -- sel fill.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I am an em -- pty ves -- sel— not one thought,
  Or look of love, I ev -- er to Thee brought;
  Yet I may come, and come a -- gain to Thee,
  With this, the em -- pty sin -- ner's on -- ly plea,
  Thou lov -- est me.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Oh, fill me, Je -- sus, Sa -- viour, with Thy love!
  Lead, lead me to the liv -- ing fount a -- bove;
  Thith -- er may I, in sim -- ple faith, draw nigh,
  And nev -- er to a -- noth -- er foun -- tain fly,
  But un -- to Thee.
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  And when my Je -- sus face to face I see,
  When at His lof -- ty throne I bow the knee,
  Then of His love, in all its breadth and length,
  Its height and depth, its ev -- er -- last -- ing strength,
  My soul shall sing.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "It " pass "eth " know "ledge, " "that " "dear " "love " "of " "Thine, "
  "\nMy " Je "sus, " Sa "viour: " "yet " "this " "soul " "of " "mine "
  "\nWould " "of " "Thy " "love, " "in " "all " "its " "breadth " "and " "length, "
  "\nIts " "height " "and " "depth, " "its " ev er last "ing " "strength, "
  "\nKnow " "more " "and " "more.\n"

  \set stanza = "2."
  "\nIt " pass "eth " tell "ing, " "that " "dear " "love " "of " "Thine, "
  "\nMy " Je "sus, " Sa "viour: " "yet " "these " "lips " "of " "mine "
  "\nWould " "fain " pro "claim " "to " sin "ners, " "far " "and " "near, "
  "\nA " "love " "which " "can " re "move " "all " guil "ty " "fear, "
  "\nAnd " "love " be "get.\n"

  \set stanza = "3."
  "\nIt " pass "eth " prais "es, " "that " "dear " "love " "of " "Thine, "
  "\nMy " Je "sus, " Sa "viour: " "yet " "this " "heart " "of " "mine "
  "\nWould " "sing " "that " "love, " "so " "full, " "so " "rich, " "so " "free, "
  "\nWhich " "brings " "a " re "bel " sin "ner, " "such " "as " "me, "
  "\nNigh " un "to " "God.\n"

  \set stanza = "4."
  "\nBut " "though " "I " can "not " "sing, " "or " "tell, " "or " "know "
  "\nThe " ful "ness " "of " "Thy " "love, " "while " "here " be "low, "
  "\nMy " emp "ty " "ves "  "-sel " "I " "may " free "ly " "bring: "
  "\nO " "Thou, " "who " "art " "love " "the " liv "ing " "spring, "
  "\nMy " ves "sel " "fill.\n"

  \set stanza = "5."
  "\nI " "am " "an " em "pty " ves "sel— " "not " "one " "thought, "
  "\nOr " "look " "of " "love, " "I " ev "er " "to " "Thee " "brought; "
  "\nYet " "I " "may " "come, " "and " "come " a "gain " "to " "Thee, "
  "\nWith " "this, " "the " em "pty " sin "ner's " on "ly " "plea, "
  "\nThou " lov "est " "me.\n"

  \set stanza = "6."
  "\nOh, " "fill " "me, " Je "sus, " Sa "viour, " "with " "Thy " "love! "
  "\nLead, " "lead " "me " "to " "the " liv "ing " "fount " a "bove; "
  "\nThith" "er " "may " "I, " "in " sim "ple " "faith, " "draw " "nigh, "
  "\nAnd " nev "er " "to " a noth "er " foun "tain " "fly, "
  "\nBut " un "to " "Thee.\n"

  \set stanza = "7."
  "\nAnd " "when " "my " Je "sus " "face " "to " "face " "I " "see, "
  "\nWhen " "at " "His " lof "ty " "throne " "I " "bow " "the " "knee, "
  "\nThen " "of " "His " "love, " "in " "all " "its " "breadth " "and " "length, "
  "\nIts " "height " "and " "depth, " "its " ev er last "ing " "strength, "
  "\nMy " "soul " "shall " "sing. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
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
      #(layout-set-staff-size 19)
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
                                              \wordsSeven \chorus
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
