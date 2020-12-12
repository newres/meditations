class BookSectionSearchResult {}

// This represents the result of search, which results in a text with the attached book and section number.
class BookSectionText extends BookSectionSearchResult {
  int bookNr;
  int sectionNr;
  String text;
}

// This represent the result of a search, in which case no section is found.
class NoSuchBookSection extends BookSectionSearchResult {}

// This represents the text of Meditations by Marcus Aurelius
// Available on http://www.gutenberg.org/cache/epub/2680/pg2680.txt
// Only the first and last book is fully represented here, with other books only containing one section.
// This is enough to demo the app, and to implement and test the functionality.

class Meditations {
  static final book1 = [
    '''I. Of my grandfather Verus I have learned to be gentle and meek, and to refrain from all anger and passion. From the fame and memory of him that begot me I have learned both shamefastness and manlike behaviour. 
    
Of my mother I have learned to be religious, and bountiful; and to forbear, not only to do, but to intend any evil; to content myself with a spare diet, and to fly all such excess as is incidental to great wealth. 
    
Of my great-grandfather, both to frequent public schools and auditories, and to get me good and able teachers at home; and that I ought not to think much, if upon such occasions, I were at excessive charges.''',
    '''II. Of him that brought me up, not to be fondly addicted to either of the two great factions of the coursers in the circus, called Prasini, and Veneti: nor in the amphitheatre partially to favour any of the gladiators, or fencers, as either the Parmularii, or the Secutores.
    
Moreover, to endure labour; nor to need many things; when I have anything to do, to do it myself rather than by others; not to meddle with many businesses; and not easily to admit of any slander.''',
    '''III. Of Diognetus, not to busy myself about vain things, and not easily to believe those things, which are commonly spoken, by such as take upon them to work wonders, and by sorcerers, or prestidigitators, and impostors; concerning the power of charms, and their driving out of demons, or evil spirits; and the like. Not to keep quails for the game; nor to be mad after such things. Not to be offended with other men's liberty of speech, and to apply myself unto philosophy. 

Him also I must thank, that ever I heard first Bacchius, then Tandasis and Marcianus, and that I did write dialogues in my youth; and that I took liking to the philosophers' little couch and skins, and such other things, which by the Grecian discipline are proper to those who profess philosophy.''',
    '''IV. To Rusticus I am beholding, that I first entered into the conceit that my life wanted some redress and cure. 
    
And then, that I did not fall into the ambition of ordinary sophists, either to write tracts concerning the common theorems, or to exhort men unto virtue and the study of philosophy by public orations; as also that I never by way of ostentation did affect to show myself an active able man, for any kind of bodily exercises. 

And that I gave over the study of rhetoric and poetry, and of elegant neat language. That I did not use to walk about the house in my long robe, nor to do any such things.

Moreover I learned of him to write letters without any affectation, or curiosity; such as that was, which by him was written to my mother from Sinuessa: and to be easy and ready to be reconciled, and well pleased again with them that had offended me, as soon as any of them would be content to seek unto me again. 
    
To read with diligence; not to rest satisfied with a light and superficial knowledge, nor quickly to assent to things commonly spoken of: whom also I must thank that ever I lighted upon Epictetus his Hypomnemata, or moral commentaries and common-factions: which also he gave me of his own.''',
    '''V. From Apollonius, true liberty, and unvariable steadfastness, and not to regard anything at all, though never so little, but right and reason: and always, whether in the sharpest pains, or after the loss of a child, or in long diseases, to be still the same man; who also was a present and visible example unto me, that it was possible for the same man to be both vehement and remiss: a man not subject to be vexed, and offended with the incapacity of his scholars and auditors in his lectures and expositions; and a true pattern of a man who of all his good gifts and faculties, least esteemed in himself, that his excellent skill and ability to teach and persuade others the common theorems and maxims of the Stoic philosophy. 

Of him also I learned how to receive favours and kindnesses (as commonly they are accounted:) from friends, so that I might not become obnoxious unto them, for them, nor more yielding upon occasion, than in right I ought; and yet so that I should not pass them neither, as an unsensible and unthankful man.''',
    '''VI. Of Sextus, mildness and the pattern of a family governed with paternal affection; and a purpose to live according to nature: to be grave without affectation: to observe carefully the several dispositions of my friends, not to be offended with idiots, nor unseasonably to set upon those that are carried with the vulgar opinions, with the theorems, and tenets of philosophers: 
    
his conversation being an example how a man might accommodate himself to all men and companies; so that though his company were sweeter and more pleasing than any flatterer's cogging and fawning; yet was it at the same time most respected and reverenced: who also had a proper happiness and faculty, rationally and methodically to find out, and set in order all necessary determinations and instructions for a man's life. 

A man without ever the least appearance of anger, or any other passion; able at the same time most exactly to observe the Stoic Apathia, or unpassionateness, and yet to be most tender-hearted: ever of good credit; and yet almost without any noise, or rumour: very learned, and yet making little show.''',
    '''VII. From Alexander the Grammarian, to be un-reprovable myself, and not reproachfully to reprehend any man for a barbarism, or a solecism, or any false pronunciation, but dextrously by way of answer, or testimony, or confirmation of the same matter (taking no notice of the word) to utter it as it should have been spoken; or by some other such close and indirect admonition, handsomely and civilly to tell him of it.''',
    '''VIII. Of Fronto, to how much envy and fraud and hypocrisy the state of a tyrannous king is subject unto, and how they who are commonly called [Eupatridas Gk.], i.e. nobly born, are in some sort incapable, or void of natural affection.''',
    '''IX. Of Alexander the Platonic, not often nor without great necessity to say, or to write to any man in a letter, 'I am not at leisure'; nor in this manner still to put off those duties, which we owe to our friends and acquaintances (to every one in his kind) under pretence of urgent affairs.''',
    '''X. Of Catulus, not to contemn any friend's expostulation, though unjust, but to strive to reduce him to his former disposition: freely and heartily to speak well of all my masters upon any occasion, as it is reported of Domitius, and Athenodotus: and to love my children with true affection.''',
    '''XI. From my brother Severus, to be kind and loving to all them of my house and family; by whom also I came to the knowledge of Thrasea and
Helvidius, and Cato, and Dio, and Brutus. 

He it was also that did put me in the first conceit and desire of an equal commonwealth, administered by justice and equality; and of a kingdom wherein should be regarded nothing more than the good and welfare of the subjects. 

Of him also, to observe a constant tenor, (not interrupted, with any other cares and distractions,) in the study and esteem of philosophy: to be bountiful and liberal in the largest measure; always to hope the best; and to be confident that my friends love me. 

In whom I moreover observed open dealing towards those whom he reproved at any time, and that his friends might without all doubt or much observation know what he would, or would not, so open and plain was he.''',
    '''XII. From Claudius Maximus, in all things to endeavour to have power of myself, and in nothing to be carried about; to be cheerful and courageous in all sudden chances and accidents, as in sicknesses: to love mildness, and moderation, and gravity: and to do my business, whatsoever it be, thoroughly, and without querulousness. 

Whatsoever he said, all men believed him that as he spake, so he thought, and whatsoever he did, that he did it with a good intent. 

His manner was, never to wonder at anything; never to be in haste, and yet never slow: nor to be perplexed, or dejected, or at any time unseemly, or excessively to laugh: nor to be angry, or suspicious, but ever ready to do good, and to forgive, and to speak truth; 

and all this, as one that seemed rather of himself to have been straight and right, than ever to have been rectified or redressed; neither was there any man that ever thought himself undervalued by him, or that could find in his heart, to think himself a better man than he. He would also be very pleasant and gracious.''',
    '''XIII. In my father, I observed his meekness; his constancy without wavering in those things, which after a due examination and
deliberation, he had determined. 

How free from all vanity he carried himself in matter of honour and dignity, (as they are esteemed:) his laboriousness and assiduity, his readiness to hear any man, that had aught to say tending to any common good: how generally and impartially he would give every man his due; his skill and knowledge, when rigour or extremity, or when remissness or moderation was in season; how he did abstain from all unchaste love of youths; his moderate condescending to other men's occasions as an ordinary man, neither absolutely requiring of his friends, that they should wait upon him at his ordinary meals, nor that they should of necessity accompany him in his journeys; and that whensoever any business upon some necessary occasions was to be put off and omitted before it could be ended, he was ever found when he went about it again, the same man that he was before. 

His accurate examination of things in consultations, and patient hearing of others. He would not hastily give over the search of the matter, as one easy to be satisfied with sudden notions and apprehensions. 

His care to preserve his friends; how neither at any time he would carry himself towards them with disdainful neglect, and grow weary of them; nor yet at any time be madly fond of them. 

His contented mind in all things, his cheerful countenance, his care to foresee things afar off, and to take order for the least, without any noise or clamour. 

Moreover how all acclamations and flattery were repressed by him: how carefully he observed all things necessary to the government, and kept an account of the common expenses, and how patiently he did abide that he was reprehended by some for this his strict and rigid kind of dealing. 

How he was neither a superstitious worshipper of the gods, nor an ambitious pleaser of men, or studious of popular applause; but sober in all things, and everywhere observant of that which was fitting; no affecter of novelties: in those things which conduced to his ease and convenience, (plenty whereof his fortune did afford him,) without pride and bragging, yet with all freedom and liberty: so that as he did freely enjoy them without any anxiety or affectation when they were present; so when absent, he found no want of them. 

Moreover, that he was never commended by any man, as either a learned acute man, or an obsequious officious man, or a fine orator; but as a ripe mature man, a perfect sound man; one that could not endure to be flattered; able to govern both himself and others. 

Moreover, how much he did honour all true philosophers, without upbraiding those that were not so; his sociableness, his gracious and delightful conversation, but never unto satiety; his care of his body within bounds and measure, not as one that desired to live long, or over-studious of neatness, and elegancy; and yet not as one that did not regard it: so that through his own care and providence, he seldom needed any inward physic, or outward applications: 

but especially how ingeniously he would yield to any that had obtained any peculiar faculty, as either eloquence, or the knowledge of the laws, or of ancient customs, or the like; and how he concurred with them, in his best care and endeavour that every one of them might in his kind, for that wherein he excelled, be regarded and esteemed: and although he did all things carefully after the ancient customs of his forefathers, yet even of this was he not desirous that men should take notice, that he did imitate ancient customs. 

Again, how he was not easily moved and tossed up and down, but loved to be constant, both in the same places and businesses; and how after his great fits of headache he would return fresh and vigorous to his wonted affairs. 

Again, that secrets he neither had many, nor often, and such only as concerned public matters: his discretion and moderation, in exhibiting of the public sights and shows for the pleasure and pastime of the people: in public buildings. congiaries, and the like. 

In all these things, having a respect unto men only as men, and to the equity of the things themselves, and not unto the glory that might follow. Never wont to use the baths at unseasonable hours; no builder; never curious, or solicitous, either about his meat, or about the workmanship, or colour of his clothes, or about anything that belonged to external beauty.

In all his conversation, far from all inhumanity, all boldness, and incivility, all greediness and impetuosity; never doing anything with such earnestness, and intention, that a man could say of him, that he did sweat about it: but contrariwise, all things distinctly, as at leisure; without trouble; orderly, soundly, and agreeably. 

A man might have applied that to him, which is recorded of Socrates, that he knew how to want, and to enjoy those things, in the want whereof, most men show themselves weak; and in the fruition, intemperate: but to hold out firm and constant, and to keep within the compass of true moderation and sobriety in either estate, is proper to a man, who hath a perfect and invincible soul; such as he showed himself in the sickness of Maximus.''',
    '''XIV. From the gods I received that I had good grandfathers, and parents, a good sister, good masters, good domestics, loving kinsmen, almost all that I have; and that I never through haste and rashness transgressed against any of them, notwithstanding that my disposition was such, as that such a thing (if occasion had been) might very well have been committed by me, but that It was the mercy of the gods, to prevent such a concurring of matters and occasions, as might make me to incur this blame. 

That I was not long brought up by the concubine of my father; that I preserved the flower of my youth. 

That I took not upon me to be a man before my time, but rather put it off longer than I needed. 

That I lived under the government of my lord and father, who would take away from me all pride and vainglory, and reduce me to that conceit and opinion that it was not impossible for a prince to live in the court without a troop of guards and followers, extraordinary apparel, such and such torches and statues, and other like particulars of state and magnificence; but that a man may reduce and contract himself almost to the state of a private man, and yet for all that not to become the more base and remiss in those public matters and affairs, wherein power and authority is requisite. 

That I have had such a brother, who by his own example might stir me up to think of myself; and by his respect and love, delight and please me. 

That I have got ingenuous children, and that they were not born distorted, nor with any other natural deformity.

That I was no great proficient in the study of rhetoric and poetry, and of other faculties, which perchance I might have dwelt upon, if I had found myself to go on in them with success. 

That I did by times prefer those, by whom I was brought up, to such places and dignities, which they seemed unto me most to desire; and that I did not put them off with hope and expectation, that (since that they were yet but young) I would do the same hereafter. 

That I ever knew Apollonius and Rusticus, and Maximus. 

That I have had occasion often and effectually to consider and meditate with myself, concerning that life which is according to nature, what the nature and manner of it is: so that as for the gods and such suggestions, helps and inspirations, as might be expected from them, nothing did hinder, but that I might have begun long before to live according to nature; or that even now that I was not yet partaker and in present possession of that life, that I myself (in that I did not observe those inward motions, and suggestions, yea and almost plain and apparent instructions and admonitions of the gods,) was the only cause of it. 

That my body in such a life, hath been able to hold out so long.

That I never had to do with Benedicta and Theodotus, yea and afterwards when I fell into some fits of love, I was soon cured. 

That having been often displeased with Rusticus, I never did him anything for which afterwards I had occasion to repent. 

That it being so that my mother was to die young, yet she lived with me all her latter years. 

That as often as I had a purpose to help and succour any that either were poor, or fallen into some present necessity, I never was answered by my officers that there was not ready money enough to do it; and that I myself never had occasion to require the like succour from any other. 

That I have such a wife, so obedient, so loving, so ingenuous. 

That I had choice of fit and able men, to whom I might commit the bringing up of my children.

That by dreams I have received help, as for other things, so in particular, how I might stay my casting of blood, and cure my dizziness, as that also that happened to thee in Cajeta, as unto Chryses when he prayed by the seashore. 

And when I did first apply myself to philosophy, that I did not fall into the hands of some sophists, or spent my time either in reading the manifold volumes of ordinary philosophers, nor in practising myself in the solution of arguments and fallacies, nor dwelt upon the studies of the meteors, and other natural curiosities. 

All these things without the assistance of the gods, and fortune, could not have been.''',
    '''XV. In the country of the Quadi at Granua, these. 
    
Betimes in the morning say to thyself, This day I shalt have to do with an idle curious man, with an unthankful man, a railer, a crafty, false, or an envious man; an unsociable uncharitable man. 

All these ill qualities have happened unto them, through ignorance of that which is truly good and truly bad. 

But I that understand the nature of that which is good, that it only is to be desired, and of that which is bad, that it only is truly odious and shameful: who know moreover, that this transgressor, whosoever he be, is my kinsman, not by the same blood and seed, but by participation of the same reason, and of the same divine particle; 

How can I either be hurt by any of those, since it is not in their power to make me incur anything that is truly reproachful? or angry, and ill affected towards him, who by nature is so near unto me? for we are all born to be fellow-workers, as the feet, the hands, and the eyelids; as the rows of the upper and under teeth: for such therefore to be in opposition, is against nature; and what is it to chafe at, and to be averse from, but to be in opposition?''',
    '''XVI. Whatsoever I am, is either flesh, or life, or that which we commonly call the mistress and overruling part of man; reason. 

Away with thy books, suffer not thy mind any more to be distracted, and carried to and fro; for it will not be; but as even now ready to die, think little of thy flesh: blood, bones, and a skin; a pretty piece of knit and twisted work, consisting of nerves, veins and arteries; think no more of it, than so. 

And as for thy life, consider what it is; a wind; not one constant wind neither, but every moment of an hour let out, and sucked in again. 

The third, is thy ruling part; and here consider; Thou art an old man; suffer not that excellent part to be brought in subjection, and to become slavish: suffer it not to be drawn up and down with unreasonable and unsociable lusts and motions, as it were with wires and nerves; suffer it not any more, either to repine at anything now present, or to fear and fly anything to come, which the destiny hath appointed thee.''',
    '''XVII. Whatsoever proceeds from the gods immediately, that any man will grant totally depends from their divine providence. 

As for those things that are commonly said to happen by fortune, even those must be conceived to have dependence from nature, or from that first and general connection, and concatenation of all those things, which more apparently by the divine providence are administered and brought to pass.

All things flow from thence: and whatsoever it is that is, is both necessary, and conducing to the whole (part of which thou art), and whatsoever it is that is requisite and necessary for the preservation of the general, must of necessity for every particular nature, be good and behoveful. 

And as for the whole, it is preserved, as by the perpetual mutation and conversion of the simple elements one into another, so also by the mutation, and alteration of things mixed and compounded.

Let these things suffice thee; let them be always unto thee, as thy general rules and precepts. 

As for thy thirst after books, away with it with all speed, that thou die not murmuring and complaining, but truly meek and well satisfied, and from thy heart thankful unto the gods.
'''
  ];
  static final book2 = [
    '''I. Remember how long thou hast already put off these things, and how often a certain day and hour as it were, having been set unto thee by the gods, thou hast neglected it. 

It is high time for thee to understand the true nature both of the world, whereof thou art a part; and of that Lord and Governor of the world, from whom, as a channel from the spring, thou thyself didst flow: 

and that there is but a certain limit of time appointed unto thee, which if thou shalt not make use of to calm and allay the many distempers of thy soul, it will pass away and thou with it, and never after return.'''
  ];
  static final book3 = [
    '''I. A man must not only consider how daily his life wasteth and decreaseth, but this also, that if he live long, he cannot be certain, whether his understanding shall continue so able and sufficient, for either discreet consideration, in matter of businesses; or for contemplation: it being the thing, whereon true knowledge of things both divine and human, doth depend. 

For if once he shall begin to dote, his respiration, nutrition, his imaginative, and appetitive, and other natural faculties, may still continue the same: he shall find no want of them. 

But how to make that right use of himself that he should, how to observe exactly in all things that which is right and just, how to redress and rectify all wrong, or sudden apprehensions and imaginations, and even of this particular, whether he should live any longer or no, to consider duly; for all such things, wherein the best strength and vigour of the mind is most requisite; his power and ability will be past and gone. 

Thou must hasten therefore; not only because thou art every day nearer unto death than other, but also because that intellective faculty in thee, whereby thou art enabled to know the true nature of things, and to order all thy actions by that knowledge, doth daily waste and decay: or, may fail thee before thou die.'''
  ];
  static final book4 = [
    '''I. That inward mistress part of man if it be in its own true natural temper, is towards all worldly chances and events ever so disposed and affected, that it will easily turn and apply itself to that which may be, and is within its own power to compass, when that cannot be which at first it intended. 

For it never doth absolutely addict and apply itself to any one object, but whatsoever it is that it doth now intend and prosecute, it doth prosecute it with exception and reservation; so that whatsoever it is that falls out contrary to its first intentions, even that afterwards it makes its proper object. 

Even as the fire when it prevails upon those things that are in his way; by which things indeed a little fire would have been quenched, but a great fire doth soon turn to its own nature, and so consume whatsoever comes in his way: yea by those very things it is made greater and greater.'''
  ];
  static final book5 = [
    '''I. In the morning when thou findest thyself unwilling to rise, consider with thyself presently, it is to go about a man's work that I am stirred up. 
 
Am I then yet unwilling to go about that, for which I myself was born and brought forth into this world? Or was I made for this, to lay me down, and make much of myself in a warm bed? 'O but this is pleasing.' 

And was it then for this that thou wert born, that thou mightest enjoy pleasure? Was it not in very truth for this, that thou mightest always be busy and in action? 

Seest thou not how all things in the world besides, how every tree md plant, how sparrows and ants, spiders and bees: how all in their kind are intent as it were orderly to perform whatsoever (towards the preservation of this orderly universe) naturally doth become and belong unto thin? 

And wilt not thou do that, which belongs unto a man to do? Wilt not thou run to do that, which thy nature doth require? 'But thou must have some rest.' Yes, thou must. Nature hath of that also, as well as of eating and drinking, allowed thee a certain stint. 

But thou guest beyond thy stint, and beyond that which would suffice, and in matter of action, there thou comest short of that which thou mayest. 

It must needs be therefore, that thou dost not love thyself, for if thou didst, thou wouldst also love thy nature, and that which thy nature doth propose unto herself as her end. 

Others, as many as take pleasure in their trade and profession, can even pine themselves at their works, and neglect their bodies and their food for it; and doest thou less honour thy nature, than an ordinary mechanic his trade; or a good dancer his art? than a covetous man his silver, and vainglorious man applause? 

These to whatsoever they take an affection, can be content to want their meat and sleep, to further that every one which he affects: and shall actions tending to the common good of human society, seem more vile unto thee, or worthy of less respect and intention?'''
  ];
  static final book6 = [
    '''I. The matter itself, of which the universe doth consist, is of itself very tractable and pliable. 

That rational essence that doth govern it, hath in itself no cause to do evil. 

It hath no evil in itself; neither can it do anything that is evil: neither can anything be hurt by it. 

And all things are done and determined according to its will and prescript.'''
  ];
  static final book7 = [
    '''I. What is wickedness? 
    
    It is that which many time and often thou hast already seen and known in the world. 

And so oft as anything doth happen that might otherwise trouble thee, let this memento presently come to thy mind, that it is that which thou hast already often Seen and known.

Generally, above and below, thou shalt find but the same things. The very same things whereof ancient stories, middle age stories, and fresh stories are full whereof towns are full, and houses full. 

There is nothing that is new. All things that are, are both usual and of little continuance.'''
  ];
  static final book8 = [
    '''I. This also, among other things, may serve to keep thee from vainglory; if thou shalt consider, that thou art now altogether incapable of the commendation of one, who all his life long, or from his youth at least, hath lived a philosopher's life. 

For both unto others, and to thyself especially, it is well known, that thou hast done many things contrary to that perfection of life. 

Thou hast therefore been confounded in thy course, and henceforth it will be hard for thee to recover the title and credit of a philosopher. 

And to it also is thy calling and profession repugnant. 

If therefore thou dost truly understand, what it is that is of moment indeed; as for thy fame and credit, take no thought or care for that: let it suffice thee if all the rest of thy life, be it more or less, thou shalt live as thy nature requireth, or according to the true and natural end of thy making. 

Take pains therefore to know what it is that thy nature requireth, and let nothing else distract thee. 

Thou hast already had sufficient experience, that of those many things that hitherto thou hast erred and wandered about, thou couldst not find happiness in any of them. Not in syllogisms, and logical subtilties, not in wealth, not in honour and reputation, not in pleasure. In none of all these. 

Wherein then is it to be found? In the practice of those things, which the nature of man, as he is a man, doth require. How then shall he do those things? if his dogmata, or moral tenets and opinions (from which all motions and actions do proceed), be right and true. 

Which be those dogmata? Those that concern that which is good or evil, as that there is nothing truly good and beneficial unto man, but that which makes him just, temperate, courageous, liberal; and that there is nothing truly evil and hurtful unto man, but that which causeth the contrary effects.'''
  ];
  static final book9 = [
    '''
  I. He that is unjust, is also impious. For the nature of the universe, having made all reasonable creatures one for another, to the end that they should do one another good; more or less according to the several persons and occasions but in nowise hurt one another: it is manifest that he that doth transgress against this her will, is guilty of impiety towards the most ancient and venerable of all the deities. 

For the nature of the universe, is the nature the common parent of all, and therefore piously to be observed of all things that are, and that which now is, to whatsoever first was, and gave it its being, hath relation of blood and kindred. 

She is also called truth and is the first cause of all truths. He therefore that willingly and wittingly doth lie, is impious in that he doth receive, and so commit injustice: but he that against his will, in that he disagreeth from the nature of the universe, and in that striving with the nature of the world he doth in his particular, violate the general order of the world. 

For he doth no better than strive and war against it, who contrary to his own nature applieth himself to that which is contrary to truth. 

For nature had before furnished him with instincts and opportunities sufficient for the attainment of it; which he having hitherto neglected, is not now able to discern that which is false from that which is true. 

He also that pursues after pleasures, as that which is truly good and flies from pains, as that which is truly evil: is impious. 

For such a one must of necessity oftentimes accuse that common nature, as distributing many things both unto the evil, and unto the good, not according to the deserts of either: as unto the bad oftentimes pleasures, and the causes of pleasures; so unto the good, pains, and the occasions of pains.

Again, he that feareth pains and crosses in this world, feareth some of those things which some time or other must needs happen in the world. And that we have already showed to be impious. 

And he that pursueth after pleasures, will not spare, to compass his desires, to do that which is unjust, and that is manifestly impious. 

Now those things which unto nature are equally indifferent (for she had not created both, both pain and pleasure, if both had not been unto her equally indifferent): they that will live according to nature, must in those things (as being of the same mind and disposition that she is) be as equally indifferent.

Whosoever therefore in either matter of pleasure and pain; death and life; honour and dishonour, (which things nature in the administration of the world, indifferently doth make use of), is not as indifferent, it is apparent that he is impious. 

When I say that common nature doth indifferently make use of them, my meaning is, that they happen indifferently in the ordinary course of things, which by a necessary consequence, whether as principal or accessory, come to pass in the world, according to that first and ancient deliberation of Providence, by which she from some certain beginning, did resolve upon the creation of such a world, conceiving then in her womb as it were some certain rational generative seeds and faculties of things future, whether subjects, changes, successions; both such and such, and just so many.'''
  ];
  static final book10 = [
    '''I. O my soul, the time I trust will be, when thou shalt be good, simple, single, more open and visible, than that body by which it is enclosed.

Thou wilt one day be sensible of their happiness, whose end is love, and their affections dead to all worldly things.

Thou shalt one day be full, and in want of no external thing: not seeking pleasure from anything, either living or insensible, that this world can afford; neither wanting time for the continuation of thy pleasure, nor place and opportunity, nor the favour either of the weather or of men. 

When thou shalt have content in thy present estate, and all things present shall add to thy content: when thou shalt persuade thyself, that thou hast all things; all for thy good, and all by the providence of the Gods: and of things future also shalt be as confident, that all will do well, as tending to the maintenance and preservation in some sort, of his perfect welfare and happiness, who is perfection of life, of goodness, and beauty; who begets all things, and containeth all things in himself, and in himself doth recollect all things from all places that are dissolved, that of them he may beget others again like unto them. 

Such one day shall be thy disposition, that thou shalt be able, both in regard of the Gods, and in regard of men, so to fit and order thy conversation, as neither to complain of them at any time, for anything that they do; nor to do anything thyself, for which thou mayest justly be condemned.'''
  ];
  static final book11 = [
    '''I. The natural properties, and privileges of a reasonable soul are: 
    
That she seeth herself; that she can order, and compose herself: that she makes herself as she will herself: that she reaps her own fruits whatsoever, whereas plants, trees, unreasonable creatures, what fruit soever (be it either fruit properly, or analogically only) they bear, they bear them unto others, and not to themselves. 

Again; whensoever, and wheresoever, sooner or later, her life doth end, she hath her own end nevertheless. For it is not with her, as with dancers and players, who if they be interrupted in any part of their action, the whole action must needs be imperfect: but she in what part of time or action soever she be surprised, can make that which she hath in her hand whatsoever it be, complete and full, so that she may depart with that comfort, 'I have lived; neither want I anything of that which properly did belong unto me.' 

Again, she compasseth the whole world, and penetrateth into the vanity, and mere outside (wanting substance and solidity) of it, and stretcheth herself unto the infiniteness of eternity; and the revolution or restoration of all things after a certain period of time, to the same state and place as before, she fetcheth about, and doth comprehend in herself; and considers withal, and sees clearly this, that neither they that shall follow us, shall see any new thing, that we have not seen, nor they that went before, anything more than we: but that he that is once come to forty (if he have any wit at all) can in a manner (for that they are all of one kind) see all things, both past and future. 

As proper is it, and natural to the soul of man to love her neighbour, to be true and modest; and to regard nothing so much as herself: which is also the property of the law: whereby by the way it appears, that sound reason and justice comes all to one, and therefore that justice is the chief thing, that reasonable creatures ought to propose unto themselves as their end.'''
  ];
  static final book12 = [
    '''I. Whatsoever thou doest hereafter aspire unto, thou mayest even now enjoy and possess, if thou doest not envy thyself thine own happiness.
 
And that will be, if thou shalt forget all that is past, and for the future, refer thyself wholly to the Divine Providence, and shalt bend and apply all thy present thoughts and intentions to holiness and righteousness. 
 
To holiness, in accepting willingly whatsoever is sent by the Divine Providence, as being that which the nature of the universe hath appointed unto thee, which also hath appointed thee for that, whatsoever it be. 
 
To righteousness, in speaking the truth freely, and without ambiguity; and in doing all things justly and discreetly. 
 
Now in this good course, let not other men's either wickedness, or opinion, or voice hinder thee: no, nor the sense of this thy pampered mass of flesh: for let that which suffers, look to itself. 
 
If therefore whensoever the time of thy departing shall come, thou shalt readily leave all things,and shalt respect thy mind only, and that divine part of thine, and this shall be thine only fear, not that some time or other thou shalt cease to live, but thou shalt never begin to live according to nature: 
 
then shalt thou be a man indeed, worthy of that world, from which thou hadst thy beginning; then shalt thou cease to be a stranger in thy country, and to wonder at those things that happen daily, as things strange and unexpected, and anxiously to depend of divers things that are not in thy power.''',
    '''II. God beholds our minds and understandings, bare and naked from these material vessels, and outsides, and all earthly dross.
    
For with His simple and pure understanding, He pierceth into our inmost and purest parts, which from His, as it were by a water pipe and channel, first flowed and issued. 
 
This if thou also shalt use to do, thou shalt rid thyself of that manifold luggage, wherewith thou art round about encumbered. 
 
For he that does regard neither his body, nor his clothing, or his dwelling, nor any such external furniture, must needs gain unto himself great rest and ease. 
 
Three things there be in all, which thou doest consist of; thy body, thy life, and thy mind. 
 
Of these the two former, are so far forth thine, as that thou art bound to take care for them. But the third alone is that which is properly thine. 

If then thou shalt separate from thyself, that is from thy mind, whatsoever other men either do or say, or whatsoever thou thyself hast heretofore either done or said; and all troublesome thoughts concerning the future, and whatsoever, (as either belonging to thy body or life:) is without the jurisdiction of thine own will, and whatsoever in the ordinary course of human chances and accidents doth happen unto thee; so that thy mind (keeping herself loose and free from all outward coincidental entanglements; always in a readiness to depart:) shall live by herself, and to herself, doing that which is just, accepting whatsoever doth happen, and speaking the truth always; 
 
if, I say, thou shalt separate from thy mind, whatsoever by sympathy might adhere unto it, and all time both past and future, and shalt make thyself in all points and respects, like unto Empedocles his allegorical sphere, 'all round and circular,' &c., and shalt think of no longer life than that which is now present: then shalt thou be truly able to pass the remainder of thy days without troubles and distractions; nobly and generously disposed, and in good favour and correspondency, with that spirit which is within thee.''',
    '''III. I have often wondered how it should come to pass, that every man loving himself best, should more regard other men's opinions concerning himself than his own. 

For if any God or grave master standing by, should command any of us to think nothing by himself but what he should presently speak out; no man were able to endure it, though but for one day. 

Thus do we fear more what our neighbours will think of us, than what we ourselves.''',
    '''IV. how come it to pass that the Gods having ordered all other things so well and so lovingly, should be overseen in this one only thing, that whereas then hath been some very good men that have made many covenants as it were with God and by many holy actions and outward services contracted a kind of familiarity with Him; that these men when once they are dead, should never be restored to life, but be extinct for ever. 

But this thou mayest be sure of, that this (if it be so indeed) would never have been so ordered by the Gods, had it been fit otherwise. 

For certainly it was possible, had it been more just so and had it been according to nature, the nature of the universe would easily have borne it. 

But now because it is not so, (if so be that it be not so indeed) be therefore confident that it was not fit it should be so for thou seest thyself, that now seeking after this matter, how freely thou doest argue and contest with God. 

But were not the Gods both just and good in the highest degree, thou durst not thus reason with them. 

Now if just and good, it could not be that in the creation of the world, they should either unjustly or unreasonably oversee anything.''',
    '''V. Use thyself even unto those things that thou doest at first despair of. For the left hand we see, which for the most part lieth idle because not used; yet doth it hold the bridle with more strength than the right, because it hath been used unto it.''',
    '''VI. Let these be the objects of thy ordinary meditation: to consider, what manner of men both for soul and body we ought to be, whensoever death shall surprise us: the shortness of this our mortal life: the immense vastness of the time that hath been before, and will he after us: the frailty of every worldly material object: all these things to consider, and behold clearly in themselves, all disguisement of external outside being removed and taken away. 

Again, to consider the efficient causes of all things: the proper ends and references of all actions: what pain is in itself; what pleasure, what death: what fame or honour, how every man is the true and proper ground of his own rest and tranquillity, and that no man can truly be hindered by any other: that all is but conceit and opinion. 

As for the use of thy dogmata, thou must carry thyself in the practice of them, rather like unto a pancratiastes, or one that at the same time both fights and wrestles with hands and feet, than a gladiator. 

For this, if he lose his sword that he fights with, he is gone: whereas the other hath still his hand free, which he may easily turn and manage at his will.''',
    '''VII. All worldly things thou must behold and consider, dividing them into matter, form, and reference, or their proper end.''',
    '''VIII. How happy is man in this his power that hath been granted unto him: that he needs not do anything but what God shall approve, and that he may embrace contentedly, whatsoever God doth send unto him?''',
    '''IX. Whatsoever doth happen in the ordinary course and consequence of natural events, neither the Gods, (for it is not possible, that they either wittingly or unwittingly should do anything amiss) nor men, (for it is through ignorance, and therefore against their wills that they do anything amiss) must be accused. 

None then must be accused.''',
    '''X. How ridiculous and strange is he, that wonders at anything that happens in this life in the ordinary course of nature!''',
    '''XI. Either fate, (and that either an absolute necessity, and unavoidable decree; or a placable and flexible Providence) or all is a mere casual confusion, void of all order and government. 

If an absolute and unavoidable necessity, why doest thou resist? 

If a placable and exorable Providence, make thyself worthy of the divine help and assistance. 

If all be a mere confusion without any moderator, or governor, then hast thou reason to congratulate thyself; that in such a general flood of confusion thou thyself hast obtained a reasonable faculty, whereby thou mayest govern thine own life and actions. 

But if thou beest carried away with the flood, it must be thy body perchance, or thy life, or some other thing that belongs unto them that is carried away: thy mind and understanding cannot. 

Or should it be so, that the light of a candle indeed is still bright and lightsome until it be put out: and should truth, and righteousness, and temperance cease to shine in thee whilest thou thyself hast any being?''',
    '''XII. At the conceit and apprehension that such and such a one hath sinned, thus reason with thyself; 

What do I know whether this be a sin indeed, as it seems to be? 

But if it be, what do I know but that he himself hath already condemned himself for it? 

And that is all one as if a man should scratch and tear his own face, an object of compassion rather than of anger. 

Again, that he that would not have a vicious man to sin, is like unto him that would not have moisture in the fig, nor children to welp nor a horse to neigh, nor anything else that in the course of nature is necessary. 

For what shall he do that hath such an habit? If thou therefore beest powerful and eloquent, remedy it if thou canst.''',
    '''XIII. If it be not fitting, do it not. If it be not true, speak it not. Ever maintain thine own purpose and resolution free from all compulsion and necessity.''',
    '''XIV. Of everything that presents itself unto thee, to consider what the true nature of it is, and to unfold it, as it were, by dividing it into that which is formal: that which is material: the true use or end of it, and the just time that it is appointed to last.''',
    '''XV. It is high time for thee, to understand that there is somewhat in thee, better and more divine than either thy passions, or thy sensual appetites and affections. 

What is now the object of my mind, is it fear, or suspicion, or lust, or any such thing? 

To do nothing rashly without some certain end; let that be thy first care. 

The next, to have no other end than the common good. For, alas! yet a little while, and thou art no more: no more will any, either of those things that now thou seest, or of those men that now are living, be any more. 

For all things are by nature appointed soon to be changed, turned, and corrupted, that other things might succeed in their room.''',
    '''XVI. Remember that all is but opinion, and all opinion depends of the mind. 
    Take thine opinion away, and then as a ship that hath stricken in within the arms and mouth of the harbour, a present calm; all things safe and steady: a bay, not capable of any storms and tempests: as the poet hath it.''',
    '''XVII. No operation whatsoever it he, ceasing for a while, can be truly
said to suffer any evil, because it is at an end. 

Neither can he that is the author of that operation; for this very respect, because his operation is at an end, be said to suffer any evil. 

Likewise then, neither can the whole body of all our actions (which is our life) if in time it cease, be said to suffer any evil for this very reason, because it is at an end; nor he truly be said to have been ill affected, that did put a period to this series of actions. 

Now this time or certain period, depends of the determination of nature: sometimes of particular nature, as when a man dieth old; but of nature in general, however; the parts whereof thus changing one after another, the whole world still continues fresh and new. 

Now that is ever best and most seasonable, which is for the good of the whole. 

Thus it appears that death of itself can neither be hurtful to any in particular, because it is not a shameful thing (for neither is it a thing that depends of our own will, nor of itself contrary to the common good) and generally, as it is both expedient and seasonable to the whole, that in that respect it must needs be good. 

It is that also, which is brought unto us by the order and appointment of the Divine Providence; so that he whose will and mind in these things runs along with the Divine ordinance, and by this concurrence of his will and mind with the Divine Providence, is led and driven along, as it were by God Himself; may truly be termed and esteemed the *OEo~p7poc*, or divinely led and inspired.''',
    '''XVIII. These three things thou must have always in a readiness: first concerning thine own actions, whether thou doest nothing either idly, or otherwise, than justice and equity do require: and concerning those things that happen unto thee externally, that either they happen unto thee by chance, or by providence; of which two to accuse either, is equally against reason. 

Secondly, what like unto our bodies are whilest yet rude and imperfect, until they be animated: and from their animation, until their expiration: of what things they are compounded, and into what things they shall be dissolved. 

Thirdly, how vain all things will appear unto thee when, from on high as it were, looking down thou shalt contemplate all things upon earth, and the wonderful mutability, that they are subject unto: considering withal, the infinite both greatness and variety of things aerial and things celestial that are round about it. 

And that as often as thou shalt behold them, thou shalt still see the same: as the same things, so the same shortness of continuance of all those things. And, behold, these be the things that we are so proud and puffed up for.''',
    '''XIX. Cast away from thee opinion, and thou art safe. And what is it that hinders thee from casting of it away? 
    
    When thou art grieved at anything, hast thou forgotten that all things happen according to the nature of the universe; and that him only it concerns, who is in fault; and moreover, that what is now done, is that which from ever hath been done in the world, and will ever be done, and is now done everywhere: how nearly all men are allied one to another by a kindred not of blood, nor of seed, but of the same mind. 

Thou hast also forgotten that every man's mind partakes of the Deity, and issueth from thence; and that no man can properly call anything his own, no not his son, nor his body, nor his life; for that they all proceed from that One who is the giver of all things: that all things are but opinion; that no man lives properly, but that very instant of time which is now present. 

And therefore that no man whensoever he dieth can properly be said to lose any more, than an instant of time.''',
    '''XX. Let thy thoughts ever run upon them, who once for some one thing or other, were moved with extraordinary indignation; who were once in the highest pitch of either honour, or calamity; or mutual hatred and enmity; or of any other fortune or condition whatsoever. 

Then consider what's now become of all those things. All is turned to smoke; all to ashes, and a mere fable; and perchance not so much as a fable. 

As also whatsoever is of this nature, as Fabius Catulinus in the field; Lucius Lupus, and Stertinius, at Baiae Tiberius at Caprem: and Velius Rufus, and all such examples of vehement prosecution in worldly matters; let these also run in thy mind at the same time; and how vile every object of such earnest and vehement prosecution is; and how much more agreeable to true philosophy it is, for a man to carry himself in every matter that offers itself; justly, and moderately, as one that followeth the Gods with all simplicity. 

For, for a man to be proud and high conceited, that he is not proud and high conceited, is of all kind of pride and presumption, the most intolerable.''',
    '''XXII. Herein doth consist happiness of life, for a man to know thoroughly the true nature of everything; what is the matter, and what is the form of it: with all his heart and soul, ever to do that which is just, and to speak the truth. What then remaineth but to enjoy thy life in a course and coherence of good actions, one upon another immediately succeeding, and never interrupted, though for never so little a while?''',
    '''XXIII. There is but one light of the sun, though it be intercepted by walls and mountains, and other thousand objects. 

There is but one common substance of the whole world, though it be concluded and restrained into several different bodies, in number infinite. 

There is but one common soul, though divided into innumerable particular essences and natures.

So is there but one common intellectual soul, though it seem to be divided. 

And as for all other parts of those generals which we have mentioned, as either sensitive souls or subjects, these of themselves (as naturally irrational) have no common mutual reference one unto another, though many of them contain a mind, or reasonable faculty in them, whereby they are ruled and governed. 

But of every reasonable mind, this the particular nature, that it hath reference to whatsoever is of her own kind, and desireth to be united: neither can this common affection, or mutual unity and correspondency, be here intercepted or divided, or confined to particulars as those other common things are.''',
    '''XXIV. What doest thou desire? To live long. 
    
What? To enjoy the operations of a sensitive soul; or of the appetitive faculty? or wouldst thou grow, and then decrease again? Wouldst thou long be able to talk, to think and reason with thyself? 

Which of all these seems unto thee a worthy object of thy desire? 

Now if of all these thou doest find that they be but little worth in themselves, proceed on unto the last, which is, in all things to follow God and reason. 

But for a man to grieve that by death he shall be deprived of any of these things, is both against God and reason.''',
    '''XXV. What a small portion of vast and infinite eternity it is, that is allowed unto every one of us, and how soon it vanisheth into the general age of the world: of the common substance, and of the common soul also what a small portion is allotted unto us: and in what a little clod of the whole earth (as it were) it is that thou doest crawl. 

After thou shalt rightly have considered these things with thyself; fancy not anything else in the world any more to be of any weight and moment but this, to do that only which thine own nature doth require; and to conform thyself to that which the common nature doth afford.''',
    '''XXVI. What is the present estate of my understanding? For herein lieth all indeed. 

As for all other things, they are without the compass of mine own will: and if without the compass of my will, then are they as dead things unto me, and as it were mere smoke.''',
    '''XXVII. To stir up a man to the contempt of death this among other things, is of good power and efficacy, that even they who esteemed pleasure to be happiness, and pain misery, did nevertheless many of them contemn death as much as any. 

And can death be terrible to him, to whom that only seems good, which in the ordinary course of nature is seasonable? to him, to whom, whether his actions be many or few, so they be all good, is all one; and who whether he behold the things of the world being always the same either for many years, or for few years only, is altogether indifferent? 

O man! as a citizen thou hast lived, and conversed in this great city the world. Whether just for so many years, or no, what is it unto thee? 

Thou hast lived (thou mayest be sure) as long as the laws and orders of the city required; which may be the common comfort of all. 

Why then should it be grievous unto thee, if (not a tyrant, nor an unjust judge, but) the same nature that brought
thee in, doth now send thee out of the world? 

As if the praetor should fairly dismiss him from the stage, whom he had taken in to act a while.

Oh, but the play is not yet at an end, there are but three acts yet acted of it? 

Thou hast well said: for in matter of life, three acts is the whole play. 

Now to set a certain time to every man's acting, belongs unto him only, who as first he was of thy composition, so is now the cause of thy dissolution. 

As for thyself; thou hast to do with neither. Go thy ways then well pleased and contented: for so is He that dismisseth thee.'''
  ];

  // We represent the text as a list of books.
  static final books = [
    book1,
    book2,
    book3,
    book4,
    book5,
    book6,
    book7,
    book8,
    book9,
    book10,
    book11,
    book12
  ];

  // We assume that there is always at least one book in the list of books and at least one section in each book with a text.

  // Checks if the book with given book number exists.
  static bool existBook(int bookNr) {
    if (bookNr < 0 || bookNr > books.length - 1) {
      return false;
    } else {
      return true;
    }
  }

  // Checks if the section with given book and section numbers exists.
  static bool existBookSection(int bookNr, int sectionNr) {
    if (!existBook(bookNr)) {
      return false;
    } else {
      var selectedBook = books[bookNr];
      if (sectionNr < 0 || sectionNr > selectedBook.length - 1) {
        return false;
      } else {
        return true;
      }
    }
  }

  // Returns the length of a book, in the number of sections.
  static int bookLength(int bookNr) {
    if (!existBook(bookNr)) {
      return 0;
    } else {
      var selectedBook = books[bookNr];
      return selectedBook.length;
    }
  }

  // Returns the search result for a given book and section number.
  static BookSectionSearchResult getText(int bookNr, int sectionNr) {
    if (!existBookSection(bookNr, sectionNr)) {
      return NoSuchBookSection();
    } else {
      var bst = new BookSectionText();
      bst.bookNr = bookNr;
      bst.sectionNr = sectionNr;
      bst.text = books[bookNr][sectionNr];
      return bst;
    }
  }

  // Returns the first section.
  static BookSectionSearchResult getFirst() {
    var selectedBook = books[0];
    if (selectedBook == null) {
      return NoSuchBookSection();
    }
    var selectedSection = selectedBook[0];
    if (selectedSection == null) {
      return NoSuchBookSection();
    } else {
      var bst = new BookSectionText();
      bst.bookNr = 0;
      bst.sectionNr = 0;
      bst.text = selectedSection;
      return bst;
    }
  }

  // Returns the last section.
  static BookSectionSearchResult getLast() {
    var selectedBook = books.last;
    if (selectedBook == null) {
      return NoSuchBookSection();
    }
    var selectedSection = selectedBook.last;
    if (selectedSection == null) {
      return NoSuchBookSection();
    } else {
      var bst = new BookSectionText();
      bst.bookNr = Meditations.books.length - 1;
      bst.sectionNr = Meditations.books.last.length - 1;
      bst.text = selectedSection;
      return bst;
    }
  }

  // Given a book- and a section number, gets the next section.
  static BookSectionSearchResult getNextSection(int bookNr, int sectionNr) {
    //Get the next section in the current book
    var nextSection = getText(bookNr, sectionNr + 1);
    //If it exits return it
    if (!(nextSection is NoSuchBookSection)) {
      return nextSection;
    } else {
      //Otherwise get the first section of the next book
      return getText(bookNr + 1, 0);
    }
  }

  // Given a book- and a section number, gets the previous section.
  static BookSectionSearchResult getPreviousSection(int bookNr, int sectionNr) {
    //Get the previous section in the current book
    var previousSection = getText(bookNr, sectionNr - 1);
    //If it exits return it
    if (!(previousSection is NoSuchBookSection)) {
      return previousSection;
    } else {
      //Otherwise get the last section of the previous book
      var previousBookNr = bookNr - 1;
      return getText(previousBookNr, bookLength(previousBookNr) - 1);
    }
  }
}
