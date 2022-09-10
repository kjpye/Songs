\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Londonderry Air"
  subtitle    = "Danny Boy"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Irish Air"
  arranger    = "Arr. H. A. C."
%  opus        = "opus"

  poet        = "Frederic Weatherly"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \partial 4.
}

verses = 2

TempoTrack = {
  \tempo 4=60
  \set Score.tempoHideNote = ##t
  s4.
  s1
  s2 \tempo 4=20 s8
  \repeat volta \verses {
    \tempo 4=60
    s4.
    s1*15
    s2 s8
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "40a" } s4. s1 s2 s8
  \repeat volta \verses {
    s4. s1
    \mark \markup { \box "40b" }     s1*3
    \mark \markup { \box "40c" }     s1*3 s2 s8
    \mark \markup { \box "40d" } s4. s1*2
    \mark \markup { \box "40e" }     s1*3
    \mark \markup { \box "41a" }     s1*2 s2 s8
  }
}

melody = \relative {
  \global
  r4.
  R1
  r2 r8\fermata
  \repeat volta \verses {
    d'8^\mp ees f
    g4. f8 g c bes g
    f8(ees) c4 r8 ees g aes % 40b
    bes4. c8 bes g ees g
    f2 r8 d ees f
    g4. f8 g c bes g % 40c
%    f8(ees) c bes c(d) ees(f)
    f8(ees) c4. d8 ees f
    g4. aes8 g f ees f
    ees2 r8 \bar "||" \break r4.
    R1*7 r2 r8
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh Dan -- ny boy, the pipes, the pipes are call -- ing
  From glen to glen, and down the moun -- tain side.
  The summ -- er's gone, and all the ros -- es fall -- ing
  It's you, it's you must go and I must bide
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  But when ye come, and all the flowers are dy -- ing,
  If I am dead, as dead I may well be,
  Ye'll come and find the place where I am ly -- ing,
  And kneel and say an "\"A" -- "ve\"" there for me.
}

wordsThree = \lyricmode {
  But if I live
  And should you die for Ire -- land
  Let not your dy -- ing thoughts
  Be just of me
  
  But say a prayer to God
  "For our" dear -- est Is -- land
  I know He'll hear
  And help to set her free
  
  And I will take your pike
  And place my dearest
  And strike a blow,
  Though weak the blow may be
  
  Twill help the cause
  To which your heart was nearest
  Oh Danny Boy, Oh, Danny boy
  I love you so.
}

wordsMidi = \lyricmode {
  \set stanze = "1."
  "Oh " Dan "ny " "boy, " "the " "pipes, " "the " "pipes " "are " call "ing "
  "\nFrom " "glen " "to " "glen, " "and " "down " "the " moun "tain " "side. "
  "\nThe " summ "er's " "gone, " "and " "all " "the " ros "es " fall "ing "
  "\nIt's " "you, " "it's " "you " "must " "go " "and " "I " "must " "bide\n"

  "\nBut " "come " "ye " "back " "when " summ "er's " "in " "the " mea "dow, " _
  "\nOr " "when " "the " val "ley's " "hushed " "and " "white " "with " "snow, "
  "\nIt's " "I'll " "be " "here " "in " sun "shine " "or " "in " sha "dow, " _
  "\nOh " Dan "ny " "boy, " "oh " Dan "ny " "boy, " "I " "love " "you " "so.\n"
  
  \set stanza = "2."
  "\nBut " "when " "ye " "come, " "and " "all " "the " "flowers " "are " dy "ing, "
  "\nIf " "I " "am " "dead, " "as " "dead " "I " "may " "well " "be, "
  "\nYe'll " "come " "and " "find " "the " "place " "where " "I " "am " ly "ing, "
  "\nAnd " "kneel " "and " "say " "an " "\"A" "ve\" " "there " "for " "me.\n"

  "\nAnd " "I " "shall " "hear, " "though " "soft " "you " "tread " a "bove " _ "me, "
  "\nAnd " "all " "my " "grave " "will " warm "er, " sweet "er " "be, "
  "\nFor " "you " "will " "bend " "and " "tell " "me " "that " "you " "love " _ "me, "
  "\nAnd " "I " "will " "sleep " "in " "peace " un "til " "you " "come " "to " "me. "
}

soprano = \relative {
  \global \autoBeamOff \voiceOne
  r4.
  R1
  r2 r8\fermata
  \repeat volta \verses {
    s4.
    s1*7
    s2 s8
    bes'8^\markup\smallCaps Soprano c d % 40d
    ees4. d8 8 c bes g
    bes8[g] ees4 \oneVoice r8 \voiceOne bes' c d
    ees4. d8 8 c bes g % 40e
    f2~8 bes^\cresc bes bes
    g'4.^\f f8 8 ees c ees
    bes8[g] ees4 \oneVoice r8 \voiceOne d ees f % 41a
    g8 c bes g f ees c d
    ees2 \oneVoice r8
  }
  \bar "|."
}

melodyMidi = \relative {
  \global
  r4.
  R1
  r2 r8\fermata

  d'8^\mp ees f
  g4. f8 g c bes g
  f8(ees) c4 r8 ees g aes % 40b
  bes4. c8 bes g ees g
  f2 r8 d ees f
  g4. f8 g c bes g % 40c
  f8(ees) c4. d8 ees f
  g4. aes8 g f ees f
  ees2 r8 \bar "||" \break
  bes'8 c d % 40d
  ees4. d8 8 c bes g
  bes8[g] ees4 \oneVoice r8 \voiceOne bes' c d
  ees4. d8 8 c bes g % 40e
  f2~8 bes^\cresc bes bes
  g'4.^\f f8 8 ees c ees
  bes8[g] ees4 \oneVoice r8 \voiceOne d ees f % 41a
  g8 c bes g f ees c d
  ees2 \oneVoice r8

  d8^\mp ees f
  g4. f8 g c bes g
  f8(ees) c4 r8 ees g aes % 40b
  bes4. c8 bes g ees g
  f2 r8 d ees f
  g4. f8 g c bes g % 40c
  f8(ees) c4. d8 ees f
  g4. aes8 g f ees f
  ees2 r8 \bar "||" \break
  bes'8 c d % 40d
  ees4. d8 8 c bes g
  bes8[g] ees4 \oneVoice r8 \voiceOne bes' c d
  ees4. d8 8 c bes g % 40e
  f2~8 bes^\cresc bes bes
  g'4.^\f f8 8 ees c ees
  bes8[g] ees4 \oneVoice r8 \voiceOne d ees f % 41a
  g8 c bes g f ees c d
  ees2 \oneVoice r8

}

wordsChorusOne = \lyricmode {
  But come ye back when summ -- er's in the mea -- dow,
  Or when the val -- ley's hushed and white with snow,
  It's I'll be here in sun -- shine or in sha -- dow,
  Oh Dan -- ny boy, oh Dan -- ny boy, I love you so.
}

wordsChorusTwo = \lyricmode {
  And I shall hear, though soft you tread a -- bove me,
  And all my grave will warm -- er, sweet -- er be,
  For you will bend and tell me that you love me,
  And I will sleep in peace un -- til you come to me.
}

wordsChorusThree = \lyricmode {
And I will take your pike
And place my dear -- est
And strike a blow,
Though weak the blow may be

Twill help the cause
To which your heart was near -- est
Oh Dan -- ny Boy, Oh, Dan -- ny boy
I love you so.
}

wordsChorusMidi = \lyricmode {
}

alto = \relative {
  \global \autoBeamOff \voiceTwo
  r4.
  R1
  r2 r8\fermata
  \repeat volta \verses {
    s4.
    s1*7
    s2 s8
    ees'8_\markup\smallCaps Alto 8 f
    ees4. bes'8 8 aes ees ees % 40d
    d4 ees s8 ees ees f
    ees4. g8 8 8 8 ees % 40e
    f4(ees d8) d\omit\cresc ees aes
    g4.^\omit\f 8 aes aes ees ees
    ees4 4 s8 bes ees ees % 41a
    ees8 8 8 8 c8 8 8 bes
    bes2 s8
  }
  \bar "|."
}

tenor = \relative {
  \global \autoBeamOff \voiceOne
  r4.
  R1
  r2 r8\fermata
  \repeat volta \verses {
    s4.
    s1*7
    s2 s8
    g8^\markup\smallCaps Tenor c bes
    bes4. ees8 8 8 bes bes
    aes4 g \oneVoice r8 \voiceOne bes aes aes
    g4. b8 8 c des des % 40e
    c2(bes8) bes^\cresc c d
    des4.^\f 8 c c aes c
    bes4 4 \oneVoice r8 \voiceOne 8 a a % 41a
    bes8 aes g bes g8 8 aes aes
    g2 \oneVoice r8
  }
  \bar "|."
}

bass = \relative {
  \global \autoBeamOff \voiceTwo
  r4.
  R1
  r2 r8\fermata
  \repeat volta \verses {
    s4.
    s1*7
    s2 s8
    ees8_\markup\smallCaps Bass aes aes
    g4. 8 aes8 8 g ees
    bes4 c s8 g' aes f
    c4. f8 ees ees ees ees % 40e
    aes,4(a bes8) aes'\omit\cresc g f
    ees4.\omit\f 8 aes aes aes aes
    g4 4 s8 g c,8 8 % 41a
    bes8 8 8 8 c8 8 f bes,
    ees2 s8
  }
  \bar "|."
}

pianoRHone = \relative {
  \global 
  d'8 <c ees> <d f>
  <bes g'>4. <ees f>8 g c bes g
  f8 ees c4 <g bes>8\fermata
  \repeat volta \verses {
    d'8 ees f
    g4. f8 g c bes g
    f8 ees c4 \oneVoice r8 \voiceOne ees g aes % 40b
    bes4. c8 bes g ees g
    \voiceTwo f4^(ees) \voiceOne <d f>8 d <c ees> <d f>
    \voiceOne g4. f8 g c bes g % 40c
    f8 ees c bes c d ees f
    <bes, ees g>4. <c ees aes>8 <d g> <c f> <bes ees> <d f>
    ees2~8
    \oneVoice r4.
    R1*7 r2 r8
  }
  \bar "|."
}

pianoRHoneUnfolded = \relative {
  \global 
  d'8 <c ees> <d f>
  <bes g'>4. <ees f>8 g c bes g
  f8 ees c4 <g bes>8\fermata
  d'8 ees f
  g4. f8 g c bes g
  f8 ees c4 \oneVoice r8 \voiceOne ees g aes % 40b
  bes4. c8 bes g ees g
  \voiceTwo f4^(ees) \voiceOne <d f>8 d <c ees> <d f>
  \voiceOne g4. f8 g c bes g % 40c
  f8 ees c bes c d ees f
  <bes, ees g>4. <c ees aes>8 <d g> <c f> <bes ees> <d f>
  ees2~8
  \oneVoice r4.
  R1*7 r2 r8

  \bar "||" \break
  
  d'8 ees f
  g4. f8 g c bes g
  f8 ees c4 \oneVoice r8 \voiceOne ees g aes % 40b
  bes4. c8 bes g ees g
  \voiceTwo f4^(ees) \voiceOne <d f>8 d <c ees> <d f>
  \voiceOne g4. f8 g c bes g % 40c
  f8 ees c bes c d ees f
  <bes, ees g>4. <c ees aes>8 <d g> <c f> <bes ees> <d f>
  ees2~8
  \oneVoice r4.
  R1*7 r2 r8

  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s4.
  s2 ees'4. bes8
  c4 8 aes s
  \repeat volta \verses {
    s4.
    ees'2 4. bes8
    c2 s4 <c ees>
    <bes ees>4 d ees ees
    \voiceOne <c f>2 \voiceTwo s
    \voiceTwo ees2 4 des % 40c
    c4 s aes <aes c>
    s1
    ees'4 c bes8
    s4.
    s1*7
    s2 s8
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\mp
}

pianoLHone = \relative {
  \global
  bes8 aes4
  g4. aes8 bes aes g4
  <c, g'>4 aes'8 d, ees\fermata
  \repeat volta \verses {
    \oneVoice r8 bes'4
    \voiceOne bes4. aes8 bes aes g4
    g4 ees bes aes % 40b
    g4 <f' aes> <g bes> <c, g'>
    <f aes>2~ <bes, aes'>8 <aes' bes> <g bes> <f aes>
    bes4. aes8 bes aes g4 % 40c
    <aes, ees'>4 ees' <f, c'> f
    bes4 s bes'8 aes g aes
    g4 aes g8
    s4. |
    s1*7 s2 s8
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s8 aes bes,
  ees2 2
  s4 aes,4 s8
  \repeat volta \verses {
    s4.
    ees'2 2
    c2 s % 40b
    s1
    s1
    ees2 2 % 40c
    s4 aes,8 g s2
    s4 bes2 4
    ees2~8
    s4.
    s1*7
    s2 s8
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
%            \addlyrics \wordsThree
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics \wordsChorusOne
            \addlyrics \wordsChorusTwo
%            \addlyrics \wordsChorusThree
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics { \wordsOne \wordsTwo }
%            \addlyrics \wordsThree
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics { \wordsChorusOne \wordsChorusTwo }
%            \addlyrics \wordsChorusThree
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneUnfolded
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics { \wordsOne \wordsTwo }
%            \addlyrics \wordsThree
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics { \wordsChorusOne \wordsChorusTwo }
%            \addlyrics \wordsChorusThree
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneUnfolded
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \melodyMidi
            \new NullVoice \melodyMidi
            \addlyrics \wordsMidi
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHoneUnfolded
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
    \midi {}
  }
}
