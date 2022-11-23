\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How Firm a Foundation!"
  subtitle    = "Sankey No. 526"
  subsubtitle = "Sankey 880 No. 739"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "John Reading."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "G. Keith."
  meter       = \markup\smallCaps "11s."
  piece       = \markup\smallCaps "Adeste Fideles."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*5
  \textMark \markup { \box \bold "B" }    s1*5
  \textMark \markup { \box \bold "C" }    s1*5
  \textMark \markup { \box \bold "D" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 | 2 e4 a | b2 e,4 4 | cis'(b) cis d | cis2(b4) a | a2 gis4 fis |
  gis4(a) b cis | gis2 fis4. e8 | 2. 4 | e'2 d4 cis | d2 cis4 4 |
  b4(cis) a b | gis4.(fis8 e4) a | a4(gis) a b | a2 e4 cis' | 4(b) cis d |
  cis2(b4) cis | d4(cis) b a | gis2 a4 d | cis2 b4. a8 | 2.
}

alto = \relative {
  \autoBeamOff
  cis'4 | 2 e4 cis | e2 4 4 | e2 4 fis | e2. cis4 | 4(d) e d |
  e2 4 4 | 2 dis4. e8 | 2. 4 | 2 4 4 | 2 4 4 |
  e2 4 fis | e2 ~ 4 \partCombineApart r | R1 | r2 r4 \partCombineAutomatic a | a(gis) a b |
  a2(e4) a | b4(a) fis fis | e2 4 a | 2 gis4. a8 | 2.
}

tenor = \relative {
  \autoBeamOff
  a4 | a2 4 4 | gis2 4 4 | a4(b) a a | 2(gis4) a | 2 b4 4 |
  b2 e4 cis | b2 a4. gis8 | 2. 4 | cis2 b4 a | b2 a4 4 |
  gis4(a) cis b | b4.(a8 gis4) a | 4(gis) a b | a2 e4 cis' | cis(b) cis d |
  cis2(b4) cis | d(cis) b a | b2 a4 fis' | e2 d4. cis8 | 2.
}

bass = \relative {
  \autoBeamOff
  a,4 | 2 cis4 a | e'2 4 4 | a4(gis) a d, | e2. fis4 | 2 e4 b |
  e4(fis) gis a | b2 b,4. e8 | e2. 4 | 2 4 4 | 2 4 4 |
  e4(a) cis, d | e2. \partCombineApart r4 | R1 | r2 r4 \partCombineAutomatic a4 | a(gis) a b |
  a2(e4) a | b(a) gis fis | e(d) cis d | e2 4. a,8 | 2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  How firm a foun -- da -- tion, ye saints of the Lord,
  Is laid for your faith in His ex -- cel -- lent Word!
  What more can He say, than to you He hath said—
  To you who for re -- fuge to Je -- sus have fled,
  To you who for re -- fuge to Je -- sus have fled.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Fear" not, I am with thee, oh, be not dis -- mayed!
  For I am thy God, I will still give thee aid;
  I'll strength -- en thee, help thee, and cause thee to stand,
  Up -- held by My gra -- cious, om -- ni -- po -- tent hand,
  Up -- held by My gra -- cious, om -- ni -- po -- tent hand.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"When" through the deep wa -- ters I call thee to go
  The riv -- ers of sor -- row shall bot ov -- er -- flow;
  For I will be with thee, thy tri -- als to bless,
  And sanc -- ti -- fy to thee thy deep -- est dis -- tress,
  And sanc -- ti -- fy to thee thy deep -- est dis -- tress.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"When" through fie -- ry tri -- als thy path -- way shall lie,
  My grace, all- suff -- ic -- ient, shall be thy sup -- ply;
  The flame shall not hurt thee: I on -- ly de -- sign
  Thy dross to con -- sume, and thy gold to re -- fine,
  Thy dross to con -- sume, and thy gold to re -- fine.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  "\"E'en" down to old age all My peo -- ple shall prove
  My sov -- 'reign, e -- ter -- nal, un -- change -- ab -- le love;
  And then, when grey hairs shall their tem -- ples a -- dorn,
  Like lambs they shall still in my bo -- som be borne,
  Like lambs they shall still in my bo -- som be borne.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  "\"The" soul that on Je -- sus hath leaned for re -- pose,
  I will not— I will not de -- sert to its foes;
  That soul, though all hell should en -- dea -- vour to shake,
  I'll ne -- ver— no, ne -- ver— no, ne -- ver for -- sake,
  I'll ne -- ver— no, ne -- ver— no, ne -- ver for -- "sake!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "How " "firm " "a " foun da "tion, " "ye " "saints " "of " "the " "Lord, "
  "\nIs " "laid " "for " "your " "faith " "in " "His " ex cel "lent " "Word! "
  "\nWhat " "more " "can " "He " "say, " "than " "to " "you " "He " "hath " "said— "
  "\nTo " "you " "who " "for " re "fuge " "to " Je "sus " "have " "fled, "
  "\nTo " "you " "who " "for " re "fuge " "to " Je "sus " "have " "fled.\n"

  \set stanza = "2."
  "\n\"Fear " "not, " "I " "am " "with " "thee, " "oh, " "be " "not " dis "mayed! "
  "\nFor " "I " "am " "thy " "God, " "I " "will " "still " "give " "thee " "aid; "
  "\nI'll " strength "en " "thee, " "help " "thee, " "and " "cause " "thee " "to " "stand, "
  "\nUp" "held " "by " "My " gra "cious, " om ni po "tent " "hand, "
  "\nUp" "held " "by " "My " gra "cious, " om ni po "tent " "hand.\n"

  \set stanza = "3."
  "\n\"When " "through " "the " "deep " wa "ters " "I " "call " "thee " "to " "go "
  "\nThe " riv "ers " "of " sor "row " "shall " "bot " ov er "flow; "
  "\nFor " "I " "will " "be " "with " "thee, " "thy " tri "als " "to " "bless, "
  "\nAnd " sanc ti "fy " "to " "thee " "thy " deep "est " dis "tress, "
  "\nAnd " sanc ti "fy " "to " "thee " "thy " deep "est " dis "tress.\n"

  \set stanza = "4."
  "\n\"When " "through " fie "ry " tri "als " "thy " path "way " "shall " "lie, "
  "\nMy " "grace, " all suff ic "ient, " "shall " "be " "thy " sup "ply; "
  "\nThe " "flame " "shall " "not " "hurt " "thee: " "I " on "ly " de "sign "
  "\nThy " "dross " "to " con "sume, " "and " "thy " "gold " "to " re "fine, "
  "\nThy " "dross " "to " con "sume, " "and " "thy " "gold " "to " re "fine.\n"

  \set stanza = "5."
  "\n\"E'en " "down " "to " "old " "age " "all " "My " peo "ple " "shall " "prove "
  "\nMy " sov "'reign, " e ter "nal, " un change ab "le " "love; "
  "\nAnd " "then, " "when " "grey " "hairs " "shall " "their " tem "ples " a "dorn, "
  "\nLike " "lambs " "they " "shall " "still " "in " "my " bo "som " "be " "borne, "
  "\nLike " "lambs " "they " "shall " "still " "in " "my " bo "som " "be " "borne. "

  \set stanza = "6."
  "\n\"The " "soul " "that " "on " Je "sus " "hath " "leaned " "for " re "pose, "
  "\nI " "will " "not— " "I " "will " "not " de "sert " "to " "its " "foes; "
  "\nThat " "soul, " "though " "all " "hell " "should " en dea "vour " "to " "shake, "
  "\nI'll " ne "ver— " "no, " ne "ver— " "no, " ne "ver " for "sake, "
  "\nI'll " ne "ver— " "no, " ne "ver— " "no, " ne "ver " for "sake!\" "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "How " "firm " "a " foun da "tion, " "ye " "saints " "of " "the " "Lord, "
  "\nIs " "laid " "for " "your " "faith " "in " "His " ex cel "lent " "Word! "
  "\nWhat " "more " "can " "He " "say, " "than " "to " "you " "He " "hath " "said— "
  "\nto " Je "sus " "have " "fled, "
  "\nTo " "you " "who " "for " re "fuge " "to " Je "sus " "have " "fled.\n"

  \set stanza = "2."
  "\n\"Fear " "not, " "I " "am " "with " "thee, " "oh, " "be " "not " dis "mayed! "
  "\nFor " "I " "am " "thy " "God, " "I " "will " "still " "give " "thee " "aid; "
  "\nI'll " strength "en " "thee, " "help " "thee, " "and " "cause " "thee " "to " "stand, "
  "\nom" ni po "tent " "hand, "
  "\nUp" "held " "by " "My " gra "cious, " om ni po "tent " "hand.\n"

  \set stanza = "3."
  "\n\"When " "through " "the " "deep " wa "ters " "I " "call " "thee " "to " "go "
  "\nThe " riv "ers " "of " sor "row " "shall " "bot " ov er "flow; "
  "\nFor " "I " "will " "be " "with " "thee, " "thy " tri "als " "to " "bless, "
  "\nthy " deep "est " dis "tress, "
  "\nAnd " sanc ti "fy " "to " "thee " "thy " deep "est " dis "tress.\n"

  \set stanza = "4."
  "\n\"When " "through " fie "ry " tri "als " "thy " path "way " "shall " "lie, "
  "\nMy " "grace, " all suff ic "ient, " "shall " "be " "thy " sup "ply; "
  "\nThe " "flame " "shall " "not " "hurt " "thee: " "I " on "ly " de "sign "
  "\nthy " "gold " "to " re "fine, "
  "\nThy " "dross " "to " con "sume, " "and " "thy " "gold " "to " re "fine.\n"

  \set stanza = "5."
  "\n\"E'en " "down " "to " "old " "age " "all " "My " peo "ple " "shall " "prove "
  "\nMy " sov "'reign, " e ter "nal, " un change ab "le " "love; "
  "\nAnd " "then, " "when " "grey " "hairs " "shall " "their " tem "ples " a "dorn, "
  "\nmy " bo "som " "be " "borne, "
  "\nLike " "lambs " "they " "shall " "still " "in " "my " bo "som " "be " "borne. "

  \set stanza = "6."
  "\n\"The " "soul " "that " "on " Je "sus " "hath " "leaned " "for " re "pose, "
  "\nI " "will " "not— " "I " "will " "not " de "sert " "to " "its " "foes; "
  "\nThat " "soul, " "though " "all " "hell " "should " en dea "vour " "to " "shake, "
  "\nno, " ne "ver " for "sake, "
  "\nI'll " ne "ver— " "no, " ne "ver— " "no, " ne "ver " for "sake!\" "
}

\book {
  \bookOutputSuffix "midi-st"
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
  \bookOutputSuffix "midi-ab"
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiMen
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

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
