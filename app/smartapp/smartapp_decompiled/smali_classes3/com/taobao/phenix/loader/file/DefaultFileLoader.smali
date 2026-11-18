.class public Lcom/taobao/phenix/loader/file/DefaultFileLoader;
.super Ljava/lang/Object;
.source "DefaultFileLoader.java"

# interfaces
.implements Lcom/taobao/phenix/loader/file/FileLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getThumbnailPath(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9

    if-eqz p4, :cond_0

    .line 90
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 92
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object v2, v0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "_id"

    .line 95
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    const-string v4, "_data=?"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const-wide/16 v1, -0x1

    if-eqz p2, :cond_2

    .line 104
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    move-wide v1, v0

    .line 107
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 v3, 0x0

    const/4 p2, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_5

    const-string v0, "_data"

    if-eqz p4, :cond_3

    .line 115
    sget-object v4, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video_id="

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "kind"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_1

    .line 124
    :cond_3
    invoke-static {p1, v1, v2, p3, p2}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    .line 127
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p2
.end method

.method public load(Lcom/taobao/phenix/request/SchemeInfo;Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/phenix/entity/ResponseData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/request/SchemeInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/phenix/entity/ResponseData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/res/Resources$NotFoundException;,
            Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;
        }
    .end annotation

    .line 27
    iget p3, p1, Lcom/taobao/phenix/request/SchemeInfo;->type:I

    const/16 v0, 0x21

    const/4 v1, 0x0

    if-eq p3, v0, :cond_6

    const/16 v0, 0x22

    if-eq p3, v0, :cond_4

    const/16 v0, 0x24

    if-eq p3, v0, :cond_2

    const/16 v0, 0x28

    if-eq p3, v0, :cond_1

    const/16 v0, 0x30

    if-ne p3, v0, :cond_0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->getExtendedSchemeHandlers()Ljava/util/List;

    move-result-object v0

    iget p1, p1, Lcom/taobao/phenix/request/SchemeInfo;->handleIndex:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/phenix/loader/LocalSchemeHandler;

    invoke-interface {p1, p2}, Lcom/taobao/phenix/loader/LocalSchemeHandler;->handleScheme(Ljava/lang/String;)Lcom/taobao/phenix/entity/ResponseData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 79
    :catch_0
    new-instance p1, Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;

    invoke-direct {p1, p3}, Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;-><init>(I)V

    throw p1

    .line 82
    :cond_0
    new-instance p1, Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;

    invoke-direct {p1, p3}, Lcom/taobao/phenix/loader/file/UnSupportedSchemeException;-><init>(I)V

    throw p1

    .line 56
    :cond_1
    iget-object p1, p1, Lcom/taobao/phenix/request/SchemeInfo;->base64:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 57
    new-instance p2, Lcom/taobao/phenix/entity/ResponseData;

    array-length p3, p1

    invoke-direct {p2, p1, v1, p3}, Lcom/taobao/phenix/entity/ResponseData;-><init>([BII)V

    return-object p2

    .line 59
    :cond_2
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 62
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget p1, p1, Lcom/taobao/phenix/request/SchemeInfo;->resId:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/taobao/phenix/entity/ResponseData;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-direct {p2, p1, v0, p3}, Lcom/taobao/phenix/entity/ResponseData;-><init>(Ljava/io/InputStream;ILandroid/util/TypedValue;)V

    return-object p2

    .line 60
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Phenix.with(Context) hasn\'t been called before FileLoader(resource) loading"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_4
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 69
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    iget-object p1, p1, Lcom/taobao/phenix/request/SchemeInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/taobao/phenix/entity/ResponseData;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/taobao/phenix/entity/ResponseData;-><init>(Ljava/io/InputStream;I)V

    return-object p2

    .line 67
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Phenix.with(Context) hasn\'t been called before FileLoader(asset) loading"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_6
    iget-object p2, p1, Lcom/taobao/phenix/request/SchemeInfo;->path:Ljava/lang/String;

    .line 34
    iget p3, p1, Lcom/taobao/phenix/request/SchemeInfo;->thumbnailType:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_7

    iget p3, p1, Lcom/taobao/phenix/request/SchemeInfo;->thumbnailType:I

    const/4 v2, 0x3

    if-ne p3, v2, :cond_a

    .line 36
    :cond_7
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 39
    iget v2, p1, Lcom/taobao/phenix/request/SchemeInfo;->thumbnailType:I

    invoke-virtual {p0, p3, p2, v2, v1}, Lcom/taobao/phenix/loader/file/DefaultFileLoader;->getThumbnailPath(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 42
    iget v1, p1, Lcom/taobao/phenix/request/SchemeInfo;->thumbnailType:I

    invoke-virtual {p0, p3, p2, v1, v0}, Lcom/taobao/phenix/loader/file/DefaultFileLoader;->getThumbnailPath(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_8
    move-object p2, v1

    .line 45
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_1

    .line 47
    :cond_9
    iget-boolean p2, p1, Lcom/taobao/phenix/request/SchemeInfo;->useOriginIfThumbNotExist:Z

    if-eqz p2, :cond_b

    .line 48
    iget-object p2, p1, Lcom/taobao/phenix/request/SchemeInfo;->path:Ljava/lang/String;

    .line 53
    :cond_a
    :goto_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance p2, Lcom/taobao/phenix/entity/ResponseData;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-direct {p2, p3, p1}, Lcom/taobao/phenix/entity/ResponseData;-><init>(Ljava/io/InputStream;I)V

    return-object p2

    .line 50
    :cond_b
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retrieved thumbnail(type:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/taobao/phenix/request/SchemeInfo;->thumbnailType:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") failed from local path"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Phenix.with(Context) hasn\'t been called before FileLoader(thumbnail) loading"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
