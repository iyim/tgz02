.class public Lcom/rich/czlylibary/manager/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(J)Landroid/net/Uri;
    .locals 1

    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/rich/czlylibary/manager/d;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    const-string v4, "title"

    const-string v5, "_data"

    const-string v6, "album_id"

    const-string v7, "album"

    const-string v8, "artist"

    const-string v9, "artist_id"

    const-string v10, "duration"

    const-string v11, "_size"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, " 1=1 and title != \'\' and duration > 60000"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    if-eq p1, v7, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :cond_0
    const-string v4, " and album_id = "

    goto :goto_0

    :cond_1
    const-string v4, " and artist_id = "

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    new-instance v2, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-direct {v2}, Lcom/rich/czlylibary/bean/MusicInfo;-><init>()V

    invoke-virtual {v2, v7}, Lcom/rich/czlylibary/bean/MusicInfo;->setLocal(Z)V

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/rich/czlylibary/bean/MusicInfo;->setMusicId(Ljava/lang/String;)V

    const-string v4, "title"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/rich/czlylibary/bean/MusicInfo;->setMusicName(Ljava/lang/String;)V

    const-string v4, "_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/rich/czlylibary/bean/MusicInfo;->setLocalPath(Ljava/lang/String;)V

    const-string v4, "album_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "album"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v5}, Lcom/rich/czlylibary/bean/MusicInfo;->setAlbumNames([Ljava/lang/String;)V

    const-string v3, "artist"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rich/czlylibary/bean/MusicInfo;->setSingerName(Ljava/lang/String;)V

    const-string v3, "artist_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rich/czlylibary/bean/MusicInfo;->setSingerId(Ljava/lang/String;)V

    const-string v3, "duration"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rich/czlylibary/bean/MusicInfo;->setLength(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v5, v4

    invoke-static {v5, v6}, Lcom/rich/czlylibary/manager/d;->a(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rich/czlylibary/bean/MusicInfo;->setPicUrl(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rich/czlylibary/bean/MusicInfo;->setAlbumsId(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/rich/czlylibary/bean/MusicInfo;->setLrcUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/rich/czlylibary/bean/MusicInfo;->setBmp(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/rich/czlylibary/bean/MusicInfo;->setListenUrl(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x4

    if-ne v0, p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-virtual {v1}, Lcom/rich/czlylibary/bean/MusicInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/rich/czlylibary/bean/MusicInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-object p1

    :cond_6
    return-object v1
.end method

.method public static b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/SingerNew;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/rich/czlylibary/manager/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-virtual {v5}, Lcom/rich/czlylibary/bean/MusicInfo;->getSingerName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, -0x1

    if-ge v6, v7, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/rich/czlylibary/bean/SingerNew;

    invoke-virtual {v7}, Lcom/rich/czlylibary/bean/SingerNew;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_2
    const/4 v7, 0x1

    if-eq v6, v8, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rich/czlylibary/bean/SingerNew;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rich/czlylibary/bean/SingerNew;

    invoke-virtual {v6}, Lcom/rich/czlylibary/bean/SingerNew;->getFullSongTotal()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/rich/czlylibary/bean/SingerNew;->setFullSongTotal(I)V

    goto :goto_3

    :cond_2
    new-instance v6, Lcom/rich/czlylibary/bean/SingerNew;

    invoke-direct {v6}, Lcom/rich/czlylibary/bean/SingerNew;-><init>()V

    invoke-virtual {v6, v5}, Lcom/rich/czlylibary/bean/SingerNew;->setName(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-virtual {v5}, Lcom/rich/czlylibary/bean/MusicInfo;->getSingerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/rich/czlylibary/bean/SingerNew;->setId(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/rich/czlylibary/bean/SingerNew;->setFullSongTotal(I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static c()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/FolderNew;",
            ">;"
        }
    .end annotation

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "media_type = 2 and (_data like\'%.mp3\' or _data like\'%.wma\') and media_type = 2 and duration > 60000) group by ( parent"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/rich/czlylibary/bean/FolderNew;

    invoke-direct {v3}, Lcom/rich/czlylibary/bean/FolderNew;-><init>()V

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/rich/czlylibary/bean/FolderNew;->setFolderPath(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/rich/czlylibary/bean/FolderNew;->getFolderPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/rich/czlylibary/bean/FolderNew;->getFolderPath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/rich/czlylibary/bean/FolderNew;->setFolderName(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/rich/czlylibary/bean/FolderNew;->getFolderPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/rich/czlylibary/manager/d$1;

    invoke-direct {v5}, Lcom/rich/czlylibary/manager/d$1;-><init>()V

    invoke-virtual {v4, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v4, v4

    invoke-virtual {v3, v4}, Lcom/rich/czlylibary/bean/FolderNew;->setFolderCount(I)V

    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catch_0
    nop

    const/4 v0, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method public static d()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/AlbumNew;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/rich/czlylibary/manager/d;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-virtual {v5}, Lcom/rich/czlylibary/bean/MusicInfo;->getAlbumNames()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, -0x1

    if-ge v6, v7, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/rich/czlylibary/bean/AlbumNew;

    invoke-virtual {v7}, Lcom/rich/czlylibary/bean/AlbumNew;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_2
    const/4 v7, 0x1

    if-eq v6, v8, :cond_2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rich/czlylibary/bean/AlbumNew;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rich/czlylibary/bean/AlbumNew;

    invoke-virtual {v6}, Lcom/rich/czlylibary/bean/AlbumNew;->getFullSongTotal()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/rich/czlylibary/bean/AlbumNew;->setFullSongTotal(I)V

    goto :goto_3

    :cond_2
    new-instance v6, Lcom/rich/czlylibary/bean/AlbumNew;

    invoke-direct {v6}, Lcom/rich/czlylibary/bean/AlbumNew;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-virtual {v8}, Lcom/rich/czlylibary/bean/MusicInfo;->getAlbumsId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/rich/czlylibary/bean/AlbumNew;->setId(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/rich/czlylibary/bean/AlbumNew;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/rich/czlylibary/bean/AlbumNew;->setFullSongTotal(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-virtual {v8}, Lcom/rich/czlylibary/bean/MusicInfo;->getAlbumsId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/rich/czlylibary/manager/d;->a(J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/rich/czlylibary/bean/AlbumNew;->setAlbumPic(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-virtual {v5}, Lcom/rich/czlylibary/bean/MusicInfo;->getSingerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/rich/czlylibary/bean/AlbumNew;->setSingerName(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method public static e()Lcom/rich/czlylibary/bean/MusicFolder;
    .locals 13

    const-string v0, ""

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const-string v5, "title"

    const-string v6, "_data"

    const-string v7, "album_id"

    const-string v8, "album"

    const-string v9, "artist"

    const-string v10, "artist_id"

    const-string v11, "duration"

    const-string v12, "_size"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, " 1=1 and title != \'\' and duration > 60000"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v3, Lcom/rich/czlylibary/bean/MusicFolder;

    invoke-direct {v3}, Lcom/rich/czlylibary/bean/MusicFolder;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v4}, Lcom/rich/czlylibary/bean/MusicFolder;->setMusicFolders(Ljava/util/Map;)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-direct {v5}, Lcom/rich/czlylibary/bean/MusicInfo;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/rich/czlylibary/bean/MusicInfo;->setLocal(Z)V

    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/rich/czlylibary/bean/MusicInfo;->setMusicId(Ljava/lang/String;)V

    const-string v7, "title"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/rich/czlylibary/bean/MusicInfo;->setMusicName(Ljava/lang/String;)V

    const-string v7, "_data"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/rich/czlylibary/bean/MusicInfo;->setLocalPath(Ljava/lang/String;)V

    const-string v7, "album_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-array v6, v6, [Ljava/lang/String;

    const-string v8, "album"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-virtual {v5, v6}, Lcom/rich/czlylibary/bean/MusicInfo;->setAlbumNames([Ljava/lang/String;)V

    const-string v6, "artist"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/rich/czlylibary/bean/MusicInfo;->setSingerName(Ljava/lang/String;)V

    const-string v6, "artist_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/rich/czlylibary/bean/MusicInfo;->setSingerId(Ljava/lang/String;)V

    const-string v6, "duration"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/rich/czlylibary/bean/MusicInfo;->setLength(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v10, v7

    invoke-static {v10, v11}, Lcom/rich/czlylibary/manager/d;->a(J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/rich/czlylibary/bean/MusicInfo;->setPicUrl(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/rich/czlylibary/bean/MusicInfo;->setAlbumsId(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/rich/czlylibary/bean/MusicInfo;->setLrcUrl(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/rich/czlylibary/bean/MusicInfo;->setBmp(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/rich/czlylibary/bean/MusicInfo;->setListenUrl(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/rich/czlylibary/bean/MusicInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/rich/czlylibary/bean/MusicInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_1

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v3

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catch_0
    nop

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v2
.end method

.method public static f()Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;
    .locals 16

    const-string v0, ""

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const-string v5, "title"

    const-string v6, "_data"

    const-string v7, "album_id"

    const-string v8, "album"

    const-string v9, "artist"

    const-string v10, "artist_id"

    const-string v11, "duration"

    const-string v12, "_size"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, " title != \'\' and duration > 60000"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v3, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;

    invoke-direct {v3}, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;-><init>()V

    new-instance v4, Lcom/rich/czlylibary/bean/MusicFolder;

    invoke-direct {v4}, Lcom/rich/czlylibary/bean/MusicFolder;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Lcom/rich/czlylibary/bean/MusicFolder;->setMusicFolders(Ljava/util/Map;)V

    invoke-virtual {v3, v7}, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->setAlbumList(Ljava/util/List;)V

    invoke-virtual {v3, v8}, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->setArtists(Ljava/util/List;)V

    invoke-virtual {v3, v6}, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->setMusicInfoList(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;->setMusicFolder(Lcom/rich/czlylibary/bean/MusicFolder;)V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/rich/czlylibary/bean/MusicInfo;

    invoke-direct {v4}, Lcom/rich/czlylibary/bean/MusicInfo;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/rich/czlylibary/bean/MusicInfo;->setLocal(Z)V

    const-string v10, "_id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/rich/czlylibary/bean/MusicInfo;->setMusicId(Ljava/lang/String;)V

    const-string v10, "title"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/rich/czlylibary/bean/MusicInfo;->setMusicName(Ljava/lang/String;)V

    const-string v10, "_data"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/rich/czlylibary/bean/MusicInfo;->setLocalPath(Ljava/lang/String;)V

    const-string v10, "album_id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-array v11, v9, [Ljava/lang/String;

    const-string v12, "album"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v4, v11}, Lcom/rich/czlylibary/bean/MusicInfo;->setAlbumNames([Ljava/lang/String;)V

    const-string v11, "artist"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/rich/czlylibary/bean/MusicInfo;->setSingerName(Ljava/lang/String;)V

    const-string v11, "artist_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/rich/czlylibary/bean/MusicInfo;->setSingerId(Ljava/lang/String;)V

    const-string v11, "duration"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/rich/czlylibary/bean/MusicInfo;->setLength(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v14, v10

    invoke-static {v14, v15}, Lcom/rich/czlylibary/manager/d;->a(J)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/rich/czlylibary/bean/MusicInfo;->setPicUrl(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/rich/czlylibary/bean/MusicInfo;->setAlbumsId(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/rich/czlylibary/bean/MusicInfo;->setLrcUrl(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/rich/czlylibary/bean/MusicInfo;->setBmp(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/rich/czlylibary/bean/MusicInfo;->setListenUrl(Ljava/lang/String;)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/rich/czlylibary/bean/MusicInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/rich/czlylibary/bean/MusicInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_1

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v4}, Lcom/rich/czlylibary/bean/MusicInfo;->getSingerName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, -0x1

    if-ge v11, v12, :cond_3

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/rich/czlylibary/bean/SingerNew;

    invoke-virtual {v12}, Lcom/rich/czlylibary/bean/SingerNew;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, -0x1

    :goto_3
    if-eq v11, v14, :cond_4

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/rich/czlylibary/bean/SingerNew;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/rich/czlylibary/bean/SingerNew;

    invoke-virtual {v11}, Lcom/rich/czlylibary/bean/SingerNew;->getFullSongTotal()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v10, v11}, Lcom/rich/czlylibary/bean/SingerNew;->setFullSongTotal(I)V

    goto :goto_4

    :cond_4
    new-instance v11, Lcom/rich/czlylibary/bean/SingerNew;

    invoke-direct {v11}, Lcom/rich/czlylibary/bean/SingerNew;-><init>()V

    invoke-virtual {v11, v10}, Lcom/rich/czlylibary/bean/SingerNew;->setName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/rich/czlylibary/bean/MusicInfo;->getSingerId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/rich/czlylibary/bean/SingerNew;->setId(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/rich/czlylibary/bean/SingerNew;->setFullSongTotal(I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {v4}, Lcom/rich/czlylibary/bean/MusicInfo;->getAlbumNames()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v13

    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v13, v11, :cond_6

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/rich/czlylibary/bean/AlbumNew;

    invoke-virtual {v11}, Lcom/rich/czlylibary/bean/AlbumNew;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, -0x1

    :goto_6
    if-eq v13, v14, :cond_7

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rich/czlylibary/bean/AlbumNew;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/rich/czlylibary/bean/AlbumNew;

    invoke-virtual {v10}, Lcom/rich/czlylibary/bean/AlbumNew;->getFullSongTotal()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v4, v10}, Lcom/rich/czlylibary/bean/AlbumNew;->setFullSongTotal(I)V

    goto/16 :goto_0

    :cond_7
    new-instance v11, Lcom/rich/czlylibary/bean/AlbumNew;

    invoke-direct {v11}, Lcom/rich/czlylibary/bean/AlbumNew;-><init>()V

    invoke-virtual {v4}, Lcom/rich/czlylibary/bean/MusicInfo;->getAlbumsId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/rich/czlylibary/bean/AlbumNew;->setId(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/rich/czlylibary/bean/AlbumNew;->setName(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/rich/czlylibary/bean/AlbumNew;->setFullSongTotal(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/rich/czlylibary/bean/MusicInfo;->getAlbumsId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/rich/czlylibary/manager/d;->a(J)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/rich/czlylibary/bean/AlbumNew;->setAlbumPic(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/rich/czlylibary/bean/MusicInfo;->getSingerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/rich/czlylibary/bean/AlbumNew;->setSingerName(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v3

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :catch_0
    nop

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v2
.end method
