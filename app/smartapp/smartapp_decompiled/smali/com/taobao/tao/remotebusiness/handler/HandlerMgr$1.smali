.class Lcom/taobao/tao/remotebusiness/handler/HandlerMgr$1;
.super Ljava/lang/Object;
.source "HandlerMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;

.field final synthetic val$hMsg:Lcom/taobao/tao/remotebusiness/handler/HandlerParam;


# direct methods
.method constructor <init>(Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;Lcom/taobao/tao/remotebusiness/handler/HandlerParam;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr$1;->this$0:Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;

    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr$1;->val$hMsg:Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr$1;->val$hMsg:Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr$1;->val$hMsg:Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    iget-object v1, v1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr$1;->val$hMsg:Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    iget-object v2, v2, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->doFinish(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;)V

    return-void
.end method
