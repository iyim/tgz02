.class public Lorg/jdom/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lorg/jdom/Parent;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Document.java,v $ $Revision: 1.85 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"


# instance fields
.field protected baseURI:Ljava/lang/String;

.field content:Lorg/jdom/ContentList;

.field private propertyMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    .line 169
    invoke-virtual {p0, p1}, Lorg/jdom/Document;->setContent(Ljava/util/Collection;)Lorg/jdom/Document;

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom/Document;-><init>(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/jdom/Element;Lorg/jdom/DocType;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, p2, v0}, Lorg/jdom/Document;-><init>(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/jdom/Element;Lorg/jdom/DocType;Ljava/lang/String;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    :cond_0
    if-eqz p2, :cond_1

    .line 120
    invoke-virtual {p0, p2}, Lorg/jdom/Document;->setDocType(Lorg/jdom/DocType;)Lorg/jdom/Document;

    :cond_1
    if-eqz p3, :cond_2

    .line 123
    invoke-virtual {p0, p3}, Lorg/jdom/Document;->setBaseURI(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addContent(ILjava/util/Collection;)Lorg/jdom/Document;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    return-object p0
.end method

.method public addContent(ILorg/jdom/Content;)Lorg/jdom/Document;
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    return-object p0
.end method

.method public addContent(Ljava/util/Collection;)Lorg/jdom/Document;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addContent(Lorg/jdom/Content;)Lorg/jdom/Document;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 670
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Document;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 677
    :goto_0
    new-instance v1, Lorg/jdom/ContentList;

    invoke-direct {v1, v0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v1, v0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    const/4 v1, 0x0

    .line 681
    :goto_1
    iget-object v2, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 682
    iget-object v2, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v2, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 683
    instance-of v3, v2, Lorg/jdom/Element;

    if-eqz v3, :cond_0

    .line 684
    nop

    nop

    invoke-virtual {v2}, Lorg/jdom/Element;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Element;

    .line 685
    iget-object v3, v0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v3, v2}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 687
    :cond_0
    instance-of v3, v2, Lorg/jdom/Comment;

    if-eqz v3, :cond_1

    .line 688
    nop

    nop

    invoke-virtual {v2}, Lorg/jdom/Comment;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Comment;

    .line 689
    iget-object v3, v0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v3, v2}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 691
    :cond_1
    instance-of v3, v2, Lorg/jdom/ProcessingInstruction;

    if-eqz v3, :cond_2

    .line 692
    nop

    nop

    invoke-virtual {v2}, Lorg/jdom/ProcessingInstruction;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/ProcessingInstruction;

    .line 694
    iget-object v3, v0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v3, v2}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 696
    :cond_2
    instance-of v3, v2, Lorg/jdom/DocType;

    if-eqz v3, :cond_3

    .line 697
    nop

    nop

    invoke-virtual {v2}, Lorg/jdom/DocType;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/DocType;

    .line 698
    iget-object v3, v0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v3, v2}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public cloneContent()Ljava/util/List;
    .locals 4

    .line 374
    invoke-virtual {p0}, Lorg/jdom/Document;->getContentSize()I

    move-result v0

    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 377
    invoke-virtual {p0, v2}, Lorg/jdom/Document;->getContent(I)Lorg/jdom/Content;

    move-result-object v3

    .line 378
    invoke-virtual {v3}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public detachRootElement()Lorg/jdom/Element;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdom/Document;->removeContent(I)Lorg/jdom/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getBaseURI()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 2

    .line 407
    invoke-virtual {p0}, Lorg/jdom/Document;->hasRootElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    return-object v0

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root element not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 1

    .line 426
    invoke-virtual {p0}, Lorg/jdom/Document;->hasRootElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 427
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Root element not set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getContent(I)Lorg/jdom/Content;
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/Content;

    return-object p1
.end method

.method public getContentSize()I
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    return v0
.end method

.method public getDescendants()Ljava/util/Iterator;
    .locals 1

    .line 711
    new-instance v0, Lorg/jdom/DescendantIterator;

    invoke-direct {v0, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    return-object v0
.end method

.method public getDescendants(Lorg/jdom/filter/Filter;)Ljava/util/Iterator;
    .locals 2

    .line 724
    new-instance v0, Lorg/jdom/FilterIterator;

    new-instance v1, Lorg/jdom/DescendantIterator;

    invoke-direct {v1, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    invoke-direct {v0, v1, p1}, Lorg/jdom/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/jdom/filter/Filter;)V

    return-object v0
.end method

.method public getDocType()Lorg/jdom/DocType;
    .locals 2

    .line 264
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/DocType;

    return-object v0
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 0

    return-object p0
.end method

.method public getParent()Lorg/jdom/Parent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 764
    iget-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 765
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRootElement()Lorg/jdom/Element;
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    if-ltz v0, :cond_0

    .line 220
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root element not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRootElement()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 658
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/jdom/Content;)I
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public removeContent()Ljava/util/List;
    .locals 2

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 438
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->clear()V

    return-object v0
.end method

.method public removeContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 2

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 451
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Content;

    .line 453
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public removeContent(I)Lorg/jdom/Content;
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jdom/Content;

    return-object p1
.end method

.method public removeContent(Lorg/jdom/Content;)Z
    .locals 1

    .line 565
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setBaseURI(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lorg/jdom/Document;->baseURI:Ljava/lang/String;

    return-void
.end method

.method public setContent(ILjava/util/Collection;)Lorg/jdom/Document;
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    return-object p0
.end method

.method public setContent(ILorg/jdom/Content;)Lorg/jdom/Document;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setContent(Ljava/util/Collection;)Lorg/jdom/Document;
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->clearAndSet(Ljava/util/Collection;)V

    return-object p0
.end method

.method public setContent(Lorg/jdom/Content;)Lorg/jdom/Document;
    .locals 1

    .line 600
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->clear()V

    .line 601
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDocType(Lorg/jdom/DocType;)Lorg/jdom/Document;
    .locals 2

    if-nez p1, :cond_1

    .line 289
    iget-object p1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {p1}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result p1

    if-ltz p1, :cond_0

    .line 290
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p0

    .line 294
    :cond_1
    invoke-virtual {p1}, Lorg/jdom/DocType;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    if-gez v0, :cond_2

    .line 302
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    .line 295
    :cond_3
    new-instance v0, Lorg/jdom/IllegalAddException;

    const-string v1, "The DocType already is attached to a document"

    invoke-direct {v0, p1, v1}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/DocType;Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 749
    iget-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    .line 752
    :cond_0
    iget-object v0, p0, Lorg/jdom/Document;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;
    .locals 2

    .line 234
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_0

    .line 236
    iget-object v0, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_0
    iget-object v1, p0, Lorg/jdom/Document;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 616
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[Document: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    invoke-virtual {p0}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 621
    invoke-virtual {v1}, Lorg/jdom/DocType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, " No DOCTYPE declaration, "

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    :goto_0
    invoke-virtual {p0}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Root is "

    .line 629
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/jdom/Element;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v1, " No root element"

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v1, "]"

    .line 635
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
