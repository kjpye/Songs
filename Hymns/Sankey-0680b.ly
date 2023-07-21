\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Stand up for Jesus!"
  subtitle    = "Sankey No. 680"
  subsubtitle = "Sankey 880 No. 15"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Adam Geibel."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "G. Duffield"
%  meter       = \markup\smallCaps "7.6.d."
%  piece       = \markup\smallCaps "piece"

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
  \textMark \markup { \box \bold "A" } s4 s1*5
  \textMark \markup { \box \bold "B" }    s1*5 s2
  \textMark \markup { \box \bold "C" } s2 s1*4 s2.
  \textMark \markup { \box \bold "D" } s4 s1*4
  \textMark \markup { \box \bold "E" }    s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Marcato." 4=120
  s4 | s1*14 | s4 \tempo "rit." 4=110 s2. | s2.
  \tempo "a tempo" 4=120 s4 | s1*9 | s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 | a' a a a | 2 4 4 | a f e f | bes2. c,4 | bes'4 4 4 4 |
  bes2 4 4 | 4 g f g | a2. c4 | c a d a | c2 bes4 4 | 4 g \bar "|" \break
  c4 g | a2. 4 | 4 e f g | a2 a,4 a' | a f e g | a2(c4\fermata)
  \section \sectionLabel \markup{\smallCaps Chorus \italic "(Harmony)."} \break
  c,4 | a'2. 4 | c bes^^ r c, | g' fis g d' | c2. 4 |
  d4 a bes bes | c(g) a a | a g^^ r d' | c2 f, | a8 g2. r8 | f2.\fermata
}

alto = \relative {
  \autoBeamOff
  s4 | s1*15 | s2.
  c'4 | f2. dis4 | e4 e^^ r c | e dis e e | f(e f) g |
  fis4 4 g g | g(e) f ees | d d^^ r f | 2 2 | e8 2. r8 | c2.\fermata
}

tenor = \relative {
  \autoBeamOff
  s4 | s1*15 | s2.
  c4 c' c c c | c c_^ r c | bes a bes c | c(bes a) a |
  a4 d d des | c2 4 4 | bes4 4_^ r gis | a2 2 | c8 bes2. r8 | a2.\fermata
}

bass = \relative {
  \autoBeamOff
  s4 | s1*15 | s2.
  c4 | f c f fis | g g_^ r c, | c c c bes' | a(g f) ees |
  d4 d g f | e(c) f f | bes, bes_^ r b | e2 f | c8 2. r8 | f,2.\fermata
}

pianoRHone = \relative {
  c'4 | <a c a'> <a cis a'> <a d a'> <a des a'> |
  <a c a'>4 <a cis a'> <a d a'> <a des a'> |
  <a c a'>4 <c f> <bes c e> <a c f> |
  \voiceOne bes'2. \oneVoice c,4 |
  <c bes'> <cis bes'> <d bes'> <des bes'> |
  \voiceOne bes'2 \oneVoice <d, bes'>4 <des bes'> | % D
  <c bes'>4 <c e g> <c d f> <c e g> |
  <c f a>2. <c c'>4 |
  q4 <c f a> <d fis d'> <d f a> |
  <ees a c>2 <d g bes>4 <des f bes> |
  <c e bes'>4 <c e g>
  <c e c'>4 <c e g> | % E
  <c f a>2. a'4 |
  \voiceOne a e \oneVoice <a, d f> <d g> |
  \voiceOne a'2 \oneVoice <a, cis a'>4 <a a'> |
  \voiceOne a' e \oneVoice <a, d f> <d g> |
  <cis a'>2(<c e bes' c>4\fermata) \section
  s4 | s1*9 | s2.
}

pianoRHtwo = \relative {
  \voiceTwo
  s4 | s1*3 | <c' g'>4 <c f> <c e> c | s1 |
  c4(cis) s2 | s1*4 | s2
  s2 | s1 | <a cis>2 s | cis4(d) s2 | <a cis>2 s | s2. \section
  s4 | s1*9 | s2.
}

pianoLHone = \relative {
  \voiceOne
  c4 | <c f> <cis f> <d f> <des f> |
  <c f>4 <cis f> <d f> <des f> |
  \oneVoice <f, c' f>4 <a a'> <g g'> <f f'> |
  <e e'>4 <d d'> <c c'> c' |
  q4 <c g' bes>4 4 4 |
  <c, c'>4 <c' g' bes> q q | % B
  <c, c'>4 <bes' bes'> <a a'> <g g'> |
  <f f'>4 <c' f a> q r |
  <f, f'>4 <c' f a> <d, d'> <d' a' c> |
  g,4 d' g r |
  <c,, c'>4 <c' g' bes>
  <c, c'>4 <c' g' a> | % C
  <f, f'>4 <c' f a> q a' |
  <a, e'>2 <d f>4 <bes d g> |
  \voiceOne e4 f e \oneVoice r |
  <a, e'>2 <d f>4 <bes d g> |
  <a e'>2(<g g'>4\fermata) \section
  s4 | s1*9 | s2.
}

pianoLHtwo = \relative {
  \voiceTwo
  s4 | f,1 | f | s | s | s |
  s1 | s | s | s | s | s2
  s2 | s1 | s | a2. s4 | s1 | s2. \section
  s4 | s1*9 | s2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Stand up for Je -- sus,
  Ye sol -- diers of the cross!
  Lift high His roy -- al ban -- ner,
  It must not, It must not suf -- fer loss.
}

chorusMen = \lyricmode {
  Stand up, stand up for Je -- sus!
  \repeat unfold 22 _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Stand up, stand up for Je -- sus,
  Ye sol -- diers of the cross!
  Lift high His roy -- al ban -- ner,
  It must not suf -- fer loss:
  From vic -- t'ry un -- to vic -- t'ry
  His ar -- my shall He lead,
  Till ev -- 'ry foe is van -- quished,
  And Christ is Lord in -- deed,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Stand up, stand up for Je -- sus!
  The trum -- pet call o -- bey;
  Forth to the migh -- ty con -- flict
  In this His glo -- rious day;
  Ye that are men now serve Him,
  A -- gainst un -- num -- bered foes;
  Let cour -- age rise with dan -- ger,
  And strength to strength op -- pose.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Stand up, stand up for Je -- sus!
  Stand in His strength a -- lone;
  The arm of flesh will fail you—
  Ye dare not trust your own:
  Put on the gos -- pel ar -- mour
  And, watch -- ing un -- to prayer,
  Where du -- ty calls, or dan -- ger,
  Be nev -- er want -- ing there.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Stand up, stand up for Je -- sus!
  The strife will not be long;
  This day the noise of bat -- tle,
  The next the vic -- tor's song:
  To him that o -- ver -- com -- eth
  A crown of life shall be;
  He with the King of Glo -- ry
  Shall reign e -- ter -- nal -- ly.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Stand " "up, " "stand " "up " "for " Je "sus, "
  "\nYe " sol "diers " "of " "the " "cross! "
  "\nLift " "high " "His " roy "al " ban "ner, "
  "\nIt " "must " "not " suf "fer " "loss: "
  "\nFrom " vic "t'ry " un "to " vic "t'ry "
  "\nHis " ar "my " "shall " "He " "lead, "
  "\nTill " ev "'ry " "foe " "is " van "quished, "
  "\nAnd " "Christ " "is " "Lord " in "deed,\n"
  "\nStand " "up " "for " Je "sus, "
  "\nYe " sol "diers " "of " "the " "cross! "
  "\nLift " "high " "His " roy "all " ban "ner, "
  "\nIt " "must " "not, " "It " "must " "not " suf "fer " "loss. "

  \set stanza = "2."
  "\nStand " "up, " "stand " "up " "for " Je "sus! "
  "\nThe " trum "pet " "call " o "bey; "
  "\nForth " "to " "the " migh "ty " con "flict "
  "\nIn " "this " "His " glo "rious " "day; "
  "\nYe " "that " "are " "men " "now " "serve " "Him, "
  "\nA" "gainst " un num "bered " "foes; "
  "\nLet " cour "age " "rise " "with " dan "ger, "
  "\nAnd " "strength " "to " "strength " op "pose.\n"
  "\nStand " "up " "for " Je "sus, "
  "\nYe " sol "diers " "of " "the " "cross! "
  "\nLift " "high " "His " roy "all " ban "ner, "
  "\nIt " "must " "not, " "It " "must " "not " suf "fer " "loss. "

  \set stanza = "3."
  "\nStand " "up, " "stand " "up " "for " Je "sus! "
  "\nStand " "in " "His " "strength " a "lone; "
  "\nThe " "arm " "of " "flesh " "will " "fail " "you— "
  "\nYe " "dare " "not " "trust " "your " "own: "
  "\nPut " "on " "the " gos "pel " ar "mour "
  "\nAnd, " watch "ing " un "to " "prayer, "
  "\nWhere " du "ty " "calls, " "or " dan "ger, "
  "\nBe " nev "er " want "ing " "there.\n"
  "\nStand " "up " "for " Je "sus, "
  "\nYe " sol "diers " "of " "the " "cross! "
  "\nLift " "high " "His " roy "all " ban "ner, "
  "\nIt " "must " "not, " "It " "must " "not " suf "fer " "loss. "

  \set stanza = "4."
  "\nStand " "up, " "stand " "up " "for " Je "sus! "
  "\nThe " "strife " "will " "not " "be " "long; "
  "\nThis " "day " "the " "noise " "of " bat "tle, "
  "\nThe " "next " "the " vic "tor's " "song: "
  "\nTo " "him " "that " o ver com "eth "
  "\nA " "crown " "of " "life " "shall " "be; "
  "\nHe " "with " "the " "King " "of " Glo "ry "
  "\nShall " "reign " e ter nal "ly. "
  "\nStand " "up " "for " Je "sus, "
  "\nYe " sol "diers " "of " "the " "cross! "
  "\nLift " "high " "His " roy "all " ban "ner, "
  "\nIt " "must " "not, " "It " "must " "not " suf "fer " "loss. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    <<
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
        \new PianoStaff <<
          \new Staff = pianorh
          <<
            \new Voice { \global \repeat unfold \verses \pianoRHone }
            \new Voice { \global \repeat unfold \verses \pianoRHtwo }
          >>
          \new Staff = pianolh
          <<
            \clef bass
            \new Voice { \global \repeat unfold \verses \pianoLHone }
            \new Voice { \global \repeat unfold \verses \pianoLHtwo }
          >>
        >>
      >>
    \midi {}
  }
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
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
        \new PianoStaff <<
          \new Staff = pianorh
          <<
            \new Voice { \global \pianoRHone }
            \new Voice { \global \pianoRHtwo }
          >>
          \new Staff = pianolh
          <<
            \clef bass
            \new Voice { \global \pianoLHone }
            \new Voice { \global \pianoLHtwo }
          >>
        >>
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
  <<
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
        \new PianoStaff <<
          \new Staff = pianorh
          <<
            \new Voice { \global \repeat unfold \verses \pianoRHone }
            \new Voice { \global \repeat unfold \verses \pianoRHtwo }
          >>
          \new Staff = pianolh
          <<
            \clef bass
            \new Voice { \global \repeat unfold \verses \pianoLHone }
            \new Voice { \global \repeat unfold \verses \pianoLHtwo }
          >>
        >>
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
