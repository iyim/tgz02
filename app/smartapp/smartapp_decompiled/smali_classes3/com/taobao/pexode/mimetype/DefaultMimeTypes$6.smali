.class final Lcom/taobao/pexode/mimetype/DefaultMimeTypes$6;
.super Ljava/lang/Object;
.source "DefaultMimeTypes.java"

# interfaces
.implements Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/pexode/mimetype/DefaultMimeTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isMyHeader([B)Z
    .locals 0

    .line 75
    invoke-static {p1}, Lcom/taobao/pexode/mimetype/MimeTypeCheckUtil;->isGifHeader([B)Z

    move-result p1

    return p1
.end method

.method public requestMinHeaderSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
