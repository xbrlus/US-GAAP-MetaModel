Title: XBRL Traits and Classes using the Link Role Registry
Version: 1.0
Type: REQ
Editor: Campbell Pryde, XBRL US <campbell.pryde@xbrl.us>
Contributor: Mark Goodhand, CoreFiling <mrg@corefiling.com>
            Herm Fischer, Mark V Systems <fischer@markv.com>
			Paul Warren, XBRL International <pdw@xbrl.com>

# Introduction

The trait and class links allow the assignment of semantic meaning to concepts. 
These link roles allow the assignment of traits to concepts and the ability to capture semantic meaning relative to related concepts. 

These relationships support the automation of normalization routines, 
allows the building of business rules without defining lists of concepts, 
allows improved search for concepts and provides additional support for machine learning.

The concept trait relationship defines the relationship between a source duration trait domain member and a target concept. 
Trait concepts are abstract concepts with a domain item type. The
trait-concept relationship describes the qualities or properties of a target concept. The source concept in a trait concept relationship represents a single trait such as Operating, Financing, Investing, Current, Noncurrent, Estimated Accrual, Continuing, Discontinued etc. 
The arc between the trait and the target concept allows specific accounting or non-accounting traits to be associated with a target concept using the definition linkbase. The link allows the attributes of a concept to be explicitly stated rather than being included as adjectives in the concepts name or label. 


Traits assigned to a concept are global across the entire DTS. A concept used in any context will have the traits defined by the trait-concept relationship.

Traits work in combination with the class-subclass relationship. The class subclass relationship indicates the relationship between a source class concept and a target subclass concept. 
Class-subclass relationships describe that the target concept has the same traits of the class concept with further qualifiers. 
All the traits of the class source concept are also applicable to the target subclass concept. The traits of the class are inherited by the subclass and all subsequent descendants. The class-subclass relationship supports multiple inheritance.  This means a concept can be a subclass of two different class parents.

# Assignment of Traits

Trait types are defined as a trait data-type. The trait type is an abstract element. The trait type is linked to a domain of possible trait values. This uses the arc trait-domain. The domain allows the definition of all the possible trait values, such as current or noncurrent.

[assignment-of-traits]: images/define-traits.png "Defining Traits"

The trait of current is defined as a domain member type. It is then associated with concept Cash using the trait-concept arc. The Current Member can be used as a trait but could also be used as a dimension member to define a disaggregation of values by that attribute in a hypercube. Unlike the dimension specification, the trait concept relationship applies to all link roles, not just the one it is defined in.

## Assignment of Traits by Sub Class

Any target subclass of a source class concept with a trait-concept will inherit the traits of the parent class.

For example if concept "Cash" is the target of a trait-concept arc with a source concept of "Current", 
then the subclass of the "Cash" concept "Cash In Bank" would also inherit the "Current" trait.

Inheritance applies across all networks in the DTS. In the example above if the class-subclass 
relationship is in a different network than the trait-concept relationship then "Cash In Bank" would still inherit the "Current" trait. 

Figure 2 below shows how the concept "Commercial Paper" would have both the traits of:
* being recorded at carrying value; and
* being current.

The concept "Commercial Paper" would inherit both of these traits from its two ancestors even though the trait was not assigned to it directly.

[inherit-traits]: images/trait-class.png "Inheriting Traits using a Subclass"

A concept can be subclass of multiple classes. This means a single concept can have 
more than one parent. In these cases the taxonomy designed must be careful to ensure 
that classes do not have contradictory traits.

## Restrictions on the Assignment of Traits and Classes

Contradictory traits cannot be assigned to a given concept.  In Figure 1, the concept Cash 
cannot have two traits that appear on the same domain. Cash for example cannot have a trait 
of Current and NonCurrent.  It is possible that a domain connected with the trait-domain 
has nested members within that domain. In these cases a concept assigned a trait from that 
domain cannot have more than 1 trait from that domain. 

The class-subclass arc can be used in conjunction with the trait-concept arcrole. 
Inheritance of traits using the class-subclass relationship applies across all networks in the DTS. 
This means the class-subclass relationship cannot be defined between two concepts with conflicting concept properties or traits.

For example a source instant concept cannot link to a target duration concept, a source debit 
balance concept cannot link to a credit balance concept. The target concept must have the same 
data-type or a specialization of the source class concept datatype. For example a source concept 
with a datatype of decimal can link to target concept with a datatype of integer, but cannot 
link to a target concept with a datatype of string.

This logic also applies to attributes that are derived from a trait. A concept with a 
trait of current cannot have a subclass with a trait of non-current.

In figure 3 a concept is assigned a trait of recorded at Historical Cost and its 
subclass is assigned a trait of Recorded at Carrying Value.

[conflicting-traits]: images/conflicting-traits.png "Conflicting Traits"

These two traits are distinct as defined by the relationships in figure 4.

[trait-domain]: images/trait-domain.png "Trait Domain for Recorded Value"

The class subclass relationship between the two concepts cannot be defined because they have contradictory traits. 
To define the subclass the Recorded at carrying value trait would have to be removed, or the class-subclass relationship 
would have to be defined at a higher level as shown in figure 5.

[nonconflicting-traits]: images/non-conflicting-traits.png "Nonconflicting Traits"

A trait concept cannot be the source of a class-subclass arc. This would result in the subclass 
being a duplicate of the class as trait concepts only have one trait. A trait concept cannot 
be the target of a class-subclass arc or a trait-concept arc. This would result in the subclass 
getting multiple traits and trait concepts can only have one trait.

## Traits, Classes and Extended Link Roles

 Trait datatypes are associated with a domain. The trait-domain relationship although 
 defined in one link role applies to all link roles. Because traits and classes have 
 to be consistent across the dts they can all be defined in a single link role. 

Different trait domains cannot be defined in different extended link roles. The domain 
that applies to the trait is the domain where the trait-domain relationship is defined. 
The same trait-domain relationship cannot be defined in separate link roles if the domains 
or the contents of the domain are different. This is similar to the way that different 
dimension-defaults cannot be defined for the same axis.

For this reason the trait-domain relationship can only exist once for a given trait datatype in the dts.

Classes and subclasses cannot be inconsistent across extended link roles.Because a class is a 
method of assigning traits to a concept and concepts are the same across extended link roles, 
the class and subclass relationships must also be consistent across extended link roles. 
This means inconsistencies in traits and classes cannot exist across extended link roles.

# Interaction with Other Arc Roles

The class-subclass and trait-concept arc roles are independent of the summation-item, 
general-special, wider-narrower and essence-alias arc roles. A class-subclass relationship 
does not imply a summation exists between two concepts. The use of a general-special arc 
does not imply inheritance of a trait to the specialized concept of the general special relationship. 
The use of the essence-alias arc does not imply the inheritance of a trait to alias concept on the essence-alias arc.


{{include ip-policy.md}}

# Document history {.appendix}

Date|Author|Details
----|------|-------
14 December 2021|Campbell Pryde|First published version