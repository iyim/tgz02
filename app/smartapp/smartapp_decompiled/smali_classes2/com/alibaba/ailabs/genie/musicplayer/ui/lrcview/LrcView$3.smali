.class Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;
.super Landroid/os/AsyncTask;
.source "LrcView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->loadLrcByUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/lang/String;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 440
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 443
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->getContentFromNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 440
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;->val$flag:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->loadLrc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
