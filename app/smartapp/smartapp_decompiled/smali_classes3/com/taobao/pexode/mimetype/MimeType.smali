.class public Lcom/taobao/pexode/mimetype/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;
    }
.end annotation


# instance fields
.field private final mFileExtensions:[Ljava/lang/String;

.field private final mHasAlpha:Z

.field private final mIsAnimation:Z

.field private final mMajorName:Ljava/lang/String;

.field private final mMimeTypeChecker:Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;

.field private final mMinorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v5, p3

    move-object v6, p5

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZLcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZLcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZLcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZLcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/taobao/pexode/mimetype/MimeType;->mMajorName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/taobao/pexode/mimetype/MimeType;->mMinorName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/taobao/pexode/mimetype/MimeType;->mFileExtensions:[Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcom/taobao/pexode/mimetype/MimeType;->mHasAlpha:Z

    .line 34
    iput-boolean p5, p0, Lcom/taobao/pexode/mimetype/MimeType;->mIsAnimation:Z

    .line 35
    iput-object p6, p0, Lcom/taobao/pexode/mimetype/MimeType;->mMimeTypeChecker:Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;

    return-void
.end method


# virtual methods
.method public getMajorName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/taobao/pexode/mimetype/MimeType;->mMajorName:Ljava/lang/String;

    return-object v0
.end method

.method public getMinorName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/taobao/pexode/mimetype/MimeType;->mMinorName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAlpha()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/taobao/pexode/mimetype/MimeType;->mHasAlpha:Z

    return v0
.end method

.method public isAnimation()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/taobao/pexode/mimetype/MimeType;->mIsAnimation:Z

    return v0
.end method

.method public isMyExtension(Ljava/lang/String;)Z
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/taobao/pexode/mimetype/MimeType;->mFileExtensions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 60
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isMyHeader([B)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/taobao/pexode/mimetype/MimeType;->mMimeTypeChecker:Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;

    invoke-interface {v0, p1}, Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;->isMyHeader([B)Z

    move-result p1

    return p1
.end method

.method public isSame(Lcom/taobao/pexode/mimetype/MimeType;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/taobao/pexode/mimetype/MimeType;->getMinorName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/taobao/pexode/mimetype/MimeType;->getMinorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestMinHeaderSize()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/taobao/pexode/mimetype/MimeType;->mMimeTypeChecker:Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;

    invoke-interface {v0}, Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;->requestMinHeaderSize()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/pexode/mimetype/MimeType;->getMinorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
