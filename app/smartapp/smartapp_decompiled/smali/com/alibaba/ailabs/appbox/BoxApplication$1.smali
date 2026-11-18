.class Lcom/alibaba/ailabs/appbox/BoxApplication$1;
.super Ljava/lang/Object;
.source "BoxApplication.java"

# interfaces
.implements Lcom/taobao/downloader/adpater/ThreadExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/BoxApplication;->initDownloader(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/BoxApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/BoxApplication;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/BoxApplication$1;->this$0:Lcom/alibaba/ailabs/appbox/BoxApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;Z)V
    .locals 1

    const-string p2, "BoxApplication-l"

    const-string v0, "execute..."

    .line 185
    invoke-static {p2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance p2, Lcom/alibaba/ailabs/appbox/BoxApplication$1$1;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/appbox/BoxApplication$1$1;-><init>(Lcom/alibaba/ailabs/appbox/BoxApplication$1;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    const-string v0, "BoxApplication-l"

    const-string v1, "postDelayed.execute..."

    .line 196
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/alibaba/ailabs/appbox/BoxApplication$1$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/BoxApplication$1$2;-><init>(Lcom/alibaba/ailabs/appbox/BoxApplication$1;Ljava/lang/Runnable;)V

    invoke-static {v0, p2, p3}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
