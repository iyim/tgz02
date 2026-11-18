.class public Lcom/taobao/pexode/mimetype/DefaultMimeTypes;
.super Ljava/lang/Object;
.source "DefaultMimeTypes.java"


# static fields
.field public static final ALL_EXTENSION_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/pexode/mimetype/MimeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final BMP:Lcom/taobao/pexode/mimetype/MimeType;

.field public static final GIF:Lcom/taobao/pexode/mimetype/MimeType;

.field public static final JPEG:Lcom/taobao/pexode/mimetype/MimeType;

.field public static final PNG:Lcom/taobao/pexode/mimetype/MimeType;

.field public static final PNG_A:Lcom/taobao/pexode/mimetype/MimeType;

.field public static final WEBP:Lcom/taobao/pexode/mimetype/MimeType;

.field public static final WEBP_A:Lcom/taobao/pexode/mimetype/MimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 7
    new-instance v0, Lcom/taobao/pexode/mimetype/MimeType;

    const-string v1, "jpg"

    const-string v2, "jpeg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$1;

    invoke-direct {v2}, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$1;-><init>()V

    const-string v3, "JPEG"

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    sput-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->JPEG:Lcom/taobao/pexode/mimetype/MimeType;

    .line 19
    new-instance v0, Lcom/taobao/pexode/mimetype/MimeType;

    const-string v1, "webp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$2;

    invoke-direct {v3}, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$2;-><init>()V

    const-string v4, "WEBP"

    invoke-direct {v0, v4, v4, v2, v3}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    sput-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP:Lcom/taobao/pexode/mimetype/MimeType;

    .line 31
    new-instance v0, Lcom/taobao/pexode/mimetype/MimeType;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$3;

    invoke-direct {v10}, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$3;-><init>()V

    const-string v6, "WEBP"

    const-string v7, "WEBP_A"

    const/4 v9, 0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    sput-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP_A:Lcom/taobao/pexode/mimetype/MimeType;

    .line 43
    new-instance v0, Lcom/taobao/pexode/mimetype/MimeType;

    const-string v1, "png"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$4;

    invoke-direct {v3}, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$4;-><init>()V

    const-string v4, "PNG"

    invoke-direct {v0, v4, v4, v2, v3}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    sput-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->PNG:Lcom/taobao/pexode/mimetype/MimeType;

    .line 55
    new-instance v0, Lcom/taobao/pexode/mimetype/MimeType;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$5;

    invoke-direct {v10}, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$5;-><init>()V

    const-string v6, "PNG"

    const-string v7, "PNG_A"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    sput-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->PNG_A:Lcom/taobao/pexode/mimetype/MimeType;

    .line 67
    new-instance v0, Lcom/taobao/pexode/mimetype/MimeType;

    const-string v1, "gif"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$6;

    invoke-direct/range {v16 .. v16}, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$6;-><init>()V

    const-string v12, "GIF"

    const-string v13, "GIF"

    const/4 v14, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    sput-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->GIF:Lcom/taobao/pexode/mimetype/MimeType;

    .line 79
    new-instance v0, Lcom/taobao/pexode/mimetype/MimeType;

    const-string v1, "bmp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$7;

    invoke-direct {v2}, Lcom/taobao/pexode/mimetype/DefaultMimeTypes$7;-><init>()V

    const-string v3, "BMP"

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/taobao/pexode/mimetype/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/taobao/pexode/mimetype/MimeType$MimeTypeChecker;)V

    sput-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->BMP:Lcom/taobao/pexode/mimetype/MimeType;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->ALL_EXTENSION_TYPES:Ljava/util/List;

    .line 93
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->JPEG:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->WEBP:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->PNG:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->GIF:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lcom/taobao/pexode/mimetype/DefaultMimeTypes;->BMP:Lcom/taobao/pexode/mimetype/MimeType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
