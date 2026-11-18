.class public Lcom/taobao/phenix/animate/GifImage;
.super Ljava/lang/Object;
.source "GifImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isSupported()Z
    .locals 1

    .line 9
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->GIF:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-static {v0}, Lcom/taobao/pexode/Pexode;->canSupport(Lcom/taobao/pexode/mimetype/MimeType;)Z

    move-result v0

    return v0
.end method
