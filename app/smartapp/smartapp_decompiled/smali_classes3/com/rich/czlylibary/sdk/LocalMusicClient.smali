.class public Lcom/rich/czlylibary/sdk/LocalMusicClient;
.super Ljava/lang/Object;


# static fields
.field public static final START_FROM_ALBUM:I = 0x2

.field public static final START_FROM_ARTIST:I = 0x1

.field public static final START_FROM_FOLDER:I = 0x4

.field public static final START_FROM_LOCAL:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static queryAlbumList(Lcom/rich/czlylibary/sdk/LocalCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/sdk/LocalCallback<",
            "Lcom/rich/czlylibary/bean/AlbumNew;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryAlbumAllTask;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryAlbumAllTask;-><init>(Lcom/rich/czlylibary/sdk/LocalCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryAlbumAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static queryAllInfoFromLoaclMusic(Lcom/rich/czlylibary/sdk/LocalMusicCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/sdk/LocalMusicCallback<",
            "Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicAllTask;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicAllTask;-><init>(Lcom/rich/czlylibary/sdk/LocalMusicCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static queryFolderList(Lcom/rich/czlylibary/sdk/LocalCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/sdk/LocalCallback<",
            "Lcom/rich/czlylibary/bean/FolderNew;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask;-><init>(Lcom/rich/czlylibary/sdk/LocalCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static queryMusicFolder(Lcom/rich/czlylibary/sdk/LocalMusicCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/sdk/LocalMusicCallback<",
            "Lcom/rich/czlylibary/bean/MusicFolder;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryFolderMusicTask;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryFolderMusicTask;-><init>(Lcom/rich/czlylibary/sdk/LocalMusicCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryFolderMusicTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static queryMusicListAll(Lcom/rich/czlylibary/sdk/LocalCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/sdk/LocalCallback<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask;-><init>(Lcom/rich/czlylibary/sdk/LocalCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static queryMusicListAllFrom(Ljava/lang/String;ILcom/rich/czlylibary/sdk/LocalCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/rich/czlylibary/sdk/LocalCallback<",
            "Lcom/rich/czlylibary/bean/MusicInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/sdk/LocalMusicClient$2QueryMusicListAllTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/rich/czlylibary/sdk/LocalMusicClient$2QueryMusicListAllTask;-><init>(Ljava/lang/String;ILcom/rich/czlylibary/sdk/LocalCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$2QueryMusicListAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static querySingerList(Lcom/rich/czlylibary/sdk/LocalCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/sdk/LocalCallback<",
            "Lcom/rich/czlylibary/bean/SingerNew;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/sdk/LocalMusicClient$2QueryAlbumAllTask;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$2QueryAlbumAllTask;-><init>(Lcom/rich/czlylibary/sdk/LocalCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$2QueryAlbumAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
