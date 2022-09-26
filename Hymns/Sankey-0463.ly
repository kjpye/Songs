\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Prodigal's Return."
  subtitle    = "Sankey No. 463"
  subsubtitle = "Sankey 880 No. 462"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. \smallCaps "Ira D. Sankey."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Newton"
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*4 s2
  \mark \markup { \box "D" } s2 s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  ees'4 | aes4 4 8[g] f[g] | aes4 4 4 ees | aes bes8[c] des4 c | bes2 r4 \bar "|" \break 4 |
  c4 des ees ees | des c bes8[c] des4 | c bes aes g | aes2 r4 \bar "|" \break ees^\markup\smallCaps Chorus |
  ees4 4 4 4 | ees2 r4 4 | aes4 4 8[g] f[g] | aes4 4 4 ees | aes4 bes8[c] \bar "|" \break des4 c |
  bes2 r4 4 | c des ees ees | des c bes8[c] des4 | c4 bes aes g | aes2 r4
}

alto = \relative {
  \autoBeamOff \partial 4
  c'4 | ees ees des des | c4 des c c | ees4 4 4 4 | 2 r4 4 |
  ees4 4 aes aes | ees4 4 f f | 4 4 ees ees | c2 r4 4 |
  c4 4 des des | c2 r4 ees | c4 ees ees des | c des c c | ees4 4 4 4 |
  ees2 r4 4 | 4 4 aes aes | ees ees f f | 4 4 ees des c2 r4
  
}

tenor = \relative {
  \autoBeamOff \partial 4
  aes4 | c c bes bes | aes f ees aes | 4 g8[aes] bes4 aes | g2 r4 4 |
  aes4 bes c c | g aes4 8[a] bes4 | ees des c bes | aes2 r4 4 |
  aes4 4 g g | aes2 r4 ees | ees aes bes bes | aes4 f ees aes | aes g8[aes] bes4 aes |
  g2 r4 4 | aes4 bes c c | g aes4 8[a] bes4 | ees des c bes | aes2 r4
}

bass = \relative {
  \autoBeamOff \partial 4
  aes4 | aes aes ees ees | aes,4 4 4 4 | c4 ees g aes | ees2 r4 4 |
  aes4 4 4 aes, | bes c des8[c] bes4 | c des ees ees | aes,2 r4 4 |
  aes4 4 ees' ees | aes,2 r4 4 | 4 c ees ees | aes,4 4 4 4 | c ees g aes |
  ees2 r4 4 | aes aes aes aes, | bes4 c des8[c] bes4 | c des ees ees | aes,2 r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"I'll" not pine here for bread,
  I'll not pine here for "bread,\"" he cries;
  "\"Nor" starve in for -- eign lands:
  My fa -- ther's house has large sup -- plies,
  And boun -- teous are his "hands.\""
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Af -- flic -- tions, tho' they seem se -- vere,
  In mer -- cy oft are sent:
  They stopp'd the pro -- di -- gal's ca -- reer,
  And caused him to re -- pent.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"What" have I gained by "sin,\"" he said,
  "\"But" hun -- ger, shame, and fear?
  My fa -- ther's house a -- bounds in bread,
  While I am starv -- ing "here!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"I'll" go and tell him all I've done,
  Fall down be -- fore his face;
  Un -- wor -- thy to be called his son,
  I'll seek a ser -- vant's "place.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Hi fa -- ther saw him com -- ing back;
  He saw, he ran, he smiled;
  And threw hi arms a -- round the neck
  Of his re -- bel -- lious child!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  "\"O" fa -- ther, I have sinned— for -- "give!\""
  "\"E" -- "nough!\"" the fa -- ther said:
  "\"Re" -- joice, my house; my son's a -- live,
  For whom I mourned as "dead!\""
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  'Tis thus the Lord His love re -- veals,
  To call poor sin -- ners home;
  More than a fa -- ther's love He feels,
  And wel -- comes all that come.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Af" flic "tions, " "tho' " "they " "seem " se "vere, "
  "\nIn " mer "cy " "oft " "are " "sent: "
  "\nThey " "stopp'd " "the " pro di "gal's " ca "reer, "
  "\nAnd " "caused " "him " "to " re "pent. "
  "\n\"I'll " "not " "pine " "here " "for " "bread, "
  "\nI'll " "not " "pine " "here " "for " "bread,\" " "he " "cries; "
  "\n\"Nor " "starve " "in " for "eign " "lands: "
  "\nMy " fa "ther's " "house " "has " "large " sup "plies, "
  "\nAnd " boun "teous " "are " "his " "hands.\"\n"

  \set stanza = "2."
  "\n\"What " "have " "I " "gained " "by " "sin,\" " "he " "said, "
  "\n\"But " hun "ger, " "shame, " "and " "fear? "
  "\nMy " fa "ther's " "house " a "bounds " "in " "bread, "
  "\nWhile " "I " "am " starv "ing " "here!\" "
  "\n\"I'll " "not " "pine " "here " "for " "bread, "
  "\nI'll " "not " "pine " "here " "for " "bread,\" " "he " "cries; "
  "\n\"Nor " "starve " "in " for "eign " "lands: "
  "\nMy " fa "ther's " "house " "has " "large " sup "plies, "
  "\nAnd " boun "teous " "are " "his " "hands.\"\n"

  \set stanza = "3."
  "\n\"I'll " "go " "and " "tell " "him " "all " "I've " "done, "
  "\nFall " "down " be "fore " "his " "face; "
  "\nUn" wor "thy " "to " "be " "called " "his " "son, "
  "\nI'll " "seek " "a " ser "vant's " "place.\" "
  "\n\"I'll " "not " "pine " "here " "for " "bread, "
  "\nI'll " "not " "pine " "here " "for " "bread,\" " "he " "cries; "
  "\n\"Nor " "starve " "in " for "eign " "lands: "
  "\nMy " fa "ther's " "house " "has " "large " sup "plies, "
  "\nAnd " boun "teous " "are " "his " "hands.\"\n"

  \set stanza = "4."
  "\nHi " fa "ther " "saw " "him " com "ing " "back; "
  "\nHe " "saw, " "he " "ran, " "he " "smiled; "
  "\nAnd " "threw " "hi " "arms " a "round " "the " "neck "
  "\nOf " "his " re bel "lious " "child! "
  "\n\"I'll " "not " "pine " "here " "for " "bread, "
  "\nI'll " "not " "pine " "here " "for " "bread,\" " "he " "cries; "
  "\n\"Nor " "starve " "in " for "eign " "lands: "
  "\nMy " fa "ther's " "house " "has " "large " sup "plies, "
  "\nAnd " boun "teous " "are " "his " "hands.\"\n"

  \set stanza = "5."
  "\n\"O " fa "ther, " "I " "have " "sinned— " for "give!\" "
  "\n\"E" "nough!\" " "the " fa "ther " "said: "
  "\n\"Re" "joice, " "my " "house; " "my " "son's " a "live, "
  "\nFor " "whom " "I " "mourned " "as " "dead!\" "
  "\n\"I'll " "not " "pine " "here " "for " "bread, "
  "\nI'll " "not " "pine " "here " "for " "bread,\" " "he " "cries; "
  "\n\"Nor " "starve " "in " for "eign " "lands: "
  "\nMy " fa "ther's " "house " "has " "large " sup "plies, "
  "\nAnd " boun "teous " "are " "his " "hands.\"\n"

  \set stanza = "6."
  "\n'Tis " "thus " "the " "Lord " "His " "love " re "veals, "
  "\nTo " "call " "poor " sin "ners " "home; "
  "\nMore " "than " "a " fa "ther's " "love " "He " "feels, "
  "\nAnd " wel "comes " "all " "that " "come. "
  "\n\"I'll " "not " "pine " "here " "for " "bread, "
  "\nI'll " "not " "pine " "here " "for " "bread,\" " "he " "cries; "
  "\n\"Nor " "starve " "in " for "eign " "lands: "
  "\nMy " fa "ther's " "house " "has " "large " sup "plies, "
  "\nAnd " boun "teous " "are " "his " "hands.\" "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
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
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

#(set-global-staff-size 20)

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
