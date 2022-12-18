\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Trust in the Lord."
  subtitle    = "Sankey No. 560"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ida L. Reed."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \repeat volta 2 {
    \textMark \markup { \box \bold "C" } s1*4
    \alternative {
      { \textMark \markup { \box \bold "D" } s1*4 }
      { \textMark \markup { \box \bold "E" } s1*4 }
    }
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 bes8. aes16 f4 g8 aes | ees4 des8. f16 ees4 8 8 | aes4 bes8 aes bes4 f | bes2. r4 |
  c4 bes8. aes16 f4 g8 aes |
  \tag #'dash       {ees4 \slurDashed d8.(f16) \slurSolid ees4 aes8 8 |}
  \tag #'v2         {ees4             d8.(f16)            ees4 aes8 8 |}
  \tag #'(v1 v3 v4) {ees4             d8. f16             ees4 aes8 8 |}
  \tag #'dash       {bes4 f8 des' \slurDashed c8(8) \slurSolid bes4 |}
  \tag #'(v1 v3 v4) {bes4 f8 des'             c4               bes4 |}
  \tag #'v2         {bes4 f8 des'             c8 8             bes4 |}
  aes2. r4 \section \break |
  \repeat volta 2 {
    ees'2.^\markup\smallCaps Refrain. c8. bes16 | aes2. c4 | des2. aes8[bes] | c2. 8 8 |
    \alternative {
      {bes4 4 8. 16 c8 d | ees2. 4 | 4 d8. c16 d4 bes | ees2.\fermata r4 |}
      {bes4 4 8. f16 g8 aes | ees2. des'4 | c aes8. c16 bes4 4 | aes2. r4 |}
    }
  }
}

alto = \relative {
  \autoBeamOff
  ees'4 des8. c16 des4 8 8 | c4 b8. 16 c4 8 8 | c4 8 f d4 4 | ees2. r4 |
  ees4 des8. c16 des4 8 8 |
  \tag #'dash       {c4 \slurDashed b8.(16) \slurSolid c4 ees8 8 |}
  \tag #'v2         {c4             b4                 c4 ees8 8 |}
  \tag #'(v1 v3 v4) {c4             b8. 16             c4 ees8 8 |}
  \tag #'dash       {f4 ces8 f \slurDashed ees8(8) \slurSolid  des4 |}
  \tag #'(v1 v3 v4) {f4 ces8 f             ees4                des4 |}
  \tag #'v2         {f4 ces8 f             ees8 8              des4 |}
  c2. r4 |
  \repeat volta 2 {
    aes'4 8. 16 4 4 | ees4 8. 16 4 ges | f2. 4 | ees2. 8 8
    \alternative {
      {ees4 4 g8. 16 aes8 8 | g2. 4 | aes4 8. 16 4 4 | g8 8 8 aes bes4\fermata r}
      {f4 4 8. des16 8 8 | c2. f4 | ees4 8. 16 des4 4 | c2. r4 |}
    }
  }
}

tenor = \relative {
  \autoBeamOff
  aes4 8. 16 4 bes8 8 | aes4 8. 16 4 8 8 | 4 bes8 c aes4 bes | g2. r4 |
  aes4 8. 16 4 bes8 8 |
  \tag #'dash       {aes4 \slurDashed 8.(16) \slurSolid 4 8 8 |}
  \tag #'v2         {aes4             4                 4 8 8 |}
  \tag #'(v1 v3 v4) {aes4             8. 16             4 8 8 |}
  \tag #'dash       {4 8 8 \slurDashed 8(8) \slurSolid g4 |}
  \tag #'(v1 v3 v4) {4 8 8             4               g4 |}
  \tag #'v2         {4 8 8             8 8             g4 |}
  aes2. r4 |
  \repeat volta 2 {
    c2. ees8. d16 | c2. aes4 | 4 4 4 4 | 4 4 4 8 8 |
    \alternative {
      {g4 bes ees ees8[bes] | 4 4 4 4 | 4 f'8. 16 ees4 d | des8 bes bes c des4\fermata r|}
      {bes4 des des bes | aes4 4 4 4 | 4 c8. aes16 f4 g | aes2. r4 |}
    }
  }
}

bass = \relative {
  \autoBeamOff
  aes,4 8. 16 ees'4 8 f | aes4 aes,8. 16 4 8 8 | f'4 8 8 bes,4 f' | ees2. r4 |
  aes,4 8. 16 ees'4 8 f |
  \tag #'dash       {aes4 \slurDashed aes,8.(16) \slurSolid 4 c8 8 |}
  \tag #'v2         {aes'4            aes,4                 4 c8 8 |}
  \tag #'(v1 v3 v4) {aes'4            aes,8. 16             4 c8 8 |}
  \tag #'dash       {des4 8 bes \slurDashed ees8(8) \slurSolid 4 |}
  \tag #'(v1 v3 v4) {des4 8 bes             ees4               4 |}
  \tag #'v2         {des4 8 bes             ees8 8             4 |}
  aes,2. r4 |
  \repeat volta 2 {
    aes'4 8. 16 4 ees | aes, c8. ees16 aes,4 4 | des4 4 4 4 | aes4 4 4 8 8 |
    \alternative {
      {ees'4 g bes aes8[f] | ees4 4 4 4 | aes4 8. 16 4 4 | ees2.\fermata r4}
      {des4 4 4 ees8[f] | aes4 aes,4 4 des | ees4 8. 16 4 4 | aes,2. r4 |}
    }
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  \repeat volta 2 {
    Trust __ in the Lord __ with all __ thine heart, __ And in
    \alternative {
      { all thy ways ack -- now -- ledge Him, __ And He shall di -- rect thy paths; __ }
      { all thy ways ack -- now -- ledge Him, __ And He shall di -- rect thy paths. }
    }
  }
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  \repeat volta 2 {
    Trust in the Lord, oh, trust in the Lord
    with all thine heart, with all thine heart, _ _
    \alternative {
      { _ _ _ ac -- know -- ledge Him,
        \set associatedVoice = alignerT _ _ _ _ _ _ _ di -- rect thy \set associatedVoice = alignerB paths; }
      { _ _ _ ac -- know -- ledge Him _ _ _ _ _ _ _ }
    }
  }
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Bless -- ed is he that is trust -- ing the Lord,
  For the help that he dai -- ly needs;
  He shall in -- he -- rit the \nom prom -- ised re -- ward, \yesm
  If he fol -- low where Je -- sus leads.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bless -- ed is he that is trust -- ing the Lord,
  Who doth fol -- low the heav -- 'nly way;
  Keep -- ing with pa -- tience and hope the path.
  All his steps shall be \nom guard -- ed \yesm each day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bless -- ed is he whom the Fa -- ther will aid,
  And the Sa -- viour will e'er be -- friend;
  He shall not fear, and shall not \nom be dis -- mayed, \yesm
  For the Lord will his soul de -- fend.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Bless -- ed is he who will keep in the way
  That will up -- ward and on -- ward lead;
  Walk -- ing by faith in His love \nom ev -- 'ry \yesm day,
  Who sup -- pli -- eth his dai -- ly need.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Bless" "ed " "is " "he " "that " "is " trust "ing " "the " "Lord, "
  "\nFor " "the " "help " "that " "he " dai "ly " "needs; "
  "\nHe " "shall " in he "rit " "the " prom "ised " re "ward, "
  "\nIf " "he " fol "low " "where " Je "sus " "leads. "
  \repeat volta 2 {
    "\nTrust "  "in " "the " "Lord "  "with " "all "  "thine " "heart, "  "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths; "  }
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths.\n" }
    }
  }

  \set stanza = "2."
  "\nBless" "ed " "is " "he " "that " "is " trust "ing " "the " "Lord, "
  "\nWho " "doth " fol "low " "the " heav "'nly " "way; "
  "\nKeep" "ing " "with " pa "tience " "and " "hope " "the " "path. "
  "\nAll " "his " "steps " "shall " "be " guard "ed " "each " "day. "
  \repeat volta 2 {
    "\nTrust "  "in " "the " "Lord "  "with " "all "  "thine " "heart, "  "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths; "  }
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths.\n" }
    }
  }

  \set stanza = "3."
  "\nBless" "ed " "is " "he " "whom " "the " Fa "ther " "will " "aid, "
  "\nAnd " "the " Sa "viour " "will " "e'er " be "friend; "
  "\nHe " "shall " "not " "fear, " "and " "shall " "not " "be " dis "mayed, "
  "\nFor " "the " "Lord " "will " "his " "soul " de "fend. "
  \repeat volta 2 {
    "\nTrust "  "in " "the " "Lord "  "with " "all "  "thine " "heart, "  "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths; "  }
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths.\n" }
    }
  }

  \set stanza = "4."
  "\nBless" "ed " "is " "he " "who " "will " "keep " "in " "the " "way "
  "\nThat " "will " up "ward " "and " on "ward " "lead; "
  "\nWalk" "ing " "by " "faith " "in " "His " "love " ev "'ry " "day, "
  "\nWho " sup pli "eth " "his " dai "ly " "need. "
  \repeat volta 2 {
    "\nTrust "  "in " "the " "Lord "  "with " "all "  "thine " "heart, "  "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths; "  }
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths. " }
    }
  }
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Bless" "ed " "is " "he " "that " "is " trust "ing " "the " "Lord, "
  "\nFor " "the " "help " "that " "he " dai "ly " "needs; "
  "\nHe " "shall " in he "rit " "the " \nom prom "ised " re "ward, " \yesm
  "\nIf " "he " fol "low " "where " Je "sus " "leads. "
  \repeat volta 2 {
    "\nTrust "  "in " "the " "Lord, " "oh, " "trust " "in " "the " "Lord "
    "\nwith " "all "  "thine " "heart, "  "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths, " di "rect " "thy " "paths;" }
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths.\n" }
    }
  }

  \set stanza = "2."
  "\nBless" "ed " "is " "he " "that " "is " trust "ing " "the " "Lord, "
  "\nWho " "doth " fol "low " "the " heav "'nly " "way; "
  "\nKeep" "ing " "with " pa "tience " "and " "hope " "the " "path. "
  "\nAll " "his " "steps " "shall " "be " \nom guard "ed " \yesm "each " "day. "
  \repeat volta 2 {
    "\nTrust "  "in " "the " "Lord, " "oh, " "trust " "in " "the " "Lord "
    "\nwith " "all "  "thine " "heart, "  "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths, " di "rect " "thy " "paths;" }
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths.\n" }
    }
  }

  \set stanza = "3."
  "\nBless" "ed " "is " "he " "whom " "the " Fa "ther " "will " "aid, "
  "\nAnd " "the " Sa "viour " "will " "e'er " be "friend; "
  "\nHe " "shall " "not " "fear, " "and " "shall " "not " \nom "be " dis "mayed, " \yesm
  "\nFor " "the " "Lord " "will " "his " "soul " de "fend. "
  \repeat volta 2 {
    "\nTrust "  "in " "the " "Lord, " "oh, " "trust " "in " "the " "Lord "
    "\nwith " "all "  "thine " "heart, "  "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths, " di "rect " "thy " "paths;" }
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths.\n" }
    }
  }

  \set stanza = "4."
  "\nBless" "ed " "is " "he " "who " "will " "keep " "in " "the " "way "
  "\nThat " "will " up "ward " "and " on "ward " "lead; "
  "\nWalk" "ing " "by " "faith " "in " "His " "love " \nom ev "'ry " \yesm "day, "
  "\nWho " sup pli "eth " "his " dai "ly " "need. "
  \repeat volta 2 {
    "\nTrust "  "in " "the " "Lord, " "oh, " "trust " "in " "the " "Lord "
    "\nwith " "all "  "thine " "heart, "  "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths, " di "rect " "thy " "paths;" }
      { "\nall " "thy " "ways " ack now "ledge " "Him, "  "And " "He " "shall " di "rect " "thy " "paths. " }
    }
  }
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Bless" "ed " "is " "he " "that " "is " trust "ing " "the " "Lord, "
  "\nFor " "the " "help " "that " "he " dai "ly " "needs; "
  "\nHe " "shall " in he "rit " "the " \nom prom "ised " re "ward, " \yesm
  "\nIf " "he " fol "low " "where " Je "sus " "leads. "
  \repeat volta 2 {
    "\nTrust " "in " "the " "Lord, " "with " "all " "thine " "heart, "
    "\nwith " "all " "thine " "heart, " "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ac know "ledge " "Him, "
        "\nAnd " "he " "shall " di "rect " "thy " "paths, "
        "\ndi" "rect " "thy " "paths; " }
      { "\nall " "thy " "ways " ac know "ledge " "Him "
        "\nAnd " "He " "shall " di "rect " "thy " "paths.\n" }
    }
  }

  \set stanza = "2."
  "\nBless" "ed " "is " "he " "that " "is " trust "ing " "the " "Lord, "
  "\nWho " "doth " fol "low " "the " heav "'nly " "way; "
  "\nKeep" "ing " "with " pa "tience " "and " "hope " "the " "path. "
  "\nAll " "his " "steps " "shall " "be " \nom guard "ed " \yesm "each " "day. "
  \repeat volta 2 {
    "\nTrust " "in " "the " "Lord, " "with " "all " "thine " "heart, "
    "\nwith " "all " "thine " "heart, " "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ac know "ledge " "Him, "
        "\nAnd " "he " "shall " di "rect " "thy " "paths, "
        "\ndi" "rect " "thy " "paths; " }
      { "\nall " "thy " "ways " ac know "ledge " "Him "
        "\nAnd " "He " "shall " di "rect " "thy " "paths.\n" }
    }
  }

  \set stanza = "3."
  "\nBless" "ed " "is " "he " "whom " "the " Fa "ther " "will " "aid, "
  "\nAnd " "the " Sa "viour " "will " "e'er " be "friend; "
  "\nHe " "shall " "not " "fear, " "and " "shall " "not " \nom "be " dis "mayed, " \yesm
  "\nFor " "the " "Lord " "will " "his " "soul " de "fend. "
  \repeat volta 2 {
    "\nTrust " "in " "the " "Lord, " "with " "all " "thine " "heart, "
    "\nwith " "all " "thine " "heart, " "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ac know "ledge " "Him, "
        "\nAnd " "he " "shall " di "rect " "thy " "paths, "
        "\ndi" "rect " "thy " "paths; " }
      { "\nall " "thy " "ways " ac know "ledge " "Him "
        "\nAnd " "He " "shall " di "rect " "thy " "paths.\n" }
    }
  }

  \set stanza = "4."
  "\nBless" "ed " "is " "he " "who " "will " "keep " "in " "the " "way "
  "\nThat " "will " up "ward " "and " on "ward " "lead; "
  "\nWalk" "ing " "by " "faith " "in " "His " "love " \nom ev "'ry " \yesm "day, "
  "\nWho " sup pli "eth " "his " dai "ly " "need. "
  \repeat volta 2 {
    "\nTrust " "in " "the " "Lord, " "with " "all " "thine " "heart, "
    "\nwith " "all " "thine " "heart, " "And " "in "
    \alternative {
      { "\nall " "thy " "ways " ac know "ledge " "Him, "
        "\nAnd " "he " "shall " di "rect " "thy " "paths, "
        "\ndi" "rect " "thy " "paths; " }
      { "\nall " "thy " "ways " ac know "ledge " "Him "
        "\nAnd " "He " "shall " di "rect " "thy " "paths. " }
    }
  }
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "\nBless" "ed " "is " "he " "that " "is " trust "ing " "the " "Lord, "
  "\nFor " "the " "help " "that " "he " dai "ly " "needs; "
  "\nHe " "shall " in he "rit " "the " prom "ised " re "ward, "
  "\nIf " "he " fol "low " "where " Je "sus " "leads. "
  \repeat volta 2 {
    "\nTrust " "in " "the " "Lord, " "oh, " "trust " "in " "the " "Lord "
    "\nwith " "all " "thine " "heart, " "with " "all " "thine " "heart, " "\nAnd " "in "
    \alternative {
      { "all " "thy " "ways " ac know "ledge " "Him, "
        "\nAnd " "He " "shall " di "rect " "thy " "paths; " }
      { "\nall " "thy " "ways " ac know "ledge " "Him "
        "\nand " "He " "shall " di "rect " "thy " "paths. " }
    }
  }

  \set stanza = "2."
  "\nBless" "ed " "is " "he " "that " "is " trust "ing " "the " "Lord, "
  "\nWho " "doth " fol "low " "the " heav "'nly " "way; "
  "\nKeep" "ing " "with " pa "tience " "and " "hope " "the " "path. "
  "\nAll " "his " "steps " "shall " "be " guard "ed " "each " "day. "
  \repeat volta 2 {
    "\nTrust " "in " "the " "Lord, " "oh, " "trust " "in " "the " "Lord "
    "\nwith " "all " "thine " "heart, " "with " "all " "thine " "heart, " "\nAnd " "in "
    \alternative {
      { "all " "thy " "ways " ac know "ledge " "Him, "
        "\nAnd " "He " "shall " di "rect " "thy " "paths; " }
      { "\nall " "thy " "ways " ac know "ledge " "Him "
        "\nand " "He " "shall " di "rect " "thy " "paths. " }
    }
  }

  \set stanza = "3."
  "\nBless" "ed " "is " "he " "whom " "the " Fa "ther " "will " "aid, "
  "\nAnd " "the " Sa "viour " "will " "e'er " be "friend; "
  "\nHe " "shall " "not " "fear, " "and " "shall " "not " "be " dis "mayed, "
  "\nFor " "the " "Lord " "will " "his " "soul " de "fend. "
  \repeat volta 2 {
    "\nTrust " "in " "the " "Lord, " "oh, " "trust " "in " "the " "Lord "
    "\nwith " "all " "thine " "heart, " "with " "all " "thine " "heart, " "\nAnd " "in "
    \alternative {
      { "all " "thy " "ways " ac know "ledge " "Him, "
        "\nAnd " "He " "shall " di "rect " "thy " "paths; " }
      { "\nall " "thy " "ways " ac know "ledge " "Him "
        "\nand " "He " "shall " di "rect " "thy " "paths. " }
    }
  }

  \set stanza = "4."
  "\nBless" "ed " "is " "he " "who " "will " "keep " "in " "the " "way "
  "\nThat " "will " up "ward " "and " on "ward " "lead; "
  "\nWalk" "ing " "by " "faith " "in " "His " "love " ev "'ry " "day, "
  "\nWho " sup pli "eth " "his " dai "ly " "need. "
  \repeat volta 2 {
    "\nTrust " "in " "the " "Lord, " "oh, " "trust " "in " "the " "Lord "
    "\nwith " "all " "thine " "heart, " "with " "all " "thine " "heart, " "\nAnd " "in "
    \alternative {
      { "all " "thy " "ways " ac know "ledge " "Him, "
        "\nAnd " "He " "shall " di "rect " "thy " "paths; " }
      { "\nall " "thy " "ways " ac know "ledge " "Him "
        "\nand " "He " "shall " di "rect " "thy " "paths. " }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
    \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
    \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
    \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
    \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
            \addlyrics \wordsMidiBass
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
%            \new Voice { \voiceOne \global \keepWithTag #'dash \soprano \bar "|." }
%            \new Voice { \voiceTwo \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
%            \new Voice { \voiceOne \global \keepWithTag #'dash \tenor }
%            \new Voice { \voiceTwo \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
            \new NullVoice = alignerB { \keepWithTag #'dash \bass  }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB \chorusMen
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
      \new Voice { \repeat unfold \verses \unfoldRepeats \RehearsalTrack }
      \new Voice { \repeat unfold \verses \unfoldRepeats \TempoTrack }
      \new NullVoice = "aligner" {
        \keepWithTag #'v1 \unfoldRepeats \soprano
        \unfoldRepeats \keepWithTag #'v2 \soprano
        \unfoldRepeats \keepWithTag #'v3 \soprano
        \unfoldRepeats \keepWithTag #'v4 \soprano
      }
%      \new Voice { \global
%                                           \unfoldRepeats \keepWithTag #'v1 \soprano
%                                           \unfoldRepeats \keepWithTag #'v2 \soprano
%                                           \unfoldRepeats \keepWithTag #'v3 \soprano
%                                           \unfoldRepeats \keepWithTag #'v4 \soprano
%                                           \bar "|." }
      \new Voice \partCombine #'(2 . 88) { \global
                                           \unfoldRepeats \keepWithTag #'v1 \soprano
                                           \unfoldRepeats \keepWithTag #'v2 \soprano
                                           \unfoldRepeats \keepWithTag #'v3 \soprano
                                           \unfoldRepeats \keepWithTag #'v4 \soprano
                                           \bar "|." }
      { \global
        \unfoldRepeats \keepWithTag #'v1 \alto \nl
        \unfoldRepeats \keepWithTag #'v2 \alto \nl
        \unfoldRepeats \keepWithTag #'v3 \alto \nl
        \unfoldRepeats \keepWithTag #'v4 \alto \nl
        \bar "|." }
      \new Lyrics \lyricsto "aligner" { \wordsOne   \unfoldRepeats \chorus
                                        \wordsTwo   \unfoldRepeats \chorus
                                        \wordsThree \unfoldRepeats \chorus
                                        \wordsFour  \unfoldRepeats \chorus
                                      }
    >>
                                % Joint tenor/bass staff
    \new Staff = men \with { printPartCombineTexts = ##f }
    <<
      \clef "bass"
      \new Voice \partCombine #'(2 . 88) { \global
                                           \unfoldRepeats \keepWithTag #'v1 \tenor
                                           \unfoldRepeats \keepWithTag #'v2 \tenor
                                           \unfoldRepeats \keepWithTag #'v3 \tenor
                                           \unfoldRepeats \keepWithTag #'v4 \tenor
                                         }
      { \global
        \unfoldRepeats \keepWithTag #'v1 \bass
        \unfoldRepeats \keepWithTag #'v2 \bass
        \unfoldRepeats \keepWithTag #'v3 \bass
        \unfoldRepeats \keepWithTag #'v4 \bass
      }
      \new NullVoice = alignerT {
        \unfoldRepeats {
          \keepWithTag #'v1 \tenor
          \keepWithTag #'v2 \tenor
          \keepWithTag #'v3 \tenor
          \keepWithTag #'v4 \tenor
        }
      }
      \new NullVoice = alignerB {
        \unfoldRepeats {
          \keepWithTag #'v1 \bass
          \keepWithTag #'v2 \bass
          \keepWithTag #'v3 \bass
          \keepWithTag #'v4 \bass
        }
      }
    >>
    \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB { \repeat unfold \verses \unfoldRepeats \chorusMen }
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
