.class Lcom/alibaba/ailabs/comm/boot/BootMgr$1;
.super Ljava/lang/Object;
.source "BootMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/comm/boot/BootMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/comm/boot/BootMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/comm/boot/BootMgr;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr$1;->this$0:Lcom/alibaba/ailabs/comm/boot/BootMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr$1;->this$0:Lcom/alibaba/ailabs/comm/boot/BootMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/boot/BootMgr;->access$000(Lcom/alibaba/ailabs/comm/boot/BootMgr;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/boot/BootMgr$1;->this$0:Lcom/alibaba/ailabs/comm/boot/BootMgr;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/comm/boot/BootMgr;->access$100(Lcom/alibaba/ailabs/comm/boot/BootMgr;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
