<!--
@Author: Thomas Scholtz <thomas>
@Date:   2017-03-07T22:24:14+02:00
@Email:  thomas@quantum-sicarius.za.net
@Last modified by:   thomas
@Last modified time: 2017-03-07T22:25:22+02:00
@License: Attribution-NonCommercial-ShareAlike 4.0 International
-->

# XML
XML is a markup language designed to store and transport data. It is supposed to be both human readable and machine readable.
Unlike HTML, XML does not specify how to display or to format data, it just carries it.
Distinctions are made between the content and the markup. In short, content could be anything, markup is defined.

# X in Y minutes
```xml
<!-- This is a comment. It must not contain two consecutive hyphens (-). -->
<!-- Comments can span
  multiple lines -->

<!-- Elements -->
<!-- An element is a basic XML component. There are two types, empty: -->
<element1 attribute="value" /> <!-- Empty elements do not hold any content -->
<!-- and non-empty: -->
<element2 attribute="value">Content</element2>
<!-- Element names may only contain alphabets and numbers. -->

<empty /> <!-- An element either consists an empty element tag… -->
<!-- …which does not hold any content and is pure markup. -->

<notempty> <!-- Or, it consists of a start tag… -->
  <!-- …some content… -->
</notempty> <!-- and an end tag. -->

<!-- Element names are case sensitive. -->
<element />
<!-- is not the same as -->
<eLEMENT />

<!-- Attributes -->
<!-- An attribute is a key-value pair and exists within an element. -->
<element attribute="value" another="anotherValue" many="space-separated list" />
<!-- An attribute may appear only once in an element. It holds just one value.
  Common workarounds to this involve the use of space-separated lists. -->

<!-- Nesting elements -->
<!-- An element's content may include other elements: -->
<parent>
  <child>Text</child>
  <emptysibling />
</parent>
<!-- Standard tree nomenclature is followed. Each element being called a node.
  An ancestor a level up is the parent, descendants a level down are children.
  Elements within the same parent element are siblings. -->

<!-- XML preserves whitespace. -->
<child>
  Text
</child>
<!-- is not the same as -->
<child>Text</child>
```

# References
https://learnxinyminutes.com/docs/xml/
