.class public final Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
.super Ljava/lang/Object;
.source "ImageSource.java"


# static fields
.field static final ASSET_SCHEME:Ljava/lang/String; = "file:///android_asset/"

.field static final FILE_SCHEME:Ljava/lang/String; = "file:///"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private cached:Z

.field private final resource:Ljava/lang/Integer;

.field private sHeight:I

.field private sRegion:Landroid/graphics/Rect;

.field private sWidth:I

.field private tile:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    .line 71
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->uri:Landroid/net/Uri;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->resource:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tile:Z

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->uri:Landroid/net/Uri;

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->resource:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tile:Z

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sWidth:I

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sHeight:I

    .line 47
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->cached:Z

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "UTF-8"

    .line 57
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->uri:Landroid/net/Uri;

    .line 65
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->resource:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tile:Z

    return-void
.end method

.method public static asset(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->uri(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object p0

    return-object p0

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Asset name must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bitmap(Landroid/graphics/Bitmap;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    .line 151
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;-><init>(Landroid/graphics/Bitmap;Z)V

    return-object v0

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cachedBitmap(Landroid/graphics/Bitmap;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    .line 168
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;-><init>(Landroid/graphics/Bitmap;Z)V

    return-object v0

    .line 166
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resource(I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 84
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;-><init>(I)V

    return-object v0
.end method

.method private setInvariants()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 242
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tile:Z

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sWidth:I

    .line 244
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sHeight:I

    :cond_0
    return-void
.end method

.method public static uri(Landroid/net/Uri;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    .line 136
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;-><init>(Landroid/net/Uri;)V

    return-object v0

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Uri must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uri(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, "://"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 121
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;-><init>(Landroid/net/Uri;)V

    return-object v0

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Uri must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dimensions(II)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 233
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sWidth:I

    .line 234
    iput p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sHeight:I

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->setInvariants()V

    return-object p0
.end method

.method protected final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected final getResource()Ljava/lang/Integer;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->resource:Ljava/lang/Integer;

    return-object v0
.end method

.method protected final getSHeight()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sHeight:I

    return v0
.end method

.method protected final getSRegion()Landroid/graphics/Rect;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected final getSWidth()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sWidth:I

    return v0
.end method

.method protected final getTile()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tile:Z

    return v0
.end method

.method protected final getUri()Landroid/net/Uri;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method protected final isCached()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->cached:Z

    return v0
.end method

.method public region(Landroid/graphics/Rect;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->sRegion:Landroid/graphics/Rect;

    .line 217
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->setInvariants()V

    return-object p0
.end method

.method public tiling(Z)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 203
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tile:Z

    return-object p0
.end method

.method public tilingDisabled()Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tiling(Z)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object v0

    return-object v0
.end method

.method public tilingEnabled()Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tiling(Z)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object v0

    return-object v0
.end method
