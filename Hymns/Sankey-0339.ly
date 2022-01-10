\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God is Calling Yet!"
  subtitle    = "Sankey No. 339"
  subsubtitle = "Sankey 880 No. 547"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. O. Excell."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "Tersteegen" \italic "(tr." \smallCaps "Mrs. Findlater" \italic ")."}
  meter       = \markup\smallCaps "L.M."
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
  \mark \markup { \box "A" }    s1*3
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*2 s2
  \mark \markup { \box "E" } s2 s1   s2
  \mark \markup { \box "F" } s2 s1*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 aes8 bes c4. 8
  c8[bes] des4 c2
  bes4 8 8 aes4 bes
  bes4 f aes8[g] f[ees] % B
  ees4 aes8[bes] c4. 8
  c8[bes] des4 c2
  bes4 c8 des c4. bes8 % C
  aes8[g] f[g] aes2 \bar "||"
  ees'4.^\markup\smallCaps Chorus. 8 c ees, f ees
  des'4. 8 bes ees, f ees % D
  aes4. c8 bes4 aes
  bes8 ees, f g \bar "|" \break aes8 8 8 8
  ees'4. 8 c ees, f ees % E
  ees'4. 8 \bar "|" \break d f, g f
  ees4. aes8 c bes aes g % F
  f8 ees f g aes2
}

alto = \relative {
  \autoBeamOff
  c'4 8 des ees4. 8
  ees4 4 2
  ees4 8 8 4 4
  d4 4 des4 4 % B
  c4 8[d] ees4. 8
  ees4 4 2
  f4 8 8 ees4. 8 % C
  ees8[d] des4 c2
  aes'8 8 8 8 8 c, des c
  g'8 8 8 8 8 des des des % D
  c4. ees8 4 d
  ees8 8 d des c c c c
  aes'8 8 8 8 8 c, des c % E
  ges'8 8 8 8 f des ees des
  c4. 8 ees ees ees des
  des8 8 8 8 c2
}

tenor = \relative {
  \autoBeamOff
  aes4 8 8 4. 8
  aes8[g] bes4 aes2
  des4 8 8 c4 g
  bes4 4 4 aes8[g] % B
  aes4 4 4. 8
  aes8[g] bes4 aes2
  aes4 8 8 4. des8 % C
  c8[bes] aes[bes] aes2
  c8 8 8 8 ees r r4
  bes8 8 8 8 des r r4 % D
  aes4. 8 g4 f
  g8 r r4 r2
  c8 8 8 8 ees r r4 % E
  aes,8 8 8 8 8 r r4
  aes4. 8 8 des c bes % F
  aes8 g aes bes aes2
}

bass = \relative {
  \autoBeamOff
  aes,4 8 8 4. 8
  ees'4 4 aes,2
  ees'4 8 8 4 4
  bes4 4 ees ees % B
  aes,4 4 4. 8
  ees'4 4 aes,2
  des4 8 8 ees4. 8 % C
  ees4 4 aes,2
  aes'8 8 8 8 8 r r4
  ees8 8 8 8 8 r r4 % D
  aes,4. 8 bes4 4
  ees8 r r4 r2
  aes8 8 8 8 8 r r4 % E
  c,8 8 8 8 des r r4
  ees4. 8 8 8 8 8 % F
  ees8 8 8 8 aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Call -- ing yet, oh, hear Him!
  Call -- ing yet, oh, hear Him!
  God is call -- ing yet: oh, hear Him!
  call -- ing, call -- ing!
  Call -- ing yet, oh, hear Him!
  Call -- ing yet, oh, hear Him!
  God is call -- ing yet: oh, hear Him call -- ing yet!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  God is call -- ing yet!
  God is call -- ing yet!
  _ _ _ _ _
  God is call -- ing yet!
  God is call -- ing yet!
  _ _ _ _ _ _ _ _ _ _ _
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  God call -- ing yet! shall I not hear?
  Earth's plea -- sures shall I still hold dear?
  Shall life's swift pass -- ing years all fly,
  And still my soul in slum -- ber lie?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  God call -- ing yet! shall I not rise?
  Can I His lov -- ing voice des -- pise,
  And base -- ly His kind care re -- pay?
  He calls me still: can I de -- lay?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  God call -- ing yet! and shall He knock,
  And I my heart the clo -- ser lock?
  He still is wait -- ing to re -- ceive,
  And shall I dare His Spi -- rit grieve?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  God call -- ing yet! and shall I give
  No heed, but still in bond -- age live?
  I wait; but He does not for -- sake;
  He calls me still: my heart, a -- wake!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  God call -- ing yet! I can -- not stay;
  My heart I yield with -- out de -- lay:
  Vain world, fare -- well! from thee I part:
  The voice of God has reached my heart.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "God " call "ing " "yet! " "shall " "I " "not " "hear? "
  "\nEarth's " plea "sures " "shall " "I " "still " "hold " "dear? "
  "\nShall " "life's " "swift " pass "ing " "years " "all " "fly, "
  "\nAnd " "still " "my " "soul " "in " slum "ber " "lie? "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "2."
  "\nGod " call "ing " "yet! " "shall " "I " "not " "rise? "
  "\nCan " "I " "His " lov "ing " "voice " des "pise, "
  "\nAnd " base "ly " "His " "kind " "care " re "pay? "
  "\nHe " "calls " "me " "still: " "can " "I " de "lay? "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "3."
  "\nGod " call "ing " "yet! " "and " "shall " "He " "knock, "
  "\nAnd " "I " "my " "heart " "the " clo "ser " "lock? "
  "\nHe " "still " "is " wait "ing " "to " re "ceive, "
  "\nAnd " "shall " "I " "dare " "His " Spi "rit " "grieve? "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "4."
  "\nGod " call "ing " "yet! " "and " "shall " "I " "give "
  "\nNo " "heed, " "but " "still " "in " bond "age " "live? "
  "\nI " "wait; " "but " "He " "does " "not " for "sake; "
  "\nHe " "calls " "me " "still: " "my " "heart, " a "wake! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "5."
  "\nGod " call "ing " "yet! " "I " can "not " "stay; "
  "\nMy " "heart " "I " "yield " with "out " de "lay: "
  "\nVain " "world, " fare "well! " "from " "thee " "I " "part: "
  "\nThe " "voice " "of " "God " "has " "reached " "my " "heart. "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nCall" "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "God " call "ing " "yet! " "shall " "I " "not " "hear? "
  "\nEarth's " plea "sures " "shall " "I " "still " "hold " "dear? "
  "\nShall " "life's " "swift " pass "ing " "years " "all " "fly, "
  "\nAnd " "still " "my " "soul " "in " slum "ber " "lie? "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "2."
  "\nGod " call "ing " "yet! " "shall " "I " "not " "rise? "
  "\nCan " "I " "His " lov "ing " "voice " des "pise, "
  "\nAnd " base "ly " "His " "kind " "care " re "pay? "
  "\nHe " "calls " "me " "still: " "can " "I " de "lay? "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "3."
  "\nGod " call "ing " "yet! " "and " "shall " "He " "knock, "
  "\nAnd " "I " "my " "heart " "the " clo "ser " "lock? "
  "\nHe " "still " "is " wait "ing " "to " re "ceive, "
  "\nAnd " "shall " "I " "dare " "His " Spi "rit " "grieve? "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "4."
  "\nGod " call "ing " "yet! " "and " "shall " "I " "give "
  "\nNo " "heed, " "but " "still " "in " bond "age " "live? "
  "\nI " "wait; " "but " "He " "does " "not " for "sake; "
  "\nHe " "calls " "me " "still: " "my " "heart, " a "wake! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "5."
  "\nGod " call "ing " "yet! " "I " can "not " "stay; "
  "\nMy " "heart " "I " "yield " with "out " de "lay: "
  "\nVain " "world, " fare "well! " "from " "thee " "I " "part: "
  "\nThe " "voice " "of " "God " "has " "reached " "my " "heart. "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him! "
  "\ncall" "ing, " call "ing! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet, " "oh, " "hear " "Him! "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "God " call "ing " "yet! " "shall " "I " "not " "hear? "
  "\nEarth's " plea "sures " "shall " "I " "still " "hold " "dear? "
  "\nShall " "life's " "swift " pass "ing " "years " "all " "fly, "
  "\nAnd " "still " "my " "soul " "in " slum "ber " "lie? "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet, "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "2."
  "\nGod " call "ing " "yet! " "shall " "I " "not " "rise? "
  "\nCan " "I " "His " lov "ing " "voice " des "pise, "
  "\nAnd " base "ly " "His " "kind " "care " re "pay? "
  "\nHe " "calls " "me " "still: " "can " "I " de "lay? "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet, "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "3."
  "\nGod " call "ing " "yet! " "and " "shall " "He " "knock, "
  "\nAnd " "I " "my " "heart " "the " clo "ser " "lock? "
  "\nHe " "still " "is " wait "ing " "to " re "ceive, "
  "\nAnd " "shall " "I " "dare " "His " Spi "rit " "grieve? "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet, "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "4."
  "\nGod " call "ing " "yet! " "and " "shall " "I " "give "
  "\nNo " "heed, " "but " "still " "in " bond "age " "live? "
  "\nI " "wait; " "but " "He " "does " "not " for "sake; "
  "\nHe " "calls " "me " "still: " "my " "heart, " a "wake! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet, "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "

  \set stanza = "5."
  "\nGod " call "ing " "yet! " "I " can "not " "stay; "
  "\nMy " "heart " "I " "yield " with "out " de "lay: "
  "\nVain " "world, " fare "well! " "from " "thee " "I " "part: "
  "\nThe " "voice " "of " "God " "has " "reached " "my " "heart. "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet! "
  "\nGod " "is " call "ing " "yet, "
  "\nGod " "is " call "ing " "yet: " "oh, " "hear " "Him " call "ing " "yet! "
}
  
\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen \chorusMen \chorusMen \chorusMen \chorusMen }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen \chorusMen \chorusMen \chorusMen \chorusMen }
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
