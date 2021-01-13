\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Tell the Glad Story Again!"
  subtitle    = "Sankey No. 39"
  subsubtitle = "C.C. No. 109"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ira D. Sankey"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Julia Sterling"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

verses = 4

global = {
  \key aes \major
  \time 6/8
  \tempo 8=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta \verses {
    \mark \markup { \box "A" } s2.*3
    \mark \markup { \box "B" } s2.*3
    \mark \markup { \box "C" } s2.*3
    \mark \markup { \box "D" } s2.*3 s4.
    \mark \markup { \box "E" } s4. s2.*3
  }
}

TempoTrack = {
  \repeat volta \verses {
    \tempo 8=120
    s2.*14
    s16 \tempo 8=60 s8. \tempo 8=120 s8. \tempo 8=60 s8. \tempo 8=120 s8
    s2.
  }
}

soprano = \relative {
  \voiceOne
  \global
  \repeat volta \verses {
    ees'8. aes16 bes8 c bes aes
    g8. f16 f8 f4 r8
    bes8. c16 des8 des c bes \break
    bes8. aes16 aes8 g4 r8 % B
    ees8. aes16 bes8 c bes aes
    g8. f16 f8 des'4 r8 \break
    des8. des16 des8 g,16 g8. g8 % C
    aes4.~4 r8 \bar "||"
    c4.^\markup \upright \smallCaps Refrain. ~8. bes16 c8 \break
    ees4.~4 r8 % D
    aes,4.~8. g16 aes8
    c4.~4 r8
    f,8. g16 aes8 \partial 4. \bar "|" \break bes8 aes f
    ees16 aes8. bes8 c4 r8 % E
    ees16 ees8.\fermata ees8 ees16 ees8.\fermata g,8
    aes4.~4 r8
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta \verses {
  }
}

alto = \relative {
  \voiceTwo
  \global
  \repeat volta \verses {
    c'8. c16 des8 ees ees ees
    ees8. des16 des8 des4 r8
    des8. ees16 f8 f f f
    ees8. 16 8 4 r8 % B
    c8. c16 des8 ees8 8 8
    ees8. des16 des8 f4 r8
    ees8. 16 8 des16 8. 8 % C
    c4.~4 r8 \bar "||"
    ees16 8. 8 8. r16 r8
    g16 8. 8 4 r8 % D
    c,16 f8. 8 8. r16 r8
    ees16 8. 8 4 r8
    des8. ees16 f8 f f des
    c16 ees8. 8 4 r8 % E
    aes16 8.\fermata 8 g16 8.\fermata ees8
    ees4.~4 r8
  }
}

tenor = \relative {
  \global
  \voiceOne
  \repeat volta \verses {
    aes8. ees16 ees8 aes g aes
    g8. g16 g8 g4 r8
    bes8. bes16 bes8 bes a bes
    c8. 16 8 bes4 r8 % B
    aes8. 16 8 8 g8 aes
    aes8. 16 8 bes4 r8
    g8. 16 8 bes16 8. 8 % C
    aes4.~4 r8 \bar "||"
    aes16 8. 8 8. r16 r8
    bes16 8. 8 4 r8 % D
    aes16 c8. 8 8. r16 r8
    c16 g8. g8 c4 r8
    aes8. 16 8 des8 des aes
    aes16 aes8. g8 aes4 r8 % E
    c16 c8.\fermata c8 bes16 bes8.\fermata des8
    c4.~4 r8
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta \verses {
  }
}

bass= \relative {
  \global
  \voiceTwo
  \repeat volta \verses {
    aes,8. aes16 aes8 aes bes c
    des8. des16 des8 des4 r8
    bes8. bes16 bes8 bes c des % B
    ees8. ees16 ees8 ees4 r8
    aes8. aes16 aes8 aes, bes c
    des8. des16 des8 bes4 r8
    ees8. ees16 ees8 ees16 ees8. ees8 % C
    aes,4.~4 r8 \bar "||"
    aes16 8. 8 8. r16 r8
    ees'16 8. 8 4 r8 % D
    f16 8. 8 8. r16 r8
    c16 8. 8 4 r8
    des8. 16 8 8 8 8
    aes16 c8. ees8 aes4 r8 % E
    aes16 aes8.\fermata aes8 ees16 ees8.\fermata ees8
    aes,4.~4 r8
  }
}

chorus = \lyricmode {
  Tell __ it a -- gain! __
  Tell __ it a -- gain! __
  Tell the glad sto -- ry to suf -- fer -- ing man;
  Tell it, oh tell it, a -- gain!
}

emptyVerse  = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

chorusLow = \lyricmode {
  Tell it a -- gain!
  Tell it a -- gain!
  Tell it a -- gain!
  Tell it a -- gain!
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Tell the glad sto -- ry of Je -- sus who came,
  Full of com -- pas -- sion, the lost to re -- claim;
  Tell of re -- demp -- tion thro' faith in His name:
  Tell the glad sto -- ry a -- gain!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tell the glad sto -- ry where, sad and op -- prest,
  Ma -- ny in bond -- age are sigh -- ing for rest;
  Tell them in Je -- sus they all may be blest:
  Tell the glad sto -- ry a -- gain!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tell the glad stor -- ry with pat -- ience and love,
  Urg -- ing  the lost ones His ker -- cy to provel
  Tell them of mans -- ions pre -- par -- ing a -- bove:
  Tell the glad sto -- ry a -- gain!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Tell the glad sto -- ry when Jor -- dan's dark wave
  Call -- eth our loved ones its bil -- lows to brave;
  Tell them that Je -- sus is migh -- ty to save:
  Tell the glad sto -- ry a -- gain!
}
  
wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "\nTell " "the " "glad " sto "ry " "of " Je "sus " "who " "came, "
  "\nFull " "of " com pas "sion, " "the " "lost " "to " re "claim; "
  "\nTell " "of " re demp "tion " "thro' " "faith " "in " "His " "name: "
  "\nTell " "the " "glad " sto "ry " a "gain! "
  "\nTell "  "it " a "gain! " 
  "\nTell "  "it " a "gain! " 
  "\nTell " "the " "glad " sto "ry " "to " suf fer "ing " "man; "
  "\nTell " "it, " "oh " "tell " "it, " a "gain! "

  \set stanza = "2."
  "\nTell " "the " "glad " sto "ry " "where, " "sad " "and " op "prest, "
  "\nMa" "ny " "in " bond "age " "are " sigh "ing " "for " "rest; "
  "\nTell " "them " "in " Je "sus " "they " "all " "may " "be " "blest: "
  "\nTell " "the " "glad " sto "ry " a "gain! "
  "\nTell "  "it " a "gain! " 
  "\nTell "  "it " a "gain! " 
  "\nTell " "the " "glad " sto "ry " "to " suf fer "ing " "man; "
  "\nTell " "it, " "oh " "tell " "it, " a "gain! "

  \set stanza = "3."
  "\nTell " "the " "glad " stor "ry " "with " pat "ience " "and " "love, "
  "\nUrg" "ing "  "the " "lost " "ones " "His " ker "cy " "to " "provel "
  "\nTell " "them " "of " mans "ions " pre par "ing " a "bove: "
  "\nTell " "the " "glad " sto "ry " a "gain! "
  "\nTell "  "it " a "gain! " 
  "\nTell "  "it " a "gain! " 
  "\nTell " "the " "glad " sto "ry " "to " suf fer "ing " "man; "
  "\nTell " "it, " "oh " "tell " "it, " a "gain! "

  \set stanza = "4."
  "\nTell " "the " "glad " sto "ry " "when " Jor "dan's " "dark " "wave "
  "\nCall" "eth " "our " "loved " "ones " "its " bil "lows " "to " "brave; "
  "\nTell " "them " "that " Je "sus " "is " migh "ty " "to " "save: "
  "\nTell " "the " "glad " sto "ry " a "gain! "
  "\nTell "  "it " a "gain! " 
  "\nTell "  "it " a "gain! " 
  "\nTell " "the " "glad " sto "ry " "to " suf fer "ing " "man; "
  "\nTell " "it, " "oh " "tell " "it, " a "gain! "
}
  
wordsOtherMidi = \lyricmode {
  \set stanza = "1."
  "\nTell " "the " "glad " sto "ry " "of " Je "sus " "who " "came, "
  "\nFull " "of " com pas "sion, " "the " "lost " "to " re "claim; "
  "\nTell " "of " re demp "tion " "thro' " "faith " "in " "His " "name: "
  "\nTell " "the " "glad " sto "ry " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "the " "glad " sto "ry " "to " suf fer "ing " "man; "
  "\nTell " "it, " "oh " "tell " "it, " a "gain! "

  \set stanza = "2."
  "\nTell " "the " "glad " sto "ry " "where, " "sad " "and " op "prest, "
  "\nMa" "ny " "in " bond "age " "are " sigh "ing " "for " "rest; "
  "\nTell " "them " "in " Je "sus " "they " "all " "may " "be " "blest: "
  "\nTell " "the " "glad " sto "ry " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "the " "glad " sto "ry " "to " suf fer "ing " "man; "
  "\nTell " "it, " "oh " "tell " "it, " a "gain! "

  \set stanza = "3."
  "\nTell " "the " "glad " stor "ry " "with " pat "ience " "and " "love, "
  "\nUrg" "ing "  "the " "lost " "ones " "His " ker "cy " "to " "provel "
  "\nTell " "them " "of " mans "ions " pre par "ing " a "bove: "
  "\nTell " "the " "glad " sto "ry " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "

  \set stanza = "4."
  "\nTell " "the " "glad " sto "ry " "when " Jor "dan's " "dark " "wave "
  "\nCall" "eth " "our " "loved " "ones " "its " bil "lows " "to " "brave; "
  "\nTell " "them " "that " Je "sus " "is " migh "ty " "to " "save: "
  "\nTell " "the " "glad " sto "ry " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "it " a "gain! "
  "\nTell " "the " "glad " sto "ry " "to " suf fer "ing " "man; "
  "\nTell " "it, " "oh " "tell " "it, " a "gain! "
}
  
pianoRH = \relative {
  \global
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta \verses {
  }
}

pianoLH = \relative {
  \global
  \oneVoice
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  \repeat volta \verses {
    c4
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
%          \new Voice = tempo \TempoTrack
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = "alignOne" \soprano
            \new Lyrics \lyricsto "alignOne" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignOne"   \wordsTwo
            \new Lyrics \lyricsto "alignOne"   \wordsThree
            \new Lyrics \lyricsto "alignOne"   \wordsFour
          >>
                                  % Joint tenor/bass staff
            \new Lyrics = "chorus"
          \new Dynamics \dynamicsMen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice = "alignTwo" \tenor
            \context Lyrics = "chorus" { \lyricsto "alignTwo" { \emptyVerse \chorusLow } }
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
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
%          \new Voice = tempo \TempoTrack
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice \partCombine { \unfoldRepeats\soprano } { \unfoldRepeats \alto }
            \new NullVoice = "alignOne" \soprano
            \new Lyrics \lyricsto "alignOne" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "alignOne" \wordsMidi
          >>
                                  % Joint tenor/bass staff
            \new Lyrics = "chorus"
          \new Dynamics \dynamicsMen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice \partCombine { \unfoldRepeats \tenor } { \unfoldRepeats \bass }
            \new NullVoice = "alignTwo" \tenor
            \context Lyrics = "chorus" { \lyricsto "alignTwo" {
              \emptyVerse \chorusLow
              \emptyVerse \chorusLow
              \emptyVerse \chorusLow
              \emptyVerse \chorusLow
            } }
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
  \bookOutputSuffix "midi-sop"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
          \new Voice = tempo \TempoTrack
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \new Voice \partCombine { \unfoldRepeats\soprano } { \unfoldRepeats \alto }
            \new NullVoice = "alignOne" \soprano
           \new Lyrics \lyricsto "alignOne" \wordsSopMidi
%            \new Lyrics \lyricsto "alignOne" \wordsMidi
          >>
                                  % Joint tenor/bass staff
%          \new Lyrics = "chorus"
          \new Dynamics \dynamicsMen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice \partCombine { \unfoldRepeats \tenor } { \unfoldRepeats \bass }
            \new NullVoice = "alignTwo" \tenor
%            \context Lyrics = "chorus" { \lyricsto "akignTwo \wordsOtherMidi }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
          \new Voice = tempo \TempoTrack
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
            \new Voice \partCombine { \unfoldRepeats\soprano } { \unfoldRepeats \alto }
            \new NullVoice = "alignOne" \soprano
%           \new Lyrics \lyricsto "alignOne" \wordsSopMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice \partCombine { \unfoldRepeats \tenor } { \unfoldRepeats \bass }
            \new NullVoice = "alignTwo" \tenor
            \context Lyrics = "chorus" { \lyricsto "alignTwo" \wordsOtherMidi }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
