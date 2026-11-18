.class Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask$1;->this$0:Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask;

    iput-object p2, p0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask$1;->this$0:Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask;

    iget-object v0, v0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask;->val$localCallback:Lcom/rich/czlylibary/sdk/LocalCallback;

    iget-object v1, p0, Lcom/rich/czlylibary/sdk/LocalMusicClient$1QueryMusicListAllTask$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rich/czlylibary/sdk/LocalCallback;->error(Ljava/lang/String;)V

    return-void
.end method
