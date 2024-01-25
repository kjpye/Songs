\version "2.25.11"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Ostrich"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Donald Swann"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Michael Flanders"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
}

drumPitchNames.cc = #'crashcymbal
#(define mystyle
  '((crashcymbal cross   #f  5)
    (bass        default #f -1)
  ))

midiDrumPitches.bass = des

DrumTrack = \drummode {
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \once\set Score.tempoHideNote = ##f
  \tempo Slyly 4.=76
  \repeat volta 3 {
    \tempo Slyly 4.=76
    s2.*16
    \alternative {
      \volta 1,2 {
                   \once\set Score.tempoHideNote = ##f \tempo 4=132
                   s2 | s1*15 |
                   s2 \tempo 4=66 s |
                 }
      \volta 3 { \tempo 4=132 s2. \tempo Slowly 4=120 s4 | s1*12 | \tempo "Still slower" 4=110 s1 | s2. \tempo "rall." 4=100 s4 | s1 | s | }
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 3 {
    \mark \markup { \box "166a" } s2.*5
    \mark \markup { \box "166b" } s2.*5
    \mark \markup { \box "166c" } s2.*4
    \mark \markup { \box "166d" } s2.*2
    \alternative {
      \volta 1,2 {
        s2 s1*2
        \mark \markup { \box "167a" } s1*4
        \mark \markup { \box "167b" } s1*4
        \mark \markup { \box "167c" } s1*4
        \mark \markup { \box "167d" } s1*2
      }
      \volta 3 {
        \mark \markup { \box "168a" } s1*4
        \mark \markup { \box "168b" } s1*4
        \mark \markup { \box "168c" } s1*4
        \mark \markup { \box "168d" } s1*5
      }
    }
  }
}

dynamicsMelody = {
  \repeat volta 3 {
    s2.\mp s2.*10 | s2 s4\mf | s2.*4 |
    \alternative {
      \volta 1,2 { s4 s\p | s1*16 | }
      \volta 3 { s2. s4\p | s1*16 | }
    }
  }
}

melodyA = \relative {
  \time 3/4 \key ees \major
  g'4 bes8 g4 bes,8 | g'4 bes8 g4. | 8 bes g ees4 c8 | d4. r | aes'4 c8 aes4 c,8 |
  aes'4 c8 aes4 c,8 | aes'8 c aes f4 c8 | d ees e f4. | g4 bes8 g4 bes,8 | g'4 bes8 g4 8
  g8 bes g f4 ees8 | c'4. r8 c d | ees d c bes aes g | f ees d c4. |
  \override Score.Footnote.annotation-line = ##f
  c4 ees8 d ees f |
  \tag #'dash {\footnote \markup{\huge "*"} #'(-1 . 4) "*3rd time drowned by large explosion" ees4 r8 r4. |}
  \tag #'(v1 v2) {ees4 r8 r4. |}
  \tag #'v3      {\footnote \markup{\huge "*"} #'(-1 . 4) "*Drowned by large explosion" ees4 r8 r4. |}
  \section
}

melodyB = \relative {
  \key bes \major \time 4/4 \partial 2
  \tag #'dash {r4 \slurDashed f'8(8) | bes4 8(8) 8 aes bes(c) \slurSolid |}
  \tag #'v1   {r4             f,4    | bes4 8 8  8 aes bes c             |}
  \tag #'v2   {r4             f,8 8  | bes4 4    8 aes bes(c)            |}
  d4 bes f4. g8 |
  f4 ees d c | % 167a
  \tag #'dash {bes4  r r \slurDashed f'8(8) \slurSolid |}
  \tag #'v1   {bes,4 r r             f'8 8             |}
  \tag #'v2   {bes,4 r r             f'4               |}
  bes4 4 4 8 c | d4 bes f f8 g |
  f4 ees d f | bes2. 4 | % 167b
  \tag #'dash {c f, \slurDashed des'8(8) \slurSolid bes4 |}
  \tag #'v1   {c f,             des'8 8             bes4 |}
  \tag #'v2   {c f,             des'4               bes4 |}
  c f,8 8 des'4. 8 |
  c4 a bes c | % 167c
  \tag #'dash {a2. \slurDashed f8(8) | bes4 8(8) 4 8(c) \slurSolid |}
  \tag #'v1   {a2.             f8 8  | bes4 4    4 8 c             |}
  \tag #'v2   {a2.             f4    | bes4 8 8  4 8(c) \slurSolid |}
  d4 bes f4. g8 |
  f4 ees d c | bes2 bes'\fermata % \key ees \major \time 6/8
}

melodyC = \relative {
  \key bes \major \time 4/4
  r2 r4 f'8 8 | bes4 8 8 4 8 c | d4 bes f4 8 g | f4 ees d c | % 168a
  bes2 r4 f'8 8 | bes4 4 4 c | d bes f4 8 g | f4 ees d f |
  bes2. 4 | c f, des' bes | c f, des' \breathe 8 8 | c4 bes8 a bes4 c |
  a2 r | bes4 8 8 4 c | d bes f4 8 g | f4 ees d8 8 c4 bes2 r |
}

melody = {
  \global
  \repeat volta 3 {
    \keepWithTag #'dash \melodyA
    \alternative {
      \volta 1,2 { \keepWithTag #'dash \melodyB }
      \volta 3   { \melodyC }
    }
  }
  \bar "|."
}

melodySingle = {
  \global
  \keepWithTag #'v1 \melodyA \keepWithTag #'v1 \melodyB
  \keepWithTag #'v2 \melodyA \keepWithTag #'v2 \melodyB
  \keepWithTag #'v3 \melodyA \melodyC
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  'Peek -- a -- boo, I can't see you
  Eve -- ry -- thing must be grand!
  Boo -- ka -- pee, they can't see me
  As long as I've got me head in the sand.
  Peek -- a -- boo, it may be true
  There's some -- thing in what you've said
  But we've got e -- nough trou -- bles in eve -- ry -- day life—
  I just bu -- ry me head!
}

emptyChorus = \lyricmode {
  \repeat unfold 62 \skip 1
}

wordsOne = \lyricmode {
  \set stanza = "1."
  ‘Oh \nom  Os -- trich con -- si -- der how the world we know \yesm
  Is trem -- bling on the brink.
  \nom Have you \yesm heard the news? \nom May I \yesm hear your views?
  Will you tell me what you think?’
  The Os -- trich \nom lift -- ed \yesm his head from the sand
  A -- bout an inch or so:
  \nom ‘You will \yesm please ex -- cuse \nom but dis -- tur -- bing \yesm news
  I have no wish to know. Oh,
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  \nom Then I \yesm no -- ticed sud -- den -- ly where we were;
  I saw what time it was.
  ‘Make haste’, I said, ‘It 'll be too late;
  We must leave this place be -- cause…’
  He stuffed his wing -- tips in -- to his ears,
  He would not hear me speak;
  And back in the soft Sa -- ha -- ran sand
  He plunged his yel -- low beak. Oh,
}

wordsThree = \lyricmode {
  \set stanza = "3."
  From a shel -- tered o -- a -- sis a mile a -- way
  I ob -- served that dread -- ful scene
  And a sin -- gle plume came float -- ing down
  Where my Os -- trich friend had been,
  Be -- cause he could not bear the sound,
  Of these words I had left un -- said:
  ‘Here in this Nu -- clear Tes -- ting Ground is no place to bu -- ry your head!’
}

wordsSingle = \lyricmode {
  'Peek -- a -- boo, I can't see you
  Eve -- ry -- thing must be grand!
  Boo -- ka -- pee, they can't see me
  As long as I've got me head in the sand.
  Peek -- a -- boo, it may be true
  There's some -- thing in what you've said
  But we've got e -- nough trou -- bles in eve -- ry -- day life—
  I just bu -- ry me head!

  \set stanza = "1."
  ‘Oh Os -- trich con -- si -- der how the world we know
  Is trem -- bling on the brink.
  Have you heard the news? May I hear your views?
  Will you tell me what you think?’
  The Os -- trich lift -- ed his head from the sand
  A -- bout an inch or so:
  ‘You will please ex -- cuse but dis -- tur -- bing news
  I have no wish to know. Oh,

  'Peek -- a -- boo, I can't see you
  Eve -- ry -- thing must be grand!
  Boo -- ka -- pee, they can't see me
  As long as I've got me head in the sand.
  Peek -- a -- boo, it may be true
  There's some -- thing in what you've said
  But we've got e -- nough trou -- bles in eve -- ry -- day life—
  I just bu -- ry me head!

  \set stanza = "2."
  Then I no -- ticed sud -- den -- ly where we were;
  I saw what time it was.
  ‘Make haste’, I said, ‘It 'll be too late;
  We must leave this place be -- cause…’
  He stuffed his wing -- tips in -- to his ears,
  He would not hear me speak;
  And back in the soft Sa -- ha -- ran sand
  He plunged his yel -- low beak. Oh,

  'Peek -- a -- boo, I can't see you
  Eve -- ry -- thing must be grand!
  Boo -- ka -- pee, they can't see me
  As long as I've got me head in the sand.
  Peek -- a -- boo, it may be true
  There's some -- thing in what you've said
  But we've got e -- nough trou -- bles in eve -- ry -- day life—
  I just bu -- ry me head!

  \set stanza = "3."
  From a shel -- tered o -- a -- sis a mile a -- way
  I ob -- served that dread -- ful scene
  And a sin -- gle plume came float -- ing down
  Where my Os -- trich friend had been,
  Be -- cause he could not bear the sound,
  Of these words I had left un -- said:
  ‘Here in this Nu -- clear Tes -- ting Ground is no place to bu -- ry your head!’
}

wordsMidi = \lyricmode {
  "'Peek" a "boo, " "I " "can't " "see " "you "
  "\nEve" ry "thing " "must " "be " "grand! "
  "\nBoo" ka "pee, " "they " "can't " "see " "me "
  "\nAs " "long " "as " "I've " "got " "me " "head " "in " "the " "sand. "
  "\nPeek" a "boo, " "it " "may " "be " "true "
  "\nThere's " some "thing " "in " "what " "you've " "said "
  "\nBut " "we've " "got " e "nough " trou "bles " "in " eve ry "day " "life— "
  "\nI " "just " bu "ry " "me " "head!\n"

  \set stanza = "1."
  "\n‘Oh " Os "trich " con si "der " "how " "the " "world " "we " "know "
  "\nIs " trem "bling " "on " "the " "brink. "
  "\nHave " "you " "heard " "the " "news? " "May " "I " "hear " "your " "views? "
  "\nWill " "you " "tell " "me " "what " "you " "think?’ "
  "\nThe " Os "trich " lift "ed " "his " "head " "from " "the " "sand "
  "\nA" "bout " "an " "inch " "or " "so: "
  "\n‘You " "will " "please " ex "cuse " "but " dis tur "bing " "news "
  "\nI " "have " "no " "wish " "to " "know. " "Oh,\n"

  "\n'Peek" a "boo, " "I " "can't " "see " "you "
  "\nEve" ry "thing " "must " "be " "grand! "
  "\nBoo" ka "pee, " "they " "can't " "see " "me "
  "\nAs " "long " "as " "I've " "got " "me " "head " "in " "the " "sand. "
  "\nPeek" a "boo, " "it " "may " "be " "true "
  "\nThere's " some "thing " "in " "what " "you've " "said "
  "\nBut " "we've " "got " e "nough " trou "bles " "in " eve ry "day " "life— "
  "\nI " "just " bu "ry " "me " "head!\n"

  \set stanza = "2."
  "\nThen " "I " no "ticed " sud den "ly " "where " "we " "were; "
  "\nI " "saw " "what " "time " "it " "was. "
  "\n‘Make " "haste’, " "I " "said, " "‘It " "'ll " "be " "too " "late; "
  "\nWe " "must " "leave " "this " "place " be "cause…’ "
  "\nHe " "stuffed " "his " wing "tips " in "to " "his " "ears, "
  "\nHe " "would " "not " "hear " "me " "speak; "
  "\nAnd " "back " "in " "the " "soft " Sa ha "ran " "sand "
  "\nHe " "plunged " "his " yel "low " "beak. " "Oh,\n"

  "\n'Peek" a "boo, " "I " "can't " "see " "you "
  "\nEve" ry "thing " "must " "be " "grand! "
  "\nBoo" ka "pee, " "they " "can't " "see " "me "
  "\nAs " "long " "as " "I've " "got " "me " "head " "in " "the " "sand. "
  "\nPeek" a "boo, " "it " "may " "be " "true "
  "\nThere's " some "thing " "in " "what " "you've " "said "
  "\nBut " "we've " "got " e "nough " trou "bles " "in " eve ry "day " "life— "
  "\nI " "just " bu "ry " "me " "head!\n"

  \set stanza = "3."
  "\nFrom " "a " shel "tered " o a "sis " "a " "mile " a "way "
  "\nI " ob "served " "that " dread "ful " "scene "
  "\nAnd " "a " sin "gle " "plume " "came " float "ing " "down "
  "\nWhere " "my " Os "trich " "friend " "had " "been, "
  "\nBe" "cause " "he " "could " "not " "bear " "the " "sound, "
  "\nOf " "these " "words " "I " "had " "left " un "said: "
  "\n‘Here " "in " "this " Nu "clear " Tes "ting " "Ground " "is " "no " "place " "to " bu "ry " "your " "head!’ "
}

pianoRHone = \relative {
  \global
  \repeat volta 3 {
    <ees' g>4 bes'8 q4 bes,8 |
    <ees g>4 bes'8 q4. |
    \vo g8 bes g \ov <bes, ees>4 c8 |
    <aes bes d>4. <bes' bes'> |
    <f aes>4 c'8 q4 c,8 |
    <e aes>4 c'8 q4 c,8 | % 166b
    <ees aes>8 c' q f,4 c8 |
    <aes d>8 <aes ees'> <aes e'> <aes bes f'>4. |
    <ees' g>4 bes'8 q4 bes,8 |
    <ees g>4 bes'8 q4 bes,8 |
    \vo g'8 bes g \ov <bes, f'>4 <des ees>8 | % 166c
    <c c'>4. r |
    \appoggiatura {c''16 d} ees8(d c) bes(aes g) |
    f8 ees d c4. |
    <aes, c>4 ees'8 \vo d ees f \ov | % 166d
    <g, ees'>4 r8 r4. | \key bes \major
    \alternative {
      \volta 1,2 {
        \vo r4 f' | bes4 8 8 8 a bes c | d4 bes f4. g8 |
        f4 ees d c | bes2 r4 f'8 8 | bes4 4 4 8 c | d4 bes f4 8 g | % 167a
        f4 ees d f | <d bes'>2. bes'4 | c f, des' bes | <f c'> f \vo des'4. 8 |
        c4 a bes c | a2. f4 | bes4 4 4 8 c | d4 bes f4. g8 |
        f4 ees d c | bes2 <d' f bes>2\fermata \key bes \major |
      }
      \volta 3 {
        \ov <f, a c f>1\arpeggio\fermata | % 168a
        r4 <bes, d f> r <c ees f a> |
        r4 <d f bes> r <bes d f> |
        r4 <g bes ees> <f d'> \ss \lh <ees a c> \hs \rh |
        bes'1 | bes''4^(f ees c | bes f d bes8 a | \vt g2) a \ov | % 168b
        <bes d>2. r4 | % 168c
        <f' a c>2 <f bes des> |
        <f a c>2 <f bes des> |
        <c f c'>2 <c e bes'> |
        \vo a'1 \ov | % 168d
        <bes, ees bes'>2. <c f c'>4 |
        \vo d'4 bes f4 8 g \ov |
        <g, bes f'>4 <g bes ees> \ss \lh <f bes d> <ees a c> |
        <bes d bes'>2 s |
      }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  \repeat volta 3 {
    s2. | s | ees'4 s2 | s2. | s |
    s2.*5 |
    bes4 s2 | s2.*3 |
    s4. aes4 s8 | s2.
    \alternative {
      \volta 1,2 {
        <a c ees f>2 | d ees | f s |
        s1 | s | ees2. <ees f>4 | f2. s4 | % 167a
        s1 | s | f2 2 | s e |
        f2 e | r4 g f ees | 2. <ees f>4 | f2 s |
        s1 | s |
      }
      \volta 3 {
        s1*4 | % 168a
        s1 | s | s | \vo r4 <bes, ees g> <d f> <c ees> |
        s1*4 |
        \vt <c f>4 s2. | s1 | <d f>2 bes | s1 | s |
      }
    }
  }
}

dynamicsPiano = {
  \repeat volta 3 {
    s2.\mp | s2.*11 | s2.\mf | s2.*3 |
    \alternative {
      \volta 1,2 { s2\p | s1*16 | }
      \volta 3 { s1\p | s1*9 | s2 s-\markup\italic ten. | s1*6 | }
    }
  }
}

pianoLH = \relative {
  \global
  \repeat volta 3 {
    ees4. bes |
    ees4 bes'8 bes,4 bes'8 |
    <ees, bes'>4. <g, ees'>4 <fis ees'>8 |
    <f d'>4. bes' |
    <f c'>4. c |
    c'4. c, | % 166b
    <f c'>4. aes4 <f aes>8 |
    bes,8 c cis d4. | ees4.~4 8 | d4.~4 8 |
    <des ees>4. 4 <bes ees>8 | % 166c
    <aes ees'>4. r \clef treble |
    c''8(bes aes) g(f ees) |
    d8 c bes a4. \clef bass |
    <f, c'>4 r8 bes4 r8 | ees,4 r8 r4. | % 166d
    \alternative {
      \volta 1,2 {
        \key bes \major
        <f c'>2 | <bes f'> <f' c'> | bes <d, bes'> |
        <c bes'>2 <f a> | <bes, d> <ees f a> | <g, ees'>2. <a' c>4 | <bes d>2. <d, bes'>4 | % 167a
        <c bes'>2 <f a> | bes,4 f' bes2 | <f a> <bes des> | <f a> <g bes> |
        <a c>2 <g bes> | % 167c
        <<{f1} \new Voice {\vo s4 ees' d c}>> \ov |
        <g bes>2. <a c>4 | <bes d>2 <d, bes'> |
        <c bes'>2 <f a> |
        <bes,, bes'>4 bes'' \clef treble <aes' bes>2\fermata \clef bass \key bes \major |
      }
      \volta 3 {
        <<{\vo <f, a c>1\arpeggio\fermata} \new Voice {\vt <g, c ees>\arpeggio\fermata}>> \ov | % 168a
        bes2 f' | bes d, | \vt c f, |
        \ov bes,4(f' d'2) | R1 | R | c2 f, | % 168b
        bes,4(f' d') r | <f c'>2 <bes des> | <f c'> <bes des> | <a, f'> <g e'> |
        <f f'>4 <ees'' g> <d f> <c ees> | % 168d
        <g, ees'>2. <g f'>4 |
        <bes f'>2 d |
        <c, c'>2 \vt f4 <f, f'> |
        <bes, bes'>2 \ov r |
      }
    }
  }
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix repeat
  \paper {
    footnote-separator-markup = \markup { \override #'(span-factor . 1/4) \draw-hline }
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics {\chorus \wordsOne \wordsThree}
            \addlyrics {\emptyChorus \wordsTwo}
          >>
        >>
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh <<
            \clef bass
            \new Voice \pianoLH
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \DrumTrack >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \remove Metronome_mark_engraver
        voltaSpannerDuration = \musicLength 1
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix single
  \paper {
    footnote-separator-markup = \markup { \override #'(span-factor . 1/4) \draw-hline }
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh <<
            \clef bass
            \new Voice \pianoLH
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \DrumTrack >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix singlepage
  \paper {
    footnote-separator-markup = \markup { \override #'(span-factor . 1/4) \draw-hline }
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh <<
            \magnifyStaff #4/7
            \clef bass
            \new Voice \pianoLH
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \DrumTrack >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix midi
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melodySingle
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh <<
            \clef bass
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
    >>
    \midi {}
  }
}
