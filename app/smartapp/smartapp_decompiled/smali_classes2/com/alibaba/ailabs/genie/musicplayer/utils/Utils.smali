.class public Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final COM_ALIBABA_GENIE_WAFT:Ljava/lang/String; = "com.alibaba.genie.waft"

.field private static final MIN_CLICK_DELAY_TIME:I = 0x1f4

.field public static final SMALL_VIP_URL:Ljava/lang/String; = "waft://open?genieAppId=2021071474006&code=2021071474006_content_template"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final WAFT_VERSION:I = 0xba

.field private static lastClickTime:J

.field private static mLastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static MetadataToSong(Landroid/support/v4/media/MediaMetadataCompat;)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;-><init>()V

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 531
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setId(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 533
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setTitle(Ljava/lang/String;)V

    .line 535
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 536
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setArtist(Ljava/lang/String;)V

    .line 538
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 539
    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setImage(Ljava/lang/String;)V

    :cond_3
    const-string v1, "pageNum"

    .line 541
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Utils"

    if-nez v2, :cond_4

    .line 544
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPageNum(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 546
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string v1, "isFavorite"

    .line 550
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 552
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setCollected(Z)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 554
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setCollected(Z)V

    :goto_1
    const-string v1, "position"

    .line 556
    invoke-virtual {p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 558
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 559
    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPosition(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 561
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static checkData(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "joke"

    .line 469
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 473
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 474
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSimilarRecList()Ljava/util/List;

    move-result-object v3

    .line 475
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getMoreEditionList()Ljava/util/List;

    move-result-object v4

    .line 476
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSameAlbumList()Ljava/util/List;

    move-result-object v5

    .line 477
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSollectRecList()Ljava/util/List;

    move-result-object p0

    const/4 v6, 0x0

    const/4 v7, 0x6

    if-eqz v3, :cond_3

    .line 479
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 480
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 481
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_2

    .line 482
    invoke-interface {v3, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 484
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 485
    new-instance v8, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    const/4 v9, 0x1

    invoke-direct {v8, v3, v9}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v3, "radio"

    if-eqz v4, :cond_5

    .line 489
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 490
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 491
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 492
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_4

    .line 493
    invoke-interface {v4, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 495
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 496
    new-instance v8, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    const/4 v9, 0x2

    invoke-direct {v8, v4, v9}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v5, :cond_6

    .line 501
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 502
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 503
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 504
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 505
    new-instance v4, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    const/4 v8, 0x3

    invoke-direct {v4, v5, v8}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p0, :cond_8

    .line 510
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 511
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 512
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 513
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_7

    .line 514
    invoke-interface {p0, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 516
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 517
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v2
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 211
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v1, 0x5a

    .line 216
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    if-le v3, v2, :cond_0

    .line 218
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 220
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 v1, v1, -0xa

    goto :goto_0

    .line 225
    :cond_0
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x0

    .line 227
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static contentPlayToMetadata(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 7

    .line 570
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemType()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 575
    :goto_0
    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getRawId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v3

    .line 577
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAudioName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.metadata.TITLE"

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v3

    .line 578
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSinger()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.metadata.ARTIST"

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v3

    const-string v4, "android.media.metadata.ALBUM_ART_URI"

    .line 579
    invoke-virtual {v3, v4, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 580
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isNeedLogin()Z

    move-result v3

    const-string v4, "1"

    const-string v5, "0"

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    const-string v6, "needLogin"

    invoke-virtual {v1, v6, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 581
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCanPlay()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v5

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    const-string v6, "needPay"

    invoke-virtual {v1, v6, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 583
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getItemId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "itemId"

    invoke-virtual {v1, v6, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    const-string v3, "isVipFree"

    .line 585
    invoke-virtual {v1, v3, v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 587
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string v6, "source"

    invoke-virtual {v1, v6, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 589
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "albumId"

    invoke-virtual {v1, v6, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 590
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getLyricUrl()Ljava/lang/String;

    move-result-object v3

    const-string v6, "lrcUrl"

    invoke-virtual {v1, v6, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    const-string v3, "type"

    .line 593
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getDuration()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "duration"

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPageNum()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pageNum"

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "position"

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getCopyRight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "copyright"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getMiniProgramId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webappId"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->isCollect()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v5

    :goto_3
    const-string p0, "isFavorite"

    invoke-virtual {v0, p0, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p0

    .line 604
    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public static convertPlayModel(Ljava/lang/String;)I
    .locals 2

    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "RepeatOne"

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string v0, "Shuffle"

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "Repeat"

    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "Normal"

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    return v1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getBrandName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 871
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x95c

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x96c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9b7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa1c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "QM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "NE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "KW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "KG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_8

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_5

    const-string p0, ""

    goto :goto_2

    :cond_5
    const-string p0, "\u7f51\u6613\u4e91\u97f3\u4e50"

    goto :goto_2

    :cond_6
    const-string p0, "\u9177\u6211\u97f3\u4e50"

    goto :goto_2

    :cond_7
    const-string p0, "\u9177\u72d7\u97f3\u4e50"

    goto :goto_2

    :cond_8
    const-string p0, "QQ\u97f3\u4e50"

    :goto_2
    return-object p0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 4

    .line 670
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 671
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 672
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 951
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 954
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const-string p1, "Utils"

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageVersionCode packageInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 959
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static getProductModel()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.product.model"

    const-string v1, "unKnown"

    .line 937
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Guide-"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getTime(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const-string p0, "00:00"

    return-object p0

    :cond_0
    long-to-int p1, p0

    .line 404
    div-int/lit16 p0, p1, 0x3e8

    div-int/lit8 p0, p0, 0x3c

    const v0, 0xea60

    mul-int v0, v0, p0

    sub-int/2addr p1, v0

    .line 405
    div-int/lit16 p1, p1, 0x3e8

    const-string v0, ":0"

    const-string v1, ":"

    const/16 v2, 0xa

    if-ge p0, v2, :cond_2

    const-string v3, "0"

    if-ge p1, v2, :cond_1

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 411
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-ge p1, v2, :cond_3

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 417
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWaftVersionCode(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.alibaba.genie.waft"

    .line 973
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getimage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 177
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 181
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 182
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 183
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 184
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_0

    int-to-float v4, v2

    const/high16 v5, 0x43f00000    # 480.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 192
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    :goto_0
    float-to-int v2, v2

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    int-to-float v2, v3

    const/high16 v3, 0x44480000    # 800.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 195
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 200
    :goto_2
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 202
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 204
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static isCM()Z
    .locals 2

    .line 932
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_CM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isChildResource(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "children_song"

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "story"

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isDestroy(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 920
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isFastClick()Z
    .locals 7

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 374
    sget-wide v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 377
    :goto_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->lastClickTime:J

    return v2
.end method

.method public static isFastEnternce()Z
    .locals 7

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 437
    sget-wide v2, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->mLastClickTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 v0, 0x1

    return v0

    .line 440
    :cond_0
    sput-wide v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->mLastClickTime:J

    const/4 v0, 0x0

    return v0
.end method

.method public static isS3Device(Landroid/content/Context;)Z
    .locals 2

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 152
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 153
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    const/16 v0, 0x320

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    .line 445
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "activity"

    .line 449
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v1, 0x64

    .line 450
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    .line 451
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 452
    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    .line 454
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 458
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Throwable:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Utils"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static isWaftVersionOK(Landroid/content/Context;)Z
    .locals 1

    .line 984
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getWaftVersionCode(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0xba

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static musicCollectToSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
    .locals 5

    .line 634
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;-><init>()V

    .line 635
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getAuthors()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 636
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 637
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$AuthorsBeanX;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 639
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setId(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setTitle(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setArtist(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getPayStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPayStatus(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setCopyright(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->isCollect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setCollected(Z)V

    .line 645
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPosition(I)V

    .line 646
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setSource(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getRawId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setRawId(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getPackageType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPackageType(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPageNum(I)V

    return-object v0
.end method

.method public static musicCurrentToSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
    .locals 3

    .line 654
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;-><init>()V

    .line 655
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->isCollect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setCollected(Z)V

    .line 656
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->getRawId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setId(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setTitle(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setArtist(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->getPayStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPayStatus(Ljava/lang/String;)V

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->getCopyright()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setCopyright(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPosition(I)V

    .line 662
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setSource(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->getRawId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setRawId(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/CurrentListResponse$ModelBean;->getAlbumRawId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setAlbumRawId(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPageNum(I)V

    return-object v0
.end method

.method public static musicHistoryToSong(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;I)Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;
    .locals 5

    .line 611
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getAuthors()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 612
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 613
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 616
    :goto_0
    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;-><init>()V

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setId(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setTitle(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setArtist(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->isCollect()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setCollected(Z)V

    .line 621
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getFirstType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setFirstType(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getSecondType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setSecondType(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPosition(I)V

    .line 624
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setSource(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getPlayFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPlayFrom(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setRawId(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;->getPayStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPayStatus(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->setPageNum(I)V

    return-object v2
.end method

.method private static openApplets(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V
    .locals 9

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buyType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&name="

    const-string v2, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021002123642001&pkg=com.alipay.arome.app&page=pages/pay/pay&from=audio&tab=1&source="

    const-string v3, "&sourceId="

    const-string v4, ""

    if-nez p2, :cond_0

    .line 700
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getBrandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_0
    const/4 v5, -0x1

    const-string v6, "buy song:"

    if-ne p2, v5, :cond_1

    .line 706
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/StatisticLog;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001169635114&page=pages/Vip/index&from=audio&type=1&source="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x1

    if-ne p2, v5, :cond_8

    const/4 p2, 0x0

    .line 710
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    .line 711
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 712
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v8

    if-ne v8, v5, :cond_2

    .line 713
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v6, "&vipInfo="

    if-eqz p2, :cond_7

    .line 718
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getVipInfoList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 720
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getVipInfoList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v5, :cond_6

    .line 721
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getVipInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$VipInfo;

    if-eqz v5, :cond_5

    .line 723
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$VipInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const v7, 0xdbba0

    if-ge v4, v7, :cond_4

    .line 724
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001169635114&pkg=com.alipay.arome.app&page=pages/Vip/index&from=audio&type=1&source="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$VipInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 728
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getVipInfoList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_5
    const-string p2, "vip info is null"

    .line 735
    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 738
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getVipInfoList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    const-string v4, "vip info list is null"

    .line 745
    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getVipInfoList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v4, p2

    goto/16 :goto_3

    :cond_8
    const/4 v0, 0x2

    const-string v2, "&albumRawId="

    if-ne p2, v0, :cond_9

    .line 753
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001169635114&pkg=com.alipay.arome.app&page=pages/Vip/index&from=audio&type=0&tab=1&sellType=1&source="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAlbumRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&contentRawId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pageNum="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPageNum()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&pageSize="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPageSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_9
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 762
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021001169635114&pkg=com.alipay.arome.app&page=pages/Vip/index&from=audio&type=0&tab=1&sellType=2&source="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAlbumRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_a
    const/4 v0, 0x4

    if-ne p2, v0, :cond_b

    const-string v4, "webapp://com.alibaba.ailabs.genie.webapps/open?appId=2021002123642001&pkg=com.alipay.arome.app&page=pages/index/index&query=from%3Dactive"

    .line 771
    :cond_b
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "source = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",   uri = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 773
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 p2, 0x10000000

    .line 774
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 775
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 776
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_c
    const-string p0, " uri = null"

    .line 778
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private static openWaft(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V
    .locals 9

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buyType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "%26name%3D"

    const-string v2, "%26appId%3D"

    const-string v3, ""

    if-eqz p2, :cond_a

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "waft://open?genieAppId=2021071474006&code=2021071474006_content_template&type=page&path=pages/sku/sku&query=templateType%3Driver%26from%3Daudio%26source%3D"

    const/4 v5, 0x1

    if-ne p2, v5, :cond_7

    const/4 p2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 796
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 797
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getBusinessType()I

    move-result v8

    if-ne v8, v5, :cond_1

    .line 798
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getBusinessButton()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v7, "waft://open?genieAppId=2021072176003&code=waft_super_member&type=page&path=pages/pay/pay&query=from%3Daudio%26source%3D"

    if-eqz p2, :cond_6

    .line 802
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getVipInfoList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 804
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getVipInfoList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v5, :cond_5

    .line 805
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getVipInfoList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$VipInfo;

    if-eqz p2, :cond_4

    .line 807
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$VipInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v5, 0xdbba0

    if-ge v3, v5, :cond_3

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$VipInfo;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%26type%3D1%26itemType%3D3"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 813
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 815
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getBrandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const-string p0, "vip info is null"

    .line 822
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 825
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getBrandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 829
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p2, "vip info list is null"

    .line 832
    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getBrandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 837
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    :goto_2
    move-object v3, p2

    goto/16 :goto_4

    :cond_7
    const/4 v0, 0x2

    const-string v5, "buy song:"

    if-ne p2, v0, :cond_8

    .line 840
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%26type%3D1%26itemType%3D1%26albumRawId%3D"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAlbumRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%26contentRawId%3D"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%26pageNum%3D"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPageNum()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%26pageSize%3D"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getPageSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 848
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%26type%3D1%26itemType%3D2%26albumRawId%3D"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAlbumRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 856
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const/4 v0, 0x4

    if-ne p2, v0, :cond_b

    const-string v3, "waft://open?genieAppId=2021072176003&code=waft_super_member&type=page&path=pages/index/index&query=from%3Dactive"

    .line 861
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    goto :goto_4

    .line 788
    :cond_a
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waft://open?genieAppId=2021072176003&code=waft_super_member&type=page&path=pages/pay/pay&query=from%3Dtme%26source%3D"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->getBrandName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;)V

    .line 863
    :cond_b
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "source = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",   uri = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, " uri = null"

    .line 865
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static openWebViewActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 891
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "titleText"

    .line 892
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "webUrl"

    .line 893
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 894
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 895
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openWebapp(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V
    .locals 1

    .line 689
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isWaftVersionOK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openWaft(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V

    goto :goto_0

    .line 692
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->openApplets(Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;I)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setViewRoundedCorner(Landroid/view/View;I)V
    .locals 2

    .line 899
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 902
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 904
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 906
    :goto_0
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils$1;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils$1;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1
    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .locals 1

    .line 424
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/App;->getApp()Lcom/alibaba/ailabs/genie/musicplayer/App;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/App;->isMainActivityInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 429
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static showToastView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 676
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 677
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->toast_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 678
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->toast_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 679
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 681
    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 682
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 683
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->dip2px(Landroid/content/Context;F)I

    move-result p0

    const/16 v0, 0x37

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 684
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 685
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    .line 236
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 237
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 241
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    int-to-float v3, v0

    move v5, v3

    const/4 v4, 0x0

    goto :goto_0

    .line 252
    :cond_0
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-int v4, v0, v1

    .line 253
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    int-to-float v5, v1

    move v11, v3

    move v3, v0

    move v0, v1

    move v1, v11

    .line 265
    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 270
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 271
    new-instance v8, Landroid/graphics/Rect;

    float-to-int v4, v4

    float-to-int v9, v2

    float-to-int v3, v3

    float-to-int v10, v5

    invoke-direct {v8, v4, v9, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    new-instance v3, Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v2, v2

    float-to-int v9, v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v2, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 273
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    .line 275
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    .line 277
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v4, -0xbdbdbe

    .line 278
    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    invoke-virtual {v6, v2, v1, v1, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 281
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 282
    invoke-virtual {v6, p0, v8, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static translateCommand(Ljava/lang/String;)I
    .locals 1

    const-string v0, "stop"

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x12

    return p0

    :cond_0
    const-string v0, "pause"

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-string v0, "next"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-string v0, "prev"

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const-string v0, "resume"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const-string v0, "playfavorite"

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x15

    return p0

    :cond_5
    const-string v0, "favorite"

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x13

    return p0

    :cond_6
    const-string v0, "unfavorite"

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x14

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method public static translateCommandName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string p0, "DELAY_START"

    goto :goto_1

    :pswitch_2
    const-string p0, "DIRECT_STOP"

    goto :goto_1

    :pswitch_3
    const-string p0, "PLAY_FAVORITE"

    goto :goto_1

    :pswitch_4
    const-string p0, "STOP"

    goto :goto_1

    :pswitch_5
    const-string p0, "TOGGLE_TIMER"

    goto :goto_1

    :pswitch_6
    const-string p0, "CHANGE_LYRIC"

    goto :goto_1

    :pswitch_7
    const-string p0, "CLOSE_NOTIFY"

    goto :goto_1

    :pswitch_8
    const-string p0, "PLAY_TEMP"

    goto :goto_1

    :pswitch_9
    const-string p0, "CHANGE_MODEL"

    goto :goto_1

    :pswitch_a
    const-string p0, "START"

    goto :goto_1

    :pswitch_b
    const-string p0, "PAUSE"

    goto :goto_1

    :pswitch_c
    const-string p0, "NEXT"

    goto :goto_1

    :pswitch_d
    const-string p0, "TOGGLE"

    goto :goto_1

    :pswitch_e
    const-string p0, "PREV"

    goto :goto_1

    :pswitch_f
    const-string p0, "PLAYSELECTEDSONG"

    goto :goto_1

    :goto_0
    :pswitch_10
    const-string p0, "Unknown"

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_10
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_7
        :pswitch_10
        :pswitch_6
        :pswitch_10
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static translateStatus(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u975e\u6cd5\u72b6\u6001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "\u7f13\u51b2\u66f4\u65b0"

    return-object p0

    :pswitch_1
    const-string p0, "\u64ad\u653e\u5668\u5176\u5b83\u4fe1\u606f"

    return-object p0

    :pswitch_2
    const-string p0, "\u64ad\u653e\u5668\u91ca\u653e"

    return-object p0

    :pswitch_3
    const-string p0, "\u64ad\u653e\u51fa\u9519"

    return-object p0

    :pswitch_4
    const-string p0, "\u64ad\u653e\u5b8c\u6210"

    return-object p0

    :pswitch_5
    const-string p0, "\u64ad\u653e\u505c\u6b62"

    return-object p0

    :pswitch_6
    const-string p0, "\u64ad\u653e\u5f00\u59cb"

    return-object p0

    :pswitch_7
    const-string p0, "\u64ad\u653e\u6682\u505c"

    return-object p0

    :pswitch_8
    const-string p0, "\u6570\u636e\u51c6\u5907\u5b8c\u6210"

    return-object p0

    :pswitch_9
    const-string p0, "\u521d\u59cb\u5316\u5b8c\u6bd5"

    return-object p0

    :pswitch_a
    const-string p0, "\u521b\u5efa\u64ad\u653e\u5668"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 387
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "unregisterReceiver error"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
