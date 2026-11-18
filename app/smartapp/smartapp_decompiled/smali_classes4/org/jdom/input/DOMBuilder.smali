.class public Lorg/jdom/input/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DOMBuilder.java,v $ $Revision: 1.60 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"


# instance fields
.field private adapterClass:Ljava/lang/String;

.field private factory:Lorg/jdom/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    .line 106
    iput-object p1, p0, Lorg/jdom/input/DOMBuilder;->adapterClass:Ljava/lang/String;

    return-void
.end method

.method private buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V
    .locals 10

    .line 166
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_b

    .line 327
    :pswitch_1
    check-cast p1, Lorg/w3c/dom/DocumentType;

    .line 328
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object p3

    .line 329
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object p4

    .line 330
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/jdom/JDOMFactory;->docType(Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object p1

    .line 333
    invoke-virtual {p1, p3}, Lorg/jdom/DocType;->setPublicID(Ljava/lang/String;)Lorg/jdom/DocType;

    .line 334
    invoke-virtual {p1, p4}, Lorg/jdom/DocType;->setSystemID(Ljava/lang/String;)Lorg/jdom/DocType;

    .line 335
    invoke-virtual {p1, v0}, Lorg/jdom/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 337
    iget-object p3, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p3, p2, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_b

    .line 168
    :pswitch_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p4

    :goto_0
    if-ge v1, p4, :cond_f

    .line 170
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, v2}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_3
    if-eqz p4, :cond_0

    .line 311
    iget-object p3, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_b

    .line 313
    :cond_0
    iget-object p2, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_b

    :pswitch_4
    if-eqz p4, :cond_1

    .line 299
    iget-object p3, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p4, p1}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object p1

    invoke-interface {p3, p2, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_b

    .line 303
    :cond_1
    iget-object p2, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p4, p1}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_b

    .line 318
    :pswitch_5
    iget-object p2, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object p1

    .line 319
    iget-object p2, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p2, p3, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_b

    .line 292
    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object p2, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p2, p1}, Lorg/jdom/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom/CDATA;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_b

    .line 287
    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    .line 288
    iget-object p2, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p2, p1}, Lorg/jdom/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom/Text;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_b

    .line 175
    :pswitch_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3a

    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string v5, ""

    if-ltz v4, :cond_2

    .line 180
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v2

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v6, v5

    .line 186
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    if-nez p3, :cond_3

    .line 188
    sget-object v2, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v6}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v2

    goto :goto_2

    .line 192
    :cond_4
    invoke-static {v6, v2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v2

    .line 195
    :goto_2
    iget-object v4, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v4, v0, v2}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    if-eqz p4, :cond_5

    .line 199
    invoke-virtual {p2, v0}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    goto :goto_3

    .line 202
    :cond_5
    iget-object p4, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {p4, p3, v0}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 206
    :goto_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p3

    .line 207
    invoke-interface {p3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result p4

    const/4 v2, 0x0

    :goto_4
    const-string v4, "xmlns"

    if-ge v2, p4, :cond_9

    .line 210
    invoke-interface {p3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Attr;

    .line 212
    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    .line 213
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 215
    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_6

    add-int/lit8 v4, v4, 0x1

    .line 217
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v5

    .line 220
    :goto_5
    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-static {v4, v7}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v7

    .line 230
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 231
    invoke-virtual {v0, v7}, Lorg/jdom/Element;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Element;

    goto :goto_6

    .line 234
    :cond_7
    iget-object v4, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v4, v0, v7}, Lorg/jdom/JDOMFactory;->addNamespaceDeclaration(Lorg/jdom/Element;Lorg/jdom/Namespace;)V

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_7
    if-ge v2, p4, :cond_d

    .line 241
    invoke-interface {p3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    .line 243
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 248
    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_a

    .line 250
    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    .line 251
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_a
    move-object v9, v5

    .line 254
    :goto_8
    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 258
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 259
    sget-object v8, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    goto :goto_9

    .line 262
    :cond_b
    invoke-virtual {v0, v9}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v8

    .line 265
    :goto_9
    iget-object v9, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v9, v7, v6, v8}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v6

    .line 267
    iget-object v7, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v7, v0, v6}, Lorg/jdom/JDOMFactory;->setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 274
    :cond_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 276
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p3

    const/4 p4, 0x0

    :goto_a
    if-ge p4, p3, :cond_f

    .line 278
    invoke-interface {p1, p4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 280
    invoke-direct {p0, v2, p2, v0, v1}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    :cond_e
    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    :cond_f
    :goto_b
    :pswitch_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build(Lorg/w3c/dom/Document;)Lorg/jdom/Document;
    .locals 3

    .line 134
    iget-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    const/4 v2, 0x1

    .line 135
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    return-object v0
.end method

.method public build(Lorg/w3c/dom/Element;)Lorg/jdom/Element;
    .locals 3

    .line 146
    iget-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    const/4 v2, 0x1

    .line 147
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jdom/input/DOMBuilder;->buildTree(Lorg/w3c/dom/Node;Lorg/jdom/Document;Lorg/jdom/Element;Z)V

    .line 148
    invoke-virtual {v0}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object p1

    return-object p1
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/jdom/input/DOMBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-void
.end method
