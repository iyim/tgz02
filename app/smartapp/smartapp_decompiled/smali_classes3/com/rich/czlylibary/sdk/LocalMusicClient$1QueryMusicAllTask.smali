.class Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicAllTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/czlylibary/sdk/LocalMusicClient;->queryAllInfoFromLoaclMusic(Lcom/rich/czlylibary/sdk/LocalMusicCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1QueryMusicAllTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$localMusicCallback:Lcom/rich/czlylibary/sdk/LocalMusicCallback;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/sdk/LocalMusicCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicAllTask;->val$localMusicCallback:Lcom/rich/czlylibary/sdk/LocalMusicCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;
    .locals 0

    invoke-static {}, Lcom/rich/czlylibary/manager/d;->f()Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicAllTask;->doInBackground([Ljava/lang/Void;)Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;)V
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicAllTask;->val$localMusicCallback:Lcom/rich/czlylibary/sdk/LocalMusicCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/rich/czlylibary/sdk/LocalMusicCallback;->onFinish(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicAllTask;->onPostExecute(Lcom/rich/czlylibary/bean/AllInfoFromLocalMusicData;)V

    return-void
.end method
