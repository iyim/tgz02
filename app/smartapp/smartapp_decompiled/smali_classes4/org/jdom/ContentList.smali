.class final Lorg/jdom/ContentList;
.super Ljava/util/AbstractList;
.source "ContentList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/ContentList$FilterListIterator;,
        Lorg/jdom/ContentList$FilterList;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ContentList.java,v $ $Revision: 1.42 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"

.field private static final INITIAL_ARRAY_SIZE:I = 0x5

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private elementData:[Lorg/jdom/Content;

.field private parent:Lorg/jdom/Parent;

.field private size:I


# direct methods
.method constructor <init>(Lorg/jdom/Parent;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    return-void
.end method

.method static synthetic access$000(Lorg/jdom/ContentList;)I
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/jdom/ContentList;->getModCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/jdom/ContentList;)[Lorg/jdom/Content;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    return-object p0
.end method

.method static synthetic access$200(Lorg/jdom/ContentList;)I
    .locals 0

    .line 80
    iget p0, p0, Lorg/jdom/ContentList;->size:I

    return p0
.end method

.method private documentCanContain(ILorg/jdom/Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/IllegalAddException;
        }
    .end annotation

    .line 143
    instance-of v0, p2, Lorg/jdom/Element;

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "A root element cannot be added before the DocType"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_1
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add a second root element, only one is allowed"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_2
    :goto_0
    instance-of v0, p2, Lorg/jdom/DocType;

    if-eqz v0, :cond_5

    .line 154
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    if-gez v0, :cond_4

    .line 158
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-lt v0, p1, :cond_3

    goto :goto_1

    .line 160
    :cond_3
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "A DocType cannot be added after the root element"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_4
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add a second doctype, only one is allowed"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_5
    :goto_1
    instance-of p1, p2, Lorg/jdom/CDATA;

    if-nez p1, :cond_8

    .line 168
    instance-of p1, p2, Lorg/jdom/Text;

    if-nez p1, :cond_7

    .line 172
    instance-of p1, p2, Lorg/jdom/EntityRef;

    if-nez p1, :cond_6

    return-void

    .line 173
    :cond_6
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "An EntityRef is not allowed at the document root"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_7
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "A Text is not allowed at the document root"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_8
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "A CDATA is not allowed at the document root"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static elementCanContain(ILorg/jdom/Content;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/IllegalAddException;
        }
    .end annotation

    .line 178
    instance-of p0, p1, Lorg/jdom/DocType;

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 179
    :cond_0
    new-instance p0, Lorg/jdom/IllegalAddException;

    const-string p1, "A DocType is not allowed except at the document level"

    invoke-direct {p0, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getModCount()I
    .locals 1

    .line 517
    iget v0, p0, Lorg/jdom/ContentList;->modCount:I

    return v0
.end method

.method private static removeParent(Lorg/jdom/Content;)V
    .locals 1

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, v0}, Lorg/jdom/Content;->setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 127
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lorg/jdom/Text;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 130
    :cond_0
    nop

    instance-of v0, p2, Lorg/jdom/Content;

    if-eqz v0, :cond_1

    .line 131
    nop

    nop

    invoke-virtual {p0, p1, p2}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    return-void

    .line 133
    :cond_1
    new-instance p1, Lorg/jdom/IllegalAddException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " is of unrecognized type and cannot be added"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_2
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add null object"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method add(ILorg/jdom/Content;)V
    .locals 3

    if-eqz p2, :cond_8

    .line 195
    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v0, v0, Lorg/jdom/Document;

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, p1, p2}, Lorg/jdom/ContentList;->documentCanContain(ILorg/jdom/Content;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {p1, p2}, Lorg/jdom/ContentList;->elementCanContain(ILorg/jdom/Content;)V

    .line 202
    :goto_0
    invoke-virtual {p2}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p2}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object p1

    .line 204
    instance-of v0, p1, Lorg/jdom/Document;

    if-eqz v0, :cond_1

    .line 205
    new-instance p1, Lorg/jdom/IllegalAddException;

    check-cast p2, Lorg/jdom/Element;

    const-string v0, "The Content already has an existing parent document"

    invoke-direct {p1, p2, v0}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_1
    new-instance p2, Lorg/jdom/IllegalAddException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "The Content already has an existing parent \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast p1, Lorg/jdom/Element;

    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 215
    :cond_2
    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    if-eq p2, v0, :cond_7

    .line 221
    instance-of v1, v0, Lorg/jdom/Element;

    if-eqz v1, :cond_4

    instance-of v1, p2, Lorg/jdom/Element;

    if-eqz v1, :cond_4

    move-object v1, p2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lorg/jdom/Element;->isAncestor(Lorg/jdom/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 223
    :cond_3
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "The Element cannot be added as a descendent of itself"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-ltz p1, :cond_6

    .line 227
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-gt p1, v0, :cond_6

    .line 232
    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    invoke-virtual {p2, v0}, Lorg/jdom/Content;->setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;

    .line 234
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 235
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-ne p1, v0, :cond_5

    .line 236
    iget-object p1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jdom/ContentList;->size:I

    aput-object p2, p1, v0

    goto :goto_2

    .line 238
    :cond_5
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aput-object p2, v0, p1

    .line 240
    iget p1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList;->size:I

    .line 242
    :goto_2
    iget p1, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList;->modCount:I

    return-void

    .line 228
    :cond_6
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " Size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 216
    :cond_7
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "The Element cannot be added to itself"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_8
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add null object"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4

    if-ltz p1, :cond_4

    .line 268
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-gt p1, v0, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 273
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 276
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 280
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 281
    :goto_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int v3, p1, v1

    .line 283
    invoke-virtual {p0, v3, v2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    const/4 v1, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 289
    invoke-virtual {p0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_2
    throw p2

    :cond_3
    :goto_2
    return v0

    .line 269
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " Size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 253
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 3

    .line 301
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 302
    :goto_0
    iget v2, p0, Lorg/jdom/ContentList;->size:I

    if-ge v1, v2, :cond_0

    .line 303
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v2, v2, v1

    .line 304
    invoke-static {v2}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 306
    iput-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 307
    iput v0, p0, Lorg/jdom/ContentList;->size:I

    .line 309
    :cond_1
    iget v0, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom/ContentList;->modCount:I

    return-void
.end method

.method clearAndSet(Ljava/util/Collection;)V
    .locals 4

    .line 320
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 321
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    const/4 v2, 0x0

    .line 323
    iput-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    const/4 v2, 0x0

    .line 324
    iput v2, p0, Lorg/jdom/ContentList;->size:I

    if-eqz p1, :cond_0

    .line 326
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 329
    :try_start_0
    invoke-virtual {p0, v2, p1}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 332
    iput-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 333
    iput v1, p0, Lorg/jdom/ContentList;->size:I

    .line 334
    throw p1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    if-ge v2, v1, :cond_1

    .line 340
    aget-object p1, v0, v2

    invoke-static {p1}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 343
    :cond_1
    iget p1, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList;->modCount:I

    return-void
.end method

.method ensureCapacity(I)V
    .locals 3

    .line 354
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 355
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Lorg/jdom/Content;

    iput-object p1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    goto :goto_1

    .line 357
    :cond_0
    array-length v1, v0

    if-le p1, v1, :cond_2

    mul-int/lit8 v1, v1, 0x3

    .line 360
    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 363
    :goto_0
    new-array p1, p1, [Lorg/jdom/Content;

    iput-object p1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 364
    iget-object p1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    .line 376
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-ge p1, v0, :cond_0

    .line 380
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object p1, v0, p1

    return-object p1

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getView(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 1

    .line 390
    new-instance v0, Lorg/jdom/ContentList$FilterList;

    invoke-direct {v0, p0, p1}, Lorg/jdom/ContentList$FilterList;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;)V

    return-object v0
.end method

.method indexOfDocType()I
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 420
    :goto_0
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom/DocType;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method indexOfFirstElement()I
    .locals 2

    .line 401
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 402
    :goto_0
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-ge v0, v1, :cond_1

    .line 403
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom/Element;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    if-ltz p1, :cond_1

    .line 436
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-ge p1, v0, :cond_1

    .line 440
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v0, v0, p1

    .line 441
    invoke-static {v0}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    .line 442
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_0

    .line 444
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    :cond_0
    iget-object p1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jdom/ContentList;->size:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 446
    iget p1, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList;->modCount:I

    return-object v0

    .line 437
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_4

    .line 466
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-ge p1, v0, :cond_4

    .line 470
    instance-of v0, p2, Lorg/jdom/Element;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v0, v0, Lorg/jdom/Document;

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    if-ltz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add a second root element, only one is allowed"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    :cond_1
    :goto_0
    instance-of v0, p2, Lorg/jdom/DocType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v0, v0, Lorg/jdom/Document;

    if-eqz v0, :cond_3

    .line 479
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    if-ltz v0, :cond_3

    if-ne v0, p1, :cond_2

    goto :goto_1

    .line 481
    :cond_2
    new-instance p1, Lorg/jdom/IllegalAddException;

    const-string p2, "Cannot add a second doctype, only one is allowed"

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 486
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 488
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    .line 491
    invoke-virtual {p0, p1, v0}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    .line 492
    throw p2

    .line 467
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " Size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public size()I
    .locals 1

    .line 503
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 512
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final uncheckedAddContent(Lorg/jdom/Content;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    iput-object v0, p1, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    .line 109
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 110
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom/ContentList;->size:I

    aput-object p1, v0, v1

    .line 111
    iget p1, p0, Lorg/jdom/ContentList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList;->modCount:I

    return-void
.end method
