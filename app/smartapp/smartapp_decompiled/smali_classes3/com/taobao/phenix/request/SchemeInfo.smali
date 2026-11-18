.class public Lcom/taobao/phenix/request/SchemeInfo;
.super Ljava/lang/Object;
.source "SchemeInfo.java"


# static fields
.field private static final BASE64_SCHEME_PREFIX:Ljava/lang/String; = "data:image/"

.field private static final BASE64_SCHEME_PREFIX_LENGTH:I = 0xb

.field private static final BASE64_SCHEME_SUFFIX:Ljava/lang/String; = ";base64,"

.field private static final BASE64_SCHEME_SUFFIX_LENGTH:I = 0x8

.field private static final LOCAL_ASSET_SCHEME:Ljava/lang/String; = "asset://"

.field private static final LOCAL_ASSET_SCHEME_LENGTH:I = 0x8

.field private static final LOCAL_FILE_SCHEME:Ljava/lang/String; = "file://"

.field private static final LOCAL_FILE_SCHEME_LENGTH:I = 0x7

.field private static final LOCAL_RES_SCHEME:Ljava/lang/String; = "res://"

.field private static final LOCAL_RES_SCHEME_LENGTH:I = 0x6

.field public static final LOCAL_URI:I = 0x20

.field public static final NETWORK_URI:I = 0x1

.field private static final TARGET_CDN_DOMAIN_PREFIX:Ljava/lang/String; = "//gw.alicdn.com"

.field private static final TARGET_CDN_MAX_SIDE:I = 0x2710

.field private static final TARGET_CDN_WEBP_SUFFIX:Ljava/lang/String; = "_.webp"

.field private static final X_CONCAT_CHAR:C = 'x'


# instance fields
.field public base64:Ljava/lang/String;

.field public baseName:Ljava/lang/String;

.field public extension:Ljava/lang/String;

.field public handleIndex:I

.field public height:I

.field public isCdnSize:Z

.field public path:Ljava/lang/String;

.field public quality:I

.field public resId:I

.field public thumbnailType:I

.field public final type:I

.field public useOriginIfThumbNotExist:Z

.field public width:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/taobao/phenix/request/SchemeInfo;->extension:Ljava/lang/String;

    .line 37
    iput p1, p0, Lcom/taobao/phenix/request/SchemeInfo;->type:I

    return-void
.end method

.method private static isMatchOssRule(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 281
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_0

    return v0

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2e

    if-eq p0, p1, :cond_2

    const/16 p1, 0x5f

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-static {p0}, Lcom/taobao/phenix/request/SchemeInfo;->parseLocalFile(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/taobao/phenix/request/SchemeInfo;->parseAssetFile(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 74
    invoke-static {p0}, Lcom/taobao/phenix/request/SchemeInfo;->parseResFile(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/taobao/phenix/request/SchemeInfo;->parseBase64(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    invoke-static {p0}, Lcom/taobao/phenix/request/SchemeInfo;->parseLocalExtended(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/taobao/phenix/request/SchemeInfo;->parseHttpUrl(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static parseAssetFile(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "asset://"

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_0
    new-instance v0, Lcom/taobao/phenix/request/SchemeInfo;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lcom/taobao/phenix/request/SchemeInfo;-><init>(I)V

    .line 129
    iput-object p0, v0, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    const/16 v1, 0x8

    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/phenix/request/SchemeInfo;->path:Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lcom/taobao/phenix/request/SchemeInfo;->parseExtend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/phenix/request/SchemeInfo;->extension:Ljava/lang/String;

    return-object v0
.end method

.method private static parseBase64(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "data:image/"

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    const-string v1, ";base64,"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 155
    new-instance v2, Lcom/taobao/phenix/request/SchemeInfo;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Lcom/taobao/phenix/request/SchemeInfo;-><init>(I)V

    add-int/lit8 v3, v1, 0x8

    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/taobao/phenix/request/SchemeInfo;->base64:Ljava/lang/String;

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "hash="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/taobao/phenix/request/SchemeInfo;->base64:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/taobao/phenix/request/SchemeInfo;->extension:Ljava/lang/String;

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseExtend(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x2e

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static parseHttpUrl(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 180
    new-instance v0, Lcom/taobao/phenix/request/SchemeInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/taobao/phenix/request/SchemeInfo;-><init>(I)V

    .line 181
    iput-object p0, v0, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3f

    .line 186
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    move v3, v2

    :cond_0
    const/16 v4, 0x2f

    add-int/lit8 v5, v3, -0x1

    .line 189
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    if-ltz v4, :cond_3

    sub-int/2addr v2, v1

    if-lt v4, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v4, 0x1

    .line 194
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v2}, Lcom/taobao/phenix/request/SchemeInfo;->parseExtend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/taobao/phenix/request/SchemeInfo;->extension:Ljava/lang/String;

    .line 199
    invoke-static {v2, v0}, Lcom/taobao/phenix/request/SchemeInfo;->parseTfsRule(Ljava/lang/String;Lcom/taobao/phenix/request/SchemeInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0, v4, v2, v0}, Lcom/taobao/phenix/request/SchemeInfo;->parseOssRule(Ljava/lang/String;ILjava/lang/String;Lcom/taobao/phenix/request/SchemeInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "//gw.alicdn.com"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_3

    const/4 v3, 0x6

    if-gt p0, v3, :cond_3

    const-string p0, "_.webp"

    .line 200
    invoke-virtual {v2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 201
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_2
    iput-object v2, v0, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    :goto_0
    const/16 p0, 0x2710

    .line 205
    iput p0, v0, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    iput p0, v0, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    .line 206
    iput-boolean v1, v0, Lcom/taobao/phenix/request/SchemeInfo;->isCdnSize:Z

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static parseLocalExtended(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->getExtendedSchemeHandlers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/phenix/loader/LocalSchemeHandler;

    .line 96
    invoke-interface {v2, p0}, Lcom/taobao/phenix/loader/LocalSchemeHandler;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    new-instance v0, Lcom/taobao/phenix/request/SchemeInfo;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Lcom/taobao/phenix/request/SchemeInfo;-><init>(I)V

    .line 98
    iput v1, v0, Lcom/taobao/phenix/request/SchemeInfo;->handleIndex:I

    .line 99
    iput-object p0, v0, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseLocalFile(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "file:///"

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_1
    :goto_0
    new-instance v1, Lcom/taobao/phenix/request/SchemeInfo;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Lcom/taobao/phenix/request/SchemeInfo;-><init>(I)V

    .line 112
    invoke-static {p0}, Lcom/taobao/phenix/request/SchemeInfo;->parseExtend(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/phenix/request/SchemeInfo;->extension:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/taobao/phenix/request/SchemeInfo;->path:Ljava/lang/String;

    goto :goto_1

    .line 116
    :cond_2
    iput-object p0, v1, Lcom/taobao/phenix/request/SchemeInfo;->path:Ljava/lang/String;

    .line 118
    :goto_1
    iget-object p0, v1, Lcom/taobao/phenix/request/SchemeInfo;->path:Ljava/lang/String;

    iput-object p0, v1, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    return-object v1
.end method

.method private static parseOssRule(Ljava/lang/String;ILjava/lang/String;Lcom/taobao/phenix/request/SchemeInfo;)Z
    .locals 5

    const/16 v0, 0x40

    .line 248
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    const/16 v2, 0x2d

    .line 249
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gtz v2, :cond_3

    const/16 v2, 0x7c

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gtz v2, :cond_3

    const-string v2, "_2e"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x77

    .line 252
    invoke-static {p2, v0, v2}, Lcom/taobao/phenix/request/SchemeInfo;->traverseOssSize(Ljava/lang/String;IC)I

    move-result v2

    iput v2, p3, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    if-eqz v2, :cond_3

    const/16 v2, 0x68

    invoke-static {p2, v0, v2}, Lcom/taobao/phenix/request/SchemeInfo;->traverseOssSize(Ljava/lang/String;IC)I

    move-result p2

    iput p2, p3, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    if-eqz p2, :cond_3

    iget p2, p3, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    iget v2, p3, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    if-ne p2, v2, :cond_3

    const/4 p2, 0x1

    .line 253
    iput-boolean p2, p3, Lcom/taobao/phenix/request/SchemeInfo;->isCdnSize:Z

    const-string v2, "//"

    .line 256
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    .line 257
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    add-int/2addr p1, v0

    add-int/2addr p1, p2

    .line 260
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    return p2

    :cond_3
    :goto_1
    return v1
.end method

.method private static parseResFile(Ljava/lang/String;)Lcom/taobao/phenix/request/SchemeInfo;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "res://"

    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x6

    .line 141
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    new-instance v1, Lcom/taobao/phenix/request/SchemeInfo;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Lcom/taobao/phenix/request/SchemeInfo;-><init>(I)V

    .line 147
    iput v0, v1, Lcom/taobao/phenix/request/SchemeInfo;->resId:I

    .line 148
    iput-object p0, v1, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    :catch_0
    return-object v1
.end method

.method private static parseTfsRule(Ljava/lang/String;Lcom/taobao/phenix/request/SchemeInfo;)Z
    .locals 8

    const/16 v0, 0x5f

    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x78

    .line 216
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    if-le v3, v0, :cond_7

    .line 219
    invoke-static {p0, v3, v1, v0}, Lcom/taobao/phenix/request/SchemeInfo;->traverseValue(Ljava/lang/String;IZI)I

    move-result v0

    iput v0, p1, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    const/4 v0, 0x1

    .line 220
    invoke-static {p0, v3, v0, v4}, Lcom/taobao/phenix/request/SchemeInfo;->traverseValue(Ljava/lang/String;IZI)I

    move-result v5

    iput v5, p1, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    .line 222
    iget v5, p1, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    if-lez v5, :cond_3

    iget v6, p1, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    if-ne v5, v6, :cond_3

    .line 223
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v5, v3, v4

    add-int/lit8 v6, v5, 0x2

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    add-int/2addr v5, v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x7a

    if-eq v2, v5, :cond_2

    .line 226
    :cond_1
    iput-boolean v0, p1, Lcom/taobao/phenix/request/SchemeInfo;->isCdnSize:Z

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    if-lez v3, :cond_2

    .line 229
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    :cond_2
    return v0

    .line 236
    :cond_3
    iget v5, p1, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    const/16 v6, 0x2710

    if-lez v5, :cond_4

    iget v5, p1, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    if-eq v5, v6, :cond_5

    :cond_4
    iget v5, p1, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    if-lez v5, :cond_6

    iget v5, p1, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    if-ne v5, v6, :cond_6

    :cond_5
    return v0

    .line 240
    :cond_6
    iput v1, p1, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    iput v1, p1, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    add-int/lit8 v0, v3, 0x1

    .line 242
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0

    :cond_7
    return v1
.end method

.method private static traverseOssSize(Ljava/lang/String;IC)I
    .locals 3

    .line 267
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    .line 270
    invoke-static {p0, v0}, Lcom/taobao/phenix/request/SchemeInfo;->isMatchOssRule(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0, v1, p1}, Lcom/taobao/phenix/request/SchemeInfo;->traverseValue(Ljava/lang/String;IZI)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 274
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static traverseValue(Ljava/lang/String;IZI)I
    .locals 8

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x9

    if-eqz p2, :cond_3

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p3, :cond_2

    .line 300
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p2, p2, -0x30

    if-ltz p2, :cond_2

    if-le p2, v1, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p2

    goto :goto_0

    :cond_2
    :goto_1
    move p2, v0

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_2
    if-le p1, p3, :cond_5

    .line 312
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    if-ltz v2, :cond_5

    if-le v2, v1, :cond_4

    goto :goto_3

    :cond_4
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    add-int/lit8 v5, v0, 0x1

    int-to-double v6, v0

    .line 316
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v0, v3

    mul-int v2, v2, v0

    add-int/2addr p2, v2

    add-int/lit8 p1, p1, -0x1

    move v0, v5

    goto :goto_2

    :cond_5
    :goto_3
    return p2
.end method

.method public static wrapAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrapFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrapRes(I)Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isLocalUri()Z
    .locals 1

    .line 84
    iget v0, p0, Lcom/taobao/phenix/request/SchemeInfo;->type:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkUri()Z
    .locals 1

    .line 88
    iget v0, p0, Lcom/taobao/phenix/request/SchemeInfo;->type:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/phenix/request/SchemeInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/SchemeInfo;->baseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extension="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/SchemeInfo;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/phenix/request/SchemeInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/phenix/request/SchemeInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cdnSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/phenix/request/SchemeInfo;->isCdnSize:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/SchemeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/phenix/request/SchemeInfo;->resId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", base64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/phenix/request/SchemeInfo;->base64:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
