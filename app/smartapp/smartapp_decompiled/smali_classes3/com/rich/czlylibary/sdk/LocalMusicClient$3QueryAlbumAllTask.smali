.class Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/czlylibary/sdk/LocalMusicClient;->queryFolderList(Lcom/rich/czlylibary/sdk/LocalCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "3QueryAlbumAllTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/rich/czlylibary/bean/FolderNew;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$localCallback:Lcom/rich/czlylibary/sdk/LocalCallback;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/sdk/LocalCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask;->val$localCallback:Lcom/rich/czlylibary/sdk/LocalCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/FolderNew;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/rich/czlylibary/manager/d;->c()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask$1;

    invoke-direct {v2, p0, v0}, Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask$1;-><init>(Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rich/czlylibary/bean/FolderNew;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rich/czlylibary/sdk/LocalMusicClient$3QueryAlbumAllTask;->val$localCallback:Lcom/rich/czlylibary/sdk/LocalCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/rich/czlylibary/sdk/LocalCallback;->finish(Ljava/util/List;)V

    :cond_0
    return-void
.end method
