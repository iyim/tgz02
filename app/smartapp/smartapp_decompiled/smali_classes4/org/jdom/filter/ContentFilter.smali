.class public Lorg/jdom/filter/ContentFilter;
.super Lorg/jdom/filter/AbstractFilter;
.source "ContentFilter.java"


# static fields
.field public static final CDATA:I = 0x2

.field public static final COMMENT:I = 0x8

.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ContentFilter.java,v $ $Revision: 1.15 $ $Date: 2007/11/10 05:29:00 $ $Name: jdom_1_1 $"

.field public static final DOCTYPE:I = 0x80

.field public static final DOCUMENT:I = 0x40

.field public static final ELEMENT:I = 0x1

.field public static final ENTITYREF:I = 0x20

.field public static final PI:I = 0x10

.field public static final TEXT:I = 0x4


# instance fields
.field private filterMask:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 121
    invoke-virtual {p0}, Lorg/jdom/filter/ContentFilter;->setDefaultMask()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    .line 145
    invoke-virtual {p0, p1}, Lorg/jdom/filter/ContentFilter;->setFilterMask(I)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/jdom/filter/ContentFilter;->setDefaultMask()V

    goto :goto_0

    .line 135
    :cond_0
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 343
    :cond_0
    instance-of v1, p1, Lorg/jdom/filter/ContentFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 345
    :cond_1
    check-cast p1, Lorg/jdom/filter/ContentFilter;

    .line 347
    iget v1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    iget p1, p1, Lorg/jdom/filter/ContentFilter;->filterMask:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getFilterMask()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 354
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 3

    .line 305
    instance-of v0, p1, Lorg/jdom/Element;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 306
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 308
    :cond_1
    instance-of v0, p1, Lorg/jdom/CDATA;

    if-eqz v0, :cond_3

    .line 309
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 311
    :cond_3
    instance-of v0, p1, Lorg/jdom/Text;

    if-eqz v0, :cond_5

    .line 312
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 314
    :cond_5
    instance-of v0, p1, Lorg/jdom/Comment;

    if-eqz v0, :cond_7

    .line 315
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    .line 317
    :cond_7
    instance-of v0, p1, Lorg/jdom/ProcessingInstruction;

    if-eqz v0, :cond_9

    .line 318
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1

    .line 320
    :cond_9
    instance-of v0, p1, Lorg/jdom/EntityRef;

    if-eqz v0, :cond_b

    .line 321
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    .line 323
    :cond_b
    instance-of v0, p1, Lorg/jdom/Document;

    if-eqz v0, :cond_d

    .line 324
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1

    .line 326
    :cond_d
    instance-of p1, p1, Lorg/jdom/DocType;

    if-eqz p1, :cond_e

    .line 327
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public setCDATAVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 215
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 218
    :cond_0
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    :goto_0
    return-void
.end method

.method public setCommentVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 245
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 248
    :cond_0
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    :goto_0
    return-void
.end method

.method public setDefaultMask()V
    .locals 1

    const/16 v0, 0xff

    .line 171
    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    return-void
.end method

.method public setDocTypeVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 290
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 293
    :cond_0
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    :goto_0
    return-void
.end method

.method public setDocumentContent()V
    .locals 1

    const/16 v0, 0x99

    .line 180
    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    return-void
.end method

.method public setElementContent()V
    .locals 1

    const/16 v0, 0x3f

    .line 188
    iput v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    return-void
.end method

.method public setElementVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 200
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 203
    :cond_0
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    :goto_0
    return-void
.end method

.method public setEntityRefVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 275
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 278
    :cond_0
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    :goto_0
    return-void
.end method

.method public setFilterMask(I)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/jdom/filter/ContentFilter;->setDefaultMask()V

    .line 164
    iget v0, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/2addr p1, v0

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    return-void
.end method

.method public setPIVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 260
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 263
    :cond_0
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    :goto_0
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 230
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    goto :goto_0

    .line 233
    :cond_0
    iget p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lorg/jdom/filter/ContentFilter;->filterMask:I

    :goto_0
    return-void
.end method
