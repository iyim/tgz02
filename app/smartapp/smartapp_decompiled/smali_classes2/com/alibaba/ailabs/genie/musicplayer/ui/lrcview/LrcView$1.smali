.class Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;
.super Landroid/os/AsyncTask;
.source "LrcView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->lambda$loadLrc$52(Ljava/io/File;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

.field final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 362
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;->doInBackground([Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation

    .line 365
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcUtils;->parseLrc([Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 362
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;)V"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;->val$flag:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1800(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/util/List;)V

    .line 372
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->access$1900(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
