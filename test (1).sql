-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2022 at 08:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f43'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b9a'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dfa7b'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd1b'),
('5b141d737ddfc', '5b141d73858df'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d064'),
('5b142265b5d08', '5b142265c09f5'),
('5b1422661d93f', '5b14226635e0d'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8ea'),
('5b142266c525c', '5b142266cd369'),
('5b14226711d91', '5b14226719fb1'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3fc');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(500) NOT NULL,
  `replies` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'Hi|Hello|hi|hii|hello|', 'Hii how can I help you?'),
(14, 'Byy|By|byy|by|Good by|good by|', 'Byy! Have a good day.'),
(15, 'What Are the Parts of Speech?|what Are the Parts of Speech?|What Are the Parts of Speech| what Are the Parts of Speech', 'A \"part of speech\" is a category to which a word is assigned in accordance with its syntactic functions. In English, the main parts of speech are noun, pronoun, adjective, determiner, verb, adverb, preposition, conjunction, and interjection.'),
(16, 'Adjective|adjective|What are adjective|what is adjectives|What are adjectives|', 'An adjective modifies a noun or a pronoun.\r\n'),
(17, 'Adverb', 'An adverb modifies a verb.\r\nExamples of adverbs:\r\nhappily, loosely, often'),
(18, 'Conjunction|conjunction|what is conjunction', 'A conjunction joins words, phrases, or clauses.\r\nExamples of conjunctions:\r\nand, or, but'),
(19, 'Determiner|determiner|what is determiner|what is Determiner', 'A determiner specifies a noun or a pronoun or states quantity.\r\nExamples of determiners:\r\nmy, those, two, many'),
(20, 'Interjection|interjection|what is interjection|what is Interjection', 'An interjection expresses emotion.\r\nExamples of interjections:\r\nouch, oops, eek'),
(21, 'Noun|noun|what is noun|what is Noun', 'A noun names a person, place, or thing.\r\nExamples of nouns:\r\nleader, town, apple'),
(22, 'Preposition|preposition|what is preposition|what is Preposition', 'A preposition shows the relationship between a noun (or pronoun) and other words in a sentence.\r\nExamples of prepositions:\r\nin, near, on, with'),
(23, 'Pronoun|pronoun|what is pronoun|what is Pronoun', 'A pronoun replaces a noun (or a noun phrase).\r\nExamples of pronouns:\r\nshe, we, they, that'),
(24, 'Verb|verb|what is verb|what is Verb', 'A verb identifies an action or state of being.\r\nExamples of verbs:\r\nwork, be, write, exist'),
(25, 'Abbreviations|abbreviations|What Are Abbreviations?|What Are abbreviations?', 'An abbreviation is a shortened version of a written word or phrase used to replace the original. Here are some examples of abbreviations:\r\nRAF is short for Royal Air Force.\r\nProf. is short for Professor.\r\nCNN is short for Cable News Network.\r\nM.O.T. is short for Ministry of Transport.'),
(26, 'Acronyms|acronyms|What is Acronyms|What is acronyms', 'an acronym is an abbreviation spoken like a word. For example:\r\nDOS\r\n(Disk Operating System)\r\nNAAFI\r\n(Navy, Army, and Air Force Institutes)\r\nBOGOF\r\n(Buy One Get One Free)'),
(27, 'Contractions|contractions|What is contractions|What is Contractions', 'A contraction is a contracted version of a word. (A contraction often includes an apostrophe to replace any missing letters.) For example:\r\nYou\'re\r\n(In full: You are)\r\nCan\'t\r\n(In full: Cannot)\r\nMr.\r\n(In full: Mister)'),
(28, 'Initial Abbreviations|initial abbreviations|what is initial abbreviations|what is Initial Abbreviations', 'An initialism is an abbreviation whose letters each represent a word. For example:\r\nAQI\r\n(Air Quality Index)\r\nMLRS\r\n(Multiple Launch Rocket System)\r\nITV\r\n(Independent Television)'),
(29, 'Syllabic Abbreviations|syllabic abbreviations', 'A syllabic abbreviation is an abbreviation formed from the initial syllables of multiple words. For example:\r\nInterpol (International Police)\r\nINMARSAT (International Maritime Satellite)\r\nGestapo (Geheime Staats Polizei)\r\nComintern (Communist International)'),
(30, 'Absolute Possessive Pronouns|absolute possessive pronouns', 'The term \"absolute possessive pronoun\" refers to the possessive pronouns \"mine,\" \"yours,\" \"his,\" \"hers,\" \"ours,\" and \"theirs.\" (A possessive pronoun is a word that replaces a noun (or a noun phrase) and shows ownership.)'),
(31, 'Abstract Nouns|abstract nouns|abstract noun|Abstract Noun', 'An abstract noun is a noun that refers to an intangible concept such as an emotion, a feeling, a quality, or an idea. In other words, an abstract noun does not refer to a physical object.\r\n'),
(32, 'Accusative Case|accusative case', 'The accusative case is a grammatical case whose main function is to show the direct object of a verb. (Most people will encounter the term \"accusative case\" when studying a language other than English.)\r\n\r\n'),
(33, 'Acronyms|acronyms', 'An acronym is an abbreviation spoken like a word. For example:\r\nNATO (North Atlantic Treaty Organization)\r\nNAAFI (Navy, Army and Air Force Institutes)\r\nlaser (Light Amplification by Stimulated Emission of Radiation)\r\n(Note: Some acronyms are so common, they are often treated like normal words and are written in lowercase letters.)'),
(34, 'Active Sentence|active sentence', 'An active sentence is a sentence where the subject performs the action of the verb. For example:\r\nJohn kicked the ball.\r\n(\"John\" is the subject. \"John\" is performing the action of the verb \"kick.\" Therefore, this is an active sentence.)'),
(35, 'Active Voice|active voice', 'Active voice is the term for a verb whose subject performs the action of the verb. For example:\r\nJohn painted the fence.\r\n(In this example, \"painted\" is in the active voice because the subject of \"painted\" (\"John\") is performing the action, i.e., did the painting. So, this is an example of an active sentence with a verb in the active voice.)'),
(36, '', ''),
(37, 'Adjective Clause|adjective clause\r\n', 'An adjective clause is a multi-word adjective that includes a subject and a verb.'),
(38, 'Adjective Phrase|adjective phrase', 'An adjective phrase is a group of words headed by an adjective that describes a noun or a pronoun.'),
(39, 'Adjuncts|adjuncts', 'An adjunct is a word, a phrase, or a clause that can be removed from a sentence without making the sentence grammatically wrong.'),
(40, 'Adverbs|adverbs|Adverb|adverb', 'Adverbs are words that describe verbs. In these two examples, the adverbs tell us how the verb is performed:\r\nHe walked quickly.\r\n(In this example, \"walked\" is the verb, and the adverb \"quickly\" describes how the verb was done.)'),
(41, 'Adverbial Clause|adverbial clause', 'An adverbial clause is a group of words that plays the role of an adverb. (Like all clauses, an adverbial clause contains a subject and a verb.)'),
(42, 'Adverbial Phrase|adverbial phrase', 'An adverbial phrase is a group of words that functions as an adverb. Adverbial phrases contrast with adverbial clauses and single-word adverbs. Unlike an adverbial clause, an adverbial phrase does not contain a subject and a verb.'),
(43, 'Affixes|affixes|Affix|affix', 'An affix is added to the root of a word to change its meaning. An affix added to the front of a word is known as a prefix. One added to the back is known as a suffix. Sometimes, prefixes are hyphenated.'),
(44, 'Alliteration|alliteration', 'Alliteration is the repetition of the same initial consonant sound in successive words. Alliteration is used to make writing more rhythmic (in poetry, for example) or more memorable (in a business document, for example).'),
(45, 'Anagrams|anagrams', 'Anagrams are words that share the same letters as each other.\r\nEasy Examples of Anagrams\r\nstop, tops, opts, pots, and spot'),
(46, 'Analogy|analogy', 'An analogy is a comparison of two things to highlight their similarities. (Often the things being compared are physically different, but an analogy highlights how they are alike.)'),
(47, 'Anaphora|anaphora', 'Anaphora is a writing technique that involves repeating terms at the start of neighboring clauses or sentences.'),
(48, 'Anastrophe|anastrophe', 'Anastrophe is the deliberate changing of normal word order for emphasis or another rhetorical effect. (A rhetorical effect is any effect that elicits a response from the reader, e.g., causes the reader to pause for thought.)'),
(49, 'Antecedent|antecedent', 'An antecedent is the thing represented by a pronoun. The antecedent of a pronoun is a noun.\r\ne.g\r\nTell the professor I\'ll see him tonight.\r\n(\"The professor\" is the antecedent of the pronoun \"him.\")\r\n'),
(50, 'Antonyms|Antonyms|antonym|Antonym', 'Antonyms are words with opposite meanings.\r\nBad is an antonym of good.'),
(51, 'Graded Antonyms|graded antonyms', 'Graded antonyms do not have to be opposites of equal weighting. They allow for shades of oppositeness. For example, the following are all antonyms for \"good\":\r\nunsatisfactory, poor, bad, terrible'),
(52, 'Complementary Antonyms|complementary antonyms', 'Complementary antonyms offer no middle ground. The antonyms are strongly paired, meaning there is only one antonym for each word. (Complementary antonyms are often called \"relational antonyms\" because a clear relationship exists between the words.) '),
(53, 'Apostrophes|apostrophes|apostrophe|Apostrophe', 'An apostrophe (\') is a punctuation mark used:\r\nTo replace a missing letter(s). For example:\r\ncannot > can\'t\r\ndo not > don\'t'),
(54, 'Appositive|appositive', 'An appositive is a noun or a noun phrase that sits next to another noun to rename it or to describe it in another way. (The word appositive comes from the Latin for to put near.)'),
(55, 'Adjective Clause|adjective clause\r\n', 'An adjective clause is a multi-word adjective that includes a subject and a verb.'),
(56, 'Adjective Phrase|adjective phrase', 'An adjective phrase is a group of words headed by an adjective that describes a noun or a pronoun.'),
(57, 'Adjuncts|adjuncts', 'An adjunct is a word, a phrase, or a clause that can be removed from a sentence without making the sentence grammatically wrong.'),
(58, 'Adverbs|adverbs|Adverb|adverb', 'Adverbs are words that describe verbs. In these two examples, the adverbs tell us how the verb is performed:\r\nHe walked quickly.\r\n(In this example, \"walked\" is the verb, and the adverb \"quickly\" describes how the verb was done.)'),
(59, 'Adverbial Clause|adverbial clause', 'An adverbial clause is a group of words that plays the role of an adverb. (Like all clauses, an adverbial clause contains a subject and a verb.)'),
(60, 'Adverbial Phrase|adverbial phrase', 'An adverbial phrase is a group of words that functions as an adverb. Adverbial phrases contrast with adverbial clauses and single-word adverbs. Unlike an adverbial clause, an adverbial phrase does not contain a subject and a verb.'),
(61, 'Affixes|affixes|Affix|affix', 'An affix is added to the root of a word to change its meaning. An affix added to the front of a word is known as a prefix. One added to the back is known as a suffix. Sometimes, prefixes are hyphenated.'),
(62, 'Alliteration|alliteration', 'Alliteration is the repetition of the same initial consonant sound in successive words. Alliteration is used to make writing more rhythmic (in poetry, for example) or more memorable (in a business document, for example).'),
(63, 'Anagrams|anagrams', 'Anagrams are words that share the same letters as each other.\r\nEasy Examples of Anagrams\r\nstop, tops, opts, pots, and spot'),
(64, 'Analogy|analogy', 'An analogy is a comparison of two things to highlight their similarities. (Often the things being compared are physically different, but an analogy highlights how they are alike.)'),
(65, 'Anaphora|anaphora', 'Anaphora is a writing technique that involves repeating terms at the start of neighboring clauses or sentences.'),
(66, 'Anastrophe|anastrophe', 'Anastrophe is the deliberate changing of normal word order for emphasis or another rhetorical effect. (A rhetorical effect is any effect that elicits a response from the reader, e.g., causes the reader to pause for thought.)'),
(67, 'Antecedent|antecedent', 'An antecedent is the thing represented by a pronoun. The antecedent of a pronoun is a noun.\r\ne.g\r\nTell the professor I\'ll see him tonight.\r\n(\"The professor\" is the antecedent of the pronoun \"him.\")\r\n'),
(68, 'Antonyms|Antonyms|antonym|Antonym', 'Antonyms are words with opposite meanings.\r\nBad is an antonym of good.'),
(69, 'Graded Antonyms|graded antonyms', 'Graded antonyms do not have to be opposites of equal weighting. They allow for shades of oppositeness. For example, the following are all antonyms for \"good\":\r\nunsatisfactory, poor, bad, terrible'),
(70, 'Complementary Antonyms|complementary antonyms', 'Complementary antonyms offer no middle ground. The antonyms are strongly paired, meaning there is only one antonym for each word. (Complementary antonyms are often called \"relational antonyms\" because a clear relationship exists between the words.) '),
(71, 'Apostrophes|apostrophes|apostrophe|Apostrophe', 'An apostrophe (\') is a punctuation mark used:\r\nTo replace a missing letter(s). For example:\r\ncannot > can\'t\r\ndo not > don\'t'),
(72, 'Appositive|appositive', 'An appositive is a noun or a noun phrase that sits next to another noun to rename it or to describe it in another way. (The word appositive comes from the Latin for to put near.)'),
(73, 'Archaism|archaism', 'An archaism is an archaic word or spelling. In other words, archaisms are words that have gone out of use in modern language. Nowadays, their use is usually for impact, comic effect, or portraying a sense of the old fashioned.'),
(74, 'Articles|articles|article|articles', 'The articles are the words \"a,\" \"an,\" and \"the.\" They define whether something is specific or unspecific.\r\nThere are two types of article:\r\nThe Definite Article\r\nThe Indefinite Article'),
(75, 'Definite Article|definite article', '\"The\" is called the definite article. It defines its noun as something specific (e.g., something previously mentioned or known, something unique, something being identified by the speaker).'),
(76, 'Indefinite Article|indefinite article', '\"A\" and \"an\" are called the indefinite articles. They define their noun as something unspecific (e.g., something generic, something mentioned for the first time).'),
(77, 'Aspect|aspect| Aspect of a Verb| aspect of a verb', 'The aspect of a verb is determined by whether the verb expresses a fact, an ongoing action, a completed action, or the end of an ongoing action. This is simpler concept than it sounds. Look at this infographic.\r\nTypes:-\r\nSimple Aspect\r\nPerfect Aspect\r\nProgressive Aspect.\r\nPerfect Progressive Aspect'),
(78, 'Simple Aspect|simple aspect', 'The simple aspect expresses a fact.\r\nE.G\r\nJohn fished in the sea.'),
(79, ' Perfect Aspect| perfect aspect', 'The perfect aspect expresses a completed action.\r\nE.g\r\nJohn had caught two mackerel before the seals arrived.'),
(80, ' Progressive Aspect| progressive aspect.', 'The progressive aspect expresses an ongoing action.\r\nE.g\r\nJohn was fishing when the seals arrived.'),
(81, ' Perfect Progressive Aspect| perfect progressive aspect', 'The perfect progressive aspect expresses the end of an ongoing action.\r\nE.g\r\nJohn had been fishing successfully before the seals arrived.'),
(82, 'Base Form| base form| Base Form of a Verb| base form of a verb', 'The base form (or root) of a verb is the form listed in the dictionary.\r\n\r\nIt is the version of the verb without any endings (endings such as -s, -ing, and ed). The base form is the same as the infinitive (e.g., to walk, to paint, to think) but without the to.'),
(83, 'Brackets|brackets', 'Brackets are punctuation marks used in pairs. There are four types of brackets used in writing:\r\n( )	Parentheses or Round Brackets\r\n[ ]	Square Brackets or Box Brackets\r\n{ }	Braces or Curly Brackets\r\n< >	Angle Brackets or Chevrons'),
(84, 'Case|case', 'Case shows a noun\'s or a pronoun\'s relationship with the other words in a sentence.\r\nthese are the main cases you will encounter in English:\r\nSubjective Case\r\nObjective Case\r\nPossessive Case\r\nVocative Case'),
(85, 'Subjective Case|subjective case', 'The subjective case (shaded in these examples) is for a noun or pronoun that is the subject of a verb (i.e., the person or thing carrying out the action). For example:\r\nLee went to Greggs. He supports Greggs.'),
(86, 'Objective Case|objective case', 'The objective case (shaded) is for a noun or pronoun that is one of the following:\r\nThe direct object of a verb (e.g., She likes him.)\r\nThe indirect object of a verb (e.g., Give her the money.)\r\nThe object of a preposition (e.g., Go with them.)'),
(87, 'Direct Object|direct object', 'You can find the direct object by finding the verb (shown in bold in the two examples below) and asking \"what?\" or \"whom?\" (in other words, by finding what the verb is acting upon). For example:\r\nFrogs don\'t drink water. They absorb it.'),
(88, 'Indirect Object|indirect object', 'The indirect object is usually the beneficiary of the action.'),
(89, 'Object of a Preposition|object of a preposition.', 'The object of a preposition is the noun of pronoun governed by a preposition '),
(90, 'Possessive Case|possessive case', 'The possessive case (shaded) shows possession. With nouns, it is shown with an apostrophe. Pronouns in the possessive case come in two forms: possessive determiners (e.g., my, your) and possessive pronouns (e.g., mine, yours).'),
(91, 'Vocative Case|vocative case', 'The vocative case (shaded) shows when something (usually a person) is being addressed directly. Words in the vocative case are offset with comma(s).\r\nE.g\r\nLadies and gentleman, please take your seats.'),
(92, 'Accusative Case|accusative case', 'You are most likely to encounter the term \"accusative case\" when studying a foreign language. The accusative case\'s main function is to show the direct object of a verb. In English, the accusative case falls under the objective case.'),
(93, 'Archaism|archaism', 'An archaism is an archaic word or spelling. In other words, archaisms are words that have gone out of use in modern language. Nowadays, their use is usually for impact, comic effect, or portraying a sense of the old fashioned.'),
(94, 'Articles|articles|article|articles', 'The articles are the words \"a,\" \"an,\" and \"the.\" They define whether something is specific or unspecific.\r\nThere are two types of article:\r\nThe Definite Article\r\nThe Indefinite Article'),
(95, 'Definite Article|definite article', '\"The\" is called the definite article. It defines its noun as something specific (e.g., something previously mentioned or known, something unique, something being identified by the speaker).'),
(96, 'Indefinite Article|indefinite article', '\"A\" and \"an\" are called the indefinite articles. They define their noun as something unspecific (e.g., something generic, something mentioned for the first time).'),
(97, 'Aspect|aspect| Aspect of a Verb| aspect of a verb', 'The aspect of a verb is determined by whether the verb expresses a fact, an ongoing action, a completed action, or the end of an ongoing action. This is simpler concept than it sounds. Look at this infographic.\r\nTypes:-\r\nSimple Aspect\r\nPerfect Aspect\r\nProgressive Aspect.\r\nPerfect Progressive Aspect'),
(98, 'Simple Aspect|simple aspect', 'The simple aspect expresses a fact.\r\nE.G\r\nJohn fished in the sea.'),
(99, ' Perfect Aspect| perfect aspect', 'The perfect aspect expresses a completed action.\r\nE.g\r\nJohn had caught two mackerel before the seals arrived.'),
(100, ' Progressive Aspect| progressive aspect.', 'The progressive aspect expresses an ongoing action.\r\nE.g\r\nJohn was fishing when the seals arrived.'),
(101, ' Perfect Progressive Aspect| perfect progressive aspect', 'The perfect progressive aspect expresses the end of an ongoing action.\r\nE.g\r\nJohn had been fishing successfully before the seals arrived.'),
(102, 'Base Form| base form| Base Form of a Verb| base form of a verb', 'The base form (or root) of a verb is the form listed in the dictionary.\r\n\r\nIt is the version of the verb without any endings (endings such as -s, -ing, and ed). The base form is the same as the infinitive (e.g., to walk, to paint, to think) but without the to.'),
(103, 'Brackets|brackets', 'Brackets are punctuation marks used in pairs. There are four types of brackets used in writing:\r\n( )	Parentheses or Round Brackets\r\n[ ]	Square Brackets or Box Brackets\r\n{ }	Braces or Curly Brackets\r\n< >	Angle Brackets or Chevrons'),
(104, 'Case|case', 'Case shows a noun\'s or a pronoun\'s relationship with the other words in a sentence.\r\nthese are the main cases you will encounter in English:\r\nSubjective Case\r\nObjective Case\r\nPossessive Case\r\nVocative Case'),
(105, 'Subjective Case|subjective case', 'The subjective case (shaded in these examples) is for a noun or pronoun that is the subject of a verb (i.e., the person or thing carrying out the action). For example:\r\nLee went to Greggs. He supports Greggs.'),
(106, 'Objective Case|objective case', 'The objective case (shaded) is for a noun or pronoun that is one of the following:\r\nThe direct object of a verb (e.g., She likes him.)\r\nThe indirect object of a verb (e.g., Give her the money.)\r\nThe object of a preposition (e.g., Go with them.)'),
(107, 'Direct Object|direct object', 'You can find the direct object by finding the verb (shown in bold in the two examples below) and asking \"what?\" or \"whom?\" (in other words, by finding what the verb is acting upon). For example:\r\nFrogs don\'t drink water. They absorb it.'),
(108, 'Indirect Object|indirect object', 'The indirect object is usually the beneficiary of the action.'),
(109, 'Object of a Preposition|object of a preposition.', 'The object of a preposition is the noun of pronoun governed by a preposition '),
(110, 'Possessive Case|possessive case', 'The possessive case (shaded) shows possession. With nouns, it is shown with an apostrophe. Pronouns in the possessive case come in two forms: possessive determiners (e.g., my, your) and possessive pronouns (e.g., mine, yours).'),
(111, 'Vocative Case|vocative case', 'The vocative case (shaded) shows when something (usually a person) is being addressed directly. Words in the vocative case are offset with comma(s).\r\nE.g\r\nLadies and gentleman, please take your seats.'),
(112, 'Accusative Case|accusative case', 'You are most likely to encounter the term \"accusative case\" when studying a foreign language. The accusative case\'s main function is to show the direct object of a verb. In English, the accusative case falls under the objective case.'),
(113, 'Dative Case', 'You are most likely to encounter the term \"dative case\" when studying a foreign language. The dative case\'s main function is to show the indirect object of a verb. In English, the dative case falls under the objective case.\r\nE.g\r\nIf only God would give me some clear sign! Like making a large deposit in my name in a Swiss bank. (Woody Allen)'),
(114, 'Instrumental Case', 'you are most likely to encounter the term \"instrumental case\" when studying a foreign language, particularly a Slavic one. The case\'s main function is to show that a noun is the means by which the action is achieved.'),
(115, 'Dative Case', 'You are most likely to encounter the term \"dative case\" when studying a foreign language. The dative case\'s main function is to show the indirect object of a verb. In English, the dative case falls under the objective case.\r\nE.g\r\nIf only God would give me some clear sign! Like making a large deposit in my name in a Swiss bank. (Woody Allen)'),
(116, 'Instrumental Case', 'you are most likely to encounter the term \"instrumental case\" when studying a foreign language, particularly a Slavic one. The case\'s main function is to show that a noun is the means by which the action is achieved.'),
(117, 'Clause|Clauses', 'A clause is a group of words that functions as one part of speech and that includes a subject and a verb.\r\nTypes of Clause\r\nIndependent Clause\r\nDependent Clause'),
(118, 'Independent Clause.', 'An independent clause (shown in bold throughout this lesson) functions like a complete sentence. \r\nFor example:\r\nJohn eats eggs.'),
(119, 'dependent clause', 'A dependent clause functions like an adjective, an adverb, or a noun. '),
(120, 'Adjective Clauses', 'Adjective clauses are dependent clauses that give information about nouns. They allow you to combine two sentences into one by using relative pronouns (​who, whom, whose, where, when, which, that, ​and ​why​) as connectors. WHO ​(used for people as subjects) My friend missed the lecture.'),
(121, 'Adverbial Clauses', 'An adverbial clause, also known as an adverb clause, is a group of words that forms a dependent clause and acts as an adverb in a sentence. Adverbial clauses contain a subject, a predicate, and a subordinating conjunction.'),
(122, 'Noun Clauses', 'A noun clause is a clause (a group of words with a subject and a verb) that serves as a noun in a sentence. In the English language, nouns are the words used to refer to people, places, or things'),
(123, 'Cliché', 'A cliché is an overused and worn-out expression used to convey a popular thought or idea.\r\nE.g\r\nThe ball is in your court.'),
(124, 'Proverbs|Proverb', 'A proverb is a short, well-known saying that states a general truth or a piece of advice. For example:\r\nA bird in the hand is worth two in the bush.'),
(125, 'Idioms.|Idiom', 'An idiom is commonly used expression whose meaning does not relate to the literal meaning of its word. For example:\r\nI am over the moon.'),
(126, 'Catchphrases|Catchphrase', 'A catchphrase is a well-known term, especially one that is associated with a particular famous person. For example:\r\n\"Come on down!\" (The Price Is Right)'),
(127, 'Similes|Simile', 'A simile is a figure of speech which compares one thing with another to create an analogy. For example:\r\nThis is about as much use as a chocolate teapot.'),
(128, 'Metaphors|Metaphor', 'A metaphor is a figure of speech which states one thing is another to create an analogy. For example:\r\nThat will put the final nail in the coffin.'),
(129, 'Coordinating Conjunctions', 'Coordinating conjunctions are joiners. They join like with like. For example, a coordinating conjunction can be used to join an adjective with another adjective, a noun with another noun, or a clause with another clause. The three most common coordinating conjunctions are\r\nFor\r\nAnd\r\nNor\r\nBut\r\nOr\r\nYet\r\nSo '),
(130, 'Collective Nouns', 'A collective noun is the word used to represent a group of people, animals, or things.\r\nE.g Flock,Crowd'),
(131, 'Colloquialisms', 'A colloquialism is a familiar expression used mostly in informal speech. A colloquialism is usually acceptable in everyday conversation but not in formal writing'),
(132, 'Colons|Colon', 'A colon (:) is a common punctuation mark used:\r\nTo extend a sentence with an appositive (a renaming of something previously mentioned). For example:\r\nHe attributed his success to one factor: luck.'),
(133, 'Commas|Comma', 'A comma (,) is a punctuation mark used to mark the divisions in text (as may be caused by phrases, clauses, or conjunctions). Commas are also used in lists to separate list items and in numbers to aid reading.'),
(134, 'Common Noun|Common Nouns', 'A common noun is the generic name for a person, place, or thing, e.g., boy, town, lake, bridge. Common nouns contrast with proper nouns, which are the given names (or titles) we give to things, e.g., Peter, New York, Lake Superior, London Bridge.\r\n'),
(135, 'Commoratio', 'Commoratio is deliberately repeating an idea back to back, but in different words. (Commoratio is also known as synonymia and communio.)'),
(136, 'Comparatives|Comparative', 'A comparative is the form of adjective or adverb used to compare two things.\r\nE.g\r\nMark is taller.\r\n(taller = comparative of the adjective tall)'),
(137, 'Clause|Clauses', 'A clause is a group of words that functions as one part of speech and that includes a subject and a verb.\r\nTypes of Clause\r\nIndependent Clause\r\nDependent Clause'),
(138, 'Independent Clause.', 'An independent clause (shown in bold throughout this lesson) functions like a complete sentence. \r\nFor example:\r\nJohn eats eggs.'),
(139, 'dependent clause', 'A dependent clause functions like an adjective, an adverb, or a noun. '),
(140, 'Adjective Clauses', 'Adjective clauses are dependent clauses that give information about nouns. They allow you to combine two sentences into one by using relative pronouns (​who, whom, whose, where, when, which, that, ​and ​why​) as connectors. WHO ​(used for people as subjects) My friend missed the lecture.'),
(141, 'Adverbial Clauses', 'An adverbial clause, also known as an adverb clause, is a group of words that forms a dependent clause and acts as an adverb in a sentence. Adverbial clauses contain a subject, a predicate, and a subordinating conjunction.'),
(142, 'Noun Clauses', 'A noun clause is a clause (a group of words with a subject and a verb) that serves as a noun in a sentence. In the English language, nouns are the words used to refer to people, places, or things'),
(143, 'Cliché', 'A cliché is an overused and worn-out expression used to convey a popular thought or idea.\r\nE.g\r\nThe ball is in your court.'),
(144, 'Proverbs|Proverb', 'A proverb is a short, well-known saying that states a general truth or a piece of advice. For example:\r\nA bird in the hand is worth two in the bush.'),
(145, 'Idioms.|Idiom', 'An idiom is commonly used expression whose meaning does not relate to the literal meaning of its word. For example:\r\nI am over the moon.'),
(146, 'Catchphrases|Catchphrase', 'A catchphrase is a well-known term, especially one that is associated with a particular famous person. For example:\r\n\"Come on down!\" (The Price Is Right)'),
(147, 'Similes|Simile', 'A simile is a figure of speech which compares one thing with another to create an analogy. For example:\r\nThis is about as much use as a chocolate teapot.'),
(148, 'Metaphors|Metaphor', 'A metaphor is a figure of speech which states one thing is another to create an analogy. For example:\r\nThat will put the final nail in the coffin.'),
(149, 'Coordinating Conjunctions', 'Coordinating conjunctions are joiners. They join like with like. For example, a coordinating conjunction can be used to join an adjective with another adjective, a noun with another noun, or a clause with another clause. The three most common coordinating conjunctions are\r\nFor\r\nAnd\r\nNor\r\nBut\r\nOr\r\nYet\r\nSo '),
(150, 'Collective Nouns', 'A collective noun is the word used to represent a group of people, animals, or things.\r\nE.g Flock,Crowd'),
(151, 'Colloquialisms', 'A colloquialism is a familiar expression used mostly in informal speech. A colloquialism is usually acceptable in everyday conversation but not in formal writing'),
(152, 'Colons|Colon', 'A colon (:) is a common punctuation mark used:\r\nTo extend a sentence with an appositive (a renaming of something previously mentioned). For example:\r\nHe attributed his success to one factor: luck.'),
(153, 'Commas|Comma', 'A comma (,) is a punctuation mark used to mark the divisions in text (as may be caused by phrases, clauses, or conjunctions). Commas are also used in lists to separate list items and in numbers to aid reading.'),
(154, 'Common Noun|Common Nouns', 'A common noun is the generic name for a person, place, or thing, e.g., boy, town, lake, bridge. Common nouns contrast with proper nouns, which are the given names (or titles) we give to things, e.g., Peter, New York, Lake Superior, London Bridge.\r\n'),
(155, 'Commoratio', 'Commoratio is deliberately repeating an idea back to back, but in different words. (Commoratio is also known as synonymia and communio.)'),
(156, 'Comparatives|Comparative', 'A comparative is the form of adjective or adverb used to compare two things.\r\nE.g\r\nMark is taller.\r\n(taller = comparative of the adjective tall)'),
(157, 'Complements|Complement', 'Complement is the term used for a word or words that are needed to complete the meaning of an expression.\r\nE.g\r\nJohn was a chicken.\r\n(John is the subject, was is the linking verb, and the noun phrase a chicken is the subject complement. It tells us something about the subject. It completes the meaning.)'),
(158, 'Object Complement', 'An object complement is the adjective, noun, or pronoun that follows a direct object (shown in bold) to rename the direct object or state what it has become.\r\n'),
(159, 'Complete Aspect', 'The complete aspect (or perfect aspect as it\'s more commonly known) is the aspect of a verb that expresses a completed action.'),
(160, 'Complete Tenses|Complete Tense', 'Complete tense is a category of verb tense used to describe completed actions. It covers the past complete tense, the present complete tense, and the future complete tense. It is more commonly called the perfect tense.'),
(161, 'Complex Sentence', 'A complex sentence is a sentence with one independent clause and at least one dependent clause.'),
(162, 'Compound Adjective', 'A compound adjective is a single adjective made up of more than one word. The words in a compound adjective are usually grouped together using hyphens to show it is a single adjective.'),
(163, 'Compound Nouns', 'A compound noun is a noun made from at least two words. There are three forms for compound nouns:\r\nCompound nouns with spaces\r\nCompound nouns without spaces\r\nCompound nouns with hyphens.'),
(164, 'Compound Predicate', 'A compound predicate is when two (or more) verbs share the same subject.'),
(165, 'Compound Sentence', 'A compound sentence is a sentence with at least two independent clauses.'),
(166, 'Compound Subject', 'A compound subject is a subject with two or more simple subjects. In other words, when the subject of a sentence is made up of two or more elements, it\'s a compound subject.'),
(167, 'Compound Verbs', 'A compound verb is a single verb made up of more than one word.'),
(168, 'Concrete Noun', 'A concrete noun represents something that can be seen, touched, tasted, heard, or smelt. In other words, a concrete noun is something you can perceive with at least one of your senses.'),
(169, 'Conditional Sentence', ' A conditional sentence is a sentence that gives a condition (e.g., If it snows) and the outcome of the condition occurring (e.g., the game will be cancelled).'),
(170, 'Conjugation|Verb Conjugation', '\"Verb conjugation\" means changing a verb so it works in your sentence. More specifically, it means changing a verb so your audience knows who is performing the action, when the action happens, and whether the action is completed or ongoing.'),
(171, 'Conjunctions|Conjunction', 'Conjunctions are joiners. They are used to join words, phrases, or clauses. \"And,\" \"but,\" and \"or\" are three common conjunctions.'),
(172, 'Coordinating Conjunctions', 'Coordinating conjunctions join like with like. For example, they join a noun with another noun or an adjective with another adjective'),
(173, 'Subordinating Conjunctions', ' Subordinating conjunctions join subordinate clauses to main clauses. Common examples are \"although,\" \"because,\" \"if,\" \"since,\" \"unless,\" \"until,\" and \"while.\"'),
(174, 'Correlative Conjunctions', 'Correlative conjunctions are used in pairs to join alternatives or equal elements. The most common pairs are \"either/or,\" \"neither/nor,\" and \"not only/but also.\"'),
(175, 'Conjunctive Adverbs', 'A conjunctive adverb is a word (or short phrase) that provides a link to the previous sentence or previous independent clause. Here is a list of common conjunctive adverbs\r\nalso\r\nconsequently\r\nfurthermore\r\nhowever\r\nincidentally\r\nindeed\r\nlikewise\r\nmeanwhile\r\nnevertheless\r\nnonetheless\r\ntherefore'),
(176, 'Connotation', 'Connotation is a further understanding of a word\'s meaning. (As well as a literal meaning, a word can also carry an additional idea, or feeling (called its connotation). Connotation contrasts with denotation, which is the literal meaning of a word.)'),
(177, 'Complements|Complement', 'Complement is the term used for a word or words that are needed to complete the meaning of an expression.\r\nE.g\r\nJohn was a chicken.\r\n(John is the subject, was is the linking verb, and the noun phrase a chicken is the subject complement. It tells us something about the subject. It completes the meaning.)'),
(178, 'Object Complement', 'An object complement is the adjective, noun, or pronoun that follows a direct object (shown in bold) to rename the direct object or state what it has become.\r\n'),
(179, 'Complete Aspect', 'The complete aspect (or perfect aspect as it\'s more commonly known) is the aspect of a verb that expresses a completed action.'),
(180, 'Complete Tenses|Complete Tense', 'Complete tense is a category of verb tense used to describe completed actions. It covers the past complete tense, the present complete tense, and the future complete tense. It is more commonly called the perfect tense.'),
(181, 'Complex Sentence', 'A complex sentence is a sentence with one independent clause and at least one dependent clause.'),
(182, 'Compound Adjective', 'A compound adjective is a single adjective made up of more than one word. The words in a compound adjective are usually grouped together using hyphens to show it is a single adjective.'),
(183, 'Compound Nouns', 'A compound noun is a noun made from at least two words. There are three forms for compound nouns:\r\nCompound nouns with spaces\r\nCompound nouns without spaces\r\nCompound nouns with hyphens.'),
(184, 'Compound Predicate', 'A compound predicate is when two (or more) verbs share the same subject.'),
(185, 'Compound Sentence', 'A compound sentence is a sentence with at least two independent clauses.'),
(186, 'Compound Subject', 'A compound subject is a subject with two or more simple subjects. In other words, when the subject of a sentence is made up of two or more elements, it\'s a compound subject.'),
(187, 'Compound Verbs', 'A compound verb is a single verb made up of more than one word.'),
(188, 'Concrete Noun', 'A concrete noun represents something that can be seen, touched, tasted, heard, or smelt. In other words, a concrete noun is something you can perceive with at least one of your senses.'),
(189, 'Conditional Sentence', ' A conditional sentence is a sentence that gives a condition (e.g., If it snows) and the outcome of the condition occurring (e.g., the game will be cancelled).'),
(190, 'Conjugation|Verb Conjugation', '\"Verb conjugation\" means changing a verb so it works in your sentence. More specifically, it means changing a verb so your audience knows who is performing the action, when the action happens, and whether the action is completed or ongoing.'),
(191, 'Conjunctions|Conjunction', 'Conjunctions are joiners. They are used to join words, phrases, or clauses. \"And,\" \"but,\" and \"or\" are three common conjunctions.'),
(192, 'Coordinating Conjunctions', 'Coordinating conjunctions join like with like. For example, they join a noun with another noun or an adjective with another adjective'),
(193, 'Subordinating Conjunctions', ' Subordinating conjunctions join subordinate clauses to main clauses. Common examples are \"although,\" \"because,\" \"if,\" \"since,\" \"unless,\" \"until,\" and \"while.\"'),
(194, 'Correlative Conjunctions', 'Correlative conjunctions are used in pairs to join alternatives or equal elements. The most common pairs are \"either/or,\" \"neither/nor,\" and \"not only/but also.\"'),
(195, 'Conjunctive Adverbs', 'A conjunctive adverb is a word (or short phrase) that provides a link to the previous sentence or previous independent clause. Here is a list of common conjunctive adverbs\r\nalso\r\nconsequently\r\nfurthermore\r\nhowever\r\nincidentally\r\nindeed\r\nlikewise\r\nmeanwhile\r\nnevertheless\r\nnonetheless\r\ntherefore'),
(196, 'Connotation', 'Connotation is a further understanding of a word\'s meaning. (As well as a literal meaning, a word can also carry an additional idea, or feeling (called its connotation). Connotation contrasts with denotation, which is the literal meaning of a word.)'),
(197, 'Consonance', 'Consonance is a stylistic literary technique in which neighbouring words repeat the same consonant sound.\r\nE.g\r\nTo crack a lock.\r\n'),
(198, 'Consonants|Consonant', 'A consonant is a letter of the alphabet that represents a basic speech sound produced by obstructing the breath in the vocal tract. All the letters in the alphabet apart from A, E, I, O, and U (called vowels) are known as consonants.\r\n'),
(199, 'Continuing Aspect', 'The continuing aspect (or progressive aspect as it\'s also called) is the aspect of a verb that expresses an ongoing action.\r\n'),
(200, 'Contractions', 'A contraction is an abbreviated version of a word or words.'),
(201, 'Copular Verbs', 'A copular verb links the subject to an identity or a description. For example\r\nJohn is a pirate.'),
(202, 'Correlative Conjunctions', 'Correlative conjunctions are used in pairs to link equivalent elements in a sentence.\r\nThe most common ones are:\r\neither...or\r\nneither...nor\r\nnot only...but also\r\nas…so\r\nnot…but'),
(203, 'Countable Nouns', 'A countable noun is a noun with both a singular and a plural form (e.g., dog/dogs, pie/pies). A non-countable noun is a noun without a plural form (e.g., oxygen, patience).'),
(204, 'Dangling Modifier', 'A dangling modifier is a modifier that has nothing to modify.'),
(205, 'Dashes|Dash', 'A dash (—) is a punctuation mark with several uses (explained below). A dash should not be confused with a hyphen (-), which is used as a joiner in compound adjectives (e.g., \"first-class restaurant\") and compound nouns (e.g., \"water-bottle\")'),
(206, 'Dative Case', 'The dative case is the case that shows the indirect object of a verb. (The indirect object of a verb is the recipient of the direct object.) '),
(207, 'Declarative Sentence', 'A declarative sentence is a sentence that makes a statement. \r\nFor example:\r\nI am an expert in French cheeses.'),
(208, 'Definite Article', 'The definite article is the word \"the.\" It is used before a noun to define it as something specific (e.g., something previously mentioned or known, something unique, or something being identified by the speaker).'),
(209, 'Demonstrative Adjectives', 'A demonstrative adjective is a special adjective (often called a determiner) that identifies a noun or pronoun by expressing its position as near or far (including in time). The demonstrative adjectives are \'this,\' \'that,\' \'these,\' and \'those.\''),
(210, 'Demonstrative Pronouns', 'A demonstrative pronoun is a pronoun that represents a noun and expresses its position as near or far (including in time). The demonstrative pronouns are \"this,\" \"that,\" \"these,\" and \"those.\"'),
(211, 'Denotation', 'Denotation is the literal, basic meaning of a word or expression. Denotation contrasts with connotation, which refers to the ideas or emotions suggested by a word.'),
(212, 'Dependent Adverb Clause', 'A dependent adverb clause is a group of words that plays the role of an adverb and that contains a subject and a verb. A dependent clause usually tells us when, where, why, how, how often, or under what condition the main verb in the sentence takes place.'),
(213, 'Dependent Clause', 'A dependent clause (or subordinate clause) is a clause that cannot stand alone as a complete sentence because it does not express a complete thought.'),
(214, 'Determiner', ' determiner is a word placed in front of a noun to specify quantity (e.g., \"one dog,\" \"many dogs\") or to clarify what the noun refers to (e.g., \"my dog,\" \"that dog,\" \"the dog\").'),
(215, 'Diction', 'a style of speaking or writing as dependent upon choice of words.'),
(216, 'Direct Object', 'The direct object of a verb is the thing being acted upon (i.e., the receiver of the action).'),
(217, 'Consonance', 'Consonance is a stylistic literary technique in which neighbouring words repeat the same consonant sound.\r\nE.g\r\nTo crack a lock.\r\n'),
(218, 'Consonants|Consonant', 'A consonant is a letter of the alphabet that represents a basic speech sound produced by obstructing the breath in the vocal tract. All the letters in the alphabet apart from A, E, I, O, and U (called vowels) are known as consonants.\r\n'),
(219, 'Continuing Aspect', 'The continuing aspect (or progressive aspect as it\'s also called) is the aspect of a verb that expresses an ongoing action.\r\n'),
(220, 'Contractions', 'A contraction is an abbreviated version of a word or words.'),
(221, 'Copular Verbs', 'A copular verb links the subject to an identity or a description. For example\r\nJohn is a pirate.'),
(222, 'Correlative Conjunctions', 'Correlative conjunctions are used in pairs to link equivalent elements in a sentence.\r\nThe most common ones are:\r\neither...or\r\nneither...nor\r\nnot only...but also\r\nas…so\r\nnot…but'),
(223, 'Countable Nouns', 'A countable noun is a noun with both a singular and a plural form (e.g., dog/dogs, pie/pies). A non-countable noun is a noun without a plural form (e.g., oxygen, patience).'),
(224, 'Dangling Modifier', 'A dangling modifier is a modifier that has nothing to modify.'),
(225, 'Dashes|Dash', 'A dash (—) is a punctuation mark with several uses (explained below). A dash should not be confused with a hyphen (-), which is used as a joiner in compound adjectives (e.g., \"first-class restaurant\") and compound nouns (e.g., \"water-bottle\")'),
(226, 'Dative Case', 'The dative case is the case that shows the indirect object of a verb. (The indirect object of a verb is the recipient of the direct object.) '),
(227, 'Declarative Sentence', 'A declarative sentence is a sentence that makes a statement. \r\nFor example:\r\nI am an expert in French cheeses.'),
(228, 'Definite Article', 'The definite article is the word \"the.\" It is used before a noun to define it as something specific (e.g., something previously mentioned or known, something unique, or something being identified by the speaker).'),
(229, 'Demonstrative Adjectives', 'A demonstrative adjective is a special adjective (often called a determiner) that identifies a noun or pronoun by expressing its position as near or far (including in time). The demonstrative adjectives are \'this,\' \'that,\' \'these,\' and \'those.\''),
(230, 'Demonstrative Pronouns', 'A demonstrative pronoun is a pronoun that represents a noun and expresses its position as near or far (including in time). The demonstrative pronouns are \"this,\" \"that,\" \"these,\" and \"those.\"'),
(231, 'Denotation', 'Denotation is the literal, basic meaning of a word or expression. Denotation contrasts with connotation, which refers to the ideas or emotions suggested by a word.'),
(232, 'Dependent Adverb Clause', 'A dependent adverb clause is a group of words that plays the role of an adverb and that contains a subject and a verb. A dependent clause usually tells us when, where, why, how, how often, or under what condition the main verb in the sentence takes place.'),
(233, 'Dependent Clause', 'A dependent clause (or subordinate clause) is a clause that cannot stand alone as a complete sentence because it does not express a complete thought.'),
(234, 'Determiner', ' determiner is a word placed in front of a noun to specify quantity (e.g., \"one dog,\" \"many dogs\") or to clarify what the noun refers to (e.g., \"my dog,\" \"that dog,\" \"the dog\").'),
(235, 'Diction', 'a style of speaking or writing as dependent upon choice of words.'),
(236, 'Direct Object', 'The direct object of a verb is the thing being acted upon (i.e., the receiver of the action).'),
(237, 'Direct Question', 'A direct question is a question that can be answered (i.e., it is not a statement) and always ends in a question mark.\r\nE.g\r\nHave you ever sent a text message to the wrong person?\r\n'),
(238, 'Double Comparative', 'A double comparative is a grammar mistake caused by applying two ways of forming a comparative instead of one. '),
(239, 'Double Negative', 'A double negative occurs when two negative terms are used in the same sentence.\r\nE.g\r\nI ain\'t got no money.'),
(240, 'Ellipsis', 'An ellipsis is a punctuation mark made up of three dots (...). '),
(241, 'Emotive Language', 'Emotive language is the deliberate choice of words to elicit emotion (usually to influence).'),
(242, 'Emphatic Pronouns', 'The emphatic pronouns are myself, yourself, herself, himself, itself, ourselves, yourselves, and themselves.'),
(243, 'Epiphora', 'Epiphora is a writing technique that involves repeating terms at the back of neighboring clauses or sentences. (NB: Epiphora is also called \"epistrophe.\")'),
(244, 'Euphemism', 'A euphemism is the use of agreeable or inoffensive words to replace rude or offensive ones.\r\n'),
(245, 'Exclamation Marks', 'An exclamation mark (!) is used to indicate a sudden order, intensity of emotion (e.g., surprise, anger, joy), or volume.'),
(246, 'Exclamatory Sentence', 'An exclamatory sentence conveys a strong emotion and ends with an exclamation mark (!).\r\nE.g\r\nYou were meant to be back yesterday!'),
(247, 'Feminine Gender', 'Feminine gender is one of three genders in English grammar. The three genders for nouns and pronouns are:\r\nmasculine\r\nfeminine\r\nneuter'),
(248, 'Figurative Language', 'Figurative language is the use of words in an unusual or imaginative manner.'),
(249, 'Figure of Speech', 'A figure of speech is an expression whose words are not used in their literal sense. A figure of speech is often used to portray an idea more clearly or more interestingly.'),
(250, 'Finite Verbs', 'A finite verb is a verb that has a subject and shows tense. Here\'s an example:\r\nJohn cooks carrots.\r\n(The finite verb is \"cooks.\" The subject is \"John.\" The tense of the verb is the present tense.)'),
(251, 'First Person', 'The term \"first person\" refers to the speaker himself or a group that includes the speaker (i.e.,\" I,\" \"me,\" \"we,\" and \"us\").'),
(252, 'Full Stops', 'A period (called a \"full stop\" in the United Kingdom) is a punctuation mark used:\r\nAt the end of a declarative sentence (i.e., a sentence that makes statement). \r\nFor example:\r\nLee likes pies.'),
(253, 'Future Perfect Tense', 'The future perfect tense is used to describe an action that will have been completed at some point in the future. \r\nFor example:\r\nJohn will have baked a cake.');
INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(254, 'Future Perfect Progressive Tense', 'The future perfect progressive tense is used for an ongoing action that will be completed at some specified time in the future. \r\nFor example:\r\nJohn will have been baking a cake.'),
(255, 'Future Progressive Tense', 'The future progressive tense is used for an ongoing action that will occur in the future. For example:\r\nJohn will be baking a cake.'),
(256, 'Future Tense', 'he future tense is a verb tense used for a future activity or a future state of being. \r\nFor example:\r\nI will jump in the lake.'),
(257, 'Direct Question', 'A direct question is a question that can be answered (i.e., it is not a statement) and always ends in a question mark.\r\nE.g\r\nHave you ever sent a text message to the wrong person?\r\n'),
(258, 'Double Comparative', 'A double comparative is a grammar mistake caused by applying two ways of forming a comparative instead of one. '),
(259, 'Double Negative', 'A double negative occurs when two negative terms are used in the same sentence.\r\nE.g\r\nI ain\'t got no money.'),
(260, 'Ellipsis', 'An ellipsis is a punctuation mark made up of three dots (...). '),
(261, 'Emotive Language', 'Emotive language is the deliberate choice of words to elicit emotion (usually to influence).'),
(262, 'Emphatic Pronouns', 'The emphatic pronouns are myself, yourself, herself, himself, itself, ourselves, yourselves, and themselves.'),
(263, 'Epiphora', 'Epiphora is a writing technique that involves repeating terms at the back of neighboring clauses or sentences. (NB: Epiphora is also called \"epistrophe.\")'),
(264, 'Euphemism', 'A euphemism is the use of agreeable or inoffensive words to replace rude or offensive ones.\r\n'),
(265, 'Exclamation Marks', 'An exclamation mark (!) is used to indicate a sudden order, intensity of emotion (e.g., surprise, anger, joy), or volume.'),
(266, 'Exclamatory Sentence', 'An exclamatory sentence conveys a strong emotion and ends with an exclamation mark (!).\r\nE.g\r\nYou were meant to be back yesterday!'),
(267, 'Feminine Gender', 'Feminine gender is one of three genders in English grammar. The three genders for nouns and pronouns are:\r\nmasculine\r\nfeminine\r\nneuter'),
(268, 'Figurative Language', 'Figurative language is the use of words in an unusual or imaginative manner.'),
(269, 'Figure of Speech', 'A figure of speech is an expression whose words are not used in their literal sense. A figure of speech is often used to portray an idea more clearly or more interestingly.'),
(270, 'Finite Verbs', 'A finite verb is a verb that has a subject and shows tense. Here\'s an example:\r\nJohn cooks carrots.\r\n(The finite verb is \"cooks.\" The subject is \"John.\" The tense of the verb is the present tense.)'),
(271, 'First Person', 'The term \"first person\" refers to the speaker himself or a group that includes the speaker (i.e.,\" I,\" \"me,\" \"we,\" and \"us\").'),
(272, 'Full Stops', 'A period (called a \"full stop\" in the United Kingdom) is a punctuation mark used:\r\nAt the end of a declarative sentence (i.e., a sentence that makes statement). \r\nFor example:\r\nLee likes pies.'),
(273, 'Future Perfect Tense', 'The future perfect tense is used to describe an action that will have been completed at some point in the future. \r\nFor example:\r\nJohn will have baked a cake.'),
(274, 'Future Perfect Progressive Tense', 'The future perfect progressive tense is used for an ongoing action that will be completed at some specified time in the future. \r\nFor example:\r\nJohn will have been baking a cake.'),
(275, 'Future Progressive Tense', 'The future progressive tense is used for an ongoing action that will occur in the future. For example:\r\nJohn will be baking a cake.'),
(276, 'Future Tense', 'he future tense is a verb tense used for a future activity or a future state of being. \r\nFor example:\r\nI will jump in the lake.'),
(277, 'Gender', 'Gender is a category of noun. A noun can have a masculine gender, a feminine gender, or a neuter gender.\r\nE.g\r\nman (masculine gender)\r\nwoman (feminine gender)\r\nhouse (neuter gender)\r\nchicken (neuter gender)'),
(278, 'Gender-specific Noun', 'A gender-specific noun is a noun that refers specifically to someone or something male or a female.'),
(279, 'Genitive Case', 'The genitive case is predominantly used for showing possession. With nouns, it is usually created by adding \'s to the word or by preceding it with \"of.\"'),
(280, 'Gerunds|Gerund', 'A gerund is a noun formed from a verb. All gerunds end -ing. \r\nFor example:\r\nswimming\r\nrunning\r\ndrinking'),
(281, 'Gerund Phrase', 'A gerund phrase is a phrase that consists of a gerund, its object, and any modifiers.'),
(282, 'Helping Verbs', 'A helping verb (also known as an auxiliary verb) is used with a main verb to help express the main verb\'s tense, mood, or voice.'),
(283, 'Homonyms|Homonym', 'Homonyms are words that are pronounced the same as each other (e.g., \"maid\" and \"made\") or have the same spelling (e.g., \"lead weight\" and \"to lead\").'),
(284, 'Hyperbole', 'Hyperbole is deliberate exaggeration for emphasis or comedy.'),
(285, 'Hyphens|Hyphen', 'A hyphen (-) is a punctuation mark used to join the separate parts of a compound word. A hyphen is a joiner.\r\n'),
(286, 'Idiom|Idioms', 'An idiom is a commonly used expression whose meaning does not relate to the literal meaning of its words.\r\nE.g\r\nShe has a bun in the oven\r\n(She is pregnant.)'),
(287, 'Imperative Mood', 'The imperative mood is a verb form that gives a command. \r\nFor example:\r\nEmpty the bin, John.\r\n(This is a verb in the imperative mood.)'),
(288, 'Imperative Sentence', 'An imperative sentence gives a direct command. It can end in a period (full stop) or an exclamation mark, depending on the forcefulness of the command.'),
(289, 'Indefinite Adjectives', 'An indefinite adjective is an adjective used to describe a noun in a non-specific sense. The most common indefinite adjectives are any, each, few, many, much, most, several, and some.'),
(290, 'Indefinite Article', 'The indefinite article is the word \"a\" or \"an.\" It is used before a noun to define it as something non-specific (e.g., something generic or something mentioned for the first time).\r\n'),
(291, 'Indefinite Aspect', 'The indefinite aspect (or simple aspect as it\'s more commonly called) is the verb form used to express a fact. Unlike other aspects (like the progressive aspect or the perfect aspect), the indefinite aspect does not make it clear whether the action is a complete action or a habitual action.'),
(292, 'Indefinite Pronouns', 'An indefinite pronoun is a pronoun that refers to a person or a thing without being specific.\r\n\r\nThe most common ones are all, any, anyone, anything, each, everybody, everyone, everything, few, many, nobody, none, one, several, some, somebody, and someone.'),
(293, 'Indefinite Tenses|Indefinite Tense', '\"Indefinite tense\" is a category of verb tense. It covers the simple past tense, the simple present tense, and the simple future tense.'),
(294, 'Independent Clause', 'An independent clause is a clause that can stand alone as a sentence (i.e., it expresses a complete thought). A dependent clauses (or subordinate clause) is one that cannot stand alone as a complete sentence (i.e., it does not express a complete thought).'),
(295, 'Indicative Mood', 'The indicative mood is a verb form that makes a statement or asks a question.\r\nFor example:\r\nJack sings every Friday.'),
(296, 'Indirect Object', 'The indirect object of a sentence is the recipient of the direct object. The direct object is the thing being acted on by the verb.'),
(297, 'Gender', 'Gender is a category of noun. A noun can have a masculine gender, a feminine gender, or a neuter gender.\r\nE.g\r\nman (masculine gender)\r\nwoman (feminine gender)\r\nhouse (neuter gender)\r\nchicken (neuter gender)'),
(298, 'Gender-specific Noun', 'A gender-specific noun is a noun that refers specifically to someone or something male or a female.'),
(299, 'Genitive Case', 'The genitive case is predominantly used for showing possession. With nouns, it is usually created by adding \'s to the word or by preceding it with \"of.\"'),
(300, 'Gerunds|Gerund', 'A gerund is a noun formed from a verb. All gerunds end -ing. \r\nFor example:\r\nswimming\r\nrunning\r\ndrinking'),
(301, 'Gerund Phrase', 'A gerund phrase is a phrase that consists of a gerund, its object, and any modifiers.'),
(302, 'Helping Verbs', 'A helping verb (also known as an auxiliary verb) is used with a main verb to help express the main verb\'s tense, mood, or voice.'),
(303, 'Homonyms|Homonym', 'Homonyms are words that are pronounced the same as each other (e.g., \"maid\" and \"made\") or have the same spelling (e.g., \"lead weight\" and \"to lead\").'),
(304, 'Hyperbole', 'Hyperbole is deliberate exaggeration for emphasis or comedy.'),
(305, 'Hyphens|Hyphen', 'A hyphen (-) is a punctuation mark used to join the separate parts of a compound word. A hyphen is a joiner.\r\n'),
(306, 'Idiom|Idioms', 'An idiom is a commonly used expression whose meaning does not relate to the literal meaning of its words.\r\nE.g\r\nShe has a bun in the oven\r\n(She is pregnant.)'),
(307, 'Imperative Mood', 'The imperative mood is a verb form that gives a command. \r\nFor example:\r\nEmpty the bin, John.\r\n(This is a verb in the imperative mood.)'),
(308, 'Imperative Sentence', 'An imperative sentence gives a direct command. It can end in a period (full stop) or an exclamation mark, depending on the forcefulness of the command.'),
(309, 'Indefinite Adjectives', 'An indefinite adjective is an adjective used to describe a noun in a non-specific sense. The most common indefinite adjectives are any, each, few, many, much, most, several, and some.'),
(310, 'Indefinite Article', 'The indefinite article is the word \"a\" or \"an.\" It is used before a noun to define it as something non-specific (e.g., something generic or something mentioned for the first time).\r\n'),
(311, 'Indefinite Aspect', 'The indefinite aspect (or simple aspect as it\'s more commonly called) is the verb form used to express a fact. Unlike other aspects (like the progressive aspect or the perfect aspect), the indefinite aspect does not make it clear whether the action is a complete action or a habitual action.'),
(312, 'Indefinite Pronouns', 'An indefinite pronoun is a pronoun that refers to a person or a thing without being specific.\r\n\r\nThe most common ones are all, any, anyone, anything, each, everybody, everyone, everything, few, many, nobody, none, one, several, some, somebody, and someone.'),
(313, 'Indefinite Tenses|Indefinite Tense', '\"Indefinite tense\" is a category of verb tense. It covers the simple past tense, the simple present tense, and the simple future tense.'),
(314, 'Independent Clause', 'An independent clause is a clause that can stand alone as a sentence (i.e., it expresses a complete thought). A dependent clauses (or subordinate clause) is one that cannot stand alone as a complete sentence (i.e., it does not express a complete thought).'),
(315, 'Indicative Mood', 'The indicative mood is a verb form that makes a statement or asks a question.\r\nFor example:\r\nJack sings every Friday.'),
(316, 'Indirect Object', 'The indirect object of a sentence is the recipient of the direct object. The direct object is the thing being acted on by the verb.'),
(317, 'Indirect Question', 'An indirect question is a question embedded inside a statement '),
(318, ' Infinitive Form of a Verb| Infinitive Form', 'The infinitive form of a verb is the verb in its basic form. It is the version of the verb that appears in the dictionary. '),
(319, 'Infinitive Phrase', 'An infinitive phrase is the infinitive form of a verb plus any complements and modifiers.'),
(320, 'Intensifier', 'An intensifier is a word that strengthens or weakens another word (usually the word immediately to its right). An intensifier has no real meaning by itself and can usually be removed from the sentence.\r\nE.g\r\nThis pie is very tasty.\r\n(In this example, the intensifier \"very\" strengthens the adjective \"tasty.\" '),
(321, 'Intensive Pronouns', 'An intensive pronoun is used to refer back to a noun or pronoun in order to emphasize it. Here is a list of the intensive pronouns:\r\nmyself\r\nyourself\r\nherself\r\nhimself\r\nitself\r\nourselves\r\nyourselves\r\nthemselves'),
(322, 'Interjections|Interjection', 'Interjections are words used to express strong feeling or sudden emotion. They are included in a sentence (usually at the start) to express a sentiment such as surprise, disgust, joy, excitement, or enthusiasm\r\nE.g\r\nHey! Get off that floor!'),
(323, 'Interrogative', 'An interrogative is a determiner or a pronoun used to ask a question.'),
(324, 'Interrogative Adjectives', 'An interrogative adjective is a word that modifies a noun by asking a question. Interrogative adjectives are also known as interrogative determiners. The interrogative adjectives are \"what,\" \"which,\" and \"whose.\"'),
(325, ' Interrogative Adverbs| Interrogative Adverb', 'The interrogative adverbs are \"why,\" \"where,\" \"when,\" and \"how.\" They are used to ask questions. \r\nFor example\r\nWhy is the garden in such a mess?'),
(326, 'Interrogative Pronouns', 'The main interrogative pronouns are \"what,\" \"which,\" \"who,\" \"whom,\" and \"whose.\" Interrogative pronouns are used to ask questions.'),
(327, 'Interrogative Sentence', 'An interrogative sentence is a sentence that asks a direct question and always ends in a question mark.'),
(328, 'Intransitive Verb', 'An intransitive verb is one that does not take a direct object. In other words, it is not done to someone or something. It only involves the subject.\r\n'),
(329, 'Irony', 'Irony is when the reality of something is different to the expectation it generates. There are three types of irony:\r\nVerbal Irony\r\nDramatic Irony\r\nSituational Irony'),
(330, 'Situational Irony', 'Situational irony is an event that occurs seemingly in mockery of the circumstances'),
(331, 'Dramatic Irony', 'Dramatic irony is an event the significance of which is known only to observers (typically, the audience) and not the participants (typically, the actors).'),
(332, 'Verbal irony', 'Verbal irony is an expression (often delivered sarcastically or humorously) to express the opposite of its literal meaning. (It is a synonym for sarcasm.)\r\n'),
(333, 'Irregular Verbs', 'An irregular verb is one that does not form its simple past tense or its past participle by adding \"-ed\" or \"-d\" to the base form. Irregular verbs contrast with regular verbs, which form the simple past tense and past participle by adding \"-ed\" or \"-d.\"'),
(334, 'Limiting Modifiers', 'Limiting modifiers impose restrictions on the words they modify. The most common limiting modifiers are:\r\nAlmost\r\nHardly\r\nNearly\r\nJust\r\nOnly\r\nMerely'),
(335, 'Linking Verbs|Linking Verb', 'A linking verb is used to re-identify or to describe its subject. A linking verb is called a linking verb because it links the subject to a subject complement'),
(336, 'Literal Meaning', 'The term \"literal meaning\" tells us that all words are in strict accordance with their original meanings.\r\n'),
(337, 'Indirect Question', 'An indirect question is a question embedded inside a statement '),
(338, ' Infinitive Form of a Verb| Infinitive Form', 'The infinitive form of a verb is the verb in its basic form. It is the version of the verb that appears in the dictionary. '),
(339, 'Infinitive Phrase', 'An infinitive phrase is the infinitive form of a verb plus any complements and modifiers.'),
(340, 'Intensifier', 'An intensifier is a word that strengthens or weakens another word (usually the word immediately to its right). An intensifier has no real meaning by itself and can usually be removed from the sentence.\r\nE.g\r\nThis pie is very tasty.\r\n(In this example, the intensifier \"very\" strengthens the adjective \"tasty.\" '),
(341, 'Intensive Pronouns', 'An intensive pronoun is used to refer back to a noun or pronoun in order to emphasize it. Here is a list of the intensive pronouns:\r\nmyself\r\nyourself\r\nherself\r\nhimself\r\nitself\r\nourselves\r\nyourselves\r\nthemselves'),
(342, 'Interjections|Interjection', 'Interjections are words used to express strong feeling or sudden emotion. They are included in a sentence (usually at the start) to express a sentiment such as surprise, disgust, joy, excitement, or enthusiasm\r\nE.g\r\nHey! Get off that floor!'),
(343, 'Interrogative', 'An interrogative is a determiner or a pronoun used to ask a question.'),
(344, 'Interrogative Adjectives', 'An interrogative adjective is a word that modifies a noun by asking a question. Interrogative adjectives are also known as interrogative determiners. The interrogative adjectives are \"what,\" \"which,\" and \"whose.\"'),
(345, ' Interrogative Adverbs| Interrogative Adverb', 'The interrogative adverbs are \"why,\" \"where,\" \"when,\" and \"how.\" They are used to ask questions. \r\nFor example\r\nWhy is the garden in such a mess?'),
(346, 'Interrogative Pronouns', 'The main interrogative pronouns are \"what,\" \"which,\" \"who,\" \"whom,\" and \"whose.\" Interrogative pronouns are used to ask questions.'),
(347, 'Interrogative Sentence', 'An interrogative sentence is a sentence that asks a direct question and always ends in a question mark.'),
(348, 'Intransitive Verb', 'An intransitive verb is one that does not take a direct object. In other words, it is not done to someone or something. It only involves the subject.\r\n'),
(349, 'Irony', 'Irony is when the reality of something is different to the expectation it generates. There are three types of irony:\r\nVerbal Irony\r\nDramatic Irony\r\nSituational Irony'),
(350, 'Situational Irony', 'Situational irony is an event that occurs seemingly in mockery of the circumstances'),
(351, 'Dramatic Irony', 'Dramatic irony is an event the significance of which is known only to observers (typically, the audience) and not the participants (typically, the actors).'),
(352, 'Verbal irony', 'Verbal irony is an expression (often delivered sarcastically or humorously) to express the opposite of its literal meaning. (It is a synonym for sarcasm.)\r\n'),
(353, 'Irregular Verbs', 'An irregular verb is one that does not form its simple past tense or its past participle by adding \"-ed\" or \"-d\" to the base form. Irregular verbs contrast with regular verbs, which form the simple past tense and past participle by adding \"-ed\" or \"-d.\"'),
(354, 'Limiting Modifiers', 'Limiting modifiers impose restrictions on the words they modify. The most common limiting modifiers are:\r\nAlmost\r\nHardly\r\nNearly\r\nJust\r\nOnly\r\nMerely'),
(355, 'Linking Verbs|Linking Verb', 'A linking verb is used to re-identify or to describe its subject. A linking verb is called a linking verb because it links the subject to a subject complement'),
(356, 'Literal Meaning', 'The term \"literal meaning\" tells us that all words are in strict accordance with their original meanings.\r\n'),
(357, 'Logosglyph', 'The word logosglyph literally means \"word carving.\" It is a compound noun derived from the Greek words for word (logos) and carving (glyphe).'),
(358, 'Masculine Gender', 'Masculine gender is one of three genders in English grammar.'),
(359, 'Mass Nouns', 'A mass noun (or non-countable noun or noncount noun as it\'s also known) is a noun without a plural form.\r\nA mass noun is one that cannot be counted.'),
(360, 'Metaphor', 'A metaphor states that one thing is something that it literally is not. Metaphors are also commonly created by using a word in its non-literal sense. A metaphor is a figure of speech.'),
(361, 'Metonym|Metonyms', 'A metonym is a term used in place of a closely related term. For example, in the saying \"The pen is mightier than the sword,\" \"pen\" is a metonym for communications (written text), and \"sword\" is a metonym for violence.'),
(362, 'Misplaced Modifier', 'A misplaced modifier is a word (or group of words) that does not link clearly to what it is intended to modify. A misplaced modifier makes the meaning of a sentence ambiguous or wrong.'),
(363, 'Modal Verbs', 'The main modal verbs are \"can,\" \"could,\" \"may,\" \"might,\" \"shall,\" \"should,\" \"will,\" \"would,\" and \"must.\" Modal verbs (or modal auxiliary verbs) express modality.'),
(364, 'Modifiers', 'A modifier is a word, phrase, or clause that describes something or makes its meaning more specific. Modifiers function as adjectives or adverbs.\r\n'),
(365, 'Mood', 'Mood is the form a verb takes to show how it is to be regarded (e.g., as a fact, a command, a wish, an uncertainty).'),
(366, 'Neologism', 'A neologism is a newly coined word or term that has emerged into everyday usage.'),
(367, 'Neuter Gender', 'Neuter gender is one of three genders in English grammar.'),
(368, 'Nominative Case', 'The nominative case is the case used for a noun or pronoun which is the subject of a verb.'),
(369, ' Non-countable Nouns', 'A non-countable noun (or mass noun as it\'s also known) is a noun without a plural form.'),
(370, 'Non-finite Verbs', 'A non-finite verb is a verb form that does not show tense. In other words, you cannot tell if a sentence is in the past tense, present tense, or future tense by looking at a non-finite verb. '),
(371, 'Non-restrictive Clause', 'A non-restrictive clause is a clause that provides additional, non-essential information. In other words, a non-restrictive clause is not needed to identify the word it modifies, i.e., it\'s just bonus information.'),
(372, 'Nouns|Noun', 'Nouns are words that represent people, places, or things. Everything we can see or talk about is represented by a word. That word is called a \"noun.\"'),
(373, 'Noun Clauses|Noun Clause', 'A noun clause is a clause that plays the role of a noun. \r\nFor example\r\nI like what I see.\r\n(Like all clauses, a noun clause has a subject and a verb. In this example, the subject of the clause is \"I\" and the verb is \"see.\")'),
(374, 'Logosglyph', 'The word logosglyph literally means \"word carving.\" It is a compound noun derived from the Greek words for word (logos) and carving (glyphe).'),
(375, 'Masculine Gender', 'Masculine gender is one of three genders in English grammar.'),
(376, 'Mass Nouns', 'A mass noun (or non-countable noun or noncount noun as it\'s also known) is a noun without a plural form.\r\nA mass noun is one that cannot be counted.'),
(377, 'Metaphor', 'A metaphor states that one thing is something that it literally is not. Metaphors are also commonly created by using a word in its non-literal sense. A metaphor is a figure of speech.'),
(378, 'Metonym|Metonyms', 'A metonym is a term used in place of a closely related term. For example, in the saying \"The pen is mightier than the sword,\" \"pen\" is a metonym for communications (written text), and \"sword\" is a metonym for violence.'),
(379, 'Misplaced Modifier', 'A misplaced modifier is a word (or group of words) that does not link clearly to what it is intended to modify. A misplaced modifier makes the meaning of a sentence ambiguous or wrong.'),
(380, 'Modal Verbs', 'The main modal verbs are \"can,\" \"could,\" \"may,\" \"might,\" \"shall,\" \"should,\" \"will,\" \"would,\" and \"must.\" Modal verbs (or modal auxiliary verbs) express modality.'),
(381, 'Modifiers', 'A modifier is a word, phrase, or clause that describes something or makes its meaning more specific. Modifiers function as adjectives or adverbs.\r\n'),
(382, 'Mood', 'Mood is the form a verb takes to show how it is to be regarded (e.g., as a fact, a command, a wish, an uncertainty).'),
(383, 'Neologism', 'A neologism is a newly coined word or term that has emerged into everyday usage.'),
(384, 'Neuter Gender', 'Neuter gender is one of three genders in English grammar.'),
(385, 'Nominative Case', 'The nominative case is the case used for a noun or pronoun which is the subject of a verb.'),
(386, ' Non-countable Nouns', 'A non-countable noun (or mass noun as it\'s also known) is a noun without a plural form.'),
(387, 'Non-finite Verbs', 'A non-finite verb is a verb form that does not show tense. In other words, you cannot tell if a sentence is in the past tense, present tense, or future tense by looking at a non-finite verb. '),
(388, 'Non-restrictive Clause', 'A non-restrictive clause is a clause that provides additional, non-essential information. In other words, a non-restrictive clause is not needed to identify the word it modifies, i.e., it\'s just bonus information.'),
(389, 'Nouns|Noun', 'Nouns are words that represent people, places, or things. Everything we can see or talk about is represented by a word. That word is called a \"noun.\"'),
(390, 'Noun Clauses|Noun Clause', 'A noun clause is a clause that plays the role of a noun. \r\nFor example\r\nI like what I see.\r\n(Like all clauses, a noun clause has a subject and a verb. In this example, the subject of the clause is \"I\" and the verb is \"see.\")'),
(391, 'Number', 'Number is a grammatical category. In English, the two number categories are singular and plural.'),
(392, 'Object', 'An object is a noun (or pronoun) that is governed by a verb or a preposition. There are three kinds of object:\r\nDirect Object (e.g., I know him.)\r\nIndirect Object (e.g., Give her the prize.)\r\nObject of a Preposition (e.g., Sit with them.)'),
(393, 'Object of a Preposition', 'The object of a preposition is the noun or pronoun governed by a preposition. The object of a preposition is usually (but not always) the noun or pronoun to the right of the preposition.'),
(394, 'Objective Case', 'The objective case is used for nouns and pronouns that function as objects.'),
(395, 'direct object ', 'The direct object is the thing being acted on by the verb. For example:\r\nI saw her yesterday.\r\n(\"Her\" is the direct object of the verb \"saw.\" \"Her\" is the objective-case version of \"she.\")'),
(396, 'indirect object', ' The indirect object of a sentence is the recipient of the direct object. For example:\r\nI wrote him a letter.\r\n(\"Him\" is the indirect object of the verb \"wrote\", i.e., the recipient of \"a letter,\" which is the direct object. \"Him\" is the objective-case version of \"he.\")'),
(397, 'object of a preposition', 'The object of a preposition is the noun or pronoun governed by a preposition. For example:\r\nIt is a present from them.\r\n(\"Them\" is the object of the preposition \"from.\" \"Them\" is the objective-case version of \"they.\")'),
(398, 'Objective Case', 'The objective case is used for nouns and pronouns that function as objects.\r\n'),
(399, 'Object Complement', 'An object complement is a noun, a pronoun, or an adjective that follows a direct object to rename it or state what it has become.'),
(400, 'Objective Personal Pronouns', 'The objective personal pronouns are \"me,\" \"you,\" \"him,\" \"her,\" \"it,\" \"us,\" \"them,\" and \"whom.\"'),
(401, 'Onomatopoeia', 'Onomatopoeia is the use of words that imitate the sound they describe.'),
(402, 'Oxymoron', 'An oxymoron is a term in which two contradictory terms are combined.'),
(403, 'Palindrome', 'A palindrome is a text (a single word or more) that reads the same backwards as forwards.\r\nCivic\r\nKayak\r\nRadar\r\nRace car\r\n'),
(404, 'Paradox', 'A paradox is a statement or a concept that is, or seems to be, self-contradictory.'),
(405, ' Paragraph', 'A paragraph is a distinct section of writing covering one topic. A paragraph will usually contain more than one sentence. '),
(406, 'Parallel Lists|Parallel List', 'In a parallel list, all the list items start with the same type of word. The term \"parallel list\" is most commonly used in relation to bullet points, but it also applies to lists written out as sentences and also with terms such as \"either/or\" and \"neither/nor\" (called correlative conjunctions).'),
(407, 'Parenthetical Punctuation', 'Parenthetical punctuation is used in pairs to offset additional information in a sentence.'),
(408, 'Participles|Participle', 'A participle is a verb form that can be used (1) as an adjective, (2) to create verb tense, or (3) to create the passive voice.'),
(409, 'Participle Phrases|Participle Phrase', 'A participle phrase is an adjective phrase headed by a participle.'),
(410, 'Parts of Speech', 'The 8 parts of speech are adjectives, adverbs, conjunctions, interjections, nouns, prepositions, pronouns, and verbs.'),
(411, 'Number', 'Number is a grammatical category. In English, the two number categories are singular and plural.'),
(412, 'Object', 'An object is a noun (or pronoun) that is governed by a verb or a preposition. There are three kinds of object:\r\nDirect Object (e.g., I know him.)\r\nIndirect Object (e.g., Give her the prize.)\r\nObject of a Preposition (e.g., Sit with them.)'),
(413, 'Object of a Preposition', 'The object of a preposition is the noun or pronoun governed by a preposition. The object of a preposition is usually (but not always) the noun or pronoun to the right of the preposition.'),
(414, 'Objective Case', 'The objective case is used for nouns and pronouns that function as objects.'),
(415, 'direct object ', 'The direct object is the thing being acted on by the verb. For example:\r\nI saw her yesterday.\r\n(\"Her\" is the direct object of the verb \"saw.\" \"Her\" is the objective-case version of \"she.\")'),
(416, 'indirect object', ' The indirect object of a sentence is the recipient of the direct object. For example:\r\nI wrote him a letter.\r\n(\"Him\" is the indirect object of the verb \"wrote\", i.e., the recipient of \"a letter,\" which is the direct object. \"Him\" is the objective-case version of \"he.\")'),
(417, 'object of a preposition', 'The object of a preposition is the noun or pronoun governed by a preposition. For example:\r\nIt is a present from them.\r\n(\"Them\" is the object of the preposition \"from.\" \"Them\" is the objective-case version of \"they.\")'),
(418, 'Objective Case', 'The objective case is used for nouns and pronouns that function as objects.\r\n'),
(419, 'Object Complement', 'An object complement is a noun, a pronoun, or an adjective that follows a direct object to rename it or state what it has become.'),
(420, 'Objective Personal Pronouns', 'The objective personal pronouns are \"me,\" \"you,\" \"him,\" \"her,\" \"it,\" \"us,\" \"them,\" and \"whom.\"'),
(421, 'Onomatopoeia', 'Onomatopoeia is the use of words that imitate the sound they describe.'),
(422, 'Oxymoron', 'An oxymoron is a term in which two contradictory terms are combined.'),
(423, 'Palindrome', 'A palindrome is a text (a single word or more) that reads the same backwards as forwards.\r\nCivic\r\nKayak\r\nRadar\r\nRace car\r\n'),
(424, 'Paradox', 'A paradox is a statement or a concept that is, or seems to be, self-contradictory.'),
(425, ' Paragraph', 'A paragraph is a distinct section of writing covering one topic. A paragraph will usually contain more than one sentence. '),
(426, 'Parallel Lists|Parallel List', 'In a parallel list, all the list items start with the same type of word. The term \"parallel list\" is most commonly used in relation to bullet points, but it also applies to lists written out as sentences and also with terms such as \"either/or\" and \"neither/nor\" (called correlative conjunctions).'),
(427, 'Parenthetical Punctuation', 'Parenthetical punctuation is used in pairs to offset additional information in a sentence.'),
(428, 'Participles|Participle', 'A participle is a verb form that can be used (1) as an adjective, (2) to create verb tense, or (3) to create the passive voice.'),
(429, 'Participle Phrases|Participle Phrase', 'A participle phrase is an adjective phrase headed by a participle.'),
(430, 'Parts of Speech', 'The 8 parts of speech are adjectives, adverbs, conjunctions, interjections, nouns, prepositions, pronouns, and verbs.'),
(431, 'Passive Sentence', 'A passive sentence is a sentence where the subject does not perform the action of the verb. In fact, in a passive sentence, the action of the verb is done to the subject. \r\nFor example:\r\nAnita was driven to the theatre.\r\n(In this example, Anita did not perform the action of the verb \"to drive.\" The action was done to her. She was the recipient of the action.)'),
(432, 'Passive Voice', 'Passive voice is a quality of a verb that describes when the subject of a sentence is acted upon by the verb. For example:\r\nThe sheriff was shot.\r\n(This is an example of the passive voice. The action is done to the subject.)'),
(433, 'Past Form of a Verb|Past Form ', 'The past form is the form used to show the simple past tense.'),
(434, 'Past Participles', 'A past participle is a word with the following three traits:\r\nIt is formed from a verb.'),
(435, 'Past Perfect Tense', 'The past perfect tense describes a completed activity in the past. It is used to emphasize that an action was completed before another action took place. For example:\r\nJohn had baked a cake before you arrived.\r\n'),
(436, 'Past Perfect Progressive Tense', 'The past perfect progressive tense is used to show that an ongoing action in the past has ended.\r\nFor example:\r\nJohn had been baking a cake.'),
(437, 'Past Progressive Tense', 'The past progressive tense is used to describe an ongoing activity in the past. \r\nFor example:\r\nJohn was baking a cake.\r\n'),
(438, 'Past Tense', 'The past tense is a verb tense used for a past activity or a past state of being. For example:\r\nI jumped in the lake.\r\n(This is a past activity.)'),
(439, 'Perfect Aspect', 'The perfect aspect (or complete aspect as it\'s sometimes called) is the aspect of a verb that expresses a completed action.\r\n'),
(440, 'Perfect Progressive Aspect', 'The perfect progressive aspect (or \"perfect continuing aspect\" as it\'s sometimes called) is the aspect of a verb that expresses the end of an ongoing action.'),
(441, 'Perfect Progressive Tenses', 'The perfect progressive tense is a category of verb tense used to mark the end of an ongoing action. It covers the past perfect progressive tense, the present prefect progressive tense, and the future perfect progressive tense.'),
(442, 'Perfect Tenses', 'Perfect tense is a category of verb tense used to describe completed actions. It covers the past perfect tense, the present perfect tense, and the future perfect tense. It is sometimes called the complete tense.'),
(443, 'Periodic Sentence', 'A periodic sentence is a sentence that has been deliberately structured to place the main point at the end. Therefore, a periodic sentence will have its main clause or predicate as the last part.'),
(444, 'Person', 'Person is a category used to distinguish between (1) those speaking, (2) those being addressed, and (3) those who are neither speaking nor being addressed (i.e., everybody else).'),
(445, 'Personal Pronouns', 'Personal pronouns are short words used to represent people or things. The personal pronouns are I, you, he, she, it, we, and they. They are primarily used to avoid repetition.'),
(446, 'Personification', 'Personification is giving a human trait or quality to something non-human (e.g., an animal, an object, or a concept).'),
(447, 'Phrasal Verbs', 'A phrasal verb is a multi-word verb made up of a main verb and at least one preposition or a particle that changes the meaning of the verb from the original verb.'),
(448, 'Phrase', 'A phrase is a group of words that stand together as a single grammatical unit, typically as part of a clause or a sentence.'),
(449, 'Plural', 'he word \"plural\" denotes a quantity greater than one. \"Plural\" contrasts with singular, which denotes only one. \r\nFor example:\r\nOne dog / two dogs'),
(450, 'Positive Degree', '\"Positive degree\" is a term that relates to adjectives and adverbs. An adjective or adverb that does not make a comparison is said to be in the positive degree. (In other words, the \"positive degree\" is the normal form of an adjective or adverb.)\r\n'),
(451, 'Passive Sentence', 'A passive sentence is a sentence where the subject does not perform the action of the verb. In fact, in a passive sentence, the action of the verb is done to the subject. \r\nFor example:\r\nAnita was driven to the theatre.\r\n(In this example, Anita did not perform the action of the verb \"to drive.\" The action was done to her. She was the recipient of the action.)'),
(452, 'Passive Voice', 'Passive voice is a quality of a verb that describes when the subject of a sentence is acted upon by the verb. For example:\r\nThe sheriff was shot.\r\n(This is an example of the passive voice. The action is done to the subject.)'),
(453, 'Past Form of a Verb|Past Form ', 'The past form is the form used to show the simple past tense.'),
(454, 'Past Participles', 'A past participle is a word with the following three traits:\r\nIt is formed from a verb.'),
(455, 'Past Perfect Tense', 'The past perfect tense describes a completed activity in the past. It is used to emphasize that an action was completed before another action took place. For example:\r\nJohn had baked a cake before you arrived.\r\n'),
(456, 'Past Perfect Progressive Tense', 'The past perfect progressive tense is used to show that an ongoing action in the past has ended.\r\nFor example:\r\nJohn had been baking a cake.'),
(457, 'Past Progressive Tense', 'The past progressive tense is used to describe an ongoing activity in the past. \r\nFor example:\r\nJohn was baking a cake.\r\n'),
(458, 'Past Tense', 'The past tense is a verb tense used for a past activity or a past state of being. For example:\r\nI jumped in the lake.\r\n(This is a past activity.)'),
(459, 'Perfect Aspect', 'The perfect aspect (or complete aspect as it\'s sometimes called) is the aspect of a verb that expresses a completed action.\r\n'),
(460, 'Perfect Progressive Aspect', 'The perfect progressive aspect (or \"perfect continuing aspect\" as it\'s sometimes called) is the aspect of a verb that expresses the end of an ongoing action.'),
(461, 'Perfect Progressive Tenses', 'The perfect progressive tense is a category of verb tense used to mark the end of an ongoing action. It covers the past perfect progressive tense, the present prefect progressive tense, and the future perfect progressive tense.'),
(462, 'Perfect Tenses', 'Perfect tense is a category of verb tense used to describe completed actions. It covers the past perfect tense, the present perfect tense, and the future perfect tense. It is sometimes called the complete tense.'),
(463, 'Periodic Sentence', 'A periodic sentence is a sentence that has been deliberately structured to place the main point at the end. Therefore, a periodic sentence will have its main clause or predicate as the last part.'),
(464, 'Person', 'Person is a category used to distinguish between (1) those speaking, (2) those being addressed, and (3) those who are neither speaking nor being addressed (i.e., everybody else).'),
(465, 'Personal Pronouns', 'Personal pronouns are short words used to represent people or things. The personal pronouns are I, you, he, she, it, we, and they. They are primarily used to avoid repetition.'),
(466, 'Personification', 'Personification is giving a human trait or quality to something non-human (e.g., an animal, an object, or a concept).'),
(467, 'Phrasal Verbs', 'A phrasal verb is a multi-word verb made up of a main verb and at least one preposition or a particle that changes the meaning of the verb from the original verb.'),
(468, 'Phrase', 'A phrase is a group of words that stand together as a single grammatical unit, typically as part of a clause or a sentence.'),
(469, 'Plural', 'he word \"plural\" denotes a quantity greater than one. \"Plural\" contrasts with singular, which denotes only one. \r\nFor example:\r\nOne dog / two dogs'),
(470, 'Positive Degree', '\"Positive degree\" is a term that relates to adjectives and adverbs. An adjective or adverb that does not make a comparison is said to be in the positive degree. (In other words, the \"positive degree\" is the normal form of an adjective or adverb.)\r\n'),
(471, 'Possessive Adjectives', 'The possessive adjectives are my, your, his, her, its, our, their, and whose. A possessive adjective sits before a noun (or a pronoun) to show who or what owns it.'),
(472, 'Possessive Case', 'The possessive case is used for showing possession (i.e., ownership). The possessive case applies to nouns, pronouns, and determiners.'),
(473, 'Possessive Nouns', 'A possessive noun is a noun indicating ownership (or possession) by ending \'s or just an apostrophe.\r\n'),
(474, 'Possessive Personal Pronouns', 'A possessive personal pronoun is a word that replaces a noun (or a noun phrase) and shows ownership. The possessive personal pronouns are \"mine,\" \"yours,\" \"his,\" \"hers,\" \"ours,\" and \"theirs.\"'),
(475, 'Possessive Pronouns', 'A possessive pronoun is a word that replaces a noun (or a noun phrase) and shows ownership. The possessive pronouns are \"mine,\" \"yours,\" \"his,\" \"hers,\" \"ours,\" and \"theirs.\"\r\n'),
(476, 'Predicate', 'The predicate is the part of a sentence (or clause) that tells us what the subject does or is. To put it another way, the predicate is everything that is not the subject.'),
(477, 'Predicate Adjectives', 'A predicate adjective is an adjective that follows a linking verb and modifies (i.e., describes) the subject of the linking verb.'),
(478, 'Predicate Nominative', 'A predicate nominative (also called a predicate noun) is a word or group of words that completes a linking verb and renames the subject.'),
(479, 'Prefixes|Prefix', 'A prefix is a half word (e.g., anti-, ex-, post-, pre-) added to the front of a word to modify its meaning.\r\n'),
(480, 'Prepositions|Preposition', 'Prepositions precede words to link them to nearby words. Above, about, below, for, from, in, inside, into, of, to, until, and with are all common prepositions. There are lots of others. Lots of prepositions precede words to tell us where or when things are.\r\nE.g\r\nThe cat on the table is called Toby.\r\n(The preposition \"on\" precedes \"table\" to tell us where the cat is.)'),
(481, 'Prepositional Phrase', 'A prepositional phrase is a group of words that consists of:\r\na preposition\r\nthe object of the preposition\r\nany modifiers\r\n'),
(482, 'Present Participles', 'A present participle is a word that \r\n(1) ends \"-ing,\" \r\n(2) is formed from a verb, and \r\n(3) is used as an adjective or to form verb tense.'),
(483, 'Present Perfect Tense', 'The present perfect tense describes an action that began in the past (despite being a present tense). \r\nFor example:\r\nJohn has taken Sarah\'s advice.'),
(484, 'Present Perfect Progressive Tense', 'A continuous activity that began in the past and continues into the present.\r\nFor example:\r\nThose workmen have been fixing the roads.'),
(485, 'Present Progressive Tense', 'The present progressive tense is used for an ongoing action in the present. \r\nFor example:\r\nJohn is baking a cake.'),
(486, 'Present Tense', 'The present tense is a verb tense that describes a current activity or state of being. However, somewhat unusually, the present tense can also be used to describe past and future activities. \r\nFor example:\r\nI swim in the sea every Saturday.\r\n(This is a current activity.)'),
(487, 'Progressive Aspect', 'The progressive aspect (or continuing aspect as it\'s sometimes called) is the aspect of a verb that expresses an ongoing action.'),
(488, 'Progressive Tenses', 'Progressive tense is a category of verb tense used to describe ongoing actions. The progressive tenses are the past progressive tense, the present progressive tense, and the future progressive tense. The progressive tenses are sometimes called the \"continuing\" or \"continuous\" tenses.'),
(489, 'Pronouns|Pronoun', 'Pronouns are words that replace nouns. I, you, he, she, it, we, and they are all examples of common pronouns. In the example sentences below, the pronouns are highlighted, and the nouns they replace are in bold.'),
(490, 'Prose', 'Prose is the normal form of language. Prose contrasts with poetry or verse. In other words, prose is not made up of lines with deliberate rhythmic pattern or rhyme.'),
(491, 'Possessive Adjectives', 'The possessive adjectives are my, your, his, her, its, our, their, and whose. A possessive adjective sits before a noun (or a pronoun) to show who or what owns it.'),
(492, 'Possessive Case', 'The possessive case is used for showing possession (i.e., ownership). The possessive case applies to nouns, pronouns, and determiners.'),
(493, 'Possessive Nouns', 'A possessive noun is a noun indicating ownership (or possession) by ending \'s or just an apostrophe.\r\n'),
(494, 'Possessive Personal Pronouns', 'A possessive personal pronoun is a word that replaces a noun (or a noun phrase) and shows ownership. The possessive personal pronouns are \"mine,\" \"yours,\" \"his,\" \"hers,\" \"ours,\" and \"theirs.\"'),
(495, 'Possessive Pronouns', 'A possessive pronoun is a word that replaces a noun (or a noun phrase) and shows ownership. The possessive pronouns are \"mine,\" \"yours,\" \"his,\" \"hers,\" \"ours,\" and \"theirs.\"\r\n'),
(496, 'Predicate', 'The predicate is the part of a sentence (or clause) that tells us what the subject does or is. To put it another way, the predicate is everything that is not the subject.'),
(497, 'Predicate Adjectives', 'A predicate adjective is an adjective that follows a linking verb and modifies (i.e., describes) the subject of the linking verb.'),
(498, 'Predicate Nominative', 'A predicate nominative (also called a predicate noun) is a word or group of words that completes a linking verb and renames the subject.'),
(499, 'Prefixes|Prefix', 'A prefix is a half word (e.g., anti-, ex-, post-, pre-) added to the front of a word to modify its meaning.\r\n'),
(500, 'Prepositions|Preposition', 'Prepositions precede words to link them to nearby words. Above, about, below, for, from, in, inside, into, of, to, until, and with are all common prepositions. There are lots of others. Lots of prepositions precede words to tell us where or when things are.\r\nE.g\r\nThe cat on the table is called Toby.\r\n(The preposition \"on\" precedes \"table\" to tell us where the cat is.)'),
(501, 'Prepositional Phrase', 'A prepositional phrase is a group of words that consists of:\r\na preposition\r\nthe object of the preposition\r\nany modifiers\r\n'),
(502, 'Present Participles', 'A present participle is a word that \r\n(1) ends \"-ing,\" \r\n(2) is formed from a verb, and \r\n(3) is used as an adjective or to form verb tense.'),
(503, 'Present Perfect Tense', 'The present perfect tense describes an action that began in the past (despite being a present tense). \r\nFor example:\r\nJohn has taken Sarah\'s advice.'),
(504, 'Present Perfect Progressive Tense', 'A continuous activity that began in the past and continues into the present.\r\nFor example:\r\nThose workmen have been fixing the roads.'),
(505, 'Present Progressive Tense', 'The present progressive tense is used for an ongoing action in the present. \r\nFor example:\r\nJohn is baking a cake.'),
(506, 'Present Tense', 'The present tense is a verb tense that describes a current activity or state of being. However, somewhat unusually, the present tense can also be used to describe past and future activities. \r\nFor example:\r\nI swim in the sea every Saturday.\r\n(This is a current activity.)'),
(507, 'Progressive Aspect', 'The progressive aspect (or continuing aspect as it\'s sometimes called) is the aspect of a verb that expresses an ongoing action.'),
(508, 'Progressive Tenses', 'Progressive tense is a category of verb tense used to describe ongoing actions. The progressive tenses are the past progressive tense, the present progressive tense, and the future progressive tense. The progressive tenses are sometimes called the \"continuing\" or \"continuous\" tenses.'),
(509, 'Pronouns|Pronoun', 'Pronouns are words that replace nouns. I, you, he, she, it, we, and they are all examples of common pronouns. In the example sentences below, the pronouns are highlighted, and the nouns they replace are in bold.'),
(510, 'Prose', 'Prose is the normal form of language. Prose contrasts with poetry or verse. In other words, prose is not made up of lines with deliberate rhythmic pattern or rhyme.'),
(511, 'Punctuation', 'Punctuation is the use of conventional characters (e.g., commas, semicolons) to improve clarity. In general, punctuation aids comprehension by showing a reader which words are grouped and where to pause.'),
(512, 'Question Marks', ' question mark is used to show where a question ends.\r\nFor example:\r\nReally?'),
(513, 'Quotations| Quotation', 'The reasons for using quotations in your work include:\r\nAnalyzing another\'s writing.\r\nBorrowing another\'s words.\r\nEliciting another\'s support.'),
(514, 'Quotation Marks|Quotation Mark', 'Quotation marks (\"\") are punctuation marks used in pairs to'),
(515, 'Reciprocal Pronouns', 'A reciprocal pronoun is used to express a mutual action or relationship. There are two reciprocal pronouns'),
(516, 'Reflexive Pronouns', 'The reflexive pronouns are myself, yourself, herself, himself, itself, ourselves, yourselves, and themselves. (These words can be either reflexive pronouns or emphatic pronouns. This page is about their use as reflexive pronouns.)'),
(517, 'Regular Verbs', 'A regular verb is one that conforms to the usual rule for forming its simple past tense and its past participle.'),
(518, 'Relative Adverbs', 'The relative adverbs are \"where,\" \"when,\" and \"why.\" A relative adverb is an adverb that heads an adjective clause.'),
(519, 'Restrictive Clause', 'A restrictive clause is a clause that identifies the word it modifies. A restrictive clause is essential for meaning. A restrictive clause is not offset with commas.\r\nFor example:\r\nThe boy who broke the window is at the door.'),
(520, 'Restrictive Modifier', 'A restrictive modifier is a word, phrase, or clause that defines another element. A restrictive modifier is essential for meaning. If a restrictive modifier were to be removed, readers would be left with a question like \"Which one are we talking about?\".\r\n');
INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(521, 'Rhetorical Question', 'A rhetorical question is a question for which no answer is expected. A rhetorical question is typically asked to make a point or to introduce a subject.'),
(522, 'Root', 'A word root is the base part of a word (i.e., less any prefixes and suffixes).\r\n'),
(523, 'Run-on Sentence', 'A run-on sentence is a common error caused by merging two sentences without suitable punctuation. The most common run-on sentence is the \"comma splice\" (also known as the \"comma fault\"), which occurs when two sentences are inappropriately separated by a comma.'),
(524, 'Satire', 'Satire is the use of comedy, sarcasm, irony, or exaggeration to expose the flaws or vices of individuals, institutions, or groups (including their ideas, claims, and proposals).\r\n'),
(525, 'Simile', 'A simile is a figure of speech that likens one thing to another (usually by using the word like or as).'),
(526, 'Second Person', 'The term \"second person\" refers to the speaker\'s audience (i.e.,\"you\").'),
(527, 'Semicolons', 'A semicolon (;) is a punctuation mark used:\r\nIn complex lists\r\nWhen a slight break is preferable to new sentence\r\nBefore conjunctions (e.g., and, or, but) in certain circumstances.'),
(528, 'Sentence', 'A sentence is a group of words giving a complete thought. A sentence must contain a subject and a verb (although one may be implied).'),
(529, 'Sentence Fragment', 'A sentence fragment is a group of words that looks like a sentence but isn\'t. In other words, a sentence fragment starts with a capital letter and has end punctuation (such as a period (full stop), a question mark, exclamation mark, or a semicolon) but does not qualify as a sentence.'),
(530, 'Simple Aspect', 'The simple aspect (or indefinite aspect as it\'s occasionally called) is the verb form used to express a fact. Unlike other aspects (like the progressive aspect or the perfect aspect), the simple aspect does not make it clear whether the action is a complete action or a habitual action'),
(531, 'Punctuation', 'Punctuation is the use of conventional characters (e.g., commas, semicolons) to improve clarity. In general, punctuation aids comprehension by showing a reader which words are grouped and where to pause.'),
(532, 'Question Marks', ' question mark is used to show where a question ends.\r\nFor example:\r\nReally?'),
(533, 'Quotations| Quotation', 'The reasons for using quotations in your work include:\r\nAnalyzing another\'s writing.\r\nBorrowing another\'s words.\r\nEliciting another\'s support.'),
(534, 'Quotation Marks|Quotation Mark', 'Quotation marks (\"\") are punctuation marks used in pairs to'),
(535, 'Reciprocal Pronouns', 'A reciprocal pronoun is used to express a mutual action or relationship. There are two reciprocal pronouns'),
(536, 'Reflexive Pronouns', 'The reflexive pronouns are myself, yourself, herself, himself, itself, ourselves, yourselves, and themselves. (These words can be either reflexive pronouns or emphatic pronouns. This page is about their use as reflexive pronouns.)'),
(537, 'Regular Verbs', 'A regular verb is one that conforms to the usual rule for forming its simple past tense and its past participle.'),
(538, 'Relative Adverbs', 'The relative adverbs are \"where,\" \"when,\" and \"why.\" A relative adverb is an adverb that heads an adjective clause.'),
(539, 'Restrictive Clause', 'A restrictive clause is a clause that identifies the word it modifies. A restrictive clause is essential for meaning. A restrictive clause is not offset with commas.\r\nFor example:\r\nThe boy who broke the window is at the door.'),
(540, 'Restrictive Modifier', 'A restrictive modifier is a word, phrase, or clause that defines another element. A restrictive modifier is essential for meaning. If a restrictive modifier were to be removed, readers would be left with a question like \"Which one are we talking about?\".\r\n'),
(541, 'Rhetorical Question', 'A rhetorical question is a question for which no answer is expected. A rhetorical question is typically asked to make a point or to introduce a subject.'),
(542, 'Root', 'A word root is the base part of a word (i.e., less any prefixes and suffixes).\r\n'),
(543, 'Run-on Sentence', 'A run-on sentence is a common error caused by merging two sentences without suitable punctuation. The most common run-on sentence is the \"comma splice\" (also known as the \"comma fault\"), which occurs when two sentences are inappropriately separated by a comma.'),
(544, 'Satire', 'Satire is the use of comedy, sarcasm, irony, or exaggeration to expose the flaws or vices of individuals, institutions, or groups (including their ideas, claims, and proposals).\r\n'),
(545, 'Simile', 'A simile is a figure of speech that likens one thing to another (usually by using the word like or as).'),
(546, 'Second Person', 'The term \"second person\" refers to the speaker\'s audience (i.e.,\"you\").'),
(547, 'Semicolons', 'A semicolon (;) is a punctuation mark used:\r\nIn complex lists\r\nWhen a slight break is preferable to new sentence\r\nBefore conjunctions (e.g., and, or, but) in certain circumstances.'),
(548, 'Sentence', 'A sentence is a group of words giving a complete thought. A sentence must contain a subject and a verb (although one may be implied).'),
(549, 'Sentence Fragment', 'A sentence fragment is a group of words that looks like a sentence but isn\'t. In other words, a sentence fragment starts with a capital letter and has end punctuation (such as a period (full stop), a question mark, exclamation mark, or a semicolon) but does not qualify as a sentence.'),
(550, 'Simple Aspect', 'The simple aspect (or indefinite aspect as it\'s occasionally called) is the verb form used to express a fact. Unlike other aspects (like the progressive aspect or the perfect aspect), the simple aspect does not make it clear whether the action is a complete action or a habitual action'),
(551, 'Simple Future Tense', 'The simple future tense is used for an action that will occur in the future. For example:\r\nJohn will bake a cake.'),
(552, 'Simple Past Tense', 'The simple past tense is used to describe a completed activity that happened in the past. In other words, it started in the past and ended in the past. \r\nFor example:\r\nJohn baked a cake.'),
(553, 'Simple Present Tense', 'We use the simple present tense when an action is happening right now, or when it happens regularly (or unceasingly, which is why it\'s sometimes called present indefinite).'),
(554, 'Simple Sentence', 'A simple sentence is a sentence that consists of just one independent clause. A simple sentence has no dependent clauses.'),
(555, 'Simple Subject', '\"Simple subject\" is the term used for the single word that is the subject of a verb.\r\n\r\nA simple subject will often have modifiers before or after it, but, once these are removed, the word left is the simple subject.'),
(556, 'Simple Tenses|Simple Tense', '\"Simple tense\" is a category of verb tense. It covers the simple past tense, the simple present tense, and the simple future tense.'),
(557, 'Singular', 'The word \"singular\" denotes a quantity of one. \"Singular\" contrasts with plural, which denotes more than one. \r\nFor example:\r\nOne shark / three sharks\r\n(The word \"shark\" is singular, but \"sharks\" is plural.)'),
(558, 'Split Infinitives', 'A split infinitive occurs when a verb in its infinitive form (e.g., to think, to laugh) has an adverb between the to and the verb (e.g., to really think, to wholeheartedly laugh).\r\n'),
(559, 'Squinting Modifier', 'A squinting modifier is a type of misplaced modifier. A squinting modifier makes the meaning of a sentence ambiguous because it is unclear whether it modifies text before it or after it.\r\n'),
(560, 'Staccato Sentences', 'Staccato sentences are short sentences written back to back for literary effect. The effect sought with a string of staccato sentences is usually emphasis, clarity, or speed for drama or excitement.'),
(561, 'Stative Verbs', 'Stative verbs describe states. They do not describe actions. \r\nFor example:\r\nI am late.\r\n(Here, \"am\" is a stative verb. It describes a state.)'),
(562, 'Subject of a Sentence|Subject', 'The subject of a sentence is the person or thing doing the action or being described.\r\nLee ate the pie.\r\n(Lee is the subject of the sentence. Lee is doing the action.)'),
(563, 'Subjective Case', 'The subjective case is the case used for a noun or pronoun that is the subject of a verb. For example\r\nThe boy eats pies.\r\n(The noun \"boy\" is the subject of the verb \"eats.\" \"Boy\" is in the subjective case. In English, nouns do not change in the different cases. Pronouns, however, do.)'),
(564, 'Subject-Verb Agreement', 'Subject-verb agreement means that a singular subject is matched with a singular verb or that a plural subject is matched with a plural verb. \r\nFor example:\r\nMy box is under the stairs. '),
(565, 'Subjective Personal Pronouns', 'The subjective personal pronouns are \"I,\" \"you,\" \"she,\" \"he,\" \"it,\" \"we,\" \"you,\" and \"they.\" A subjective personal pronoun indicates that the pronoun is acting as the subject of the verb.'),
(566, 'Subjunctive Mood', 'The subjunctive mood is the verb form used to explore a hypothetical situation (e.g., \"If I were you\") or to express a wish, a demand, or a suggestion (e.g., \"I demand he be present\").'),
(567, 'Suffix|Suffixes', 'A suffix is a letter or a group of letters added to the end of a word to alter its meaning or to ensure it fits grammatically into a sentence.'),
(568, 'Superlatives', 'A superlative is the form of an adjective or an adverb used to compare three or more things.'),
(569, 'Syllable', 'A syllable is a unit of sound. More specifically, it is a single segment of uninterrupted sound that is typically produced with a single pulse of air from the lungs.'),
(570, 'Synonyms|Synonym', 'A synonym is a word or phrase that means the same (or very nearly the same) as another word or phrase. Words that are synonyms are described as synonymous.'),
(571, 'Simple Future Tense', 'The simple future tense is used for an action that will occur in the future. For example:\r\nJohn will bake a cake.'),
(572, 'Simple Past Tense', 'The simple past tense is used to describe a completed activity that happened in the past. In other words, it started in the past and ended in the past. \r\nFor example:\r\nJohn baked a cake.'),
(573, 'Simple Present Tense', 'We use the simple present tense when an action is happening right now, or when it happens regularly (or unceasingly, which is why it\'s sometimes called present indefinite).'),
(574, 'Simple Sentence', 'A simple sentence is a sentence that consists of just one independent clause. A simple sentence has no dependent clauses.'),
(575, 'Simple Subject', '\"Simple subject\" is the term used for the single word that is the subject of a verb.\r\n\r\nA simple subject will often have modifiers before or after it, but, once these are removed, the word left is the simple subject.'),
(576, 'Simple Tenses|Simple Tense', '\"Simple tense\" is a category of verb tense. It covers the simple past tense, the simple present tense, and the simple future tense.'),
(577, 'Singular', 'The word \"singular\" denotes a quantity of one. \"Singular\" contrasts with plural, which denotes more than one. \r\nFor example:\r\nOne shark / three sharks\r\n(The word \"shark\" is singular, but \"sharks\" is plural.)'),
(578, 'Split Infinitives', 'A split infinitive occurs when a verb in its infinitive form (e.g., to think, to laugh) has an adverb between the to and the verb (e.g., to really think, to wholeheartedly laugh).\r\n'),
(579, 'Squinting Modifier', 'A squinting modifier is a type of misplaced modifier. A squinting modifier makes the meaning of a sentence ambiguous because it is unclear whether it modifies text before it or after it.\r\n'),
(580, 'Staccato Sentences', 'Staccato sentences are short sentences written back to back for literary effect. The effect sought with a string of staccato sentences is usually emphasis, clarity, or speed for drama or excitement.'),
(581, 'Stative Verbs', 'Stative verbs describe states. They do not describe actions. \r\nFor example:\r\nI am late.\r\n(Here, \"am\" is a stative verb. It describes a state.)'),
(582, 'Subject of a Sentence|Subject', 'The subject of a sentence is the person or thing doing the action or being described.\r\nLee ate the pie.\r\n(Lee is the subject of the sentence. Lee is doing the action.)'),
(583, 'Subjective Case', 'The subjective case is the case used for a noun or pronoun that is the subject of a verb. For example\r\nThe boy eats pies.\r\n(The noun \"boy\" is the subject of the verb \"eats.\" \"Boy\" is in the subjective case. In English, nouns do not change in the different cases. Pronouns, however, do.)'),
(584, 'Subject-Verb Agreement', 'Subject-verb agreement means that a singular subject is matched with a singular verb or that a plural subject is matched with a plural verb. \r\nFor example:\r\nMy box is under the stairs. '),
(585, 'Subjective Personal Pronouns', 'The subjective personal pronouns are \"I,\" \"you,\" \"she,\" \"he,\" \"it,\" \"we,\" \"you,\" and \"they.\" A subjective personal pronoun indicates that the pronoun is acting as the subject of the verb.'),
(586, 'Subjunctive Mood', 'The subjunctive mood is the verb form used to explore a hypothetical situation (e.g., \"If I were you\") or to express a wish, a demand, or a suggestion (e.g., \"I demand he be present\").'),
(587, 'Suffix|Suffixes', 'A suffix is a letter or a group of letters added to the end of a word to alter its meaning or to ensure it fits grammatically into a sentence.'),
(588, 'Superlatives', 'A superlative is the form of an adjective or an adverb used to compare three or more things.'),
(589, 'Syllable', 'A syllable is a unit of sound. More specifically, it is a single segment of uninterrupted sound that is typically produced with a single pulse of air from the lungs.'),
(590, 'Synonyms|Synonym', 'A synonym is a word or phrase that means the same (or very nearly the same) as another word or phrase. Words that are synonyms are described as synonymous.'),
(591, 'Verbs|Verb', 'Verbs are words that express physical actions (e.g., to jump), mental actions (e.g., to guess), or states of being (e.g., to exist).'),
(592, 'Verb Phrase', 'A verb phrase consists of a main verb and any auxiliary verbs.'),
(593, 'Verb Root', 'A verb root (which is also known as the \"root form of a verb\" or the base form of a verb) is the version of the verb that is listed in the dictionary.'),
(594, 'Verbals|Verbal', 'A verbal is a verb form that does not function as a verb. Verbals function as nouns, adjectives, or adverbs. There are three types of verbals:\r\nParticiples (past participles and present participles).\r\nGerunds\r\nInfinitives\r\n'),
(595, 'Verbal Nouns', 'A verbal noun is a noun that has no verb-like properties despite being derived from a verb.'),
(596, 'Vocative Case', 'The vocative case is used to show direct address (i.e., to show when you are talking to somebody or something directly). In English, words in the vocative case are offset using commas.'),
(597, ' Voice', 'Voice is the term used to describe whether a verb is active or passive.'),
(598, 'Vowels|Vowel', 'The letters A, E, I, O, and U are called vowels. The other letters in the alphabet are called consonants.'),
(599, 'Weak Verbs', 'A weak verb is one that ends \"-d\" or \"-t\" for its past forms (i.e., its simple past tense and past participle).'),
(600, 'Zeugma', 'Zeugma is a figure of speech in which a single word joins two (or more) parts of a sentence. Sometimes, zeugma creates a mistake, and sometimes it doesn\'t. Zeugma is often used to create a literary effect.'),
(601, 'Verbs|Verb', 'Verbs are words that express physical actions (e.g., to jump), mental actions (e.g., to guess), or states of being (e.g., to exist).'),
(602, 'Verb Phrase', 'A verb phrase consists of a main verb and any auxiliary verbs.'),
(603, 'Verb Root', 'A verb root (which is also known as the \"root form of a verb\" or the base form of a verb) is the version of the verb that is listed in the dictionary.'),
(604, 'Verbals|Verbal', 'A verbal is a verb form that does not function as a verb. Verbals function as nouns, adjectives, or adverbs. There are three types of verbals:\r\nParticiples (past participles and present participles).\r\nGerunds\r\nInfinitives\r\n'),
(605, 'Verbal Nouns', 'A verbal noun is a noun that has no verb-like properties despite being derived from a verb.'),
(606, 'Vocative Case', 'The vocative case is used to show direct address (i.e., to show when you are talking to somebody or something directly). In English, words in the vocative case are offset using commas.'),
(607, ' Voice', 'Voice is the term used to describe whether a verb is active or passive.'),
(608, 'Vowels|Vowel', 'The letters A, E, I, O, and U are called vowels. The other letters in the alphabet are called consonants.'),
(609, 'Weak Verbs', 'A weak verb is one that ends \"-d\" or \"-t\" for its past forms (i.e., its simple past tense and past participle).'),
(610, 'Zeugma', 'Zeugma is a figure of speech in which a single word joins two (or more) parts of a sentence. Sometimes, zeugma creates a mistake, and sometimes it doesn\'t. Zeugma is often used to create a literary effect.'),
(611, 'verb|verbs', 'Verbs are words that show an action (sing), occurrence (develop), or state of being (exist). Almost every sentence requires a verb.'),
(612, 'verb|verbs', 'Verbs are words that show an action (sing), occurrence (develop), or state of being (exist). Almost every sentence requires a verb.');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('adi230@gmail.com', '5b141b8009cf0', -6, 10, 1, 9, '2022-08-11 11:40:42'),
('adi230@gmail.com', '5b141f1e8399e', -1, 1, 0, 1, '2022-08-12 12:23:41'),
('praj@gmail.com', '62f646a41ed3d', 4, 2, 2, 0, '2022-08-15 15:12:04'),
('praj@gmail.com', '5b141f1e8399e', -2, 10, 2, 8, '2022-08-15 15:12:26'),
('praj@gmail.com', '5b141b8009cf0', -6, 10, 1, 9, '2022-08-15 15:15:15'),
('prer@gmail.com', '5b141f1e8399e', -10, 10, 0, 10, '2022-08-15 15:17:01'),
('prer@gmail.com', '5b141f1e8399e', -10, 10, 0, 10, '2022-08-15 15:17:01'),
('prer@gmail.com', '5b141f1e8399e', -10, 10, 0, 10, '2022-08-15 15:17:01'),
('pinki@gmail.com', '5b141b8009cf0', -2, 10, 2, 8, '2022-08-15 15:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('5b141d712647f', 'Personal Home Page', '5b141d71485b9'),
('5b141d712647f', 'Private Home Page', '5b141d71485dc'),
('5b141d712647f', 'Pretext Hypertext Processor', '5b141d71485e0'),
('5b141d712647f', 'Preprocessor Home Page', '5b141d71485e4'),
('5b141d718f873', 'Rasmus Lerdorf', '5b141d71978be'),
('5b141d718f873', 'Willam Makepiece', '5b141d71978cc'),
('5b141d718f873', 'Drek Kolkevi', '5b141d71978d1'),
('5b141d718f873', 'List Barely', '5b141d71978d4'),
('5b141d71ddb46', '.html', '5b141d71e5f2b'),
('5b141d71ddb46', '.ph', '5b141d71e5f3c'),
('5b141d71ddb46', '.php', '5b141d71e5f43'),
('5b141d71ddb46', '.xml', '5b141d71e5f48'),
('5b141d721a738', 'for loop', '5b141d7222820'),
('5b141d721a738', 'do-while loop', '5b141d722282f'),
('5b141d721a738', 'foreach loop', '5b141d7222880'),
('5b141d721a738', 'All of the above', '5b141d7222884'),
('5b141d7260b7d', 'echo (â€œHello Worldâ€);', '5b141d7268b8a'),
('5b141d7260b7d', 'print (â€œHello Worldâ€);', '5b141d7268b95'),
('5b141d7260b7d', 'printf (â€œHello Worldâ€);', '5b141d7268b98'),
('5b141d7260b7d', 'All of the above', '5b141d7268b9a'),
('5b141d72a6fa1', 'file()', '5b141d72aefcb'),
('5b141d72a6fa1', 'arr_file()', '5b141d72aefd8'),
('5b141d72a6fa1', 'arrfile()', '5b141d72aefdc'),
('5b141d72a6fa1', 'file_arr()', '5b141d72aefe0'),
('5b141d72d7a1c', 'Magic Function', '5b141d72dfa7b'),
('5b141d72d7a1c', 'Inbuilt Function', '5b141d72dfa85'),
('5b141d72d7a1c', 'Default Function', '5b141d72dfa88'),
('5b141d72d7a1c', 'User Defined Function', '5b141d72dfa8b'),
('5b141d731429b', 'CREATE TABLE table_name (column_name column_type);', '5b141d731c234'),
('5b141d731429b', 'CREATE table_name (column_type column_name);', '5b141d731c242'),
('5b141d731429b', 'CREATE table_name (column_name column_type);', '5b141d731c248'),
('5b141d731429b', 'CREATE TABLE table_name (column_type column_name);', '5b141d731c24b'),
('5b141d7345176', 'get_array() and get_row()', '5b141d734cd10'),
('5b141d7345176', 'fetch_array() and fetch_row()', '5b141d734cd1b'),
('5b141d7345176', 'get_array() and get_column()', '5b141d734cd1d'),
('5b141d7345176', 'fetch_array() and fetch_column()', '5b141d734cd20'),
('5b141d737ddfc', 'explode()', '5b141d73858d0'),
('5b141d737ddfc', 'implode()', '5b141d73858df'),
('5b141d737ddfc', 'concat()', '5b141d73858e3'),
('5b141d737ddfc', 'concatenate()', '5b141d73858e8'),
('5b1422651fdde', '32 bits', '5b1422654ab3a'),
('5b1422651fdde', '128 bytes', '5b1422654ab48'),
('5b1422651fdde', '64 bits', '5b1422654ab4d'),
('5b1422651fdde', '16 bytes', '5b1422654ab51'),
('5b14226574ed5', 'IP', '5b1422657d052'),
('5b14226574ed5', 'TCP', '5b1422657d05f'),
('5b14226574ed5', 'UDP', '5b1422657d064'),
('5b14226574ed5', 'ARP', '5b1422657d069'),
('5b142265b5d08', 'Session layer', '5b142265c09e3'),
('5b142265b5d08', 'Physical layer', '5b142265c09f5'),
('5b142265b5d08', 'Data Link layer', '5b142265c09fa'),
('5b142265b5d08', 'Application layer', '5b142265c09ff'),
('5b1422661d93f', '12.0.0.1', '5b14226635df5'),
('5b1422661d93f', '168.172.19.39', '5b14226635e04'),
('5b1422661d93f', '172.15.14.36', '5b14226635e09'),
('5b1422661d93f', '192.168.24.43', '5b14226635e0d'),
('5b14226663cf4', 'Application', '5b1422666bf2b'),
('5b14226663cf4', 'Presentation', '5b1422666bf39'),
('5b14226663cf4', 'Session', '5b1422666bf3e'),
('5b14226663cf4', 'Transport', '5b1422666bf42'),
('5b1422669481b', 'VTP', '5b1422669c8dc'),
('5b1422669481b', 'STP', '5b1422669c8ea'),
('5b1422669481b', 'RIP', '5b1422669c8ef'),
('5b1422669481b', 'CDP', '5b1422669c8f3'),
('5b142266c525c', '14', '5b142266cd353'),
('5b142266c525c', '15', '5b142266cd361'),
('5b142266c525c', '16', '5b142266cd365'),
('5b142266c525c', '30', '5b142266cd369'),
('5b14226711d91', '255.255.255.192', '5b14226719fa0'),
('5b14226711d91', '255.255.255.224', '5b14226719fb1'),
('5b14226711d91', '255.255.255.240', '5b14226719fb7'),
('5b14226711d91', '255.255.255.248', '5b14226719fbb'),
('5b1422674286d', '6', '5b1422674a9ee'),
('5b1422674286d', '8', '5b1422674aa01'),
('5b1422674286d', '30', '5b1422674aa06'),
('5b1422674286d', '32', '5b1422674aa0b'),
('5b1422677371f', '127.0.0.0', '5b1422677b3e9'),
('5b1422677371f', '1.0.0.127', '5b1422677b3f7'),
('5b1422677371f', '127.0.0.1', '5b1422677b3fc'),
('5b1422677371f', '127.0.0.255', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'What does PHP stand for?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'Who is the father of PHP?', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'PHP files have a default file extension of.', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'Which of the looping statements is/are supported by PHP?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'Which of the following PHP statements will output Hello World on the screen?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'Which one of the following function is capable of reading a file into an array?', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'A function in PHP which starts with __ (double underscore) is know as..', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'Which one of the following statements is used to create a table?', 4, 8),
('5b141b8009cf0', '5b141d7345176', 'Which of the methods are used to manage result sets using both associative and indexed arrays?', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', 'Which one of the following functions can be used to concatenate array elements to form a single delimited string?', 4, 10),
('5b141f1e8399e', '5b1422651fdde', 'How long is an IPv6 address?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'Which protocol does DHCP use at the Transport layer?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'Where is a hub specified in the OSI model?', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Which of the following is private IP address?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'If you use either Telnet or FTP, which is the highest layer you are using to transmit data?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Which of the following is a layer 2 protocol used to maintain a loop-free network?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'What is the maximum number of IP addresses that can be assigned to hosts on a local subnet that uses the 255.255.255.224 subnet mask?', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'You need to subnet a network that has 5 subnets, each with at least 16 hosts. Which classful subnet mask would you use?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'You have an interface on a router with the IP address of 192.168.192.10/29. Including the router interface, how many hosts can have IP addresses on the LAN attached to the router interface?', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'To test the IP stack on your local host, which IP address would you ping?\r\n\r\n', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'Php & Mysqli', 3, 1, 10, '2018-06-03 16:46:56'),
('5b141f1e8399e', 'Ip Networking', 3, 1, 10, '2018-06-03 17:02:22'),
('62f646a41ed3d', 'Php', 2, 1, 10, '2022-08-12 12:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `quizes`
--

CREATE TABLE `quizes` (
  `Quiz_ID` int(10) NOT NULL,
  `Topic_Quiz` varchar(50) NOT NULL,
  `Question` varchar(500) NOT NULL,
  `op_1` varchar(50) NOT NULL,
  `op_2` varchar(50) NOT NULL,
  `op_3` varchar(50) NOT NULL,
  `op_4` varchar(50) NOT NULL,
  `Answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizes`
--

INSERT INTO `quizes` (`Quiz_ID`, `Topic_Quiz`, `Question`, `op_1`, `op_2`, `op_3`, `op_4`, `Answer`) VALUES
(53068, 'Noun', 'how are uh babe ?', 'fine', 'good', 'hot', 'not', 'hot'),
(33999, 'Noun', 'how are uh babe ?', 'fine', 'good', 'hot', 'chick', 'chick'),
(42716, 'Noun', 'how is she ?', 'mad', 'cool', 'dumb', 'pretty', 'dumb'),
(42716, 'Noun', 'how is she ?', 'fine', 'good', 'hot', 'chick', 'chick');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('praj@gmail.com', -6, '2022-08-15 15:15:15'),
('prer@gmail.com', -10, '2022-08-15 15:17:01'),
('pinki@gmail.com', -2, '2022-08-15 15:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `student_signup`
--

CREATE TABLE `student_signup` (
  `signup_username` varchar(20) NOT NULL,
  `signup_password` varchar(8) NOT NULL,
  `signup_email` varchar(30) NOT NULL,
  `DOB` date DEFAULT NULL,
  `signup_Age` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_signup`
--

INSERT INTO `student_signup` (`signup_username`, `signup_password`, `signup_email`, `DOB`, `signup_Age`) VALUES
('adii', '123789', 'aadinath@gmail.com', '2003-07-19', 19),
('harsh', '12345', 'har123@gmail.com', '2003-08-08', 18),
('KAIRA', '12345', 'prer@gmail.com', '1985-08-09', 36),
('Khushi', '7878', '1234chau@gmail.com', '2004-01-31', 18),
('kiran', '147852', 'kirya@gmail.com', '1988-08-07', 33),
('Pinkii', '123456', 'pinki@gmail.com', '1899-08-08', 122),
('prarthana', '12345', 'praj@gmail.com', '2004-03-28', 18),
('preeti', '789654', 'preti@gmail.com', '4444-04-04', 2421),
('raj', '456', 'raju@gmail.com', '2000-07-07', 22),
('Vivek Chaudhari', '98226361', 'vc595750@gmail.com', '2004-01-31', 18);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_signup`
--

CREATE TABLE `teacher_signup` (
  `teacher_Name` varchar(50) NOT NULL,
  `teacher_Email` varchar(30) NOT NULL,
  `teacher_password` varchar(10) NOT NULL,
  `OTP` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_signup`
--

INSERT INTO `teacher_signup` (`teacher_Name`, `teacher_Email`, `teacher_password`, `OTP`) VALUES
('Ishita Mishra', 'ishu123@gmail.com', '456issh', 11111),
('pranav', 'praa23@gilcom', '456', 222),
('kus', 'ku@gilcom', '123', 0),
('paki ', 'pk234@gmail.com', '123456', 123),
('ruby', 'ruby@gmail.com', '123456', 12345),
('prachi ', 'praa@gmail.com', '741', 0),
('prachi ', 'praa@gmail.com', '741', 0),
('prachi ', 'prachi@gmail.com', '12345', 0),
('Radha', 'radhe@gmail.com', 'krish143', 0),
('Radha', 'radhe@gmail.com', 'krish143', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_signup`
--
ALTER TABLE `student_signup`
  ADD UNIQUE KEY `signup-username` (`signup_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
