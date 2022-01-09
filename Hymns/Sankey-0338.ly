\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Shall you? Shall I?"
  subtitle    = "Sankey No. 338"
  subsubtitle = "Sankey 880 No. 499"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2. s4. s4 \repeat volta 2 { s2. } s8
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*2 s4. s4 \repeat volta 2 { s2. } s8
}

RehearsalTrack-nor = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

TempoTrack-nor = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8 8 8 8 g a
  c4 8 a4.
  d8^\f[a] d c4.
  c8^\pp[a]d c4.
  a8 8 8 8 g a % B
  c4 8 a4 \repeat volta 2 {c8^\f | 4 g8 a4^\markup{\italic repeat \dynamic pp}~} 8
  d8 8 8 8 e d % C
  d4 c8 4.
  c8 bes bes bes c bes
  a4 bes8 c4. % D
  d8 8 8 8 e d
  d4 c8 4 \repeat volta 2 {c8^\f | c4 g8 a4^\markup{\italic repeat \dynamic pp}~} 8
}

soprano-nor = \relative {
  \autoBeamOff
  a'8 8 8 8 g a
  c4 8 a4.
  d8^\f[a] d c4.
  c8^\pp[a]d c4.
  a8 8 8 8 g a % B
  c4 8 a4 c8^\f
  c4 g8 a4 c8^\pp
  c4 g8 a4.
  d8 8 8 8 e d % C
  d4 c8 4.
  c8 bes bes bes c bes
  a4 bes8 c4. % D
  d8 8 8 8 e d
  d4 c8 4 c8^\f
  c4 g8 a4 c8^\pp
  c4 g8 a4.
}

alto = \relative {
  \autoBeamOff
  f'8 8 8 8 e f
  a4 8 f4.
  a8^\f[f] bes a4.
  a8^\pp[f] bes a4.
  f8 8 8 8 e f % B
  a4 8 f4 \repeat volta 2 {f8^\f | e4 8 f4~} 8
  f8 8 8 8 8 8 % C
  f4 8 4.
  a8 g g g a g
  f4 g8 a4. % D
  <\tweak font-size #-3 f bes>8 q q q <\tweak font-size #-3 f c'> <\tweak font-size #-3 f bes>
  q4 <\tweak font-size #-3 f a>8 4 \repeat volta 2 {f8 | e4 8 f4~} 8
}

alto-nor = \relative {
  \autoBeamOff
  f'8 8 8 8 e f
  a4 8 f4.
  a8^\f[f] bes a4.
  a8^\pp[f] bes a4.
  f8 8 8 8 e f % B
  a4 8 f4 8^\f
  e4 8 f4 8^\pp
  e4 8 f4.
  f8 8 8 8 8 8 % C
  f4 8 4.
  a8 g g g a g
  f4 g8 a4. % D
  <\tweak font-size #-3 f bes>8 q q q <\tweak font-size #-3 f c'> <\tweak font-size #-3 f bes>
  q4 <\tweak font-size #-3 f a>8 4 f8
  e4 8 f4 8
  e4 8 f4.
}

tenor = \relative {
  \autoBeamOff
  c'8 8 8 8 8 8
  f4 8 c4.
  f4 8 4.
  f,4 8 4.
  c'8 8 8 8 8 8 % B
  f4 8 c4 \repeat volta 2 {a8 | g4 c8 4~} 8
  bes8 8 8 8 c bes % C
  bes4 a8 4.
  c8 8 8 8 8 8
  c4 f8 4. % D
  f,8 8 8 8 8 8
  f4 8 4 \repeat volta 2 {a8 | g4 c8 4~}8
}

tenor-nor = \relative {
  \autoBeamOff
  c'8 8 8 8 8 8
  f4 8 c4.
  f4 8 4.
  f,4 8 4.
  c'8 8 8 8 8 8 % B
  f4 8 c4 a8
  g4 c8 4 a8
  g4 c8 4.
  bes8 8 8 8 c bes % C
  bes4 a8 4.
  c8 8 8 8 8 8
  c4 f8 4. % D
  f,8 8 8 8 8 8
  f4 8 4 a8
  g4 c8 4 a8
  g4 c8 4.
}

bass = \relative {
  \autoBeamOff
  f8 8 8 8 8 8
  f4 8 4.
  f4 8 4.
  f4 8 4.
  f8 8 8 8 8 8 % B
  f4 8 4 \repeat volta 2 {8 | c4 8 f4~} 8
  bes,8 8 8 8 8 8 % C
  f'4 8 4.
  c8 8 8 8 8 8
  f4 8 4. % D
  bes,8 8 8 8 8 8
  f'4 8 4 \repeat volta 2 {8 | c4 8 f4~}8
}

bass-nor = \relative {
  \autoBeamOff
  f8 8 8 8 8 8
  f4 8 4.
  f4 8 4.
  f4 8 4.
  f8 8 8 8 8 8 % B
  f4 8 4 8
  c4 8 f4 8
  c4 8 f4.
  bes,8 8 8 8 8 8 % C
  f'4 8 4.
  c8 8 8 8 8 8
  f4 8 4. % D
  bes,8 8 8 8 8 8
  f'4 8 4 8
  c4 8 f4 8
  c4 8 f4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Some one will en -- ter the pearl -- y gate.
  By and by, by and by;
  Taste of the glo -- ries that there a -- wait:
  Shall you? shall I? __
  Some one will trav -- el the streets of gold,
  Beau -- ti -- ful vis -- ions will there be -- hold,
  Feast on the plea -- sures so long fore -- told:
  Shall you? shall I? __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Some one at last will his cross lay down,
  By and by, by and by;
  Faith -- ful, ap -- prov'd, shall re -- ceive a crown:
  Shall you? shall I? __
  Some one the glo -- ri -- ous King will see,
  Ev -- er from sor -- row of earth be free,
  Hap -- py with Him thro' e -- ter -- ni -- ty:
  Shall you? shall I? __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Some one will knock when the door is shut—
  By and by, by and by;
  Hear a voice say -- ing, "\"I" know you "not\":"
  Shall you? shall I? __
  Some one will call and shall not be heard,
  Vain -- ly will strive when the door is barred,
  Some one will fail of the saint's re -- ward:
  Shall you? shall I? __
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Some one will sing the tri -- umph -- ant song,
  By and by, by and by;
  Join in the praise with the blood -- bought throng:
  Shall you? shall I? __
  Some one will greet on the gol -- den shore
  Loved ones of earth who have gone be -- fore,
  Safe in the glo -- ry for ev -- er -- more:
  Shall you? shall I? __
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Some one will en -- ter the pearl -- y gate.
  By and by, by and by;
  Taste of the glo -- ries that there a -- wait:
  Shall you? shall I?
  Shall you? shall I?
  Some one will trav -- el the streets of gold,
  Beau -- ti -- ful vis -- ions will there be -- hold,
  Feast on the plea -- sures so long fore -- told:
  Shall you? shall I?
  Shall you? shall I?

  \set stanza = "2."
  Some one at last will his cross lay down,
  By and by, by and by;
  Faith -- ful, ap -- prov'd, shall re -- ceive a crown:
  Shall you? shall I?
  Shall you? shall I?
  Some one the glo -- ri -- ous King will see,
  Ev -- er from sor -- row of earth be free,
  Hap -- py with Him thro' e -- ter -- ni -- ty:
  Shall you? shall I?
  Shall you? shall I?

  \set stanza = "3."
  Some one will knock when the door is shut—
  By and by, by and by;
  Hear a voice say -- ing, "\"I" know you "not\":"
  Shall you? shall I?
  Shall you? shall I?
  Some one will call and shall not be heard,
  Vain -- ly will strive when the door is barred,
  Some one will fail of the saint's re -- ward:
  Shall you? shall I?
  Shall you? shall I?

  \set stanza = "4."
  Some one will sing the tri -- umph -- ant song,
  By and by, by and by;
  Join in the praise with the blood -- bought throng:
  Shall you? shall I?
  Shall you? shall I?
  Some one will greet on the gol -- den shore
  Loved ones of earth who have gone be -- fore,
  Safe in the glo -- ry for ev -- er -- more:
  Shall you? shall I?
  Shall you? shall I?
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Some " "one " "will " en "ter " "the " pearl "y " "gate. "
  "\nBy " "and " "by, " "by " "and " "by; "
  "\nTaste " "of " "the " glo "ries " "that " "there " a "wait: "
  "\nShall " "you? " "shall " "I? "
  "\nShall " "you? " "shall " "I? "
  "\nSome " "one " "will " trav "el " "the " "streets " "of " "gold, "
  "\nBeau" ti "ful " vis "ions " "will " "there " be "hold, "
  "\nFeast " "on " "the " plea "sures " "so " "long " fore "told: "
  "\nShall " "you? " "shall " "I? "
  "\nShall " "you? " "shall " "I? "

  \set stanza = "2."
  "\nSome " "one " "at " "last " "will " "his " "cross " "lay " "down, "
  "\nBy " "and " "by, " "by " "and " "by; "
  "\nFaith" "ful, " ap "prov'd, " "shall " re "ceive " "a " "crown: "
  "\nShall " "you? " "shall " "I? " 
  "\nShall " "you? " "shall " "I? " 
  "\nSome " "one " "the " glo ri "ous " "King " "will " "see, "
  "\nEv" "er " "from " sor "row " "of " "earth " "be " "free, "
  "\nHap" "py " "with " "Him " "thro' " e ter ni "ty: "
  "\nShall " "you? " "shall " "I? " 
  "\nShall " "you? " "shall " "I? " 

  \set stanza = "3."
  "\nSome " "one " "will " "knock " "when " "the " "door " "is " "shut— "
  "\nBy " "and " "by, " "by " "and " "by; "
  "\nHear " "a " "voice " say "ing, " "\"I " "know " "you " "not\": "
  "\nShall " "you? " "shall " "I? " 
  "\nShall " "you? " "shall " "I? " 
  "\nSome " "one " "will " "call " "and " "shall " "not " "be " "heard, "
  "\nVain" "ly " "will " "strive " "when " "the " "door " "is " "barred, "
  "\nSome " "one " "will " "fail " "of " "the " "saint's " re "ward: "
  "\nShall " "you? " "shall " "I? " 
  "\nShall " "you? " "shall " "I? " 

  \set stanza = "4."
  "\nSome " "one " "will " "sing " "the " tri umph "ant " "song, "
  "\nBy " "and " "by, " "by " "and " "by; "
  "\nJoin " "in " "the " "praise " "with " "the " blood "bought " "throng: "
  "\nShall " "you? " "shall " "I? " 
  "\nShall " "you? " "shall " "I? " 
  "\nSome " "one " "will " "greet " "on " "the " gol "den " "shore "
  "\nLoved " "ones " "of " "earth " "who " "have " "gone " be "fore, "
  "\nSafe " "in " "the " glo "ry " "for " ev er "more: "
  "\nShall " "you? " "shall " "I? " 
  "\nShall " "you? " "shall " "I? " 
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack-nor     }
            \new Voice { \global \repeat unfold \verses \soprano-nor \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto-nor \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor-nor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass-nor }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack-nor }
            \new Voice { \repeat unfold \verses \TempoTrack-nor }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano-nor }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano-nor \bar "|." }
                                               { \global \repeat unfold \verses { \alto-nor \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor-nor }
                                            { \global \repeat unfold \verses \bass-nor }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack-nor }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano-nor }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano-nor \bar "|." }
                                               { \global \repeat unfold \verses { \alto-nor \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor-nor }
                                            { \global \repeat unfold \verses \bass-nor }
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
