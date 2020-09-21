\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Behold, what Love!"
  subtitle    = "Sankey No. 21"
  subsubtitle = "Sankey 880 No. 391"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "M.S.S."
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

verses = 4

global = {
  \key des \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta 4 {
    \mark \markup { \box "A" } s4 s1*3 s2.
    \mark \markup { \box "B" } s4 s1*3 s2.
    \mark \markup { \box "C" } s4 \time 12/8 s1. s1
    \mark \markup { \box "D" } s2 s1. s1.
    \mark \markup { \box "E" } s1. s1. s1. s2. s4.
  }
}

TempoTrack = {
  \repeat volta 4 {
    \tempo 4=120
    s4 s1*8
    \time 12/8
    \tempo 4.=120
    s1.*7
    s2. s4.
  }
}

soprano = \relative c' {
  \global
  \repeat volta 4 {
    \time 4/4
    \partial 4
    des8(f)
    aes4 aes aes des
    aes4. ges8 f4 des8(ees)
    f4 aes8(ges) f4 f
    des2. \bar "||" \break f8(aes)
    bes4 bes bes ges8(bes) % B
    des4 des des aes8(des)
    c8(ees) ees(des) c4 bes
    aes2. \bar "||" \break aes4 \time 12/8
    des2.~des4 des8 des c bes % C
    aes2.~aes4 \bar "||" \break aes8 bes aes ges
    f4 8 ees4 f8 ges4 aes8 bes4 c8 % D
    bes4. aes2. aes4. \bar "||" \break
    f'2.~f4 ees8 des c bes % E
    aes2.~aes4. d8(ees) f
    ees4. ees des c
    des2.~des4. \bar "||" \break
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 4 {
    des4
    des4 ees f e
    f4. ees8 des4 des
    des4 f8(ees) des4 c
    des2. \bar "||" \break des8(f)
    ges4 4 4 des8(ges) % B
    f4 4 4 4
    ees4 aes8(ges) aes4 ees
    ees2. \bar "||" \break ges4 \time 12/8
    f2.~f4 8 8 aes ges % C
    f2.~f4 \bar "||" \break f8 des des des
    des4 8 c4 des8 ees4 f8 ges4 aes8 % D
    ges4. f2. f4.
    aes2.~aes4 8 bes aes ges % E
    f2.~4. 8(ges) aes
    ges4. ges f ees8(f ges)
    f2.~4.
  }
}

tenor = \relative c {
  \global
  \repeat volta 4 {
    \time 4/4
    f4
    f4 ges aes bes
    aes4. 8 4 f8(ges)
    aes4 des des aes8(ges)
    f2. \bar "||" \break aes8(des)
    des4 des des bes % B
    aes4 aes aes des8(aes)
    aes8 c c bes aes4 g8 des' c2. \bar "||" \break aes4 \time 12/8
    aes4 8 8 8 8 4. 4(des8)
    des4 8 8 8 8 4 \bar "||" \break des8 8 c bes
    aes4 8 4 8 4 des8 4 8 % D
    des4. 2. 4. \bar "||" \break
    des4. 4 8 4. 8 8 8 % E
    des4 8 4 8 4. aes4 des8
    bes4. 4. aes aes
    aes2.~4.
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 4 {
    \time 4/4
    des4
    des4 des des des
    des4. des8 des4 des
    des4 des
    aes aes
    des2. \bar "||" \break des4
    ges4 ges ges ges % B
    des4 des des des
    ees4 ees ees ees
    aes2. \bar "||" \break aes4 \time 12/8
    des,4 8 8 8 8 4. 4. % C
    des4 8 8 f aes des4 \bar "||" \break des8 ges, ges ges
    des4 8 aes4 8 4 8 4 8 % D
    des4. 2. 4.
    des4. 4 8 4. ges8 8 8 % E
    des4 8 f4 aes8 des4. des,4 8
    ges4. ees aes aes,
    des2.~4.
  }
}

chorus = \lyricmode {
  Be- hold, __ what man- ner of love! __
  what man- ner of love the Fa- ther hath be- stow'd up- on us,
  That we, __ that we should be call'd, __
  should be call'd the sons of God!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Be- hold, what man- ner of love!
  be- __ hold, what man- ner of love!
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  we should be call'd, we should be call'd the sons of God.
  _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Be- hold what love, what bound- less love,
  The Fath- er hath be- stowed
  On sin- ners lost, that we should be
  Now call'd the sons of God!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  No long- er far from Him, but now
  By "\"Pre-" cious "blood\"" made nigh;
  Ac- cept- ed in the "\"Well-" be- "lov'd.\""
  Near to God's heart we lie.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  What we in glo- ry soon shall be,
  It doth not yet ap- pear;
  But when our pre- cious Lord we see,
  We shall His i- mage bear.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  With such a bles- sed hope in view,
  We would more ho- ly be,
  More like our ri- sen, glo- rious Lord,
  Whose face we soon shall see.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nBe" "hold " "what " "love, " "what " bound "less " "love, "
  "\nThe " Fath "er " "hath " be "stowed "
  "\nOn " sin "ners " "lost, " "that " "we " "should " "be "
  "\nNow " "call'd " "the " "sons " "of " "God! "
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nwhat " man "ner " "of " "love " "the " Fa "ther " "hath " be "stow'd " up "on " "us, "
  "\nThat " "we, "  "that " "we " "should " "be " "call'd, " 
  "\nshould " "be " "call'd " "the " "sons " "of " "God! "

  \set stanza = "2."
  "\nNo " long "er " "far " "from " "Him, " "but " "now "
  "\nBy " "\"Pre" "cious " "blood\" " "made " "nigh; "
  "\nAc" cept "ed " "in " "the " "\"Well " be "lov'd.\" "
  "\nNear " "to " "God's " "heart " "we " "lie. "
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nwhat " man "ner " "of " "love " "the " Fa "ther " "hath " be "stow'd " up "on " "us, "
  "\nThat " "we, "  "that " "we " "should " "be " "call'd, " 
  "\nshould " "be " "call'd " "the " "sons " "of " "God! "

  \set stanza = "3."
  "\nWhat " "we " "in " glo "ry " "soon " "shall " "be, "
  "\nIt " "doth " "not " "yet " ap "pear; "
  "\nBut " "when " "our " pre "cious " "Lord " "we " "see, "
  "\nWe " "shall " "His " i "mage " "bear. "
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nwhat " man "ner " "of " "love " "the " Fa "ther " "hath " be "stow'd " up "on " "us, "
  "\nThat " "we, "  "that " "we " "should " "be " "call'd, " 
  "\nshould " "be " "call'd " "the " "sons " "of " "God! "

  \set stanza = "4."
  "\nWith " "such " "a " bles "sed " "hope " "in " "view, "
  "\nWe " "would " "more " ho "ly " "be, "
  "\nMore " "like " "our " ri "sen, " glo "rious " "Lord, "
  "\nWhose " "face " "we " "soon " "shall " "see. "
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nwhat " man "ner " "of " "love " "the " Fa "ther " "hath " be "stow'd " up "on " "us, "
  "\nThat " "we, "  "that " "we " "should " "be " "call'd, " 
  "\nshould " "be " "call'd " "the " "sons " "of " "God! "
}
  
wordsMenMidi = \lyricmode {
  \set stanza = "1."
  "\nBe" "hold " "what " "love, " "what " bound "less " "love, "
  "\nThe " Fath "er " "hath " be "stowed "
  "\nOn " sin "ners " "lost, " "that " "we " "should " "be "
  "\nNow " "call'd " "the " "sons " "of " "God! "
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nwhat " man "ner " "of " "love " "the " Fa "ther " "hath " be "stow'd " up "on " "us, "
  "\nThat " "we " "should " "be " "call'd, " 
  "\nwe " "should " "be " "call'd " "the " "sons " "of " "God! "
  "\nshould " "be " "call'd " "the " "sons " "of " "God! "

  \set stanza = "2."
  "\nNo " long "er " "far " "from " "Him, " "but " "now "
  "\nBy " "\"Pre" "cious " "blood\" " "made " "nigh; "
  "\nAc" cept "ed " "in " "the " "\"Welly " be "lov'd.\" "
  "\nNear " "to " "God's " "heart " "we " "lie. "
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nwhat " man "ner " "of " "love " "the " Fa "ther " "hath " be "stow'd " up "on " "us, "
  "\nThat " "we " "should " "be " "call'd, " 
  "\nwe " "should " "be " "call'd " "the " "sons " "of " "God! "
  "\nshould " "be " "call'd " "the " "sons " "of " "God! "

  \set stanza = "3."
  "\nWhat " "we " "in " glo "ry " "soon " "shall " "be, "
  "\nIt " "doth " "not " "yet " ap "pear; "
  "\nBut " "when " "our " pre "cious " "Lord " "we " "see, "
  "\nWe " "shall " "His " i "mage " "bear. "
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nwhat " man "ner " "of " "love " "the " Fa "ther " "hath " be "stow'd " up "on " "us, "
  "\nThat " "we " "should " "be " "call'd, " 
  "\nwe " "should " "be " "call'd " "the " "sons " "of " "God! "
  "\nshould " "be " "call'd " "the " "sons " "of " "God! "

  \set stanza = "4."
  "\nWith " "such " "a " bles "sed " "hope " "in " "view, "
  "\nWe " "would " "more " ho "ly " "be, "
  "\nMore " "like " "our " ri "sen, " glo "rious " "Lord, "
  "\nWhose " "face " "we " "soon " "shall " "see. "
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nBe" "hold, "  "what " man "ner " "of " "love! " 
  "\nwhat " man "ner " "of " "love " "the " Fa "ther " "hath " be "stow'd " up "on " "us, "
  "\nThat " "we " "should " "be " "call'd, " 
  "\nwe " "should " "be " "call'd " "the " "sons " "of " "God! "
  "\nshould " "be " "call'd " "the " "sons " "of " "God! "
}
  
pianoRH = \relative c' {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLH = \relative c' {
  \global
  \oneVoice
  c4
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  c4
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \voiceTwo
  c4
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
%    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "bass" \chorusMen
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|."}
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "bass" { \repeat volta 4 { \chorusMen } }
          >>
        >>
      >>
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
  \bookOutputSuffix "midi-women"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
  >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "bass" \wordsMenMidi
          >>
        >>
      >>
    >>
  >>
  \midi {}
  }
}
