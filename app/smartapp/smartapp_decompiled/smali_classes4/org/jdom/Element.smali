.class public Lorg/jdom/Element;
.super Lorg/jdom/Content;
.source "Element.java"

# interfaces
.implements Lorg/jdom/Parent;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Element.java,v $ $Revision: 1.159 $ $Date: 2007/11/14 05:02:08 $ $Name: jdom_1_1 $"

.field private static final INITIAL_ARRAY_SIZE:I = 0x5


# instance fields
.field protected transient additionalNamespaces:Ljava/util/List;

.field attributes:Lorg/jdom/AttributeList;

.field content:Lorg/jdom/ContentList;

.field protected name:Ljava/lang/String;

.field protected transient namespace:Lorg/jdom/Namespace;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 106
    new-instance v0, Lorg/jdom/AttributeList;

    invoke-direct {v0, p0}, Lorg/jdom/AttributeList;-><init>(Lorg/jdom/Element;)V

    iput-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    .line 112
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    nop

    nop

    invoke-direct {p0, p1, v0}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 168
    invoke-static {v0, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 184
    invoke-static {p2, p3}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom/Namespace;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 106
    new-instance v0, Lorg/jdom/AttributeList;

    invoke-direct {v0, p0}, Lorg/jdom/AttributeList;-><init>(Lorg/jdom/Element;)V

    iput-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    .line 112
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    .line 141
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->setName(Ljava/lang/String;)Lorg/jdom/Element;

    .line 142
    invoke-virtual {p0, p2}, Lorg/jdom/Element;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Element;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1336
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1338
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    .line 1341
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->read()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1346
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v2

    .line 1348
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1312
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1316
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1317
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1319
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1320
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->write(I)V

    goto :goto_1

    .line 1323
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1324
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write(I)V

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1326
    iget-object v2, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Namespace;

    .line 1327
    invoke-virtual {v2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1328
    invoke-virtual {v2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addContent(ILjava/util/Collection;)Lorg/jdom/Element;
    .locals 1

    .line 861
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    return-object p0
.end method

.method public addContent(ILorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1

    .line 842
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    return-object p0
.end method

.method public addContent(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1

    .line 801
    new-instance v0, Lorg/jdom/Text;

    invoke-direct {v0, p1}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    move-result-object p1

    return-object p1
.end method

.method public addContent(Ljava/util/Collection;)Lorg/jdom/Element;
    .locals 1

    .line 827
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addContent(Lorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1

    .line 811
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNamespaceDeclaration(Lorg/jdom/Namespace;)V
    .locals 2

    .line 340
    invoke-static {p1, p0}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 342
    :cond_1
    new-instance v1, Lorg/jdom/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Lorg/jdom/Namespace;Ljava/lang/String;)V

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 1267
    invoke-super {p0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    .line 1280
    new-instance v1, Lorg/jdom/ContentList;

    invoke-direct {v1, v0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v1, v0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    .line 1281
    new-instance v1, Lorg/jdom/AttributeList;

    invoke-direct {v1, v0}, Lorg/jdom/AttributeList;-><init>(Lorg/jdom/Element;)V

    iput-object v1, v0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    .line 1284
    iget-object v1, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1285
    :goto_0
    iget-object v3, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v3}, Lorg/jdom/AttributeList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1286
    iget-object v3, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v3, v1}, Lorg/jdom/AttributeList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom/Attribute;

    .line 1287
    iget-object v4, v0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v3}, Lorg/jdom/Attribute;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/jdom/AttributeList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1292
    :cond_0
    iget-object v1, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1293
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 1297
    :cond_1
    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    if-eqz v1, :cond_2

    .line 1298
    :goto_1
    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1299
    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v2}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Content;

    .line 1300
    iget-object v3, v0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public cloneContent()Ljava/util/List;
    .locals 4

    .line 866
    invoke-virtual {p0}, Lorg/jdom/Element;->getContentSize()I

    move-result v0

    .line 867
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 869
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getContent(I)Lorg/jdom/Content;

    move-result-object v3

    .line 870
    invoke-virtual {v3}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getAdditionalNamespaces()Ljava/util/List;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 384
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 386
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 1

    .line 969
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 1

    .line 983
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/AttributeList;->get(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/Attribute;

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 997
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1012
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0, p2}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1027
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/AttributeList;->get(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/Attribute;

    if-nez p1, :cond_0

    return-object p3

    .line 1048
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    .line 956
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1

    .line 1483
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object p1

    return-object p1
.end method

.method public getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 2

    .line 1465
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v1, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v1, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object p1

    .line 1466
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1467
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1468
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/Element;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 522
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 526
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildText(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 0

    .line 573
    invoke-virtual {p0, p1, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 577
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildTextNormalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 556
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 560
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildTextNormalize(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 0

    .line 607
    invoke-virtual {p0, p1, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 611
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 539
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 543
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getTextTrim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildTextTrim(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 0

    .line 590
    invoke-virtual {p0, p1, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 594
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Element;->getTextTrim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 2

    .line 1410
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v1, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v1}, Lorg/jdom/filter/ElementFilter;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 1430
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/util/List;
    .locals 2

    .line 1451
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v1, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v1, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getContent()Ljava/util/List;
    .locals 1

    .line 661
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    return-object v0
.end method

.method public getContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 1

    .line 677
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getContent(I)Lorg/jdom/Content;
    .locals 1

    .line 876
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/Content;

    return-object p1
.end method

.method public getContentSize()I
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    return v0
.end method

.method public getDescendants()Ljava/util/Iterator;
    .locals 1

    .line 1359
    new-instance v0, Lorg/jdom/DescendantIterator;

    invoke-direct {v0, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    return-object v0
.end method

.method public getDescendants(Lorg/jdom/filter/Filter;)Ljava/util/Iterator;
    .locals 2

    .line 1372
    new-instance v0, Lorg/jdom/DescendantIterator;

    invoke-direct {v0, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    .line 1373
    new-instance v1, Lorg/jdom/FilterIterator;

    invoke-direct {v1, v0, p1}, Lorg/jdom/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/jdom/filter/Filter;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/jdom/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jdom/Namespace;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "xml"

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    sget-object p1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    return-object p1

    .line 281
    :cond_1
    invoke-virtual {p0}, Lorg/jdom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {p0}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object p1

    return-object p1

    .line 286
    :cond_2
    iget-object v1, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 287
    :goto_0
    iget-object v2, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 288
    iget-object v2, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Namespace;

    .line 289
    invoke-virtual {v2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_4
    iget-object v1, p0, Lorg/jdom/Element;->parent:Lorg/jdom/Parent;

    instance-of v1, v1, Lorg/jdom/Element;

    if-eqz v1, :cond_5

    .line 297
    iget-object v0, p0, Lorg/jdom/Element;->parent:Lorg/jdom/Parent;

    check-cast v0, Lorg/jdom/Element;

    invoke-virtual {v0, p1}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    .line 314
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/Element;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 7

    .line 452
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 458
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, v2}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 459
    instance-of v2, v0, Lorg/jdom/Text;

    if-eqz v2, :cond_1

    .line 460
    nop

    nop

    invoke-virtual {v0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    .line 468
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    .line 471
    :goto_0
    iget-object v5, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v5}, Lorg/jdom/ContentList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 472
    iget-object v5, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v5, v2}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 473
    instance-of v6, v5, Lorg/jdom/Text;

    if-eqz v6, :cond_3

    .line 474
    nop

    nop

    invoke-virtual {v5}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    return-object v1

    .line 483
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextNormalize()Ljava/lang/String;
    .locals 1

    .line 509
    invoke-virtual {p0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrim()Ljava/lang/String;
    .locals 1

    .line 496
    invoke-virtual {p0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .line 398
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    invoke-virtual {p0}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 401
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Content;

    .line 403
    instance-of v3, v2, Lorg/jdom/Element;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/jdom/Text;

    if-eqz v3, :cond_0

    .line 404
    :cond_1
    invoke-virtual {v2}, Lorg/jdom/Content;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Lorg/jdom/Content;)I
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isAncestor(Lorg/jdom/Element;)Z
    .locals 1

    .line 934
    invoke-virtual {p1}, Lorg/jdom/Element;->getParent()Lorg/jdom/Parent;

    move-result-object p1

    .line 935
    :goto_0
    instance-of v0, p1, Lorg/jdom/Element;

    if-eqz v0, :cond_1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 939
    :cond_0
    invoke-interface {p1}, Lorg/jdom/Parent;->getParent()Lorg/jdom/Parent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isRootElement()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/jdom/Element;->parent:Lorg/jdom/Parent;

    instance-of v0, v0, Lorg/jdom/Document;

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 1195
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->removeAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result p1

    return p1
.end method

.method public removeAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 1

    .line 1210
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/AttributeList;->remove(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result p1

    return p1
.end method

.method public removeAttribute(Lorg/jdom/Attribute;)Z
    .locals 1

    .line 1222
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1}, Lorg/jdom/AttributeList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeChild(Ljava/lang/String;)Z
    .locals 1

    .line 1497
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->removeChild(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result p1

    return p1
.end method

.method public removeChild(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 1

    .line 1512
    new-instance v0, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v0, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 1513
    iget-object p1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {p1, v0}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object p1

    .line 1514
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1515
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1516
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1517
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeChildren(Ljava/lang/String;)Z
    .locals 1

    .line 1535
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->removeChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result p1

    return p1
.end method

.method public removeChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 1

    .line 1552
    new-instance v0, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v0, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 1553
    iget-object p1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {p1, v0}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object p1

    .line 1554
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    .line 1555
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1557
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public removeContent()Ljava/util/List;
    .locals 2

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 687
    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->clear()V

    return-object v0
.end method

.method public removeContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 2

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 700
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Content;

    .line 702
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public removeContent(I)Lorg/jdom/Content;
    .locals 1

    .line 889
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/Content;

    return-object p1
.end method

.method public removeContent(Lorg/jdom/Content;)Z
    .locals 1

    .line 885
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeNamespaceDeclaration(Lorg/jdom/Namespace;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1

    .line 1126
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom/Attribute;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;

    goto :goto_0

    .line 1131
    :cond_0
    invoke-virtual {v0, p2}, Lorg/jdom/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom/Attribute;

    :goto_0
    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 1

    .line 1157
    invoke-virtual {p0, p1, p3}, Lorg/jdom/Element;->getAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1159
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 1160
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {v0, p2}, Lorg/jdom/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom/Attribute;

    :goto_0
    return-object p0
.end method

.method public setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;
    .locals 1

    .line 1181
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1}, Lorg/jdom/AttributeList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAttributes(Ljava/util/Collection;)Lorg/jdom/Element;
    .locals 1

    .line 1095
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1}, Lorg/jdom/AttributeList;->clearAndSet(Ljava/util/Collection;)V

    return-object p0
.end method

.method public setAttributes(Ljava/util/List;)Lorg/jdom/Element;
    .locals 0

    .line 1107
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->setAttributes(Ljava/util/Collection;)Lorg/jdom/Element;

    move-result-object p1

    return-object p1
.end method

.method public setContent(ILorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1

    .line 764
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setContent(Ljava/util/Collection;)Lorg/jdom/Element;
    .locals 1

    .line 744
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->clearAndSet(Ljava/util/Collection;)V

    return-object p0
.end method

.method public setContent(Lorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1

    .line 920
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->clear()V

    .line 921
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContent(ILjava/util/Collection;)Lorg/jdom/Parent;
    .locals 1

    .line 785
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 3

    .line 205
    invoke-static {p1}, Lorg/jdom/Verifier;->checkElementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iput-object p1, p0, Lorg/jdom/Element;->name:Ljava/lang/String;

    return-object p0

    .line 207
    :cond_0
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "element"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 0

    if-nez p1, :cond_0

    .line 231
    sget-object p1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 234
    :cond_0
    iput-object p1, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1

    .line 629
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->clear()V

    if-eqz p1, :cond_0

    .line 632
    new-instance v0, Lorg/jdom/Text;

    invoke-direct {v0, p1}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1238
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[Element: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1242
    invoke-virtual {p0}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 1243
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " [Namespace: "

    .line 1244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "/>]"

    .line 1249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1251
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
